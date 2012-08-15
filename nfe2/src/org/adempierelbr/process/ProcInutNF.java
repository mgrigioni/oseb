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
package org.adempierelbr.process;

import java.io.File;
import java.io.StringReader;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeInut;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.nfe.beans.InutNFe;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Msg;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfeinutilizacao2.NfeInutilizacao2Stub;

/**
 *  Inutiliza uma NF ou uma Sequência de NF
 *  
 *  @author Mario Grigioni
 *  @contributor Ricardo Santana (old version)
 *  @version $Id: ProcInutNF.java,v 2.0 14/08/2012 17:06:00 mgrigioni Exp $
 */
public class ProcInutNF extends SvrProcess {

	/**	Logger						*/
	private static CLogger log = CLogger.getCLogger(ProcInutNF.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare () {
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception {
		
		MLBRNFeInut nfeInut = new MLBRNFeInut(getCtx(),getRecord_ID(),get_TrxName());
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), nfeInut.getAD_Org_ID(), get_TrxName());
		
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
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
						
			InutNFe inutNFe = new InutNFe(NFeUtil.VERSAO,oiW,orgInfo.getC_Location().getC_Region_ID(), 
					nfeInut.getC_Period().getStartDate(), nfeInut.getlbr_NFModel(), nfeInut.getlbr_NFSerie(),
					nfeInut.getlbr_DocumentNo(), nfeInut.getlbr_DocumentNo_To(), nfeInut.getlbr_MotivoCancel());
			
			String validation = inutNFe.isValid();
			if (validation != null){
				return validation;
			}
			
			String nfeInutMsg = NFeUtil.geraMsgInutilizacao(inutNFe);
			File attachFile = new File(TextUtil.generateTmpFile(nfeInutMsg, inutNFe.getID()+NFeUtil.EXT_PEDIDO_INUT));
			AssinaturaDigital.Assinar(attachFile.toString(), orgInfo, AssinaturaDigital.DOCTYPE_INUTILIZACAO_NFE);
			nfeInutMsg = NFeUtil.XMLtoString(attachFile);

			//	Validação envio
			validation = ValidaXML.validaInutNFe(nfeInutMsg);
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
			
			String cStat = NFeUtil.getValue(doc, "cStat");
			String xMotivo 	= NFeUtil.getValue (doc, "xMotivo");
			
			if (cStat != null){
				nfeInut.setlbr_NFeStatus(cStat);
				nfeInut.setProcessed(true);
				nfeInut.save(get_TrxName());
				
				if (cStat.equals(MLBRNotaFiscal.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado)){
					attachFile = new File(TextUtil.generateTmpFile(respLote, inutNFe.getID()+NFeUtil.EXT_INUTILIZACAO));
					
					MAttachment attach = nfeInut.createAttachment();
					attach.addEntry(attachFile);
					attach.save(get_TrxName());
					return Msg.getMsg(getCtx(), "ProcessOK");
				}
				
				return Msg.getMsg(getCtx(), "ProcessFailed") + " - " + xMotivo;
			}	
		}
		catch (Exception e) {
			log.severe(e.getLocalizedMessage());
		}
		
		return Msg.getMsg(getCtx(), "ProcessFailed");
	}	//	doIt
	
}	//	ProcInutNF