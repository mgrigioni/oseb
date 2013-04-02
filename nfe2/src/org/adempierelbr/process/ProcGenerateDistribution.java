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

import java.io.File;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Processo para atualizar XML para padrão de distribuição
 * 
 * 	@author Mario Grigioni
 * 	@version $Id: NFeDistribution.java, 10/12/2009 11:11:00 mgrigioni
 *  @deprecated - Processo para atualizar arquivos que não estão no padrão de distribuição
 */
public class ProcGenerateDistribution extends SvrProcess 
{
	/** Nota Fiscal               */
	private static Integer p_LBR_NotaFiscal_ID = 0;
	
	private final int NFeReference   = 1100004;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateDistribution.class);

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
			else if (name.equals("LBR_NotaFiscal_ID"))
				p_LBR_NotaFiscal_ID = para[i].getParameterAsInt();
			else
				log.log(Level.SEVERE, "prepare - Unknown Parameter: " + name);
		}
		
		if (p_LBR_NotaFiscal_ID == 0)
			p_LBR_NotaFiscal_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	DoIt
	 */
	protected String doIt() throws Exception 
	{		
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(), p_LBR_NotaFiscal_ID, null);
		//
		boolean success = NFeUtil.updateAttach(nf, generateDistribution(nf));
		String msg = "";
		if (success)
			msg = "Processo finalizado com Sucesso.";
		else
			msg = "Erro ao atualizar o Arquivo da NFe";
		
		return msg;
	}	//	doIt
	
	private File generateDistribution(MLBRNotaFiscal nf) throws Exception{

		File attach = null;

		if (nf.getlbr_NFeProt() == null || nf.getlbr_NFeProt().equals("")) //Verifica se foi processada
			return attach;

		String status = nf.getlbr_NFeStatus();
		String FILE_EXT = NFeUtil.EXT_DIST_NFE;
		
		if (!status.equals(MLBRNotaFiscal.LBR_NFESTATUS_100_AutorizadoOUsoDaNF_E)){ //Autorizado o uso da NF-e
			return attach;
		}

		File xml = NFeUtil.getAttachmentEntryFile(nf.getAttachment().getEntry(0));
		if (xml == null || xml.getName().endsWith(FILE_EXT)) //Já está no padrão de distribuição
			return attach;

	    String dados = NFeUtil.XMLtoString(xml);
	    //
	    String cabecalho  = geraCabecDistribuicao();
		//
	    String rodape 	  = geraRodapDistribuicao(nf.getlbr_NFeID(), nf.getlbr_NFeProt(), getEnvType(nf.getCtx()),
	        		                                  NFeUtil.timeToString(nf.getDateTrx()), nf.getlbr_DigestValue(),
	        		                                  status,getNFeStatus(status));
		//
		String dadosEmXML = cabecalho + dados + rodape;
		attach = new File(TextUtil.generateTmpFile(dadosEmXML, nf.getlbr_NFeID() + FILE_EXT));

		nf.getAttachment(true).delete(true); //Exclui anexo anterior. BUG ADempiere

		return attach;
	} //NFeDistribution
	
	/**
	 * Gera o cabeçalho distribuição
	 *
	 * @return Cabeçalho distribuiçãi
	 */
	private String geraCabecDistribuicao(){
		String cabecalho = "<?xml version=\"1.0\" encoding=\"utf-8\"?>" +
		 "<nfeProc xmlns=\"http://www.portalfiscal.inf.br/nfe\"  versao=\"" + NFeUtil.VERSAO + "\">";

		return cabecalho;
	}
	
	/**
	 * Rodapé padrão Distribuição
	 *
	 * @param chNFe
	 * @param nProt
	 * @param tpAmb
	 * @param dhRecbto
	 * @param digVal
	 * @param cStat
	 * @param xMotivo
	 * @return XML
	 */
	private String geraRodapDistribuicao (String chNFe, String nProt, String tpAmb, String dhRecbto,
			                                    String digVal, String cStat, String xMotivo)
	{
		String dados = 	"<protNFe xmlns=\"http://www.portalfiscal.inf.br/nfe\" versao=\"" + NFeUtil.VERSAO + "\"><infProt>" +
				        "<tpAmb>"+tpAmb+"</tpAmb>" +
				        "<verAplic>"+NFeUtil.VERSAO+"</verAplic>" +
				        "<chNFe>"+chNFe+"</chNFe>" +
				        "<dhRecbto>"+dhRecbto+"</dhRecbto>" +
				        "<nProt>"+nProt+"</nProt>" +
				        "<digVal>"+digVal+"</digVal>" +
				        "<cStat>"+cStat+"</cStat>" +
				        "<xMotivo>"+xMotivo+"</xMotivo></infProt></protNFe></nfeProc>";

		return dados;
	}	//	RodapDistribuicao
	
	/**
	 * getEnvType
	 * @param ctx
	 * @return envType
	 */
	private String getEnvType(Properties ctx){
		MOrgInfo oi = MOrgInfo.get(ctx, Env.getAD_Org_ID(ctx),null);
		String envType 	= oi.get_ValueAsString("lbr_NFeEnv");

		if (envType == null || envType.equals(""))
			envType = "2"; //Homologação

		return envType;
	} //getEnvType

	private String getNFeStatus(String status)
	{

		String sql = "SELECT Name FROM AD_Ref_List " +
				     "WHERE AD_Reference_ID = ? AND Value = ?";

		String NFeStatus = DB.getSQLValueString(null, sql,
				new Object[]{NFeReference, status});

		return NFeStatus;
	}	//getNFeStatus
	
}	//	ProcGenerateDistribution