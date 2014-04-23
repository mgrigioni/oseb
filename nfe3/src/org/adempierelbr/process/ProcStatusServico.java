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
import java.util.logging.Level;

import javax.xml.stream.XMLInputFactory;
import javax.xml.stream.XMLStreamReader;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRDigitalCertificate;
import org.adempierelbr.model.MLBRNFeWebService;
import org.adempierelbr.nfe.beans.statusServicoNFe.RetConsStatServ;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import br.inf.portalfiscal.www.nfe.wsdl.nfestatusservico2.NfeStatusServico2Stub;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 * 	Processo para consultar o Status do Serviço
 *
 * @author Mario Grigioni
 * @version $Id: ProcStatusServico.java, 08/04/2010 15:35:00 mgrigioni
 */
public class ProcStatusServico extends SvrProcess
{

	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcStatusServico.class);

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
	protected String doIt() throws Exception
	{

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), Env.getAD_Org_ID(getCtx()), get_TrxName());
		I_W_AD_OrgInfo oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		if (oiW.getlbr_NFeEnv() == null || oiW.getlbr_NFeEnv().isEmpty()){
			return "Ambiente da NF-e deve ser preenchido.";
		}

		//INICIALIZA CERTIFICADO
		MLBRDigitalCertificate.setCertificate(getCtx(), orgInfo);
		
		//PROCURA WEBSERVICE
		MLBRNFeWebService ws = MLBRNFeWebService.get(orgInfo,MLBRNFeWebService.STATUSSERVICO);
		if (ws == null)
			return "Não foi encontrado um endereço WebServices válido.";
		
		String status = "Erro na verificação de Status";

		try{
			XMLStreamReader dadosXML = XMLInputFactory.newInstance().createXMLStreamReader
					(new StringReader(NFeUtil.geraMsgStatusServico(oiW.getlbr_NFeEnv(), orgInfo.getC_Location().getC_Region_ID())));

			NfeStatusServico2Stub.NfeDadosMsg dadosMsg = NfeStatusServico2Stub.NfeDadosMsg.Factory.parse(dadosXML);
			NfeStatusServico2Stub.NfeCabecMsgE cabecMsgE = NFeUtil.geraCabecStatusServico(orgInfo.getC_Location().getC_Region_ID());

			NfeStatusServico2Stub.setAddress(ws);
			NfeStatusServico2Stub stub = new NfeStatusServico2Stub();

			String respStatus = stub.nfeStatusServicoNF2(dadosMsg, cabecMsgE).getExtraElement().toString();

			XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
			xstream.processAnnotations(new Class[]{RetConsStatServ.class});
			//
			RetConsStatServ retConsStat = (RetConsStatServ)xstream.fromXML (NFeUtil.XML_HEADER + respStatus);
			status = retConsStat.toString();
		}
		catch (Throwable e1){
			log.severe(e1.getLocalizedMessage());
			e1.printStackTrace();
		}

		return status;
	}	//	doIt

}	//	ProcStatusServico