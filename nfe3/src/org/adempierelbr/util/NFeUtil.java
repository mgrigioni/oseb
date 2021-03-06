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
package org.adempierelbr.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.GregorianCalendar;
import java.util.Properties;
import java.util.logging.Level;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeConstants;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.beans.ChaveNFe;
import org.adempierelbr.nfe.beans.ConsCad;
import org.adempierelbr.nfe.beans.ConsSitNFe;
import org.adempierelbr.nfe.beans.InutNFe;
import org.adempierelbr.nfe.beans.NFeDadosMsg;
import org.adempierelbr.nfe.beans.cancNFe.CancNFe;
import org.adempierelbr.nfe.beans.downloadNFe.DownloadNFe;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.ConsNFeDest;
import org.adempierelbr.nfe.beans.retCancNFe.RetCancNFe;
import org.adempierelbr.nfe.beans.retRecepcao.ConsReciNFe;
import org.adempierelbr.nfe.beans.retRecepcao.InfProt;
import org.adempierelbr.nfe.beans.retRecepcao.ProtNFe;
import org.adempierelbr.nfe.beans.statusServicoNFe.ConsStatServ;
import org.compiere.model.MAttachment;
import org.compiere.model.MAttachmentEntry;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.compiere.utils.DigestOfFile;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import br.inf.portalfiscal.www.nfe.wsdl.cadconsultacadastro2.CadConsultaCadastro2Stub;
import br.inf.portalfiscal.www.nfe.wsdl.nfeautorizacao.NfeAutorizacaoStub;
import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta2.NfeConsulta2Stub;
import br.inf.portalfiscal.www.nfe.wsdl.nfeconsulta3.NfeConsulta3Stub;
import br.inf.portalfiscal.www.nfe.wsdl.nfedownloadnf.NfeDownloadNFStub;
import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeInutilizacao2Stub;
import br.inf.portalfiscal.www.nfe.wsdl.nferetautorizacao.NfeRetAutorizacaoStub;
import br.inf.portalfiscal.www.nfe.wsdl.nfestatusservico2.NfeStatusServico2Stub;
import br.inf.portalfiscal.www.nfe.wsdl.recepcaoevento.RecepcaoEventoStub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 *  Utility class for NFe
 *  
 *  @author Mario Grigioni
 *  @contributor Ricardo Alexsander (old version)
 *  @version $Id: NFeUtil.java,v 3.0 17/10/2014 07:43:00 mgrigioni Exp $
 */
public abstract class NFeUtil
{

	/**	Logger */
	private static CLogger log = CLogger.getCLogger(NFeUtil.class);

	/** Versão */
	public static final String VERSAO              = "3.10";
	public static final String VERSAO_CCE          = "1.00";
	public static final String VERSAO_EVENTO_CANC  = "1.00";
	public static final String VERSAO_EVENTO_MANIF = "1.00";

	/** XML */
	public static final long   XML_SIZE = 500;
	
	/** TOLERANCIA - NT2012/003 */
	public static final BigDecimal TOLERANCIA = new BigDecimal("0.50");
	
	/** Padrões de Extensão */
	public static final String EXT_NFE          = "-nfe.xml";
	public static final String EXT_EVENTO       = "-evento.xml";
	public static final String EXT_ENV_LOTE     = "-env-lot.xml";
	public static final String EXT_RECIBO       = "-rec.xml";
	public static final String EXT_PEDIDO_CANC  = "-ped-can.xml";
	public static final String EXT_CANCELAMENTO = "-can.xml";
	public static final String EXT_PEDIDO_INUT  = "-ped-inu.xml";
	public static final String EXT_INUTILIZACAO = "-inu.xml";
	public static final String EXT_DIST_NFE     = "-procNFe.xml";
	public static final String EXT_DIST_EVENTO  = "-procEventoNFe.xml";
	public static final String EXT_RPS          = "-rps.xml";
	
