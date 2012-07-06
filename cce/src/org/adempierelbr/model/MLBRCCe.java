/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
import java.io.StringWriter;
import java.math.BigDecimal;
import java.rmi.RemoteException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateNotYetValidException;
import java.sql.ResultSet;
import java.util.Properties;

import javax.net.ssl.SSLException;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamException;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.cce.beans.EnvEvento;
import org.adempierelbr.cce.beans.ProcEventoNFe;
import org.adempierelbr.cce.beans.RetEnvEvento;
import org.adempierelbr.cce.beans.Signature;
import org.adempierelbr.cce.beans.evento.Evento;
import org.adempierelbr.cce.beans.evento.infevento.InfEvento;
import org.adempierelbr.cce.beans.evento.infevento.detevento.DetEvento;
import org.adempierelbr.cce.beans.retevento.RetEvento;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.axis2.databinding.ADBException;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.model.ModelValidationEngine;
import org.compiere.model.ModelValidator;
import org.compiere.process.DocAction;
import org.compiere.process.DocumentEngine;
import org.compiere.util.DB;
import org.compiere.util.Env;

import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 		Model for CC-e
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBRCCe.java, v1.0 2012/05/13 21:53:21 PM, ralexsander Exp $
 */
public class MLBRCCe extends X_LBR_CCe implements DocAction
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCCe (Properties ctx, int ID, String trx)
	{
		super (ctx,ID,trx);
	}	//	MLBRCCe

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCCe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBRCCe
	
	/**
	 * 	Get Document Info
	 *	@return document info (untranslated)
	 */
	public String getDocumentInfo()
	{
		MDocType dt = MDocType.get(getCtx(), 0);
		return dt.getName() + " " + getDocumentNo();
	}	//	getDocumentInfo

	/**
	 * 	Create PDF
	 *	@return File or null
	 */
	public File createPDF ()
	{
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
	public File createPDF (File file)
	{
		return null;
	}	//	createPDF

	/**************************************************************************
	 * 	Process document
	 *	@param processAction document action
	 *	@return true if performed
	 */
	public boolean processIt (String processAction)
	{
		m_processMsg = null;
		DocumentEngine engine = new DocumentEngine (this, getDocStatus());
		return engine.processIt (processAction, getDocAction());
	}	//	processIt
	
	/**	Process Message 			*/
	private String		m_processMsg = null;
	/**	Just Prepared Flag			*/
	private boolean		m_justPrepared = false;

	/**
	 * 	Unlock Document.
	 * 	@return true if success 
	 */
	public boolean unlockIt()
	{
		log.info("unlockIt - " + toString());
		return true;
	}	//	unlockIt
	
	/**
	 * 	Invalidate Document
	 * 	@return true if success 
	 */
	public boolean invalidateIt()
	{
		log.info("invalidateIt - " + toString());
		return true;
	}	//	invalidateIt
	
	/**
	 *	Prepare Document
	 * 	@return new status (In Progress or Invalid) 
	 */
	public String prepareIt()
	{
		log.info(toString());
		m_processMsg = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_BEFORE_PREPARE);
		if (m_processMsg != null)
			return DocAction.STATUS_Invalid;

		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
		if (!MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E.equals(nf.getlbr_NFeStatus()))
		{
			m_processMsg = "@Invalid@ @LBR_NotaFiscal_ID@";
			return DocAction.STATUS_Invalid;
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
	public boolean  approveIt()
	{
		log.info("approveIt - " + toString());
		return true;
	}	//	approveIt
	
	/**
	 * 	Reject Approval
	 * 	@return true if success 
	 */
	public boolean rejectIt()
	{
		log.info("rejectIt - " + toString());
		return true;
	}	//	rejectIt
	
	/**
	 * 	Complete Document
	 * 	@return new status (Complete, In Progress, Invalid, Waiting ..)
	 */
	public String completeIt()
	{
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
		
		//	Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{DetEvento.class, InfEvento.class, Evento.class, EnvEvento.class, ProcEventoNFe.class, 
				org.adempierelbr.cce.beans.retevento.infevento.InfEvento.class, RetEnvEvento.class, RetEvento.class, Signature.CanonicalizationMethod.class, 
				Signature.DigestMethod.class, Signature.KeyInfo.class, Signature.Reference.class, Signature.SignatureMethod.class, 
				Signature.SignedInfo.class, Signature.Transform.class, Signature.Transforms.class, Signature.X509Data.class};
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), nf.getAD_Org_ID(), null);
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);

		//	Detalhes
		DetEvento det = new DetEvento ();
		det.setVersao(NFeUtil.VERSAO_CCE);
		det.setXCorrecao(TextUtil.itrim(getDescription()));
		
		//	Informações do Evento da Carta de Correção
		InfEvento cce = new InfEvento ();
		cce.setCOrgao(BPartnerUtil.getRegionCode(oi.getC_Location().getC_Region_ID()));
		cce.setTpAmb(oiW.getlbr_NFeEnv());
		cce.setCNPJ(oiW.getlbr_CNPJ());
		cce.setChNFe(nf.getlbr_NFeID());
		cce.setDhEvento(getDateDoc());
		cce.setNSeqEvento("" + getSeqNo());
		cce.setVerEvento(NFeUtil.VERSAO_CCE);
		cce.setDetEvento(det);
		cce.setId();
		
		//	Dados do Evento da Carta de Correção
		Evento evento = new Evento ();
		evento.setVersao(NFeUtil.VERSAO_CCE);
		evento.setInfEvento(cce);
		
		//	Dados do Envio
		EnvEvento env = new EnvEvento();
		env.setVersao(NFeUtil.VERSAO_CCE);
		env.setIdLote(getDocumentNo());
		
		//	Valida as informações
		if (!cce.isValid())
		{
			m_processMsg = cce.getErrorMsg();
			return DocAction.STATUS_Invalid;
		}
		
		XStream xstream = new XStream ();
		xstream.autodetectAnnotations(true);
		
		StringWriter sw = new StringWriter ();
		xstream.marshal (evento,  new CompactWriter (sw));
		
		StringBuilder xml = new StringBuilder (sw.toString());
		String xmlFile = TextUtil.generateTmpFile (xml.toString(), cce.getId() + NFeUtil.EXT_CCE);
		
		try
		{
			log.fine ("Assinando XML: " + xml);
			AssinaturaDigital.Assinar (xmlFile, oi, AssinaturaDigital.DOCTYPE_CARTADECORRECAO_CCE);
			
			//	Lê o arquivo assinado
			xstream = new XStream (new DomDriver());
			xstream.processAnnotations (classForAnnotation);
			evento = (Evento) xstream.fromXML (TextUtil.readFile(new File(xmlFile)));
			
			//	Popula o evio do Evento com o XML assinado
			env.setEvento(evento);
			
			sw = new StringWriter ();
			xstream = new XStream ();
			xstream.processAnnotations (classForAnnotation);
			xstream.marshal (env,  new CompactWriter (sw));
			xml =  new StringBuilder (sw.toString());
		
			log.fine ("XML: " + xml);
			String result = ValidaXML.validaEnvCCe(xml.toString());
			
			if (result != null && !result.isEmpty())
			{
				m_processMsg = result;
				return DocAction.STATUS_Invalid;
			}
			
			//	Arquivo para transmitir
			xmlFile = TextUtil.generateTmpFile (xml.toString(), cce.getId() + NFeUtil.EXT_CCE);
			
			//	Procura os endereços para Transmissão
			MLBRNFeWebService ws = MLBRNFeWebService.get (oi,MLBRNFeWebService.RECEPCAOEVENTO);
			
			if (ws == null)
			{
				m_processMsg = "Erro ao transmitir a CC-e. Não foi encontrado um endereço WebServices válido.";
				return DocAction.STATUS_Invalid;
			}
			
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.XML_HEADER + "<nfeDadosMsg>" + xml.toString() + "</nfeDadosMsg>"));

			//	Prepara a Transmissão
			MLBRDigitalCertificate.setCertificate (p_ctx, oi);
			RecepcaoEventoStub.NfeDadosMsg dadosMsg = RecepcaoEventoStub.NfeDadosMsg.Factory.parse(dadosXML);
			RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecEvento (oi.getC_Location().getC_Region_ID());
			RecepcaoEventoStub.setAddress(ws);
			RecepcaoEventoStub stub = new RecepcaoEventoStub();

			//	Resposta do SEFAZ
			StringBuilder respLote = new StringBuilder (NFeUtil.XML_HEADER + stub.nfeRecepcaoEvento (dadosMsg, cabecMsgE).getExtraElement().toString());
			log.fine (respLote.toString());
						
			xstream = new XStream (new DomDriver());
			xstream.processAnnotations (classForAnnotation);
			//
			RetEnvEvento retEvent = (RetEnvEvento) xstream.fromXML (respLote.toString());
			
			if (!"128".equals (retEvent.getcStat()))
				throw new AdempiereException (retEvent.getxMotivo());
			
			org.adempierelbr.cce.beans.retevento.infevento.InfEvento infReturn = retEvent.getRetEvento().getInfEvento();
			
			//	CC-e processada com sucesso
			if ("135".equals (infReturn.getcStat ()) || "136".equals (infReturn.getcStat ()))
			{
				setDateTrx (infReturn.getDhRegEventoTS ());
				setlbr_NFeStatus (infReturn.getcStat ());
				setStatus (infReturn.getxMotivo ());
				setlbr_CNPJ (infReturn.getCNPJDest ());
				setlbr_CPF (infReturn.getCPFDest ());
				setlbr_NFeProt (infReturn.getnProt ());
				setEMail (infReturn.getEmailDest ());
				saveEx ();

				//	Arquivo de Distribuição
				ProcEventoNFe procEvento = new ProcEventoNFe ();
				procEvento.setVersao (NFeUtil.VERSAO_CCE);
				procEvento.setEvento(env.getEvento());
				procEvento.setRetEvento(retEvent.getRetEvento());
				
				//	Preparando saida
				xstream = new XStream ();
				xstream.processAnnotations (classForAnnotation);
				sw = new StringWriter ();
				xstream.marshal (procEvento,  new CompactWriter (sw));
				
				//	Arquivo de resposta final
				xmlFile = TextUtil.generateTmpFile (NFeUtil.XML_HEADER + sw.toString(), cce.getId() + NFeUtil.EXT_DISTRIBUICAO);
				//
				MAttachment attachCCe = createAttachment (true);
				attachCCe.addEntry(new File (xmlFile));
				attachCCe.save();
				
				//	Valida o resultado do SEFAZ, gerando um LOG, mas não impede o processo
				result = ValidaXML.validaProcCCeNFe(sw.toString());
				
				if (result != null && !result.isEmpty())
					log.severe ("Erro na validação da resposta: " + result);
			}
			else
				throw new AdempiereException (infReturn.getxMotivo());
		}
		catch (AdempiereException e)
		{
			e.printStackTrace();
			m_processMsg = "Problema com o processamento do lote pela SEFAZ: " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (SSLException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir a CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir a CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão da CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão da CC-e. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar a CC-e. O certificado expirou. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar a CC-e. O certificado não é válido para esta data. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = "Erro no processo para gerar CC-e. Verifique o LOG.";
			return DocAction.STATUS_Invalid;
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
	public boolean voidIt()
	{
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
	public boolean closeIt()
	{
		log.info("closeIt - " + toString());
		m_processMsg = "Não é permitido fechar o documento.";
		return false;
	}	//	closeIt
	
	/**
	 * 	Reverse Correction
	 * 	@return true if success 
	 */
	public boolean reverseCorrectIt()
	{
		log.info("reverseCorrectIt - " + toString());
		return false;
	}	//	reverseCorrectionIt
	
	/**
	 * 	Reverse Accrual - none
	 * 	@return true if success 
	 */
	public boolean reverseAccrualIt()
	{
		log.info("reverseAccrualIt - " + toString());
		return false;
	}	//	reverseAccrualIt
	
	/** 
	 * 	Re-activate
	 * 	@return true if success 
	 */
	public boolean reActivateIt()
	{
		log.info("reActivateIt - " + toString());

		if (reverseCorrectIt())
			return true;
		return false;
	}	//	reActivateIt
	
	/*************************************************************************
	 * 	Get Summary
	 *	@return Summary of Document
	 */
	public String getSummary()
	{
		return "";
	}	//	getSummary

	/**
	 * 	Get Process Message
	 *	@return clear text error message
	 */
	public String getProcessMsg()
	{
		return m_processMsg;
	}	//	getProcessMsg
	
	/**
	 * 	Get Document Owner (Responsible)
	 *	@return AD_User_ID
	 */
	public int getDoc_User_ID()
	{
		return 0;
	}	//	getDoc_User_ID

	/**
	 * 	Get Document Approval Amount
	 *	@return amount
	 */
	public BigDecimal getApprovalAmt()
	{
		return null;
	}	//	getApprovalAmt
	
	/**
	 * 	Get Document Currency
	 *	@return C_Currency_ID
	 */
	public int getC_Currency_ID()
	{
		return 0;
	}	//	getC_Currency_ID
	
	/**
	 * 	Before Save
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord)
		{
			int seqNo = DB.getSQLValue (get_TrxName(), "SELECT COALESCE(MAX(SeqNo), 0)+1 AS DefaultValue FROM LBR_CCe WHERE DocStatus IN ('CL','CO') AND LBR_NotaFiscal_ID=?", getLBR_NotaFiscal_ID());
			//
			setSeqNo (seqNo);
		}
		return true;
	}	//	beforeSave
	
	/**
	 *	
	 */
	public String toString() 
	{
		return "MLBRCCe[ID=" + getLBR_CCe_ID() + ", DocStatus='" + getDocStatus() + "']";
	}	//	toString
}	//	MLBRCCe
