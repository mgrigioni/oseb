/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2012 Mario Grigioni                                          *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.model;

import java.io.File;
import java.io.StringReader;
import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.eventoNFe.beans.retevento.infevento.InfEvento;
import org.adempierelbr.nfe.NFeXMLGenerator;
import org.adempierelbr.process.ProcGenerateRpsXml;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_Invoice;
import org.compiere.model.I_C_Country;
import org.compiere.model.MAcctSchema;
import org.compiere.model.MAttachment;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MCost;
import org.compiere.model.MCountry;
import org.compiere.model.MDocType;
import org.compiere.model.MInOut;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrg;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MPaymentTerm;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MShipper;
import org.compiere.model.MSysConfig;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.model.X_M_InOut;
import org.compiere.process.DocAction;
import org.compiere.process.DocOptions;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeConsulta2Stub;

/**
 *  LBR_NotaFiscal Model
 *  
 *  Class that process brazilian fiscal documents (a.k.a Nota Fiscal)
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNotaFiscal.java, v2.0 11/06/2012 14:53:00 mgrigioni
 */
public class MLBRNotaFiscal extends X_LBR_NotaFiscal implements DocAction, DocOptions{

	/**
	 * 
	 */
	private static final long serialVersionUID = -8230577201526704731L;

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(MLBRNotaFiscal.class);
	
	//Referência CFOP
	public Set<String> m_refCFOP  = new LinkedHashSet<String>(); 
	public String m_CFOPNote      = "";
	public String m_CFOPReference = "";
	
	private List<MLBRNotaFiscalLine> m_lines = new ArrayList<MLBRNotaFiscalLine>();
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;
	
	/** Prim Line					*/
	private Integer		m_primaryLBR_NotaFiscalLine_ID = null;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscal (Properties ctx, int ID, String trx) {
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscal (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Create a new MLBRNotaFiscal object based on MInvoice
	 * @param ctx
	 * @param invoice
	 * @param trx
	 */
	public MLBRNotaFiscal(Properties ctx, MInvoice invoice, String trx){
		this(ctx,get_ID(invoice.get_ID(),trx),trx);
		setInvoice(invoice);
	}
	
	/**************************************************************************
	 * Retorna as Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param AD_Org_ID
	 * @param isSOTrx: true = venda, false = compra, null = ambos
	 * @param trxName
	 * @return List<MLBRNotaFiscal> nf
	 */
	private static List<MLBRNotaFiscal> get(Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, Boolean isSOTrx, String trxName){

		String whereClause = "AD_Client_ID=? AND " +
				             "AD_Org_ID IN (0,?) AND " +
							 "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(COALESCE(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ?";

		String orderBy = "(CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) ELSE TRUNC(COALESCE(lbr_DateInOut, DateDoc)) END)";
		//
		if (isSOTrx != null)
			whereClause += " AND IsSOTrx='" + (isSOTrx ? "Y" : "N") + "'";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
	          q.setOrderBy(orderBy);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),AD_Org_ID > 0 ? AD_Org_ID : Env.getAD_Org_ID(Env.getCtx()),dateFrom,dateTo});