	/** Namespace padrão da NF-e */
	public static final String NAMESPACE_NFE = "http://www.portalfiscal.inf.br/nfe";
	public static final String XML_HEADER    = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>";

	/**
	 * Método para gerar dados para consulta da NFe
	 * @param tpAmb
	 * @param chNFe
	 * @return msg
	 */
	public static String geraMsgConsultaProtocolo(String tpAmb, String chNFe){

		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (new NFeDadosMsg(new ConsSitNFe(NFeUtil.VERSAO,tpAmb,chNFe)), 
				new CompactWriter (sw));
		
		return sw.toString();
	} //geraMsgConsultaProtocolo
	
	/**
	 * Método para gerar dados para consulta status serviço
	 * @param tpAmb
	 * @param C_Region_ID
	 * @return msg
	 */
	public static String geraMsgStatusServico(String tpAmb, int C_Region_ID){

		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (new NFeDadosMsg(new ConsStatServ(VERSAO,tpAmb,
				BPartnerUtil.getRegionCode(C_Region_ID))), 
				new CompactWriter (sw));
		
		return sw.toString();
	} //geraMsgStatusServico
	
	/**
	 * Método para gerar dados para consulta cadastro
	 * @param regionName
	 * @param CNPJ ou CPF
	 * @return msg
	 */
	public static String geraMsgConsultaCadastro(String regionName, String CNPJ){

		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		
		xstream.marshal (new NFeDadosMsg(new ConsCad(VERSAO,regionName,CNPJ)),
				new CompactWriter (sw));
		
		return sw.toString();
	} //geraMsgConsultaCadastro
	
	/**
	 * Método para gerar dados para cancelamento
	 * @param tpAmb
	 * @param chNFe
	 * @param nProt
	 * @param xJust
	 * @return	msg
	 */
	public static String geraMsgCancelamento (String tpAmb, String chNFe, 
			String nProt, String xJust) {
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		
		xstream.marshal (new CancNFe(VERSAO,tpAmb,chNFe,nProt,xJust),
				new CompactWriter (sw));
		
		return sw.toString();
	}	// geraMsgCancelamento
	
	/**
	 * Método para gerar dados para consulta destinatário
	 * @return msg
	 */
	public static String geraMsgConsultaDest(String tpAmb, String CNPJ) {
				
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (new NFeDadosMsg(new ConsNFeDest("1.01",tpAmb,CNPJ,"6038534762")),
				new CompactWriter (sw));
		
		return sw.toString();
	}	//	geraMsgConsultaDest
	
	/**
	 * Método para gerar dados para download NFe
	 * @return msg
	 */
	public static String geraMsgDownloadNFe(String tpAmb, String CNPJ, String chNFe) {
				
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (new NFeDadosMsg(new DownloadNFe(VERSAO_EVENTO_MANIF,tpAmb,CNPJ,chNFe)),
				new CompactWriter (sw));
		
		return sw.toString();
	}	//	geraMsgDownloadNFe
	
	/**
	 * Método para gerar dados para inutilizar número nf
	 * @param inutNFe
	 * @return msg
	 */
	public static String geraMsgInutilizacao(InutNFe inutNFe) {
				
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (inutNFe,new CompactWriter (sw));
		
		return sw.toString();
	}	//	geraMsgInutilizacao
	
	/**
	 * Método para gerar dados para consulta do lote
	 * @param tpAmb
	 * @param nRec
	 * @return msg
	 */
	public static String geraMsgConsultaLote (String tpAmb, String nRec) {
		
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (new ConsReciNFe(VERSAO,tpAmb,nRec),new CompactWriter (sw));
		
		return sw.toString();
	}	//geraMsgConsultaLote
	
	/**
	 * @return cabecalho NFe
	 */
	public static String geraCabecNFe(){
		StringBuilder cabecalho = new StringBuilder("<NFe xmlns=\"").append(NAMESPACE_NFE).append("\">");
		return cabecalho.toString();
	} //geraCabecNFe


