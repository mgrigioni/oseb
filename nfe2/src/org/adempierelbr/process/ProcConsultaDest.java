/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

import java.io.StringReader;
import java.io.StringWriter;
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.ResCCe;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.ResCanc;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.ResNFe;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.Ret;
import org.adempierelbr.nfe.beans.nfeConsultaNFDest.RetConsNFeDest;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

import br.inf.portalfiscal.www.nfe.wsdl.nfeconsultadest.NFeConsultaDestStub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 	Processo para consulta NF-e destinadas
 *
 * @author Mario Grigioni
 * @version $Id: ProcConsultaDest.java, 24/09/2012 09:56:00 mgrigioni
 */
public class ProcConsultaDest extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcConsultaDest.class);

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	protected void prepare()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
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
		
		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader
					(new StringReader(NFeUtil.geraMsgConsultaDest(oiW.getlbr_NFeEnv(), oiW.getlbr_CNPJ())));

			NFeConsultaDestStub.NfeDadosMsg dadosMsg = NFeConsultaDestStub.NfeDadosMsg.Factory.parse(dadosXML);
			NFeConsultaDestStub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecConsultaDest(orgInfo.getC_Location().getC_Region_ID());

			NFeConsultaDestStub stub = new NFeConsultaDestStub();

			String respStatus = stub.nfeConsultaNFDest(dadosMsg, cabecMsgE).getExtraElement().toString();

			XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.processAnnotations(new Class[]{RetConsNFeDest.class,Ret.class,
					ResNFe.class,ResCanc.class,ResCCe.class});
			//
			RetConsNFeDest retConsDest = (RetConsNFeDest)xstream.fromXML (NFeUtil.XML_HEADER + respStatus);
			
			StringWriter sw = new StringWriter ();
			xstream.marshal (retConsDest,new CompactWriter (sw));
			
			TextUtil.generateTmpFile(sw.toString(), "retConsDest.xml");
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt

}	//	ProcConsultaDest