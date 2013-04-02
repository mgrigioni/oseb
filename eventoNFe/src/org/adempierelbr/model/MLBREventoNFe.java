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
import org.adempierelbr.eventoNFe.beans.EnvEvento;
import org.adempierelbr.eventoNFe.beans.ProcEvento;
import org.adempierelbr.eventoNFe.beans.RetEnvEvento;
import org.adempierelbr.eventoNFe.beans.Signature;
import org.adempierelbr.eventoNFe.beans.evento.Evento;
import org.adempierelbr.eventoNFe.beans.evento.infevento.InfEvento;
import org.adempierelbr.eventoNFe.beans.evento.infevento.detevento.DetCCe;
import org.adempierelbr.eventoNFe.beans.evento.infevento.detevento.DetCancelamento;
import org.adempierelbr.eventoNFe.beans.evento.infevento.detevento.I_DetEvento;
import org.adempierelbr.eventoNFe.beans.retevento.RetEvento;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeEmail;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
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
 * 	Model for Evento NFe
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: MLBREventoNFe.java, v1.0 2012/05/13 21:53:21 PM, ralexsander Exp $
 *
 *  @contributor Mario Grigioni
 *	@version $Id: MLBREventoNFe.java, v1.1 01/04/2013 16:46, mgrigioni Exp $
 */
public class MLBREventoNFe extends X_LBR_EventoNFe implements DocAction
{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 3154865473418975167L;
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBREventoNFe (Properties ctx, int ID, String trx)
	{
		super (ctx,ID,trx);
	}	//	MLBREventoNFe

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBREventoNFe (Properties ctx, ResultSet rs, String trxName)
	{
		super (ctx, rs, trxName);
	}	//	MLBREventoNFe
	
	private RetEnvEvento sendEvent(MOrgInfo oi, XMLStreamReader dadosXML) throws Exception{
		
		// Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{
				org.adempierelbr.eventoNFe.beans.retevento.infevento.InfEvento.class, 
				RetEnvEvento.class, RetEvento.class, Signature.CanonicalizationMethod.class, Signature.DigestMethod.class, 
				Signature.KeyInfo.class, Signature.Reference.class, Signature.SignatureMethod.class, Signature.SignedInfo.class, 
				Signature.Transform.class, Signature.Transforms.class, Signature.X509Data.class};
		
		//	Procura os endereços para Transmissão
		MLBRNFeWebService ws = MLBRNFeWebService.get (oi,MLBRNFeWebService.RECEPCAOEVENTO);
		if (ws == null){
			m_processMsg = "Erro ao transmitir o Evento. Não foi encontrado um endereço WebServices válido.";
			return null;
		}
		
		MLBRDigitalCertificate.setCertificate (p_ctx, oi);
		RecepcaoEventoStub.NfeDadosMsg dadosMsg = RecepcaoEventoStub.NfeDadosMsg.Factory.parse(dadosXML);
		RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecEvento (oi.getC_Location().getC_Region_ID());
		RecepcaoEventoStub.setAddress(ws);
		RecepcaoEventoStub stub = new RecepcaoEventoStub();