	/**
	 * @return Cabeçalho distribuição
	 */
	public static String geraCabecDistribuicao(){
		StringBuilder cabecalho = new StringBuilder(XML_HEADER)
		 .append("<nfeProc xmlns=\"").append(NAMESPACE_NFE).append("\" versao=\"").append(VERSAO).append("\">");

		return cabecalho.toString();
	}
	
	/**
	 * @return cabeçalho distribuicao cancelamento
	 */
	public static String geraCabecCanc(){
		StringBuilder cabecalho = new StringBuilder(XML_HEADER)
		 .append("<procCancNFe xmlns=\"").append(NAMESPACE_NFE).append("\" versao=\"").append(VERSAO).append("\">");

		return cabecalho.toString();
	}
	
	/**          
	 * @return Cabeçalho do lote          
	 */         
	public static String geraCabecLoteNFe (String lote){
		StringBuilder cabecalho = new StringBuilder("<enviNFe xmlns=\"").append(NAMESPACE_NFE)
				.append("\" versao=\"").append(VERSAO).append("\">")
				.append("<idLote>").append(lote).append("</idLote>")
				.append("<indSinc>").append("0").append("</indSinc>");
		return cabecalho.toString();
	} // geraCabecLoteNFe 
		
	/**
	 * Gera o cabeçalho evento
	 * @param region
	 * @return RecepcaoEventoStub.NfeCabecMsgE 
	 */
	public static RecepcaoEventoStub.NfeCabecMsgE geraCabecEvento (int C_Region_ID)
	{
		RecepcaoEventoStub.NfeCabecMsg cabecMsg = new RecepcaoEventoStub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO_CCE);

