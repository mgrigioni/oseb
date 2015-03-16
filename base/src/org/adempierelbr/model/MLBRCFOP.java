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
package org.adempierelbr.model;

import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;

import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_OrderLine;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MLocation;
import org.compiere.model.MOrder;
import org.compiere.model.MOrderLine;
import org.compiere.model.MOrgInfo;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	MLBRCFOP
 *
 *	Model for X_LBR_CFOP
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRCFOP.java, v2.0 18/06/2012 09:55:00 mgrigioni
 */
public class MLBRCFOP extends X_LBR_CFOP {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8075892015699275974L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRCFOP(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}
	
	/**
	 * @return true se for uma operação de devolução
	 */
	public boolean isDevolution(){
		
		if (getDescription() != null && 
		   (getDescription().toUpperCase()).indexOf("DEVOL") != -1)
				return true;	
		
		return false;
	} //isDevolution
	
	/**
	 * @return true se for uma prestação de serviço
	 */
	public boolean isService(){
		
		if (getDescription() != null){
			if((getDescription().toUpperCase()).indexOf("SERVI") != -1){
				if (((getDescription().toUpperCase()).indexOf("UTILIZA") != -1) ||
					((getDescription().toUpperCase()).indexOf("OUTRA") != -1))
					return false;
				return true;
			}
		}
		
		return false;
	} //isService

	/**
	 * @return true se for uma operação que possui receita
	 */
	public boolean isRevenue(){
		
		String value = TextUtil.lPad(TextUtil.toNumeric(getValue()),4);
		if (Integer.valueOf(value.substring(0, 1)).intValue() < 5){ //Entrada = FALSE
			return false;
		}
		
		if (getDescription() != null){
			if((getDescription().toUpperCase()).indexOf("REMESSA") != -1) //SIMPLES REMESSA = FALSE
				return false;
			
			if((getDescription().toUpperCase()).indexOf("OUTRA SA") != -1) //OUTRAS SAIDAS = FALSE
				return false;
			
			if((getDescription().toUpperCase()).indexOf("VENDA") != -1) //VENDA = TRUE
				return true;
			
			if ((getDescription().toUpperCase()).indexOf("PRESTA") != -1) //PRESTACAO DE SERVICO = TRUE
				return true;
			
			if ((getDescription().toUpperCase()).indexOf("FATURAMENTO") != -1) //FATURAMENTO = TRUE
				return true;
		}
		
		return false;
	} //isRevenue
	
	/**
	 * @return true se for uma operação de comércio exterior
	 */
	public boolean isComex(){
		
		String value = TextUtil.lPad(TextUtil.toNumeric(getValue()),4);
		if (Integer.valueOf(value.substring(0, 1)).intValue() == 3 ||
			Integer.valueOf(value.substring(0, 1)).intValue() == 7	){
			return true;
		}
		
		return false;
	}
	
	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRCFOP (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public static MLBRCFOP getCFOP(Properties ctx, String value, String trxName){
		
		String sql = "SELECT MAX(LBR_CFOP_ID) FROM LBR_CFOP " +
				     "WHERE value = ? AND AD_Client_ID = ?";
		
		int LBR_CFOP_ID = DB.getSQLValue(trxName, sql, new Object[]{value,Env.getAD_Client_ID(ctx)});
		if (LBR_CFOP_ID > 0){
			return new MLBRCFOP(ctx,LBR_CFOP_ID,trxName);
		}
		
		return null;
	}
	
	public static String validateCFOP(MLBRNotaFiscal nf){
		
		Properties ctx = nf.getCtx();
		String     trx = nf.get_TrxName();

		//Organização
		MOrgInfo orgInfo = MOrgInfo.get(ctx, nf.getAD_Org_ID(), trx);
		MLocation orgLocation = new MLocation(ctx,orgInfo.getC_Location_ID(),trx);

		//Parceiro de Negócios
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,nf.getC_BPartner_Location_ID(),trx);
		MLocation         location   = bpLocation.getLocation(false);
		
		boolean isSOTrx = nf.isSOTrx();

		List<MLBRNotaFiscalLine> lines = nf.getLines();
		for(MLBRNotaFiscalLine line : lines){
			
			String erro = "CFOP inválido. Linha: " + line.getLine();
			
			if (line.getlbr_CFOPName() == null || line.getlbr_CFOPName().trim().isEmpty())
				return erro;
			
			if (!MLBRCFOP.validateCFOP(line.getLBR_CFOP_ID(), isSOTrx, orgLocation, location,false))
				return erro;
		}

		return null;
	}

	public static String validateCFOP(MInvoice invoice){

		Properties ctx = invoice.getCtx();
		String     trx = invoice.get_TrxName();

		//Organização
		MOrgInfo orgInfo = MOrgInfo.get(ctx, invoice.getAD_Org_ID(), trx);
		MLocation orgLocation = new MLocation(ctx,orgInfo.getC_Location_ID(),trx);

		//Parceiro de Negócios
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,invoice.getC_BPartner_Location_ID(),trx);
		MLocation         location   = bpLocation.getLocation(false);

