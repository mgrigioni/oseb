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

import java.math.BigDecimal;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.ginfes.beans.TcCpfCnpj;
import org.adempierelbr.ginfes.beans.TcDadosServico;
import org.adempierelbr.ginfes.beans.TcDadosTomador;
import org.adempierelbr.ginfes.beans.TcEndereco;
import org.adempierelbr.ginfes.beans.TcIdentificacaoPrestador;
import org.adempierelbr.ginfes.beans.TcIdentificacaoRps;
import org.adempierelbr.ginfes.beans.TcIdentificacaoTomador;
import org.adempierelbr.ginfes.beans.TcInfRps;
import org.adempierelbr.ginfes.beans.TcRps;
import org.adempierelbr.ginfes.beans.TcValores;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *  ProcGenerateRpsXml
 *  @author Mario Grigioni
 *  @version $Id: ProcGenerateRpsXml.java,v 1.0 06/06/2012 10:44:00 mgrigioni Exp $
 */
public class ProcGenerateRpsXml extends SvrProcess 
{
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(ProcGenerateRpsXml.class);

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
		generateXML(getCtx(),getRecord_ID(),get_TrxName());
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	public static void generateXML(Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws AdempiereException{
		
		if (LBR_NotaFiscal_ID <= 0)
			throw new AdempiereException("Nota Fiscal inválida");
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trxName);
		
		List<MLBRNotaFiscalLine> nfLines = nf.getLines();
		if (nfLines.size() != 1){
			throw new AdempiereException("RPS só pode conter um serviço");
		}
		
		MLBRNotaFiscalLine nfLine = nfLines.iterator().next();
		MOrgInfo orgInfo = MOrgInfo.get(nf.getCtx(), nf.getAD_Org_ID(), nf.get_TrxName());
		MLocation orgLocation = new MLocation(nf.getCtx(),orgInfo.getC_Location_ID(),nf.get_TrxName());
		
		//DADOS DO DOCUMENTO
		TcIdentificacaoRps identificacaoRps = new TcIdentificacaoRps(nf.getDocumentNo(true),nf.getSerieNo());
		//DADOS DO SERVICO
		TcValores valores = createTcValores(nfLine);
		TcDadosServico servico = 
				new TcDadosServico(valores, nfLine.getProductValue(), nfLine.getDescription(), 
						BPartnerUtil.getCityCode(orgLocation));
		//DADOS DO PRESTADOR
		TcIdentificacaoPrestador prestador= new TcIdentificacaoPrestador(nf.getlbr_CNPJ(), 
				orgInfo.get_ValueAsString(I_W_AD_OrgInfo.COLUMNNAME_lbr_CCM));
		//DADOS DO TOMADOR
		TcIdentificacaoTomador identificacaoTomador = new TcIdentificacaoTomador(new TcCpfCnpj(nf.getlbr_BPCNPJ()), null);
		TcEndereco enderecoTomador = new TcEndereco(nf.getlbr_BPAddress1(), nf.getlbr_BPAddress2(), nf.getlbr_BPAddress3(),
				BPartnerUtil.getCityCode(new MLocation(nf.getCtx(),nf.getC_BPartner_Location().getC_Location_ID(),nf.get_TrxName())), 
				nf.getlbr_BPRegion(), nf.getlbr_BPPostal());
		TcDadosTomador tomador = new TcDadosTomador(identificacaoTomador, nf.getBPName(), enderecoTomador, null);
				
		TcRps rps = new TcRps(orgInfo, nf, new TcInfRps(nf.getDocumentNo(true), identificacaoRps, 
				nf.getDateDoc(), false, false, servico, prestador, tomador));
		
		rps.toXML();
	} //generateXML
	
	private static TcValores createTcValores(MLBRNotaFiscalLine nfLine){
		
		BigDecimal VL_PIS      = nfLine.getTaxAmt("PIS");
		BigDecimal VL_COFINS   = nfLine.getTaxAmt("COFINS");
		BigDecimal VL_INSS     = nfLine.getTaxAmt("INSS");
		BigDecimal VL_IRRF     = nfLine.getTaxAmt("IR");
		BigDecimal VL_CSLL     = nfLine.getTaxAmt("CSLL");
		//
		BigDecimal VL_BC_ISSQN = nfLine.getTaxBaseAmt("ISS");
		BigDecimal ALIQ_ISSQN  = nfLine.getTaxRate("ISS");
		BigDecimal VL_ISSQN    = nfLine.getTaxAmt("ISS");
		
		TcValores valores = new TcValores(nfLine.getLineTotalAmt());
		valores.setValorPis(VL_PIS.signum() >= 0 ? Env.ZERO : VL_PIS.abs());
		valores.setValorCofins(VL_COFINS.signum() >= 0 ? Env.ZERO : VL_COFINS.abs());
		valores.setValorInss(VL_INSS.signum() >= 0 ? Env.ZERO : VL_INSS.abs());
		valores.setValorIr(VL_IRRF.signum() >= 0 ? Env.ZERO : VL_IRRF.abs());
		valores.setValorCsll(VL_CSLL.signum() >= 0 ? Env.ZERO : VL_CSLL.abs());
		valores.setBaseCalculo(VL_ISSQN.signum() >= 0 ? VL_BC_ISSQN : Env.ZERO);
		valores.setAliquota(VL_ISSQN.signum() >= 0 ? ALIQ_ISSQN : Env.ZERO);
		valores.setValorIss(VL_ISSQN);
		valores.setValorLiquidoNfse();
		
		return valores;
	} //createTcValores
	
}	//	ProcGenerateRpsXml