		RecepcaoEventoStub.NfeCabecMsgE cabecMsgE = new RecepcaoEventoStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	}	//	geraCabecEvento
	
	/**
	 * Método para gerar cabeçalho status da NFe
	 * @param region
	 * @return NfeConsulta2Stub.NfeCabecMsgE
	 */
	public static NfeConsulta2Stub.NfeCabecMsgE geraCabecConsulta(int C_Region_ID){

		NfeConsulta2Stub.NfeCabecMsg cabecMsg = new NfeConsulta2Stub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(NFeUtil.VERSAO);

		NfeConsulta2Stub.NfeCabecMsgE cabecMsgE = new NfeConsulta2Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecConsulta
	
	/**
	 * Método para gerar cabeçalho status da NFe
	 * @param region
	 * @return NfeConsulta3Stub.NfeCabecMsgE
	 */
	public static NfeConsulta3Stub.NfeCabecMsgE geraCabecConsulta3(int C_Region_ID){

		NfeConsulta3Stub.NfeCabecMsg cabecMsg = new NfeConsulta3Stub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(NFeUtil.VERSAO);

		NfeConsulta3Stub.NfeCabecMsgE cabecMsgE = new NfeConsulta3Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecConsulta
	
	/**
	 * Método para gerar cabeçalho status serviço
	 * @param region
	 * @return NfeStatusServico2Stub.NfeCabecMsgE
	 */
	public static NfeStatusServico2Stub.NfeCabecMsgE geraCabecStatusServico(int C_Region_ID){

		NfeStatusServico2Stub.NfeCabecMsg cabecMsg = new NfeStatusServico2Stub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO);

		NfeStatusServico2Stub.NfeCabecMsgE cabecMsgE = new NfeStatusServico2Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecStatusServico

	/**
	 * Método para gerar cabeçalho consulta destinatário
	 * @param region
	 * @return NFeConsultaDestStub.NfeCabecMsgE
	 */
	/*
	public static NFeConsultaDestStub.NfeCabecMsgE geraCabecConsultaDest(int C_Region_ID){
		
		NFeConsultaDestStub.NfeCabecMsg cabecMsg = new NFeConsultaDestStub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados("1.01");

		NFeConsultaDestStub.NfeCabecMsgE cabecMsgE = new NFeConsultaDestStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecConsultaDest
	*/
	
	/**
	 * Método para gerar cabeçalho download NFe
	 * @param region
	 * @return NfeDownloadNFStub.NfeCabecMsgE
	 */
	public static NfeDownloadNFStub.NfeCabecMsgE geraCabecDownloadNFe(int C_Region_ID){
		
		NfeDownloadNFStub.NfeCabecMsg cabecMsg = new NfeDownloadNFStub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO_EVENTO_MANIF);

		NfeDownloadNFStub.NfeCabecMsgE cabecMsgE = new NfeDownloadNFStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecDownloadNFe
	
	/**
	 * Método para gerar cabeçalho consulta cadastro
	 * @param region
	 * @return CadConsultaCadastro2Stub.NfeCabecMsgE
	 */
	public static CadConsultaCadastro2Stub.NfeCabecMsgE geraCabecConsultaCadastro(int C_Region_ID){

		CadConsultaCadastro2Stub.NfeCabecMsg cabecMsg = new CadConsultaCadastro2Stub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO);

		CadConsultaCadastro2Stub.NfeCabecMsgE cabecMsgE = new CadConsultaCadastro2Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecConsultaCadastro

	/**
	 * Método para gerar cabeçalho envio do lote
	 * @param region
	 * @return  NfeAutorizacaoStub.NfeCabecMsgE
	 */
	public static NfeAutorizacaoStub.NfeCabecMsgE geraCabecAutorizacao(int C_Region_ID){

		NfeAutorizacaoStub.NfeCabecMsg cabecMsg = new NfeAutorizacaoStub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO);

		NfeAutorizacaoStub.NfeCabecMsgE cabecMsgE = new NfeAutorizacaoStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecAutorizacao

	/**
	 * Método para gerar cabeçalho consulta lote
	 * @param region
	 * @return NfeRetAutorizacaoStub.NfeCabecMsgE
	 */
	public static NfeRetAutorizacaoStub.NfeCabecMsgE geraCabecRetAutorizacao(int C_Region_ID){

		NfeRetAutorizacaoStub.NfeCabecMsg cabecMsg = new NfeRetAutorizacaoStub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO);

		NfeRetAutorizacaoStub.NfeCabecMsgE cabecMsgE = new NfeRetAutorizacaoStub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	} //geraCabecRetAutorizacao
	
	/**
	 * 	Cabeçalho da Inutilização
	 * 
	 * @param region
	 * @return
	 */
	public static NfeInutilizacao2Stub.NfeCabecMsgE geraCabecInutilizacao (int C_Region_ID)
	{
		NfeInutilizacao2Stub.NfeCabecMsg cabecMsg = new NfeInutilizacao2Stub.NfeCabecMsg();
		cabecMsg.setCUF(BPartnerUtil.getRegionCode(C_Region_ID));
		cabecMsg.setVersaoDados(VERSAO);

		NfeInutilizacao2Stub.NfeCabecMsgE cabecMsgE = new NfeInutilizacao2Stub.NfeCabecMsgE();
		cabecMsgE.setNfeCabecMsg(cabecMsg);

		return cabecMsgE;
	}	//	geraCabecInutilizacao
	
	/**
	 * Gera o rodapé da NFe
	 * return rodape
	 */
	public static String geraRodapNFe(){
		return "</NFe>";
	} //geraRodapNFe
	
	/**
	 * Rodapé padrão Distribuicao
	 * @param protNFe
	 * @return
	 */
	public static String geraRodapDistribuicao (ProtNFe protNFe) {
			
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (protNFe, new CompactWriter (sw));
		
		return sw.toString() + "</nfeProc>";
	}	//	geraRodapDistribuicao
	
	/**
	 * @deprecated
	 */
	public static String geraRodapCanc(RetCancNFe retCancNFe) {
			
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (retCancNFe, new CompactWriter (sw));
		
		return sw.toString() + "</procCancNFe>";
	}	//	geraRodapCanc

	/**
	 * @param nf
	 * @param protNFe
	 * @return XML for distribution
	 * @throws Exception
	 */
	public static File generateNFeDistFile(MLBRNotaFiscal nf, ProtNFe protNFe) throws Exception{

		File attach = null;

		if (!nf.isNFeProcessed()) //Verifica se foi processada
			return attach;

		File xml = getAttachmentEntryFile(nf.getAttachment().getEntry(0));
	    String dados = XMLtoString(xml);
	    if (dados.endsWith("</nfeProc>")) // Já está no padrão de distribuicao
	    	return attach;
	    
	    String cabecalho = geraCabecDistribuicao();
	    String rodape    = geraRodapDistribuicao(protNFe);
		//
		StringBuilder dadosEmXML = new StringBuilder(cabecalho).append(dados).append(rodape);
		attach = new File(TextUtil.generateTmpFile(dadosEmXML.toString(), nf.getlbr_NFeID() + NFeUtil.EXT_DIST_NFE));

		nf.getAttachment(true).delete(true); //Exclui anexo anterior. BUG ADempiere

		return attach;
	} //generateNFeDistFile
	
	/**
	 * @deprecated
	 */
	public static File generateNFeCancFile(String nfeCancDadosMsg, RetCancNFe retCancNFe){
		
		String cabecalho = geraCabecCanc();
		String rodape    = geraRodapCanc(retCancNFe);
		
		StringBuilder dadosEmXML = new StringBuilder(cabecalho).append(nfeCancDadosMsg).append(rodape);
		File attach = new File(TextUtil.generateTmpFile(dadosEmXML.toString(), retCancNFe.getInfCanc().getChNFe() + NFeUtil.EXT_CANCELAMENTO));
	
		return attach;
	} //generateNFeCancFile
	
	/**
	 * update Attachment
	 * @param nf
	 * @param xml
	 * @return true = success, false = error
	 */
	public static boolean updateAttach(MLBRNotaFiscal nf, File xml){

		if (xml != null){
			MAttachment attachDist = nf.createAttachment(true);
			attachDist.addEntry(xml);
			return attachDist.save();
		}

		return true;
	}
	
	/**
	 * Atualiza autorização NF-e e XML de distribuicao
	 *
	 * return null (success) or error message
	 * @throws Exception
	 */
	public static String authorizeNFe(ProtNFe protNFe, String trxName){

		String error = null;
		InfProt infProt = protNFe.getInfProt();

		MLBRNotaFiscal nf = MLBRNotaFiscal.get(infProt.getChNFe(), trxName);
		if (nf == null) {
			error = Msg.getMsg(Env.getCtx(), "NotFound") + " " + infProt.getChNFe();
			log.severe(error);
			return error;
		}

		if (nf.isNFeProcessed()) { //
			log.fine(Msg.getMsg(Env.getCtx(), "DocProcessed") + " " + nf.getDocumentNo());
			return error;
		}

	    nf.appendNFeDesc("["+infProt.getDhRecbto().replace('T', ' ')+"] " + infProt.getxMotivo() + "\n");
	    nf.setlbr_DigestValue(infProt.getDigVal());
	    nf.setlbr_NFeProt(infProt.getnProt());
	    nf.setDateTrx(NFeUtil.stringToTime(infProt.getDhRecbto()));
	    nf.setlbr_NFeStatus(infProt.getcStat());          
		
		//NFe Denegada - Marcar como cancelada para efeitos de escrituração
		if (nf.getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_301_UsoDenegadoIrregularidadeFiscalDoEmitente) ||
			nf.getlbr_NFeStatus().equals(MLBRNotaFiscal.LBR_NFESTATUS_302_UsoDenegadoIrregularidadeFiscalDoDestinatário)){
			nf.setIsCancelled(true);
			nf.setDocStatus(MLBRNotaFiscal.DOCSTATUS_Voided);
			nf.setDocAction(MLBRNotaFiscal.DOCACTION_None);
		}
		
		nf.save(trxName);

		//Atualiza XML para padrão de distribuição
		try {
			if (!NFeUtil.updateAttach(nf, NFeUtil.generateNFeDistFile(nf, protNFe)))
				error = Msg.getMsg(Env.getCtx(), "AttachmentNull");

			if (error == null && nf.isNFeProcessed()){
				NFeEmail.sendMail(nf);
			}

		} catch (Exception e) {
			log.log(Level.WARNING,"",e);
		}

		return error;
	} //authorizeNFe
	
	public static boolean checkNFeID(Properties ctx, int C_BPartner_Location_ID, 
			String documentNo, String nfeID){
		
		if (documentNo == null || nfeID == null)
			return false;
		
		if (documentNo.indexOf('-') != -1){
			documentNo = TextUtil.toNumeric(documentNo.substring(0, documentNo.indexOf('-')));
		}
		
		if (nfeID.length() != 44)
			return false;
		
		int digito = ChaveNFe.gerarDigito(nfeID.substring(0, 43));
		if (digito != Integer.parseInt(nfeID.substring(43)))
			return false;
		
		long nfNo  = Long.parseLong(documentNo);		
		long nfeNo = Long.parseLong(nfeID.substring(25, 34));
		
		if (nfNo != nfeNo)
			return false;
		
		if (C_BPartner_Location_ID != 0){
			MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,C_BPartner_Location_ID,null);
			MBPartner bpartner = new MBPartner(ctx,bpLocation.getC_BPartner_ID(),null);
			String cnpj = BPartnerUtil.getCNPJ(bpartner, bpLocation);
			if (cnpj != null && BPartnerUtil.getBPTypeBR(bpartner).equals("PJ")){
				cnpj = TextUtil.toNumeric(cnpj);
				String nfeCnpj = nfeID.substring(6,20);
				if (!cnpj.equals(nfeCnpj)){
					log.severe("ERRO: CNPJ Chave x CNPJ Parceiro");
					return false;
				}
			}
		}
		
		return true;
	} //checkNFeID

	public static String XMLtoString(File xml) throws Exception{

		String dados = "";
		if (xml == null)
			return dados;

		DocumentBuilderFactory documentBuilderFactory = DocumentBuilderFactory.newInstance();
        InputStream inputStream = new FileInputStream(xml);
        org.w3c.dom.Document doc = documentBuilderFactory.newDocumentBuilder().parse(inputStream);
        StringWriter stw = new StringWriter();
        Transformer serializer = TransformerFactory.newInstance().newTransformer();
        serializer.setOutputProperty(OutputKeys.OMIT_XML_DECLARATION, "yes");
        serializer.transform(new DOMSource(doc), new StreamResult(stw));
        dados = stw.toString();

        if (dados.indexOf("<NFe") != -1){
	        dados = dados.substring(dados.indexOf("<NFe"),dados.indexOf("</NFe>")+6);
	        if (dados.startsWith("<NFe>")){
	        	dados = geraCabecNFe() + dados.substring(5);
	        }
        }

        return dados;
	} //XMLtoString
	
	public static String retornaDataNfe(Timestamp dataASerFormatada) {
        GregorianCalendar calendar = new GregorianCalendar();  
        calendar.setTime(dataASerFormatada);  
        XMLGregorianCalendar xmlCalendar = null;
        try {
            xmlCalendar = DatatypeFactory.newInstance().newXMLGregorianCalendar(calendar);
            xmlCalendar.setMillisecond(DatatypeConstants.FIELD_UNDEFINED);
        
            return(xmlCalendar.toString());
        } catch (DatatypeConfigurationException ex) {
            log.saveError("Erro parse Data", ex);
        }
        return null;
    }
	
	/**
	 * String para Timestamp
	 * @param dhRecbto
	 * @return
	 */
	public static Timestamp stringToTime(String data){
		return TextUtil.stringToTime(data.replace('T', ' '), "yyyy-MM-dd HH:mm:ss");
	} //StringToDate

	/**
	 * Timestamp para String
	 * @param dhRecbto
	 * @return
	 */
	public static String timeToString(Timestamp data){
		return TextUtil.timeToString(data, "yyyy-MM-dd HH:mm:ss").replace(' ', 'T');
	} //DateToString
	
	/**
	 * Valida tamanho do Arquivo XML
	 * @param file
	 * @return error or null
	 */
	public static String validateSize(File file){

		long size = file.length(); //bytes
		if ((size/1024) > XML_SIZE){ //check kbytes
			String erro = "Tamanho do Arquivo XML inválido > " + XML_SIZE + " kbytes";
			log.severe(erro);
			return erro;
		}

		return null;
	} //validateSize
	
	public static String checkXMLFile(MLBRNotaFiscal nf){
		
		//Validação preliminar
	    if (nf == null || nf.getAttachment() == null || 
	    	nf.getAttachment().getEntry(0) == null){
	    	return null;
	    }

		String nfeID = nf.getAttachment().getEntry(0).toString();
		if(nfeID != null){
			
			int beginIndex = nfeID.lastIndexOf(File.separator)+1;
			int endIndex   = nfeID.lastIndexOf('-');
			
			nfeID = nfeID.substring(beginIndex, endIndex == -1 ? nfeID.length() : endIndex);
		}
		
		return nfeID;
	}

	/**
	 * Get Attachment
	 *
	 * @param entry
	 * @return
	 */
	public static File getAttachmentEntryFile(MAttachmentEntry entry)
	{
		//BF - Attachment on FileSystem
		String fileName = entry.toString();
		if(fileName!=null && fileName.lastIndexOf(File.separator) != -1)
			fileName = fileName.substring(fileName.lastIndexOf(File.separator)+1);
		
		String localFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + fileName;
		String downloadedLocalFile = System.getProperty("java.io.tmpdir")
				+ System.getProperty("file.separator") + "TMP" + fileName;
		File attachedFile = new File(localFile);
		if (attachedFile.exists())
		{
			String localMD5hash = DigestOfFile.GetLocalMD5Hash(attachedFile);
			String entryMD5hash = DigestOfFile.getMD5Hash(entry.getData());
			if (localMD5hash.equals(entryMD5hash))
			{
				log.fine("no need to download: local file is up-to-date");
			}
			else
			{
				log.fine("file attached is different that local one, download and replace");
				File downloadedFile = new File(downloadedLocalFile);
				entry.getFile(downloadedFile);
				attachedFile.delete();
				downloadedFile.renameTo(attachedFile);
			}
		}
		else
		{
			entry.getFile(attachedFile);
		}
		return attachedFile;
	}	//	getAttachmentEntryFile

	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Node node, String Tag) {
		if (node == null)
			return "";

		NodeList nl = ((Element) node).getElementsByTagName(Tag);
		if (nl == null)
			return "";

		Element el = (Element) nl.item(0);
		if (el == null)
			return "";

		nl = el.getChildNodes();
		if (nl == null)
			return "";

		return nl.item(0).getNodeValue();
	}	//	getValue

	/**
	 * 	Get Value from XML
	 *
	 * @param node
	 * @param Tag
	 * @return
	 */
	public static String getValue (Document doc, String Tag) {
		if (doc.getElementsByTagName(Tag) == null)
			return "";

		if (doc.getElementsByTagName(Tag).item(0) == null)
			return "";

		return doc.getElementsByTagName(Tag).item(0).getTextContent();
	}	//	getValue
	
}	//	NFeUtil