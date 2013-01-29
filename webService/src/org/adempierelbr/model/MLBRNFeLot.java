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
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.nfe.beans.enviNFe.InfRec;
import org.adempierelbr.nfe.beans.enviNFe.RetEnviNFe;
import org.adempierelbr.nfe.beans.retRecepcao.InfProt;
import org.adempierelbr.nfe.beans.retRecepcao.ProtNFe;
import org.adempierelbr.nfe.beans.retRecepcao.RetConsReciNFe;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.model.Query;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.CLogger;
import org.compiere.util.DB;

import br.inf.portalfiscal.www.nfe.wsdl.nferecepcao2.NfeRecepcao2Stub;
import br.inf.portalfiscal.www.nfe.wsdl.nferetrecepcao2.NfeRetRecepcao2Stub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 *  LBR_NFeLot Model
 *  
 *  Class that process/send documents to http://www.nfe.fazenda.gov.br/
 *  Class that process/send documents to http://www.ginfes.com.br
 *  
 *  @author Mario Grigioni
 *  @contributor Ricardo Alexsander (old version)
 *  @version $Id: MLBRNFeLot.java,v 2.0 29/05/2012 14:38:00 mgrigioni Exp $
 */
public class MLBRNFeLot extends X_LBR_NFeLot implements DocAction
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7334155793468273538L;
	
	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(MLBRNFeLot.class);
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeLot (Properties ctx, int ID, String trx) {
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeLot (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Process to send NFeLot (WebService MLBRNFeWebService.RECEPCAO)
	 * @return boolean success
	 * @throws Exception
	 */
	private boolean sendNFeLot() throws Exception {

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			m_processMsg = "Ambiente da NF-e deve ser preenchido.";
			return false;
		}
				
		if (getlbr_NFeRecID() != null && !getlbr_NFeRecID().trim().isEmpty()){
			log.fine("Lote já enviado");
			m_processMsg = null;
			return true;
		}
		
		int count = getCount();
		if (count <= 0){
			m_processMsg = "Lote vazio";
			return false;
		}
		
		if (count > 50){
			m_processMsg = "Limite de Notas Fiscais por Lote = 50";
			return false;
		}
		
		//PREPARA AMBIENTE PARA ENVIO
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		MLBRNFeWebService ws = MLBRNFeWebService.get(orgInfo,MLBRNFeWebService.RECEPCAO);
		if (ws == null){
			m_processMsg = "Não foi encontrado um endereço WebServices válido.";
			return false;
		}

		try {
			
			String nfeLotDadosMsg 	= createNFeXMLFile();
			nfeLotDadosMsg   = "<nfeDadosMsg>" + nfeLotDadosMsg + "</nfeDadosMsg>";

			XMLStreamReader dadosXML = XMLInputFactory.newInstance()
					.createXMLStreamReader(new StringReader(nfeLotDadosMsg));

			NfeRecepcao2Stub.NfeDadosMsg dadosMsg = NfeRecepcao2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeRecepcao2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecRecepcao(orgInfo.getC_Location().getC_Region_ID());

			NfeRecepcao2Stub.setAddress(ws);
			NfeRecepcao2Stub stub = new NfeRecepcao2Stub();

			String respLote = stub.nfeRecepcaoLote2(dadosMsg, cabecMsgE).getExtraElement().toString();

			//	Validar resposta
			String validation = ValidaXML.validaRetEnviNFe(respLote);
			if (!validation.isEmpty()){
				m_processMsg = validation;
				return false;
			}
			
			XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.processAnnotations(new Class[]{InfRec.class,RetEnviNFe.class});
			//
			RetEnviNFe retEnviNFe = (RetEnviNFe)xstream.fromXML (NFeUtil.XML_HEADER + respLote);
			
			MAttachment attachLotNFe = createAttachment();
			File attachFile = new File(TextUtil.generateTmpFile(respLote, getDocumentNo()+NFeUtil.EXT_RECIBO));
			attachLotNFe.addEntry(attachFile);
			attachLotNFe.save();
			
	        String cStat    = retEnviNFe.getcStat();
	        String xMotivo  = retEnviNFe.getxMotivo();
	        String dhRecbto = retEnviNFe.getDhRecbto();
	       
	        String nRec = null;
	        List<InfRec> infRec = retEnviNFe.getInfRec();
	        if (infRec.size() > 0){
	        	nRec = infRec.get(0).getnRec();
	        }
	        
	        String lotDesc = "["+dhRecbto.replace('T', ' ')+"] " + xMotivo + "\n";
	        
	        setlbr_NFeRecID(nRec);
	        setlbr_NFeStatus(cStat);
	        setDateTrx(NFeUtil.stringToTime(dhRecbto));
	       
	        if (getDescription() == null)
	        	setDescription(lotDesc);
	        else
	        	setDescription(lotDesc + getDescription());   
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
			return false;
		}

		return true;
	} //sendNFeLot
	
	/**
	 * Process to check NFeLot (MLBRNFeWebService.RETRECEPCAO)
	 * @return
	 * @throws Exception
	 */
	private boolean checkNFeLot() throws Exception {

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), getAD_Org_ID(), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			m_processMsg = "Ambiente da NF-e deve ser preenchido.";
			return false;
		}
		
		if (getlbr_NFeRecID() == null || getlbr_NFeRecID().isEmpty()){
			m_processMsg = "Lote não enviado";
		}

		//PREPARA AMBIENTE PARA ENVIO
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		MLBRNFeWebService ws = MLBRNFeWebService.get(orgInfo,MLBRNFeWebService.RETRECEPCAO);
		if (ws == null) {
			m_processMsg = "Não foi encontrado um endereço WebServices válido.";
			return false;
		}
			
		try{
			
			String nfeConsultaDadosMsg 	= NFeUtil.geraMsgConsultaLote(oiW.getlbr_NFeEnv(),getlbr_NFeRecID());

			//	Validação envio
			String validation = ValidaXML.validaConsReciNFe(nfeConsultaDadosMsg);
			if (!validation.isEmpty()){
				m_processMsg = validation;
				return false;
			}
			
			nfeConsultaDadosMsg   = "<nfeDadosMsg>" + nfeConsultaDadosMsg + "</nfeDadosMsg>";
			XMLStreamReader dadosXML = XMLInputFactory.newInstance()
					.createXMLStreamReader(new StringReader(nfeConsultaDadosMsg));

			NfeRetRecepcao2Stub.NfeDadosMsg dadosMsg = NfeRetRecepcao2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeRetRecepcao2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecRetRecepcao(orgInfo.getC_Location().getC_Region_ID());

			NfeRetRecepcao2Stub.setAddress(ws);
			NfeRetRecepcao2Stub stub = new NfeRetRecepcao2Stub();

			String respConsulta = stub.nfeRetRecepcao2(dadosMsg, cabecMsgE).getExtraElement().toString();
			//	Validação recebimento
			validation = ValidaXML.validaRetConsReciNFe(respConsulta);
			if (!validation.isEmpty()){
				m_processMsg = validation;
				return false;
			}

			XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.processAnnotations(new Class[]{InfProt.class,ProtNFe.class,RetConsReciNFe.class});
			//
			RetConsReciNFe retCons = (RetConsReciNFe)xstream.fromXML (NFeUtil.XML_HEADER + respConsulta);
			
		    if (retCons.getcStat().equals(MLBRNFeLot.LBR_NFESTATUS_104_LoteProcessado) || 
		    	retCons.getcStat().equals(MLBRNFeLot.LBR_NFESTATUS_999_RejeiçãoErroNãoCatalogadoInformarAMensagemDeErroCapturadoNoTratamentoDaExceção)) {

			    for (ProtNFe protNFe : retCons.getProtNFe()) {
		        	String error = NFeUtil.authorizeNFe(protNFe,get_TrxName());
		        	if (error != null){
		        		m_processMsg = error;
		        		throw new Exception(error);
		        	}
		        }	//	for
			    
			    setProcessed(true);
			}	//	if
		    //
		    Timestamp now = new Timestamp(new Date().getTime());
		    String lotDesc = "["+TextUtil.timeToString(now, "yyyy-MM-dd HH:mm:ss")+"] "+retCons.getxMotivo()+"\n";
		    
		    setlbr_NFeStatus(retCons.getcStat());
		    setDateTrx(now);
		    
		    if (getDescription() == null)
		    	setDescription(lotDesc);
		    else
		    	setDescription(lotDesc + getDescription());
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return true;
	}	//checkNFeLot
	
	/**
	 * Create Lot XML File
	 * @return String (xmlFile)
	 * @throws Exception
	 */
	private String createNFeXMLFile () throws Exception {
		
		MAttachment attach = getAttachment(true);
		if (attach != null) {
			if (!attach.delete(true)) // Apaga o XML antigo
				log.warning("Erro ao apagar lote antigo");
		}
		
		List<String> xmlNFes = getXMLs();
		StringBuilder nfesLote = new StringBuilder("");
		
		for (String xmlNFe : xmlNFes) {
			File xml = new File(xmlNFe);
	        nfesLote.append(NFeUtil.XMLtoString(xml));
		}
		
		String xmlLote = NFeUtil.geraCabecLoteNFe(getDocumentNo()) + nfesLote.toString() + "</enviNFe>";
		String validation = ValidaXML.validaEnviNFe(xmlLote);
		if (!validation.isEmpty()) {
			String error = "Validation XML LOT Error: "+validation;
			log.severe(error);
			throw new AdempiereException(error);
		}
		
		File attachFile = new File(TextUtil.generateTmpFile(xmlLote, getDocumentNo()+NFeUtil.EXT_ENV_LOTE));

		//Verificação tamanho do Arquivo - Erro 214 / Tamanho Arquivo
		String error = NFeUtil.validateSize(attachFile);
		if (error != null) {
			log.severe(error);
			throw new AdempiereException(error);
		}

		MAttachment attachLotNFe = createAttachment();
		attachLotNFe.addEntry(attachFile);
		attachLotNFe.save();
		
		return xmlLote;
	} //createNFeXMLFile

	/**
	 * Check if Lot isEmpty (No Documents)
	 * @return boolean
	 */
	private int getCount () {
		int count = DB.getSQLValue(get_TrxName(),
				"SELECT COUNT(*) FROM LBR_NotaFiscal WHERE LBR_NFeLot_ID=?", get_ID());
		
		return count;
	} //isEmpty

	/**
	 * XMLs
	 * @return List<String> XML
	 */
	private List<String> getXMLs () {
		
		MTable table = MTable.get(getCtx(), MLBRNotaFiscal.Table_Name);
		Query query =  new Query(getCtx(), table, "LBR_NFeLot_ID=?", get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NFeLot_ID()});
	 		  query.setOrderBy("DocumentNo, LBR_NotaFiscal_ID");
		
	 	List<String> xmls = new ArrayList<String>();
	 	List<MLBRNotaFiscal> notas = query.list();
	 	
	 	for (MLBRNotaFiscal nf : notas) {
	 		if (nf.getlbr_NFeID() == null || nf.getlbr_NFeID().isEmpty())
	 			continue;

	 		File xml = NFeUtil.getAttachmentEntryFile(nf.getAttachment().getEntry(0));
	 		xmls.add(xml.toString());
	 	}

		return xmls;
	} //	getXMLs
	
	protected boolean beforeDelete(){

		if (!(getlbr_NFeRecID() == null || getlbr_NFeRecID().trim().isEmpty())){
			m_processMsg = "Não é possível apagar um lote já enviado";
			return false;
		}
		
		String sql = "UPDATE LBR_NotaFiscal SET LBR_NFeLot_ID = null WHERE LBR_NFeLot_ID = ?";

		if (DB.executeUpdate(sql, get_ID(), get_TrxName()) == -1)
			return false;

		return true;
	} //beforeDelete
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo() {
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
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

		if (getModelNo().equals(MLBRNFeLot.MODELNO_NFe)){
			try {
				if (!sendNFeLot())
					return DocAction.STATUS_Invalid;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if (getModelNo().equals(MLBRNFeLot.MODELNO_Ginfes)){
			//TODO
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
		if (!m_justPrepared)
		{
			String status = prepareIt();
			if (!DocAction.STATUS_InProgress.equals(status))
				return status;
		}

		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_COMPLETE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;
		
		log.info(toString());
		
		if (getModelNo().equals(MLBRNFeLot.MODELNO_NFe)){
			try {
				if (!checkNFeLot())
					return DocAction.STATUS_Invalid;
				else if (!isProcessed()) //Em processamento na Fazenda
					return DocAction.STATUS_InProgress;
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		else if (getModelNo().equals(MLBRNFeLot.MODELNO_Ginfes)){
			//TODO
		}
		
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;	
			return DocAction.STATUS_Invalid;
		}

		setProcessed(true);
		setDocAction(DOCACTION_None);
		return DocAction.STATUS_Completed;
	}	//	completeIt

	/**
	 * 	Void Document.
	 * 	Same as Close.
	 * 	@return true if success 
	 */
	public boolean voidIt() {
		log.info("voidIt - " + toString());
		
		if (!DOCSTATUS_Completed.equals(getDocStatus()))
		{
			setProcessed (true);
			setDocAction (DOCACTION_None);
			return true;
		}
		return closeIt();
	}	//	voidIt
	
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
	 * 	@return true if success 
	 */
	public boolean reActivateIt() {
		log.info("reActivateIt - " + toString());

		if (reverseCorrectIt())
			return true;
		return false;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary() {
		return "";
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
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt() {
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID() {
		return 0;
	}	//	getC_Currency_ID
	
	
	/**
	 *	
	 */
	public String toString()  {
		return "MLBRNFeLot[ID=" + getLBR_NFeLot_ID() + ", DocStatus='" + getDocStatus() + "']";
	}	//	toString
	
}	//	MLBRNFeLot