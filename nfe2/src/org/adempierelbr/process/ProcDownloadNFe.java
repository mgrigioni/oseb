/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2013 Mario Grigioni                                          *
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
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;
import org.w3c.dom.Document;
import org.xml.sax.InputSource;

import br.inf.portalfiscal.www.nfe.wsdl.nfedownloadnf.NfeDownloadNFStub;

/**
 * 	Processo para realizar o download da NFe
 *
 * @author Mario Grigioni
 * @version $Id: ProcDownloadNFe.java, 24/04/2013 09:34:00 mgrigioni
 */
public class ProcDownloadNFe extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcDownloadNFe.class);

	private int p_LBR_NotaFiscal_ID = 0;
	
	private Timestamp p_DateDoc1;
	private Timestamp p_DateDoc2;
	
	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para.getParameterAsInt();
			else if (name.equals("DateDoc")){
				p_DateDoc1 = (Timestamp)para.getParameter();
				p_DateDoc2 = (Timestamp)para.getParameter_To();
			}
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception {
			
		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), Env.getAD_Org_ID(getCtx()), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			return "Ambiente da NF-e deve ser preenchido.";
		}
		
		if (oiW.getlbr_NFeEnv().equals(MLBRNFeWebService.LBR_NFEENV_Homologation)){
			return "Processo disponível apenas no ambiente de Produção";
		}
		
		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		
		List<MLBRNotaFiscal> notas = new ArrayList<MLBRNotaFiscal>();
		if (p_LBR_NotaFiscal_ID > 0){
			log.info("Ignorado parâmetro Data. Nota Fiscal ID = " + p_LBR_NotaFiscal_ID);
			notas.add(new MLBRNotaFiscal(getCtx(),p_LBR_NotaFiscal_ID,get_TrxName()));
		} 
		else {
			if (p_DateDoc1 == null || p_DateDoc2 == null)
				throw new IllegalArgumentException("Intervalor de Datas Inválido");
			
			notas = MLBRNotaFiscal.get(p_DateDoc1, p_DateDoc2, false, get_TrxName());
		}
		
		for(MLBRNotaFiscal nf : notas){
		
			//pular nf propria, sem chave nfe ou já com anexo
			if (nf.isSOTrx() || nf.islbr_IsOwnDocument() || 
				nf.getlbr_NFeID() == null || nf.getAttachment() != null)
				continue;
				
			try{
				XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader
						(new StringReader(NFeUtil.geraMsgDownloadNFe(oiW.getlbr_NFeEnv(), oiW.getlbr_CNPJ(),nf.getlbr_NFeID())));
	
				NfeDownloadNFStub.NfeDadosMsg dadosMsg = NfeDownloadNFStub.NfeDadosMsg.Factory.parse(dadosXML);
				NfeDownloadNFStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecDownloadNFe(orgInfo.getC_Location().getC_Region_ID());
	
				NfeDownloadNFStub stub = new NfeDownloadNFStub();
				String respStatus = stub.nfeDownloadNF(dadosMsg, cabecMsgE).getExtraElement().toString();
				
				DocumentBuilder builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
			    Document doc = builder.parse(new InputSource(new StringReader(respStatus)));
			    
			    String cStat = NFeUtil.getValue(doc, "cStat");
			    if (cStat.equals("139")){
			    	respStatus = NFeUtil.XML_HEADER + respStatus.substring(respStatus.indexOf("<nfeProc"), respStatus.indexOf("</procNFe>"));
					File xml = new File(TextUtil.generateTmpFile(respStatus, nf.getlbr_NFeID() + NFeUtil.EXT_DIST_NFE));
					NFeUtil.updateAttach(nf, xml);
			    }
			    
			}
			catch (Throwable e1){
				log.severe(e1.getLocalizedMessage());
				e1.printStackTrace();
			}
			
		} //loop notas
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt

}	//	ProcDownloadNFe