		return q.list();
	}
	
	public static List<MLBRNotaFiscal> get(Timestamp dateFrom, Timestamp dateTo,String trxName){
		return get(dateFrom,dateTo,0,null,trxName);
	}
	
	public static List<MLBRNotaFiscal> get(Timestamp dateFrom, Timestamp dateTo, int AD_Org_ID, String trxName){
		return get(dateFrom,dateTo,AD_Org_ID,null,trxName);
	}
	
	public static List<MLBRNotaFiscal> get(Timestamp dateFrom, Timestamp dateTo, Boolean isSOTrx, String trxName){
		return get(dateFrom,dateTo,0,isSOTrx,trxName);
	}
	
	/**
	 * Retorna o MLBRNotaFiscal para um determinado NFeID (Número NFe)
	 * @param nfeID
	 * @return MLBRNotaFiscal
	 */
	public static MLBRNotaFiscal get(String nfeID, String trxName){
		return get("lbr_NFeID = ?",new Object[]{nfeID},trxName);
	}
	
	/**
	 * Retorna o MLBRNotaFiscal conforme parâmetros abaixo
	 * @param DocumentNo
	 * @param C_BPartner_ID
	 * @param isSOTrx
	 * @return MLBRNotaFiscal
	 */
	public static MLBRNotaFiscal get(String DocumentNo, int C_BPartner_ID, boolean isSOTrx, String trxName){
		return get("DocumentNo = ? AND C_BPartner_ID=? AND IsSOtrx=?",
				new Object[]{DocumentNo,C_BPartner_ID,isSOTrx},trxName);
	}
	
	public static MLBRNotaFiscal get(String whereClause, Object[] parameters, String trxName){
		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
			  q.setClient_ID();
		      q.setParameters(parameters);
		return q.first();
	}
	
	private static int get_ID(int C_Invoice_ID, String trxName){
		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscal.Table_Name);
		Query q =  new Query(Env.getCtx(), table, "C_Invoice_ID = ? AND IsCancelled=?", trxName);
			  q.setClient_ID();
			  q.setParameters(new Object[]{C_Invoice_ID,false});
		
		int id = q.firstId();
		return id == -1 ? 0 : id;
	}

	/**************************************************************************
	 * get Nota Fiscal lines
	 * @param Object[] parameters
	 * @param String whereClause
	 * @param String orderBy
	 * @param boolean reQuery
	 * @return List<MLBRNotaFiscalLine> lines
	 */
	public List<MLBRNotaFiscalLine> getLines(Object[] parameters, String whereClause, String orderBy, boolean reQuery){

		if (!reQuery && m_lines.size() > 0)
			return m_lines;
		
		MTable table = MTable.get(getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	orderBy = TextUtil.checkOrderBy(orderBy);
	 	if (orderBy != null)
	 		  query.setOrderBy(orderBy);

	 	m_lines = query.list();
	 	return m_lines;
	} //getLines
	
	/**
	 *  get Nota Fiscal lines orderdBy LineNo
	 *  @param reQuery = false, return from cache
	 *  @return List<MLBRNotaFiscalLine> lines
	 */
	public List<MLBRNotaFiscalLine> getLines(boolean reQuery){
		return getLines("Line",reQuery);
	}
	
	/**
	 *  get Nota Fiscal lines orderdBy LineNo
	 *  @return List<MLBRNotaFiscalLine> lines
	 */
	public List<MLBRNotaFiscalLine> getLines(){
		return getLines(true);
	}
	
	/**
	 *  get Nota Fiscal lines
	 *  @param String orderBy or null
	 *  @return List<MLBRNotaFiscalLine> lines
	 */
	public List<MLBRNotaFiscalLine> getLines(String orderBy,boolean reQuery){

		String   whereClause = "LBR_NotaFiscal_ID = ?";
		Object[] parameters  = new Object[]{get_ID()};

		return getLines(parameters,whereClause,orderBy,reQuery);
	} //getLines
	
	/**
	 * 	Get Primary LBR_NotaFiscalLine_ID
	 *	@return LBR_NotaFiscalLine_ID
	 */
	public int getPrimaryLBR_NotaFiscalLine_ID()
	{
		if (m_primaryLBR_NotaFiscalLine_ID == null)
		{
			List<MLBRNotaFiscalLine> lines = getLines(false);
			if (m_primaryLBR_NotaFiscalLine_ID == null && lines.size() > 0)
				m_primaryLBR_NotaFiscalLine_ID = (lines.get(0).get_ID()); 
		}
		if (m_primaryLBR_NotaFiscalLine_ID == null)
			return 0;
		
		return m_primaryLBR_NotaFiscalLine_ID.intValue();
	}	//	getPrimaryLBR_NotaFiscalLine_ID
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo() {
		MDocType dt = MDocType.get(getCtx(), getC_DocType_ID());
		return dt.getName() + " - " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF () {
		try
		{
			File temp = File.createTempFile(get_TableName()+get_ID()+"_", ".pdf");
			return createPDF (temp);
		}
		catch (Exception e)
		{
			log.severe("Could not create PDF - " + e.getMessage());
		}
		return null;
	}	//	getPDF

	/**
	 * 	Create PDF file
	 *	@param file output file
	 *	@return file if success
	 */
	public File createPDF (File file) {
		return null;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction) {
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt() {
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt() {
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt() {
		
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		//Criada NF na mão
		if (getlbr_OrgName() == null || getlbr_OrgName().isEmpty()){
			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			setInvoice(invoice);
			
			//Atribui LBR_NotaFiscal_ID
			invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", get_ID());
			invoice.save(get_TrxName());
		}
		
		//	Std Period open?
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		if (dt.get_ID() == 0) //NF terceiros, pega período documento próprio
			dt = AdempiereLBR.getNFBDocType(getAD_Org_ID(), isSOTrx(), false);
			
		if (dt != null && !MPeriod.isOpen(getCtx(), getDateAcct(), dt.getDocBaseType(), getAD_Org_ID())){
			m_processMsg = "@PeriodClosed@";
			return DocAction.STATUS_Invalid;
		}
				
		if (getlbr_NFModel() == null || getlbr_NFModel().isEmpty()){
			m_processMsg = "Modelo da Nota Fiscal não informado";
			return DocAction.STATUS_Invalid;
		}
		
		//Validação Tipo de Nota Fiscal (terceiros)
		if (!islbr_IsOwnDocument()){
			if (getlbr_NFeID() == null || getlbr_NFeID().isEmpty()){
				if (isNFe()){
					m_processMsg = "Tipo de nota fiscal inválido. NFe é necessário preencher NFe ID";
					return DocAction.STATUS_Invalid;
				}
			}
			else{
				if (!isNFe()){
					m_processMsg = "Tipo de nota fiscal inválido. NFe ID deve ser preenchido apenas para NFe ou CTe";
					return DocAction.STATUS_Invalid;
				}
			}	
		}
				
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		m_justPrepared = true;

		return DocAction.STATUS_InProgress;
	}	//	prepareIt
	
	/**
	 * 	Approve Document
	 * 	@return true if success 
	 */
	public boolean  approveIt() {
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt() {
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt() {
				
		//	Re-Check
		if (!m_justPrepared) {
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		//Verifica se o documento contem linhas
		getLines(false);
		if (m_lines.size() == 0){
			m_processMsg = Msg.getMsg(getCtx(), "NoLines");
			return DocAction.STATUS_Invalid;
		}
		
		//Validação CFOP
		m_processMsg = MLBRCFOP.validateCFOP(this);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		//Validação de Valores
		BigDecimal sumGrandTotal   = Env.ZERO;
		BigDecimal sumTotalLines   = Env.ZERO;
		BigDecimal sumServiceTotal = Env.ZERO;
		
		for (MLBRNotaFiscalLine nfLine : m_lines){
			sumGrandTotal = sumGrandTotal.add(nfLine.getTotalOperationAmt());
			if (nfLine.islbr_IsService())
				sumServiceTotal = sumServiceTotal.add(nfLine.getLineTotalAmt());
			else
				sumTotalLines = sumTotalLines.add(nfLine.getLineTotalAmt());
		}
		
		if (((getGrandTotal().subtract(sumGrandTotal)).abs()).compareTo(NFeUtil.TOLERANCIA) > 0){
			m_processMsg = Msg.getMsg(getCtx(), "ValidationError") + " Total da NF difere da soma dos itens";
			return DocAction.STATUS_Invalid;
		}
		
		if (getTotalLines().compareTo(sumTotalLines) != 0){
			m_processMsg = Msg.getMsg(getCtx(), "ValidationError") + " Total de Produtos difere da soma dos produtos";
			return DocAction.STATUS_Invalid;
		}
		
		if (getlbr_ServiceTotalAmt().compareTo(sumServiceTotal) != 0){
			m_processMsg = Msg.getMsg(getCtx(), "ValidationError") + " Total de Serviços difere da soma dos serviços";
			return DocAction.STATUS_Invalid;
		}
				
		//Processar NFe
		m_processMsg = processNFe();
		if (m_processMsg != null && !m_processMsg.isEmpty())
			return DocAction.STATUS_Invalid;
			
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null) {
			m_processMsg = valid;	
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_Re_Activate);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	@return true if success
	 */
	public boolean voidIt(){

		log.info(toString());
		
		//	Std Period open?
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		if (dt.get_ID() > 0 && !MPeriod.isOpen(getCtx(), getDateAcct(), dt.getDocBaseType(), getAD_Org_ID())){
			m_processMsg = "@PeriodClosed@";
		}
		
		// Before Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_VOID);
		if (m_processMsg != null)
			return false;

		if (!islbr_IsOwnDocument()){
			m_processMsg = "Não é possível cancelar documento de terceiros. É necessário estonar a fatura associada";
			return false;
		}
		
		if (isNFe()){ //Executa processo para cancelar NFe junto ao Sefaz
			try{
				m_processMsg = eventoCancNFe();
			} catch (Exception e){
				log.warning(e.getLocalizedMessage());
			}
			
			if (m_processMsg != null && !m_processMsg.isEmpty())
				return false;		
		}

		// After Void
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_VOID);
		if (m_processMsg != null)
			return false;

		setIsCancelled(true);
		setProcessed(true);
		
		return true;
	}
	
	/**
	 * 	Close Document.
	 * 	Cancel not delivered Qunatities
	 * 	@return true if success 
	 */
	public boolean closeIt() {
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt() {
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt() {
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/**
	 * 	Re-activate
	 * 	@return false
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());
		
		//	Std Period open?
		MDocType dt = MDocType.get(getCtx(), getC_DocTypeTarget_ID());
		if (dt.get_ID() == 0) //NF terceiros, pega período documento próprio
			dt = AdempiereLBR.getNFBDocType(getAD_Org_ID(), isSOTrx(), false);
		
		if (dt != null && !MPeriod.isOpen(getCtx(), getDateAcct(), dt.getDocBaseType(), getAD_Org_ID())){
			m_processMsg = "@PeriodClosed@";
			return false;
		}
		
		// Before reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_BEFORE_REACTIVATE);
		if (m_processMsg != null)
			return false;

		//NFe já processada, não deixa reativar
		if (getlbr_NFeProt() != null && !getlbr_NFeProt().isEmpty()){
			if (!MSysConfig.getBooleanValue("LBR_ALLOW_REACTIVATE_NFE_PROCESSED", false, getAD_Client_ID())){
				m_processMsg = "Não é possível reativar uma NFe processada";
				return false;
			}
		}
		
		// After reActivate
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this,ModelValidator.TIMING_AFTER_REACTIVATE);
		if (m_processMsg != null)
			return false;

		setDocAction(DOCACTION_Complete);
		setProcessed(false);
		return true;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary() {
		StringBuilder sb = new StringBuilder(getDocumentNo());
		sb.append(": ").append(Msg.translate(getCtx(), "GrandTotal")).append("=")
		.append(getGrandTotal()).append(" (#").append(getLines(false).size()).append(")");
		return sb.toString();
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg() {
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID() {
		return getCreatedBy();
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt() {
		return getGrandTotal();
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID() {
		return 297; //BRL
	}	//	getC_Currency_ID
	
	/**
	 *	
	 */
	public String toString()  {
		return "MLBRNotaFiscal[ID=" + get_ID() + ", DocStatus='" + getDocStatus() + "']";
	}	//	toString
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be sabed
	 */
	protected boolean beforeSave (boolean newRecord) {
		
		int oldC_Invoice_ID = get_ValueOldAsInt("C_Invoice_ID");
		
		if (oldC_Invoice_ID > 0 && oldC_Invoice_ID != getC_Invoice_ID()){
			m_processMsg = "Não é possível alterar a fatura de uma nota fiscal";
			return false;
		}
			
		if (getC_DocType_ID() != getC_DocTypeTarget_ID())
			setC_DocType_ID(getC_DocTypeTarget_ID()); 	//	Define que o C_DocType_ID = C_DocTypeTarget_ID
		return true;
	}	//	beforeSave

	public boolean beforeDelete(){

		// Se for transmitida não exclui mais...
		if(getlbr_NFModel() != null && getlbr_NFModel().equals(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica) && 
				getlbr_NFeProt() != null && !getlbr_NFeProt().isEmpty())
			return false;
		
		if (getC_Invoice_ID() > 0){
			MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
			invoice.set_ValueOfColumn("LBR_NotaFiscal_ID", null);
			if (!invoice.save(get_TrxName()))
				return false;
		}

		if (!deleteLBR_NFTax()) return false;
		if (!deleteLBR_NFLineTax()) return false;
		if (!deleteLBR_NotaFiscalLine()) return false;
		if (!deleteLBR_NFDI()) return false;

		return true;
	} //beforeDelete
	
	/**
	 * 	Document Status is Complete or Closed
	 *	@return true if CO, CL or RE
	 */
	public boolean isComplete()
	{
		String ds = getDocStatus();
		return DOCSTATUS_Completed.equals(ds) 
			|| DOCSTATUS_Closed.equals(ds)
			|| DOCSTATUS_Reversed.equals(ds);
	}	//	isComplete
	
	/**
	 * Adiciona uma novo texto antes da descrição atual
	 * @param nfeDesc
	 */
	public void appendNFeDesc(String nfeDesc){
		if (nfeDesc == null)
			return;
		
		if (getlbr_NFeDesc() == null)
			setlbr_NFeDesc(nfeDesc);
		else
			setlbr_NFeDesc(nfeDesc + getlbr_NFeDesc());
	}
	
	/**
	 * NFe Própria = Processo para criar o XML e anexar ao objeto
	 * NFe Terceiros = Processo para verificar o status junto ao Sefaz
	 * @return
	 */
	private String processNFe(){
		
		if (isNFeProcessed()){
			return null;
		}
		
		if (!isNFe()){
			return processGinfes();
		}
		
		if (!islbr_IsOwnDocument()){
			try{
				getNFeStatus();
			} catch (Exception e){
				log.warning(e.getLocalizedMessage());
			}
		} //NFe terceiros
		else {
			if (getLBR_NFeLot_ID() > 0) {
						
				//Se lote não foi enviado apaga o lote ou processado
				MLBRNFeLot lot = new MLBRNFeLot(getCtx(),getLBR_NFeLot_ID(),get_TrxName());
				if (lot.getDocStatus().equals(MLBRNFeLot.DOCSTATUS_InProgress)){
					return "Lote já enviado. Processar retorno.";
				}
					
				if (lot.getlbr_NFeRecID() == null || lot.getlbr_NFeRecID().isEmpty()){
					log.fine("Lote excluído: " + lot.getDocumentNo());
					lot.delete(true); 
				}
						
				// Remove do Lote
				setLBR_NFeLot_ID(0);
				appendNFeDesc("["+TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyy-MM-dd HH:mm:ss")+"] NF removida do lote anterior\n");
			}
				
			if (getlbr_NFeID() != null && !getlbr_NFeID().isEmpty()){
				MAttachment attach = getAttachment(true);
				if (attach != null){
					if (attach.delete(true)) // Apaga o XML antigo
						appendNFeDesc("["+TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyy-MM-dd HH:mm:ss")+"] XML antigo deletado\n");
				}
			}
		
			try {
				NFeXMLGenerator.geraCorpoNFe(getCtx(),get_ID(),get_TrxName());
			} catch (AdempiereException e) {
				e.printStackTrace();
				return e.getLocalizedMessage();
			}
		} //NFe própria
		
		return null;
	} //processNFe
	
	/**
	 * Ginfes Própria = Processo para criar o XML e anexar ao objeto
	 * @return
	 */
	private String processGinfes(){
		
		if (!islbr_IsOwnDocument()){
			return null;
		}
		
		MDocType dt = new MDocType(getCtx(),getC_DocType_ID(),get_TrxName());
		I_W_C_DocType dtW = POWrapper.create(dt, I_W_C_DocType.class);
		
		//Não é Modelo 01 ou não possue ambiente
		if (!dtW.getlbr_NFModel().equals(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscal) ||
			dtW.getlbr_NFeEnv() == null){
			return null;
		}
		
		if (getLBR_NFeLot_ID() > 0) {
						
			//Se lote não foi enviado apaga o lote ou processado
			MLBRNFeLot lot = new MLBRNFeLot(getCtx(),getLBR_NFeLot_ID(),get_TrxName());
			if (lot.getDocStatus().equals(MLBRNFeLot.DOCSTATUS_InProgress)){
				return "Lote já enviado. Processar retorno.";
			}
					
			if (lot.getlbr_NFeRecID() == null || lot.getlbr_NFeRecID().isEmpty()){
				log.fine("Lote excluído: " + lot.getDocumentNo());
				lot.delete(true); 
			}
						
			// Remove do Lote
			setLBR_NFeLot_ID(0);
			appendNFeDesc("["+TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyy-MM-dd HH:mm:ss")+"] NF removida do lote anterior\n");
		}
				
		try {
			ProcGenerateRpsXml.generateXML(getCtx(),get_ID(),get_TrxName());
		} catch (AdempiereException e) {
			e.printStackTrace();
			return e.getLocalizedMessage();
		}
		
		return null;
	} //processGinfes
	
	/**
	 * Verifica o status da NFe junto ao Sefaz
	 * @throws Exception
	 */
	private void getNFeStatus() throws Exception{
		
		if (getlbr_NFeID() == null || getlbr_NFeID().isEmpty())
			return;
		
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			log.warning("Ambiente da NF-e deve ser preenchido.");
			return;
		}
		
		int C_Location_ID = islbr_IsOwnDocument() ? 
				getOrg_Location().getC_Location_ID() : getC_BPartner_Location().getC_Location_ID();
		MLocation bpLoc = new MLocation(getCtx(),C_Location_ID,get_TrxName());

		//PREPARA AMBIENTE PARA CONSULTA
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		MLBRNFeWebService ws = MLBRNFeWebService.get(orgInfo,MLBRNFeWebService.CONSULTA,bpLoc.getC_Region_ID());
		if (ws == null) {
			log.warning("Não foi encontrado um endereço WebServices válido.");
			return;
		}
		
		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.geraMsgConsultaProtocolo(oiW.getlbr_NFeEnv(), getlbr_NFeID())));

			NfeConsulta2Stub.NfeDadosMsg dadosMsg = NfeConsulta2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeConsulta2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecConsulta(bpLoc.getC_Region_ID());

			NfeConsulta2Stub.setAddress(ws);
			NfeConsulta2Stub stub = new NfeConsulta2Stub();

			String respStatus = stub.nfeConsultaNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
		    Document doc = builder.parse(new InputSource(new StringReader(respStatus)));

		    String cStat   = NFeUtil.getValue(doc, "cStat");
		    String xMotivo = NFeUtil.getValue(doc, "xMotivo");
		    
		    if (cStat != null && xMotivo != null){
		    	setlbr_NFeStatus(cStat);
		    	appendNFeDesc("["+TextUtil.timeToString(new Timestamp(System.currentTimeMillis()), "yyyy-MM-dd HH:mm:ss")+"] " + xMotivo + "\n");
		    }
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		
	} //getNFeStatus
	
	private String eventoCancNFe() throws Exception{
		
		if (getlbr_MotivoCancel() == null)
			return "Sem motivo de cancelamento";
		else if (getlbr_MotivoCancel().length() < 16 || getlbr_MotivoCancel().length() >= 255)
			return "Tamanho Motivo de cancelamento inválido. Min: 15 letras Max: 254 letras";

		MLBREventoNFe eventoNFe = new MLBREventoNFe(getCtx(),0,get_TrxName());
		eventoNFe.setEventType(X_LBR_EventoNFe.EVENTTYPE_Cancelamento);
		eventoNFe.setLBR_NotaFiscal_ID(get_ID());
		eventoNFe.setDateDoc(new Timestamp(System.currentTimeMillis()));
		eventoNFe.setDescription(getlbr_MotivoCancel());
		eventoNFe.save();
		//	Manually Process Event
		String status = eventoNFe.completeIt();
		eventoNFe.setDocStatus(status);
		eventoNFe.save();
		if (!X_LBR_EventoNFe.DOCSTATUS_Completed.equals(status)){
			return eventoNFe.getProcessMsg();
		}
		
		return null;
	} //eventoCancNFe
	
	public void setIsCancelled(MLBREventoNFe eventoNFe, InfEvento infReturn){
		setlbr_NFeProt(eventoNFe.getlbr_NFeProt());
		setDateTrx(eventoNFe.getDateTrx());
        setlbr_NFeStatus(eventoNFe.getlbr_NFeStatus());
        appendNFeDesc("["+infReturn.getDhRegEvento().replace('T', ' ')+"] " + infReturn.getxMotivo() + "\n");
		setIsCancelled(true);
		setProcessed(true);
		setDocStatus(X_LBR_NotaFiscal.DOCSTATUS_Voided);
		setDocAction(X_LBR_NotaFiscal.DOCACTION_None);
		if (getlbr_MotivoCancel() == null || getlbr_MotivoCancel().trim().isEmpty())
			setlbr_MotivoCancel(eventoNFe.getDescription());
	} //setIsCancelled
	
	private boolean setSiscomexTax(){

		BigDecimal TotalLinesAmt = getTotalLines();
		if (TotalLinesAmt.signum() == 0)
			return true;

		BigDecimal TotalSiscomexAmt = getlbr_TotalSISCOMEX();
		if (TotalSiscomexAmt.signum() == 0)
			return true;

		List<MLBRNotaFiscalLine> nfLines = getLines(false);
		for (MLBRNotaFiscalLine nfLine : nfLines){

			BigDecimal lineAmt = nfLine.getLineTotalAmt();
			//siscomexAmt = lineAmt/totalLinesAmt (porcentagem do total da nf)
			//siscomexAmt = TotalSiscomex*siscomexamt (siscomex proporcional)
			BigDecimal siscomexAmt = lineAmt.divide(TotalLinesAmt, TaxBR.MCROUND);
			           siscomexAmt = TotalSiscomexAmt.multiply(siscomexAmt);

			nfLine.setlbr_LineTotalSISCOMEX(siscomexAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
			nfLine.save();

			BigDecimal ICMSRate = nfLine.getICMSRate();
			if (ICMSRate == null || ICMSRate.signum() == 0)
				continue;

			//siscomex/(1-(ICMS/100))
			BigDecimal taxBaseAmt = siscomexAmt.divide((Env.ONE.subtract(
					                                   (ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND))))
					                                   ,TaxBR.MCROUND);
			//taxBase*(ICMS/100)
			BigDecimal taxAmt     = taxBaseAmt.multiply((ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND)));

			int LBR_TaxGroup_ID   = TaxBR.getTaxGroup_ID("ICMS");
			if (LBR_TaxGroup_ID > 0){
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax(LBR_TaxGroup_ID,nfLine);
				nfLineTax.setlbr_TaxBaseAmt(taxBaseAmt);
				nfLineTax.setlbr_TaxAmt(taxAmt);
				nfLineTax.setlbr_TaxRate(ICMSRate);
				nfLineTax.setDescription("SISCOMEX");
				if (!nfLineTax.save(get_TrxName())){
					return false;
				}
				setGrandTotal(getGrandTotal().add(taxAmt));
			}

		} //for lines

		return true;
	} //setSiscomexTax

	private boolean setFreightTax(){

		BigDecimal TotalLinesAmt = getTotalLines();
		if (TotalLinesAmt.signum() == 0)
			return true;

		BigDecimal TotalFreightAmt = getFreightAmt();
		if (TotalFreightAmt.signum() == 0)
			return true;

		List<MLBRNotaFiscalLine> nfLines = getLines(false);
		for (MLBRNotaFiscalLine nfLine : nfLines){

			BigDecimal ICMSRate = nfLine.getICMSRate();
			if (ICMSRate == null || ICMSRate.signum() == 0)
				continue;

			BigDecimal freightAmt = nfLine.getAvgExpenseAmt(TotalLinesAmt, TotalFreightAmt);

			//frete/(1-(ICMS/100))
			BigDecimal taxBaseAmt = freightAmt.divide((Env.ONE.subtract(
					                                   (ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND))))
					                                   ,TaxBR.MCROUND);
			//taxBase*(ICMS/100)
			BigDecimal taxAmt     = taxBaseAmt.multiply((ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND)));

			int LBR_TaxGroup_ID   = TaxBR.getTaxGroup_ID("ICMS");
			if (LBR_TaxGroup_ID > 0){
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax(LBR_TaxGroup_ID,nfLine);
				nfLineTax.setlbr_TaxBaseAmt(taxBaseAmt);
				nfLineTax.setlbr_TaxAmt(taxAmt);
				nfLineTax.setlbr_TaxRate(ICMSRate);
				nfLineTax.setDescription("FRETE");
				if (!nfLineTax.save(get_TrxName())){
					return false;
				}
				setGrandTotal(getGrandTotal().add(taxAmt));
			}

		} //for lines
		
		return true;
	} //setFreightTax
	
	private boolean setOtherChargesTax(){

		BigDecimal TotalLinesAmt = getTotalLines();
		if (TotalLinesAmt.signum() == 0)
			return true;

		BigDecimal ChargeAmt = getChargeAmt();
		if (ChargeAmt.signum() == 0)
			return true;

		List<MLBRNotaFiscalLine> nfLines = getLines(false);
		for (MLBRNotaFiscalLine nfLine : nfLines){

			BigDecimal ICMSRate = nfLine.getICMSRate();
			if (ICMSRate == null || ICMSRate.signum() == 0)
				continue;

			BigDecimal chargeAmt = nfLine.getAvgExpenseAmt(TotalLinesAmt, ChargeAmt);

			//despesa/(1-(ICMS/100))
			BigDecimal taxBaseAmt = chargeAmt.divide((Env.ONE.subtract(
					                                   (ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND))))
					                                   ,TaxBR.MCROUND);
			//taxBase*(ICMS/100)
			BigDecimal taxAmt     = taxBaseAmt.multiply((ICMSRate.divide(Env.ONEHUNDRED, TaxBR.MCROUND)));

			int LBR_TaxGroup_ID   = TaxBR.getTaxGroup_ID("ICMS");
			if (LBR_TaxGroup_ID > 0){
				MLBRNFLineTax nfLineTax = new MLBRNFLineTax(LBR_TaxGroup_ID,nfLine);
				nfLineTax.setlbr_TaxBaseAmt(taxBaseAmt);
				nfLineTax.setlbr_TaxAmt(taxAmt);
				nfLineTax.setlbr_TaxRate(ICMSRate);
				nfLineTax.setDescription("OUTRAS DESPESAS");
				if (!nfLineTax.save(get_TrxName())){
					return false;
				}
				setGrandTotal(getGrandTotal().add(taxAmt));
			}

		} //for lines
		
		return true;
	} //setOtherChargesTax

	private MBPartnerLocation getBPartnerLocation(MOrder order, MInvoice invoice, MInOut shipment){

		MBPartnerLocation bpLocation = null;

		if (invoice != null){
			bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
		}
		else if (shipment != null && shipment.getC_BPartner_Location_ID() != 0){
			bpLocation = new MBPartnerLocation(getCtx(),shipment.getC_BPartner_Location_ID(),get_TrxName());
		}
		else if (order != null && order.getC_BPartner_Location_ID() != 0){
			bpLocation = new MBPartnerLocation(getCtx(),order.getC_BPartner_Location_ID(),get_TrxName());
		}
		
		return bpLocation;
	} //getBPartnerLocation

	private void setOrgInfo(MOrg org){
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), org.get_ID(), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		MLocation orgLoc = new MLocation(getCtx(),orgInfo.getC_Location_ID(),get_TrxName());
		MCountry orgCountry = new MCountry(getCtx(),orgLoc.getC_Country_ID(),get_TrxName());

		String legalEntity = oiW.getlbr_LegalEntity();
		if (legalEntity == null || legalEntity.trim().isEmpty())
			legalEntity = org.getName();

		setOrg_Location_ID(orgLoc.getC_Location_ID());
		setlbr_OrgAddress1(orgLoc.getAddress1());
		setlbr_OrgAddress2(orgLoc.getAddress2());
		setlbr_OrgAddress3(orgLoc.getAddress3());
		setlbr_OrgAddress4(orgLoc.getAddress4());
		setlbr_OrgName(legalEntity);
		setlbr_OrgCity(orgLoc.getCity());
		setlbr_OrgPostal(orgLoc.getPostal());
		setlbr_OrgCountry(orgCountry.getCountryCode());
		setlbr_OrgRegion(orgLoc.getRegionName(true));
		setlbr_OrgCCM(oiW.getlbr_CCM());
		setlbr_CNPJ(oiW.getlbr_CNPJ());
		setlbr_IE(oiW.getlbr_IE());
	} //setOrgInfo

	private void setBPartner(MBPartner bpartner, MBPartnerLocation bpLocation){

		if (bpartner == null || bpLocation == null)
			return;

		MLocation location = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		I_C_Country country = location.getC_Country();
		
		setC_BPartner_ID(bpartner.getC_BPartner_ID());
		setC_BPartner_Location_ID(bpLocation.getC_BPartner_Location_ID());
		setBPName(bpartner.getName());
		setlbr_BPPhone(bpLocation.getPhone());
		//
		setlbr_BPCNPJ(BPartnerUtil.getCNPJ(bpartner,bpLocation));
		setlbr_BPIE(BPartnerUtil.getIE(bpartner,bpLocation));
		setlbr_BPSuframa(BPartnerUtil.getSuframa(bpartner,bpLocation));
		//
		setlbr_BPAddress1(location.getAddress1()); //Endereço
		setlbr_BPAddress2(location.getAddress2()); //Número
		setlbr_BPAddress3(location.getAddress3()); //Bairro
		setlbr_BPAddress4(location.getAddress4()); //Complemento
		setlbr_BPCity(location.getCity());
		setlbr_BPPostal(location.getPostal());
		setlbr_BPCountry(location.getC_Country().getCountryCode());
		setlbr_BPRegion(location.getRegionName(true)); 

		if (country.getC_Country_ID() != AdempiereLBR.BRASIL)
			setlbr_BPRegion(BPartnerUtil.EXTREG);
	} //setBPartner

	private void setDeliveryBPartner(MOrder order, MInvoice invoice, MInOut io){

		MBPartnerLocation bpLocation = null;
		MLocation         location   = null;

		if (io != null && io.get_ID() > 0) {
			bpLocation = new MBPartnerLocation(getCtx(),io.getC_BPartner_Location_ID(),get_TrxName());
			location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());

			setNoPackages(new BigDecimal(io.getNoPackages()));
			setlbr_PackingType((String)io.get_Value("lbr_PackingType")); //FIXME
			setlbr_GrossWeight((BigDecimal)io.get_Value("GrossWeight")); //FIXME
			setlbr_NetWeight((BigDecimal)io.get_Value("NetWeight"));     //FIXME
		}
		else if (invoice != null) {
			bpLocation = new MBPartnerLocation(getCtx(),invoice.getC_BPartner_Location_ID(),get_TrxName());
			location   = new MLocation(getCtx(),bpLocation.getC_Location_ID(),get_TrxName());
		}
		else return;
		
		I_C_Country country = location.getC_Country();
		//
		setlbr_Delivery_Location_ID(bpLocation.get_ID());
		setlbr_BPDeliveryCNPJ(BPartnerUtil.getCNPJ(getCtx(), bpLocation.getC_BPartner_ID(),bpLocation.get_ID()));   //CNPJ Entrega
		setlbr_BPDeliveryIE(BPartnerUtil.getIE(getCtx(), bpLocation.getC_BPartner_ID(),bpLocation.get_ID()));   //IE Entrega
		//
		setlbr_BPDeliveryAddress1(location.getAddress1()); //Endereço
		setlbr_BPDeliveryAddress2(location.getAddress2()); //Número
		setlbr_BPDeliveryAddress3(location.getAddress3()); //Bairro
		setlbr_BPDeliveryAddress4(location.getAddress4()); //Complemento
		setlbr_BPDeliveryCity(location.getCity());
		setlbr_BPDeliveryPostal(location.getPostal());
		setlbr_BPDeliveryCountry(country.getCountryCode());
		setlbr_BPDeliveryRegion(location.getRegionName(true)); 

		if (country.getC_Country_ID() != AdempiereLBR.BRASIL)
			setlbr_BPDeliveryRegion(BPartnerUtil.EXTREG);
		
		setFreightCostRule(order,io);
		setShipper(io);
	} //setDeliveryBPartner
	
	private void setFreightCostRule(MOrder order, MInOut io){
		if (order != null && order.get_ID() > 0)
			setFreightCostRule(order.getFreightCostRule());
		else if (io != null && io.get_ID() > 0)
			setFreightCostRule(io.getFreightCostRule());

		if (getFreightCostRule() == null || getFreightCostRule().isEmpty())
			setFreightCostRule(X_M_InOut.FREIGHTCOSTRULE_FreightIncluded);
	} //setFreightCostRule

	private void setShipper(MInOut io){

		MShipper shipper = new MShipper(getCtx(),0,get_TrxName());
		
		if (io != null && io.getDeliveryViaRule().equals(MInOut.DELIVERYVIARULE_Shipper))
			shipper = new MShipper(getCtx(),io.getM_Shipper_ID(),get_TrxName());
		
		setM_Shipper_ID(shipper.getM_Shipper_ID());
		setlbr_BPShipperName(shipper.getName());

		MBPartner transp = new MBPartner(getCtx(),shipper.getC_BPartner_ID(),get_TrxName());

		//Localização Transportadora
		MBPartnerLocation transpLocation = transp.getPrimaryC_BPartner_Location();
		if (transpLocation != null){
			
			MLocation location = new MLocation(getCtx(),transpLocation.getC_Location_ID(),get_TrxName());
			I_C_Country country = location.getC_Country();
			//
			setlbr_Ship_Location_ID(transpLocation.get_ID());
			setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ(transp,transpLocation));
			setlbr_BPShipperIE(BPartnerUtil.getIE(transp,transpLocation));
			//
			setlbr_BPShipperAddress1(location.getAddress1());
			setlbr_BPShipperAddress2(location.getAddress2());
			setlbr_BPShipperAddress3(location.getAddress3());
			setlbr_BPShipperAddress4(location.getAddress4());
			setlbr_BPShipperCity(location.getCity());
			setlbr_BPShipperPostal(location.getPostal());
			setlbr_BPShipperCountry(country.getCountryCode());
			
			if (location.get_ID() == 0){
				setlbr_BPShipperRegion("");
				setlbr_BPShipperCountry("");
			}
			else{
				setlbr_BPShipperRegion(location.getRegionName(true)); 
				if (country.getC_Country_ID() != AdempiereLBR.BRASIL)
					setlbr_BPShipperRegion(BPartnerUtil.EXTREG);
			}
		}
		else {
			setlbr_BPShipperCNPJ(BPartnerUtil.getCNPJ(transp,null));
			setlbr_BPShipperIE(BPartnerUtil.getIE(transp,null));
		}

	} //setShipper
	
	/**
	  * Código de Barras da NF Modelo 1 ou 1A impressa a Laser
	  */
	private void setBarCodeModel1A () {
		StringBuilder barcode1 = new StringBuilder();
		barcode1.append("1");
		barcode1.append(TextUtil.lPad(getDocumentNo(), 6));
		barcode1.append(TextUtil.lPad(getlbr_CNPJ(), 14));
		barcode1.append(getlbr_OrgRegion());
		barcode1.append(TextUtil.timeToString(getDateDoc(), "yyyyMMdd"));
		barcode1.append("2");
		//
		StringBuilder barcode2 = new StringBuilder();
		barcode2.append("2");
		barcode2.append(TextUtil.lPad(getlbr_BPCNPJ(), 14));
		barcode2.append(getlbr_BPRegion());
		barcode2.append(TextUtil.lPad(getGrandTotal(), 10));
		barcode2.append(TextUtil.lPad(getICMSAmt(), 10));
		//
		setlbr_Barcode1(barcode1.toString());
		setlbr_Barcode2(barcode2.toString());
	}	//	setBarCodeModel1A

	public void setInvoice(MInvoice invoice) throws AdempiereException{
		
		if (invoice == null)
			throw new AdempiereException(Msg.getMsg(getCtx(), "Invoice") + " = null");
		
		if (!cleanOldData())
			throw new AdempiereException("Erro ao apagar dados antigos da Nota Fiscal");
		
		/**
		 * Objetos
		 */
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), invoice.getAD_Org_ID(),get_TrxName());
		MOrder order = new MOrder(getCtx(),invoice.getC_Order_ID(),get_TrxName());
		int M_InOut_ID = AdempiereLBR.getM_InOut_ID(invoice.get_ID(), get_TrxName());
		MInOut io = new MInOut(getCtx(),M_InOut_ID,get_TrxName());
		MBPartner bpartner = new MBPartner(getCtx(),invoice.getC_BPartner_ID(),get_TrxName());
		
		/**
		 * Wrappers
		 */
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo,I_W_AD_OrgInfo.class);
		I_W_C_Invoice iW   = POWrapper.create(invoice,I_W_C_Invoice.class);
		I_W_C_DocType dtW  = POWrapper.create(MDocType.get(getCtx(), invoice.getC_DocType_ID()), I_W_C_DocType.class);
		
		//Define Ids
		setAD_Org_ID(invoice.getAD_Org_ID());
		setC_Invoice_ID(invoice.get_ID());
		setC_Order_ID(order.get_ID());
		setM_InOut_ID(io.get_ID());
		setC_PaymentTerm_ID(invoice.getC_PaymentTerm_ID());
		
		//Informações do Documento
		setIsSOTrx(invoice.isCreditMemo() ? !invoice.isSOTrx() : invoice.isSOTrx());
		setlbr_IsOwnDocument((isSOTrx() || (iW.getlbr_TransactionType().equals("IMP")) ? true : false));
		if (!islbr_IsOwnDocument() && dtW.islbr_IsOwnDocument()) //Exceção no tipo de documento
			setlbr_IsOwnDocument(true);
		
		setlbr_TransactionType(iW.getlbr_TransactionType());
		setlbr_NFModel(iW.getlbr_NFModel());
		setDateDoc(new Timestamp(System.currentTimeMillis()));
		setlbr_DateInOut(invoice.getDateAcct());
		
		if (islbr_IsOwnDocument()){
			MDocType docType = AdempiereLBR.getNFBDocType(invoice, getAD_Org_ID(), isSOTrx(), oiW.islbr_IsScan());
			if (docType == null)
				throw new AdempiereException("Tipo de documento para Nota Fiscal não encontrado");
			
			setC_DocTypeTarget_ID(docType.get_ID());
			setlbr_NFModel(docType.get_ValueAsString(I_W_C_DocType.COLUMNNAME_lbr_NFModel));
		}
		else{
			if (iW.getlbr_NFEntrada() == null && iW.getlbr_NFEntrada().trim().isEmpty())
				throw new AdempiereException ("Número da Nota Fiscal de Entrada inválido");
			
			setC_DocTypeTarget_ID(0);
			setDocumentNo(iW.getlbr_NFEntrada());
			setlbr_NFeID(invoice.get_ValueAsString("lbr_NFeID")); //FIXME
			
			setDateDoc(invoice.getDateInvoiced());
		}
		
		//Dados da Empresa, Parceiro e Entrega
		setOrgInfo(MOrg.get(getCtx(), orgInfo.get_ID()));
		
		MBPartnerLocation bpLocation = getBPartnerLocation(order,invoice,io);
		setBPartner(bpartner,bpLocation);
		setDeliveryBPartner(order,invoice,io);
		
		//Observações
		setlbr_BillNote(iW.getlbr_BillNote());
		setlbr_ShipNote(iW.getlbr_ShipNote());
		
		StringBuilder nfDesc = new StringBuilder();
		if (order != null && order.get_ID() > 0)
			nfDesc.append(order.getDocumentNo() + " "); //Número do Pedido

		if (invoice.getPOReference() != null && !invoice.getPOReference().trim().isEmpty())
			nfDesc.append(invoice.getPOReference() + " "); //Referência da Fatura

		if (invoice.getDescription() != null && !invoice.getDescription().trim().equals(""))
			nfDesc.append("\n" + invoice.getDescription()); //Observação da Fatura
		
		String description = order.get_ValueAsString("lbr_NFDescription"); //Observação NF
		if (description != null && !description.trim().equals("")) 
			nfDesc.append("\n" + description);

		setDescription(TextUtil.itrim(nfDesc.toString())); //Observação Nota Fiscal
		setBarCodeModel1A();
		save(get_TrxName());
		//
		createLines(invoice.getLines());
		setGrandTotal(getGrandTotal().subtract(getDiscountAmt()));
		//RATEIO VALORES DE FRETE E SISCOMEX
		setFreightTax();
		setSiscomexTax();
		setOtherChargesTax();
		save(get_TrxName());
	} //setInvoice
		
	private void createLines(MInvoiceLine[] iLines) throws AdempiereException{
		
		if (get_ID() == 0)
			throw new AdempiereException(Msg.getMsg(getCtx(), "SaveParentFirst"));
		
		if (iLines == null || iLines.length <= 0)
			throw new AdempiereException("Nenhuma linha informada");
		
		for(MInvoiceLine iLine : iLines){
			new MLBRNotaFiscalLine(this,iLine);
		}
		
		setlbr_CFOPNote(getCFOPNote()); //Natureza da Operação
		setlbr_CFOPReference(getCFOPReference()); //Lista de CFOPs
	} //setLines
		
	private boolean cleanOldData(){
		if (!deleteLBR_NFTax()) return false;	
		if (!deleteLBR_NFLineTax()) return false;
		if (!deleteLBR_NotaFiscalLine()) return false;
		if (!deleteLBR_NFDI()) return false;
		
		//Valores
		setGrandTotal(Env.ZERO);  //Total NF
		setDiscountAmt(Env.ZERO); //Total de Descontos
		setTotalLines(Env.ZERO);  //Total de Produtos
		setlbr_ServiceTotalAmt(Env.ZERO); //Total de Serviços
		setFreightAmt(Env.ZERO); //Frete
		setlbr_InsuranceAmt(Env.ZERO); //Seguro
		setlbr_TotalSISCOMEX(Env.ZERO); //Siscomex
		//Entrega
		setNoPackages(null);
		setlbr_PackingType(null);
		setlbr_GrossWeight(null);
		setlbr_NetWeight(null);
		
		return true;	
	} //cleanOldData

	private boolean deleteLBR_NotaFiscalLine (){
		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NotaFiscalLine.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(get_ID());

		if (DB.executeUpdate(sql.toString(), get_TrxName()) == -1)
			return false;

		return true;
	} //deleteLBR_NotaFiscalLine

	private boolean deleteLBR_NFTax (){
		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NFTax.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(get_ID());

		if (DB.executeUpdate(sql.toString(), get_TrxName()) == -1)
			return false;

		return true;
	} //deleteLBR_NFTax

	private boolean deleteLBR_NFLineTax (){
		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NFLineTax.Table_Name)
		   .append(" WHERE LBR_NotaFiscalLine_ID IN ")
		   .append("(SELECT LBR_NotaFiscalLine_ID FROM ")
		   .append(X_LBR_NotaFiscalLine.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(get_ID()).append(")");

		if (DB.executeUpdate(sql.toString(), get_TrxName()) == -1)
			return false;

		return true;
	} //deleteLBR_NFLineTax
	
	private boolean deleteLBR_NFDI (){
		StringBuffer sql = new StringBuffer("DELETE FROM ")
		   .append(X_LBR_NFDI.Table_Name)
		   .append(" WHERE LBR_NotaFiscal_ID = ")
		   .append(get_ID());

		if (DB.executeUpdate(sql.toString(), get_TrxName()) == -1)
			return false;

		return true;
	} //deleteLBR_NFDI
	
	public BigDecimal getValorTotTrib(){
		
		BigDecimal valorTotTrib = Env.ZERO;
		List<MLBRNotaFiscalLine> lines = getLines(false);
		for (MLBRNotaFiscalLine line : lines){
			valorTotTrib = valorTotTrib.add(line.getlbr_ValorTotTrib());
		}
		
		return valorTotTrib;
	} //getValorTotTrib
	
	/**
	 * retorna o valor do imposto
	 * @param taxIndicator (Ex. IPI, ICMS)
	 * @return valor do imposto
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt
	
	/**
	 * retorna a base de cálculo do imposto
	 * @param taxIndicator (Ex. IPI, ICMS)
	 * @return valor da base de cálculo
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFTax " +
		             "WHERE LBR_NotaFiscal_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt
	
	/**
	 * retorna o valor do imposto
	 * @param taxIndicator (Ex. PIS, COFINS)
	 * @param onlyService - true, só impostos de serviço, false, só impostos exceto serviços
	 * @return valor do imposto
	 */
	public BigDecimal getTaxAmt(String taxIndicator, boolean onlyService){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine " +
		             "WHERE LBR_NotaFiscal_ID = ? AND lbr_CFOPName" + (onlyService ? " LIKE " : " NOT LIKE ") + "'%.933')"  +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmtService
		
	/**
	 * retorna a base de cálculo do imposto
	 * @param taxIndicator (Ex. PIS, COFINS)
	 * @param onlyService - true, só impostos de serviço, false, só impostos exceto serviços
	 * @return valor da base de cálculo
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator, boolean onlyService){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine " +
		             "WHERE LBR_NotaFiscal_ID = ? AND lbr_CFOPName" + (onlyService ? " LIKE " : " NOT LIKE ") + "'%.933')"  +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseAmtService

	/**
	 * retorna a alíquota do imposto
	 * Se existe mais de uma alíquota na NF para o mesmo imposto é calculada a média
	 * @param taxIndicator (Ex. IPI, ICMS)
	 * @return alíquota do imposto
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID IN " +
		             "(SELECT LBR_NotaFiscalLine_ID FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID = ?) " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscal_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate
	
	/**
	 * @return Base de Cálculo ICMS
	 */
	public BigDecimal getICMSBase() {
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 * @return Base de Cálculo ICMSST
	 */
	public BigDecimal getICMSSTBase() {
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSBaseST

	/**
	 * @return Valor ICMS
	 */
	public BigDecimal getICMSAmt() {
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	/**
	 * @return Alíquota ICMS
	 */
	public BigDecimal getICMSRate() {
		return getTaxRate("ICMS");
	}	//	getICMSRate

	/**
	 * @return Valor ICMS ST
	 */
	public BigDecimal getICMSSTAmt() {
		return getTaxAmt("ICMSST");
	}	//	getICMSAmtST

	/**
	 * @return Valor IPI
	 */
	public BigDecimal getIPIAmt() {
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 * @return Valor PIS
	 */
	public BigDecimal getPISAmt() {
		return getTaxAmt("PIS");
	}	//	getPISAmt

	/**
	 * @return Valor COFINS
	 */
	public BigDecimal getCOFINSAmt() {
		return getTaxAmt("COFINS");
	}	//	getCOFINSAmt
	
	/**
	 * Retorna a base de cálculo e o valor do ICMS para as linhas de ativo fixo
	 * @return BigDecimla[] 0 = Base de Cálculo, 1 = Valor do Imposto
	 */
	public BigDecimal[] getAssetTaxAmt(){
		
		BigDecimal[] assetAmt = new BigDecimal[]{Env.ZERO,Env.ZERO};
		
		List<MLBRNotaFiscalLine> nfLines = getLines();
		
		for (MLBRNotaFiscalLine nfLine : nfLines){
			if (!nfLine.isAsset())
				continue;
			
			assetAmt[0] = assetAmt[0].add(nfLine.getICMSBaseAmt());
			assetAmt[1] = assetAmt[1].add(nfLine.getICMSAmt());
		}
		
		return assetAmt;
	} //getAssetAmt
	
	/**
	 * retorno o custo da nota fiscal
	 * @param C_AcctSchema_ID
	 * @param C_CostElement_ID
	 * @return custo
	 */
	public BigDecimal getCost(int C_AcctSchema_ID, int C_CostElement_ID){

		BigDecimal currentCost = Env.ZERO;

		List<MLBRNotaFiscalLine> lines = getLines();
		for(MLBRNotaFiscalLine line : lines){
			int M_Product_ID = line.getM_Product_ID();
			if (M_Product_ID == 0)
				continue;

			MProduct product = new MProduct(getCtx(),M_Product_ID,get_TrxName());
			MAcctSchema as   = MAcctSchema.get(getCtx(), C_AcctSchema_ID);

			MCost cost = MCost.get(product,0,as,0,C_CostElement_ID,get_TrxName());
			if (cost != null)
				currentCost = currentCost.add(cost.getCurrentCostPrice().multiply(line.getQty()));
		}

		return currentCost.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getCost
	
	
	/**
	 * Retorna o desconto proporcional ao base amt
	 * Usado para saber o desconto das linhas só de serviço ou só de produtos
	 * @param baseAmt
	 * @return
	 */
	public BigDecimal getDiscountAmt(BigDecimal baseAmt){

		if (baseAmt.signum() <= 0 || baseAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal discountAmt = baseAmt.divide(getTotalLines().add(getlbr_ServiceTotalAmt()), TaxBR.MCROUND);
		           discountAmt = getDiscountAmt().multiply(discountAmt);

		return discountAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getDiscountAmt

	/**
	 * 	Retorna o CFOP das linhas, no caso de mais de 1 CFOP,
	 * 		retorna o ref. ao Maior Valor
	 *
	 * @return CFOP
	 */
	public MLBRCFOP getLBR_CFOP()
	{
		String sql = "SELECT LBR_CFOP_ID " +
					 "FROM LBR_NotaFiscalLine " +
					 "WHERE LBR_NotaFiscal_ID=? ORDER BY LineTotalAmt DESC";

		return new MLBRCFOP(getCtx(),DB.getSQLValue(get_TrxName(), sql, get_ID()),get_TrxName());
	}
	
	public String getCFOPNote() {
		return TextUtil.retiraPontoFinal(m_CFOPNote);
	}

	public String getCFOPReference() {
		return TextUtil.retiraPontoFinal(m_CFOPReference);
	}

	/**************************************************************************
	 *  getTaxes
	 *  @return X_LBR_NFLineTax[] taxes
	 */
	public X_LBR_NFTax[] getTaxes(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFLineTax> list = query.list();

		return list.toArray(new X_LBR_NFTax[list.size()]);
	} //getTaxes

	/**************************************************************************
	 *  getDIs
	 *  @return X_LBR_NFDI[] taxes
	 */
	public X_LBR_NFDI[] getDIs(){

		String whereClause = "LBR_NotaFiscal_ID = ?";

		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscal_ID()});

		List<X_LBR_NFDI> list = query.list();

		return list.toArray(new X_LBR_NFDI[list.size()]);
	}	//	getDIs
		
	/**
	 * retorna o DocumentNo sem a série
	 * @param withoutSerie = true (sem série), false = super.getDocumentNo()
	 * @return documentNo
	 */
	public String getDocumentNo(boolean withoutSerie) {
		
		String documentNo = getDocumentNo();
		
		if (withoutSerie && documentNo != null && !documentNo.startsWith("-")){
			if (documentNo.indexOf('-') == -1){
				documentNo = TextUtil.toNumeric(documentNo);
			}
			else{
				documentNo = TextUtil.toNumeric(documentNo.substring(0, documentNo.indexOf('-')));
			}
			
			if (!documentNo.isEmpty())
				return String.valueOf(Integer.parseInt(documentNo));
		}
		
		return documentNo;
	}//getDocumentNo

	/**
	 * Extrai a série do DocumentNo ou 
	 * se for documento própria olha a série do tipo de documento
	 * @return serieNo
	 */
	public String getSerieNo(){
		
		String serieNo = getDocumentNo();
		if (serieNo != null && serieNo.indexOf('-') != -1 && !serieNo.endsWith("-"))
			serieNo = serieNo.substring(1+serieNo.indexOf('-'), serieNo.length());
		else
			serieNo = "";
		
		if (serieNo.isEmpty() && islbr_IsOwnDocument()){
			MDocType dt = new MDocType(getCtx(),getC_DocTypeTarget_ID(),get_TrxName());
			serieNo = dt.get_ValueAsString(I_W_C_DocType.COLUMNNAME_lbr_NFSerie);
		}
		return serieNo;
	}
	
	/**
	 * Retorna a data utilizada para contabilização
	 * @return Data de Entrada/Saída ou Data Documento
	 */
	public Timestamp getDateAcct(){
		return getlbr_DateInOut() == null ? getDateDoc() : getlbr_DateInOut();
	}
		
	/**
	 * Indicador do tipo de pagamento (Utilizado na NFe e SPED)
	 * 
	 * PADRAO = A VISTA
	 * SE POSSUIR INVOICE E ITENS EM ABERTO VERIFICA SE E PARCELADO OU A PRAZO, OU MANTEM O A VISTA
	 * SENAO = SEM COBRANCA
	 * 
	 * @return String indPag
	 */
	public String getIndPag(){
		
		String indPag = "0"; //A VISTA
		
		MInvoice invoice = new MInvoice(getCtx(),getC_Invoice_ID(),get_TrxName());
		if (invoice.get_ID() != 0){
			MDocType dt = new MDocType(getCtx(),invoice.getC_DocType_ID(),get_TrxName());
			if (dt.get_ValueAsBoolean(I_W_C_DocType.COLUMNNAME_lbr_HasOpenItems)){
				if (invoice.isPayScheduleValid()){
					indPag = "2"; //PARCELADO
				}
				else{
					MPaymentTerm pt = new MPaymentTerm(getCtx(),invoice.getC_Payment_ID(),get_TrxName());
					if (pt.getNetDays() > 0)
						indPag = "1"; //PRAZO
				}
			}
			else{
				indPag = "9"; //SEM COBRANCA
			}
		}
		else{
			indPag = "9"; //SEM COBRANCA
		}

		return indPag;
	} //getIndPag
	
	/**
	 * Verifica se a Nota Fiscal é uma operação que "gera" receita.
	 * Utilizado para o SPED EFD Pis/Cofins
	 * @return 
	 */
	public boolean isRevenue(){
		for(MLBRNotaFiscalLine line : getLines()){
			MLBRCFOP cfop = new MLBRCFOP(getCtx(),line.getLBR_CFOP_ID(),get_TrxName());
			return cfop.isRevenue();
		}
		return true;
	} //isRevenue
	
	/**
	 * Verifica se é uma Nota Fiscal Eletrônica (Modelo 55 (NFe) ou Model 57 (CTe)
	 * @return boolean isNFe
	 */
	public boolean isNFe(){
		
		String model = getlbr_NFModel();
		if (model == null){
			log.severe("Modelo NF = null");
			return false;
		}
		
		if (model.equals(MLBRNotaFiscal.LBR_NFMODEL_NotaFiscalEletrônica) ||
			model.equals(MLBRNotaFiscal.LBR_NFMODEL_ConhecimentoDeTransporteEletrônicoCT_E))
			return true;
		
		return false;
	} //isNFe
	
	public boolean isNFeProcessed(){
		
		if (getlbr_NFeStatus() == null || getlbr_NFeStatus().isEmpty())
			return false;
		
		if (getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E) ||
			getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_101_CancelamentoDeNF_EHomologado) ||
			getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_150_AutorizadoOUsoDaNF_EAutorizaçãoForaDePrazo) ||
			getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_151_CancelamentoDeNF_EHomologadoForaDePrazo) ||
			getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente) ||
			getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_302_UsoDenegadoIrregularidadeFiscalDoDestinatário))
			return true;
		
		return false;
	} //isNFeProcessed
		
	public int customizeValidActions(String docStatus, Object processing,
			String orderType, String isSOTrx, int AD_Table_ID,
			String[] docAction, String[] options, int index) {

		//	Draft..  DR/IP/IN
		if (docStatus.equals(DocumentEngine.STATUS_Drafted) || docStatus.equals(DocumentEngine.STATUS_InProgress)
			|| docStatus.equals(DocumentEngine.STATUS_Invalid)) {
			options[index++] = DocumentEngine.ACTION_Prepare;
			options[index++] = DocumentEngine.ACTION_Close;
		}
		//	Complete                    ..  CO
		else if (docStatus.equals(DocumentEngine.STATUS_Completed))
		{
			options[index++] = DocumentEngine.ACTION_Void;
			options[index++] = DocumentEngine.ACTION_ReActivate;
		}
		
		return index;
	} //customizeValidActions
	
} //MLBRNotaFiscal