		//	Resposta do SEFAZ
		StringBuilder respLote = new StringBuilder (NFeUtil.XML_HEADER + stub.nfeRecepcaoEvento (dadosMsg, cabecMsgE).getExtraElement().toString());
		log.fine (respLote.toString());
						
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.processAnnotations (classForAnnotation);
		return (RetEnvEvento)xstream.fromXML (respLote.toString());	
	}
	
	private void processEvent(RetEnvEvento retEvent, EnvEvento evento){
		
		if (!X_LBR_EventoNFe.LBR_NFESTATUS_128_LoteDeEventoProcessado.equals(retEvent.getcStat()))
			throw new AdempiereException (retEvent.getxMotivo());
		
		org.adempierelbr.eventoNFe.beans.retevento.infevento.InfEvento infReturn = retEvent.getRetEvento().getInfEvento();
		
		//	Evento processado com sucesso
		if (X_LBR_EventoNFe.LBR_NFESTATUS_135_EventoRegistradoEVinculadoANF_E.equals (infReturn.getcStat ()) || 
			X_LBR_EventoNFe.LBR_NFESTATUS_136_EventoRegistradoMasNãoVinculadoANF_E.equals (infReturn.getcStat ()) ||
			X_LBR_EventoNFe.LBR_NFESTATUS_151_CancelamentoDeNF_EHomologadoForaDePrazo.equals (infReturn.getcStat ()))
		{
			setDateTrx (infReturn.getDhRegEventoTS());
			setlbr_NFeStatus (infReturn.getcStat ());
			setStatus (infReturn.getxMotivo ());
			setlbr_CNPJ (infReturn.getCNPJDest ());
			setlbr_CPF (infReturn.getCPFDest ());
			setlbr_NFeProt (infReturn.getnProt ());
			setEMail (infReturn.getEmailDest ());
			saveEx();
			
			//	Arquivo de Distribuição
			XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.aliasSystemAttribute(null, "class");
			xstream.autodetectAnnotations(true);
			StringWriter sw = new StringWriter ();
			String result     = null;
			
			ProcEvento procEvento = new ProcEvento();
			procEvento.setVersao (NFeUtil.VERSAO_CCE);
			procEvento.setEvento(evento.getEvento());
			procEvento.setRetEvento(retEvent.getRetEvento());
			xstream.marshal (procEvento,  new CompactWriter (sw));
			
			// Valida o resultado do SEFAZ, gerando um LOG, mas não impede o processo
			if (evento.getEvento().getInfEvento().getTpEvento().equals(X_LBR_EventoNFe.EVENTTYPE_CartaDeCorreção)){
				result = ValidaXML.validaProcCCeNFe(sw.toString());
			} //Carta de Correção
			else if (evento.getEvento().getInfEvento().getTpEvento().equals(X_LBR_EventoNFe.EVENTTYPE_Cancelamento)){
				result = ValidaXML.validaProcEventoCancNFe(sw.toString());
			
				//Processa NF
				MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
				nf.setIsCancelled(this, infReturn);
				nf.save();
			} //Cancelamento
			
			if (result != null && !result.isEmpty())
				log.severe ("Erro na validação da resposta: " + result);
			
			//	Arquivo de resposta final
			String xmlFile = TextUtil.generateTmpFile (NFeUtil.XML_HEADER + sw.toString(), infReturn.getId() + NFeUtil.EXT_DISTRIBUICAO);

			MAttachment attachCCe = createAttachment (true);
			attachCCe.addEntry(new File (xmlFile));
			attachCCe.save();
		}
		else
			throw new AdempiereException (infReturn.getxMotivo());
		
	} //processEvent
	
	private EnvEvento createEnvCCe(MLBRNotaFiscal nf, MOrgInfo oi) throws Exception{
		
		// Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{DetCCe.class, InfEvento.class,Evento.class, EnvEvento.class, 
				Signature.CanonicalizationMethod.class, Signature.DigestMethod.class, 
				Signature.KeyInfo.class, Signature.Reference.class, Signature.SignatureMethod.class, Signature.SignedInfo.class, 
				Signature.Transform.class, Signature.Transforms.class, Signature.X509Data.class};
		
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
		
		//	Detalhes
		DetCCe det = new DetCCe ();
		det.setVersao(NFeUtil.VERSAO_CCE);
		det.setXCorrecao(RemoverAcentos.remover(getDescription()));
		
		//	Informações do Evento da Carta de Correção
		InfEvento cce = new InfEvento (X_LBR_EventoNFe.EVENTTYPE_CartaDeCorreção);
		cce.setCOrgao(BPartnerUtil.getRegionCode(oiW.getC_Location().getC_Region_ID()));
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
		EnvEvento envEvento = new EnvEvento();
		envEvento.setVersao(NFeUtil.VERSAO_CCE);
		envEvento.setIdLote(getDocumentNo());
		
		//	Valida as informações
		if (!cce.isValid()) {
			m_processMsg = cce.getErrorMsg();
			throw new AdempiereException(m_processMsg);
		}
		
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.aliasSystemAttribute(null, "class");
		xstream.autodetectAnnotations(true);
		
		StringWriter sw = new StringWriter ();
		xstream.marshal (evento,  new CompactWriter (sw));
		
		StringBuilder xml = new StringBuilder (sw.toString());
		String xmlFile = TextUtil.generateTmpFile (xml.toString(), cce.getId() + NFeUtil.EXT_CCE);
		
		log.fine ("Assinando XML: " + xml);
		AssinaturaDigital.Assinar (xmlFile, oi, AssinaturaDigital.DOCTYPE_CARTADECORRECAO_CCE);
			
		//	Lê o arquivo assinado
		xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.alias("detEvento", I_DetEvento.class, DetCCe.class);
		xstream.processAnnotations (classForAnnotation);
		evento = (Evento) xstream.fromXML (TextUtil.readFile(new File(xmlFile)));
			
		//	Popula o evio do Evento com o XML assinado
		envEvento.setEvento(evento);
		return envEvento;
	} //createEnvCCe
	
	private EnvEvento createEnvCancelamento(MLBRNotaFiscal nf, MOrgInfo oi) throws Exception{
		
		// Classes usadas para annotation
		Class<?>[] classForAnnotation = new Class[]{DetCancelamento.class, InfEvento.class, Evento.class, 
				EnvEvento.class, Signature.CanonicalizationMethod.class, Signature.DigestMethod.class, 
				Signature.KeyInfo.class, Signature.Reference.class, Signature.SignatureMethod.class, Signature.SignedInfo.class, 
				Signature.Transform.class, Signature.Transforms.class, Signature.X509Data.class};
		
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class);
		
		//	Detalhes
		DetCancelamento det = new DetCancelamento ();
		det.setVersao(NFeUtil.VERSAO_EVENTO_CANC);
		det.setNProt(nf.getlbr_NFeProt());
		det.setXJust(RemoverAcentos.remover(getDescription()));
		
		//	Informações do Evento de Cancelamento
		InfEvento infCanc = new InfEvento (X_LBR_EventoNFe.EVENTTYPE_Cancelamento);
		infCanc.setCOrgao(BPartnerUtil.getRegionCode(oiW.getC_Location().getC_Region_ID()));
		infCanc.setTpAmb(oiW.getlbr_NFeEnv());
		infCanc.setCNPJ(oiW.getlbr_CNPJ());
		infCanc.setChNFe(nf.getlbr_NFeID());
		infCanc.setDhEvento(getDateDoc());
		infCanc.setNSeqEvento("" + getSeqNo());
		infCanc.setVerEvento(NFeUtil.VERSAO_EVENTO_CANC);
		infCanc.setDetEvento(det);
		infCanc.setId();
		
		//	Dados do Evento da Carta de Correção
		Evento evento = new Evento ();
		evento.setVersao(NFeUtil.VERSAO_EVENTO_CANC);
		evento.setInfEvento(infCanc);
		
		//	Dados do Envio
		EnvEvento envEvento = new EnvEvento();
		envEvento.setVersao(NFeUtil.VERSAO_EVENTO_CANC);
		envEvento.setIdLote(getDocumentNo());
		
		//	Valida as informações
		if (!infCanc.isValid()) {
			m_processMsg = infCanc.getErrorMsg();
			throw new AdempiereException(m_processMsg);
		}
		
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.aliasSystemAttribute(null, "class");
		xstream.autodetectAnnotations(true);
		
		StringWriter sw = new StringWriter ();
		xstream.marshal (evento,  new CompactWriter (sw));
		
		StringBuilder xml = new StringBuilder (sw.toString());
		String xmlFile = TextUtil.generateTmpFile (xml.toString(), infCanc.getId() + NFeUtil.EXT_CCE);
		
		log.fine ("Assinando XML: " + xml);
		AssinaturaDigital.Assinar (xmlFile, oi, AssinaturaDigital.DOCTYPE_CARTADECORRECAO_CCE);
			
		//	Lê o arquivo assinado
		xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.alias("detEvento", I_DetEvento.class, DetCancelamento.class);
		xstream.processAnnotations (classForAnnotation);
		evento = (Evento) xstream.fromXML (TextUtil.readFile(new File(xmlFile)));
			
		//	Popula o evio do Evento com o XML assinado
		envEvento.setEvento(evento);
		return envEvento;
	} //createEnvCancelamento
	
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
		if (!nf.isNFeProcessed() || nf.isCancelled()) {
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
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal (Env.getCtx(), getLBR_NotaFiscal_ID(), null);
		MOrgInfo oi = MOrgInfo.get (Env.getCtx(), nf.getAD_Org_ID(), null);
		EnvEvento envEvento = null;
		
		try{
			
			StringBuilder xml = new StringBuilder();
			StringWriter sw   = new StringWriter();
			XStream xstream   = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.aliasSystemAttribute(null, "class");
			xstream.autodetectAnnotations(true);
			
			if (getEventType().equals(X_LBR_EventoNFe.EVENTTYPE_CartaDeCorreção)){
				EnvEvento envCCe = createEnvCCe(nf,oi);
				xstream.marshal (envCCe,  new CompactWriter (sw));
				xml =  new StringBuilder (sw.toString());
				
				String result = ValidaXML.validaEnvCCe(xml.toString());
					
				if (result != null && !result.isEmpty()) {
					m_processMsg = result;
					throw new AdempiereException(result);
				}
				envEvento = envCCe;
			}
			else if (getEventType().equals(X_LBR_EventoNFe.EVENTTYPE_Cancelamento)){
				EnvEvento envCancelamento = createEnvCancelamento(nf,oi);
				xstream.marshal (envCancelamento,  new CompactWriter (sw));
				xml =  new StringBuilder (sw.toString());
				
				String result = ValidaXML.validaEnvCanc(xml.toString());
					
				if (result != null && !result.isEmpty()) {
					m_processMsg = result;
					throw new AdempiereException(result);
				}
				envEvento = envCancelamento;
			}
			
			//	Arquivo para transmitir
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader(new StringReader(NFeUtil.XML_HEADER + "<nfeDadosMsg>" + xml.toString() + "</nfeDadosMsg>"));

			RetEnvEvento retEvent = sendEvent(oi,dadosXML);
			if (retEvent == null){
				return DocAction.STATUS_Invalid;
			}
			processEvent(retEvent,envEvento);
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
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (RemoteException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao transmitir o Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (ADBException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (XMLStreamException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao converter o XML para transmissão do Evento. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateExpiredException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado expirou. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (CertificateNotYetValidException e)
		{
			e.printStackTrace();
			m_processMsg = "Erro ao assinar o Evento. O certificado não é válido para esta data. " + e.getMessage();
			return DocAction.STATUS_Invalid;
		}
		catch (Exception e)
		{
			e.printStackTrace();
			m_processMsg = "Erro no processo para gerar o Evento. Verifique o LOG.";
			return DocAction.STATUS_Invalid;
		}
	
		//	User Validation
		String valid = ModelValidationEngine.get().fireDocValidate(this, ModelValidator.TIMING_AFTER_COMPLETE);
		if (valid != null)
		{
			m_processMsg = valid;
			return DocAction.STATUS_Invalid;
		}

		NFeEmail.sendMail(this);
		
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
			String sql = "SELECT COALESCE(MAX(SeqNo), 0)+1 AS DefaultValue " +
					     "FROM LBR_EventoNFe " +
					     "WHERE DocStatus IN ('CL','CO') AND EventType=? AND LBR_NotaFiscal_ID=?";
			
			int seqNo = DB.getSQLValue(get_TrxName(), sql, new Object[]{getEventType(),getLBR_NotaFiscal_ID()});

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
		return "MLBREventoNFe[ID=" + getLBR_EventoNFe_ID() + ", DocStatus='" + getDocStatus() + "']";
	}	//	toString
	
}	//	MLBREventoNFe