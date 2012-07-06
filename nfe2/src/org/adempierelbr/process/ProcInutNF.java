package org.adempierelbr.process;

import java.io.File;
import java.io.StringReader;
import java.sql.Timestamp;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.nfe.beans.InutNFe;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MDocType;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeInutilizacao2Stub;

/**
 * 		Inutiliza uma NF ou uma Sequência de NF
 * 
 *  @author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcInutNF.java, v1.0 2010/12/01 3:45:29 PM, ralexsander Exp $
 */
public class ProcInutNF extends SvrProcess 
{
	/** Nota Fiscal               	*/
	private static Integer 	p_AD_Org_ID 	= 0;
	
	/** Tipo de Documento         	*/
	private static Integer 	p_C_DocType_ID 	= 0;
	
	/**	Sequência de NF			  	*/
	private static Integer 	p_nfIni    = 0;
	private static Integer 	p_nfFin    = 0;
	
	/**	Justificativa			  	*/
	private static String 	p_xJust     = "";
	
	/**	Data do Cancelamento	  	*/
	private static Timestamp p_DateDoc;
	
	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ProcInutNF.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("AD_Org_ID"))
				p_AD_Org_ID = para.getParameterAsInt();
			else if (name.equals("C_DocType_ID"))
				p_C_DocType_ID = para.getParameterAsInt();
			else if (name.equals("DocumentNo"))
			{
				p_nfIni = para.getParameterAsInt();
				p_nfFin = para.getParameter_ToAsInt();
			}
			else if (name.equals("DateDoc"))
				p_DateDoc = (Timestamp) para.getParameter();
			else if (name.equals("lbr_MotivoCancel"))
				p_xJust = (String) para.getParameter();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception
	{
		if (p_AD_Org_ID <= 0)
			throw new AdempiereException ("@Mandatory@ @AD_Org_ID@");
		if (p_C_DocType_ID <= 0)
			throw new AdempiereException ("@Mandatory@ @C_DocType_ID@");
		if (p_nfIni == null || p_nfIni.intValue() <= 0)
			throw new AdempiereException ("@Mandatory@ @DocumentNo@");
		if (p_nfFin == null || p_nfFin.intValue() <= 0)
			p_nfFin = p_nfIni;
		if (p_nfFin < p_nfIni)
			throw new AdempiereException ("@Mandatory@ @DocumentNo@");
		//
		MOrgInfo orgInfo = MOrgInfo.get(Env.getCtx(), p_AD_Org_ID, get_TrxName());
		MDocType dType = new MDocType(Env.getCtx(), p_C_DocType_ID, get_TrxName());

		return invalidateNF(orgInfo, dType);
	}	//	doIt
	
	/**
	 * 	Inutiliza a NF
	 * 
	 * @param xmlGerado
	 * @param orgInfo
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unused")
	private String invalidateNF (MOrgInfo orgInfo, MDocType dType) throws Exception {
		
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		I_W_C_DocType  dtW = POWrapper.create(dType, I_W_C_DocType.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			return "Ambiente da NF-e deve ser preenchido.";
		}
		
		//PREPARA AMBIENTE PARA ENVIO
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		MLBRNFeWebService ws = MLBRNFeWebService.get(orgInfo,MLBRNFeWebService.INUTILIZACAO);
		if (ws == null){
			return "Não foi encontrado um endereço WebServices válido.";
		}
		
		try{
			
			String serie = dtW.getlbr_NFSerie();
			if (serie == null || serie.trim().isEmpty())
				serie = "0";
			
			InutNFe inutNFe = new InutNFe(NFeUtil.VERSAO,oiW,orgInfo.getC_Location().getC_Region_ID(), 
					p_DateDoc, dtW.getlbr_NFModel(), serie, p_nfIni.toString(), p_nfFin.toString(), p_xJust);
			
			String nfeInutMsg = NFeUtil.geraMsgInutilizacao(inutNFe);
			
			if (nfeInutMsg == null){
				return Msg.getMsg(getCtx(), "ProcessFailed");
			}
		
			File attachFile = new File(TextUtil.generateTmpFile(nfeInutMsg, inutNFe.getID()+NFeUtil.EXT_PEDIDO_INUT));
			AssinaturaDigital.Assinar(attachFile.toString(), orgInfo, AssinaturaDigital.DOCTYPE_INUTILIZACAO_NFE);
			nfeInutMsg = NFeUtil.XMLtoString(attachFile);

			//	Validação envio
			String validation = ValidaXML.validaInutNFe(nfeInutMsg);
			if (!validation.equals(""))
				return validation;

			nfeInutMsg   = "<nfeDadosMsg>" + nfeInutMsg + "</nfeDadosMsg>";
			
			XMLStreamReader dadosXML = XMLInputFactory.newInstance()
					.createXMLStreamReader(new StringReader(nfeInutMsg));
			
			NfeInutilizacao2Stub.NfeDadosMsg dadosMsg = NfeInutilizacao2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeInutilizacao2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecInutilizacao(orgInfo.getC_Location().getC_Region_ID());
			
			NfeInutilizacao2Stub.setAddress(ws);
			NfeInutilizacao2Stub stub = new NfeInutilizacao2Stub();

			String respLote = stub.nfeInutilizacaoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			validation = ValidaXML.validaRetInutNFe(respLote);
			if (!validation.equals(""))
				return validation;
			
			//
			DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			Document doc = builder.parse(new InputSource(new StringReader(respLote)));
			//
			NodeList infProt =  doc.getElementsByTagName("infInut");
				
			for (int i=0; i < infProt.getLength(); i++) {
				Node node = infProt.item(i);
				if (node.getNodeType() == Node.ELEMENT_NODE) {
					String cStat 	= NFeUtil.getValue (node, "cStat");
					String xMotivo 	= NFeUtil.getValue (node, "xMotivo");
					//
					if (cStat != null && cStat.equals("102")) {
						new File(TextUtil.generateTmpFile(respLote, inutNFe.getID()+NFeUtil.EXT_INUTILIZACAO));
						return Msg.getMsg(getCtx(), "ProcessOK");
					}
					else {
						return Msg.getMsg(getCtx(), "ProcessFailed") + " - " + xMotivo;
					}
				}
				//
				return Msg.getMsg(getCtx(), "ProcessFailed");
			}
		}
		catch (Exception e) {
			log.severe(e.getLocalizedMessage());
		}
		
		return Msg.getMsg(getCtx(), "ProcessOK");
	}	//	invalidateNF
	
}	//	ProcInutNF