		boolean isSOTrx = invoice.isCreditMemo() ? !invoice.isSOTrx() : invoice.isSOTrx();
		MDocType dt = new MDocType(ctx,invoice.getC_DocTypeTarget_ID(),trx);

		if (!dt.get_ValueAsBoolean(I_W_C_DocType.COLUMNNAME_lbr_HasFiscalDocument)) //SEM NF NÃO VERIFICA CFOP
			return null;

		MInvoiceLine[] lines = invoice.getLines();
		for(MInvoiceLine line : lines){
			if (line.isDescription())
				continue;

			Integer LBR_CFOP_ID = (Integer)line.get_Value(I_W_C_InvoiceLine.COLUMNNAME_LBR_CFOP_ID);
			if (!MLBRCFOP.validateCFOP(LBR_CFOP_ID, isSOTrx, orgLocation, location, !dt.get_ValueAsBoolean(I_W_C_DocType.COLUMNNAME_lbr_HasFiscalDocument)))
				return  "CFOP inválido. Fatura: " + invoice.getDocumentNo() + " Linha: " + line.getLine();
		}

		return null;
	}

	public static String validateCFOP(MOrder order){

		Properties ctx = order.getCtx();
		String     trx = order.get_TrxName();

		//Organização
		MOrgInfo orgInfo = MOrgInfo.get(ctx, order.getAD_Org_ID(), trx);
		MLocation orgLocation = new MLocation(ctx,orgInfo.getC_Location_ID(),trx);

		//Parceiro de Negócios
		MBPartnerLocation bpLocation = new MBPartnerLocation(ctx,order.getBill_Location_ID(),trx);
		MLocation         location   = bpLocation.getLocation(false);

		boolean isSOTrx = order.isSOTrx();
		MDocType dtO = new MDocType(ctx,order.getC_DocTypeTarget_ID(),trx);
		MDocType dt  = new MDocType(ctx,dtO.getC_DocTypeInvoice_ID(),trx);
		if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APCreditMemo) ||
			dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARInvoice)){

			isSOTrx = true;
		}
		else if (dt.getDocBaseType().equals(MDocType.DOCBASETYPE_APInvoice) ||
				 dt.getDocBaseType().equals(MDocType.DOCBASETYPE_ARCreditMemo)){

			isSOTrx = false;
		}

		MOrderLine[] lines = order.getLines();
		for(MOrderLine line : lines){
			Integer LBR_CFOP_ID = (Integer)line.get_Value(I_W_C_OrderLine.COLUMNNAME_LBR_CFOP_ID);
			if (!MLBRCFOP.validateCFOP(LBR_CFOP_ID, isSOTrx, orgLocation, location, true))
				return  "CFOP inválido. OV: " + order.getDocumentNo() + " Linha: " + line.getLine();
		}

		return null;
	}

	/**
	 * validateCFOP
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public boolean validateCFOP(boolean isSOTrx, MLocation orgLocation, MLocation bpLocation, boolean allowNull){

		boolean validated   = true;
		boolean sameRegion  = true;
		boolean sameCountry = true;

		if (getValue() == null || getValue().equals(""))
			return allowNull;


		if (orgLocation.getC_Country_ID() != bpLocation.getC_Country_ID()){
			sameRegion  = false;
			sameCountry = false;
		}
		else if (orgLocation.getC_Region_ID() != bpLocation.getC_Region_ID()){
			sameRegion  = false;
		}

		//VALIDACAO
		if (isSOTrx){
			if (!sameCountry && getValue().charAt(0) != '7') //Saída fora do Pais)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '6') //Saída fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '5') //Saída mesmo Estado
				return false;
		}
		else{
			if (!sameCountry && getValue().charAt(0) != '3') //Entrada fora do Pais)
				return false;

			if (!sameRegion && sameCountry && getValue().charAt(0) != '2') //Entrada fora Estado
				return false;

			if (sameRegion && sameCountry && getValue().charAt(0) != '1') //Entrada mesmo Estado
				return false;
		}

		return validated;
	}

	/**
	 * validateCFOP
	 * @param LBR_CFOP_ID
	 * @param isSOTrx
	 * @param orgLocation
	 * @param bpLocation
	 * @param allowNull - if true, return valid when NULL
	 * @return boolean true (valid), false (invalid)
	 */
	public static boolean validateCFOP(Integer LBR_CFOP_ID, boolean isSOTrx,
			                           MLocation orgLocation, MLocation bpLocation, boolean allowNull){

		boolean validated = true;

		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() <= 0)
			return allowNull;

		MLBRCFOP cfop = new MLBRCFOP(Env.getCtx(),LBR_CFOP_ID,null);

		validated = cfop.validateCFOP(isSOTrx, orgLocation, bpLocation, allowNull);

		return validated;
	}

} //MCFOP