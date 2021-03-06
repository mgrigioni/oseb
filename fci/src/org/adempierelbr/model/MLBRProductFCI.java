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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Properties;
import java.util.Set;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MProductBOM;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *  LBR_ProductFCI Model
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRProductFCI.java, v0.1 07/05/2013 14:26:00 mgrigioni
 */
public class MLBRProductFCI extends X_LBR_ProductFCI {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4055385920365507657L;

	private final static String CFOP_IMPORTACAO  = "'3.101','3.102','3.126'";
	private final static String CFOP_INTESTADUAL = "'6.101','6.102','6.103','6.104'," +
			"'6.105','6.106','6.107','6.108','6.109','6.110','6.111','6.112','6.113','6.114','6.115'," +
			"'6.116','6.117','6.118','6.119','6.120','6.122','6.123','6.401','6.402','6.403','6.404'";

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRProductFCI(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRProductFCI (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public MLBRProductFCI (MProduct product, int C_Period_ID){
		super(product.getCtx(),0,product.get_TrxName());
		setM_Product_ID(product.get_ID());
		setValue("TEMP_"+product.get_ID());
		setC_Period_ID(C_Period_ID);
	}
	
	protected boolean beforeSave(boolean newRecord) {
		
		if (!newRecord)
			return true;
		
		setValue("TEMP_" + getM_Product_ID());
		
		if (getAmtSource().signum() == 1 && getInvoicedAmt().signum() == 1){
			BigDecimal percentage = ((getAmtSource().divide(getInvoicedAmt(), TaxBR.MCROUND)).multiply(Env.ONEHUNDRED)).setScale(TaxBR.SCALE, TaxBR.ROUND);
			setPercentage(percentage);
		}
		
		String sql = "SELECT MAX(p.EndDate) " +
				     "FROM C_Period p " +
				     "INNER JOIN LBR_ProductFCI fci ON (p.C_Period_ID = fci.C_Period_ID) " +
				     "WHERE fci.M_Product_ID = ?";
		
		Timestamp maxDate = DB.getSQLValueTSEx(get_TrxName(), sql, new Object[]{getM_Product_ID()});
		if (maxDate == null) //NAO POSSUE NENHUM ENTRADA
			return true;
		
		MPeriod period = MPeriod.get(getCtx(), getC_Period_ID());
		if (maxDate.compareTo(period.getEndDate()) >= 0){
			log.warning(Msg.getMsg(getCtx(), "SaveError"));
			return false;
		}
		
		return true;
	}	//	beforeSave
	
	protected boolean afterSave (boolean newRecord, boolean success){
		
		if (!newRecord)
			return success;
		
		MProduct product = MProduct.get(getCtx(), getM_Product_ID());
		String productSource = "5";
		if (getPercentage().compareTo(new BigDecimal("40")) > 0 && 
			getPercentage().compareTo(new BigDecimal("70")) <= 0){
			productSource = "3";
		}
		else if (getPercentage().compareTo(new BigDecimal("70")) > 0){
			productSource = "8";
		}
			
		product.set_ValueOfColumn("lbr_ProductSource", productSource);
		return product.save(get_TrxName());
	}	//	afterSave
		
	public static MLBRProductFCI get(Properties ctx, String productValue, int C_Period_ID, String trxName){
		
		MProduct[] products = MProduct.get(ctx, "Value='"+productValue+"'", trxName);
		if (products.length != 1)
			return null;
		
		String whereClause = "C_Period_ID=? AND M_Product_ID=?";
		MTable table = MTable.get(ctx, MLBRProductFCI.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trxName);
	 		  query.setParameters(new Object[]{C_Period_ID,products[0].get_ID()});
		
		return query.firstOnly();
	}
	
	public static List<MLBRProductFCI> get(Properties ctx, int C_Period_ID, String trxName){

		String whereClause ="C_Period_ID=? AND Value LIKE 'TEMP_%'";
		
		MTable table = MTable.get(ctx, MLBRProductFCI.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trxName);
	 		  query.setParameters(new Object[]{C_Period_ID});

	 	return query.list();
	} //get
	
	public static MLBRProductFCI getActual(int M_Product_ID, String trxName){
		
		String sql = "SELECT MAX(LBR_ProductFCI_ID) " +
				     "FROM LBR_ProductFCI " +
				     "WHERE M_Product_ID = ? AND Value NOT LIKE 'TEMP_%'";
		
		int LBR_ProductFCI_ID = DB.getSQLValue(trxName, sql, M_Product_ID);
		return LBR_ProductFCI_ID > 0 ? new MLBRProductFCI(Env.getCtx(),LBR_ProductFCI_ID,trxName) : null;
	}
	
	public static BigDecimal getAmt(Timestamp dateFrom, Timestamp dateTo, boolean isSOTrx, int M_Product_ID){
		
		BigDecimal qtd   = Env.ZERO;
		BigDecimal valor = Env.ZERO;
		
		List<MLBRNotaFiscalLine> lines = getLines(dateFrom, dateTo, isSOTrx, M_Product_ID, null);
		for (MLBRNotaFiscalLine line : lines){
			String cfop = line.getCFOP();
			if (isSOTrx && !cfop.startsWith("6"))
				break; //SOMENTE VENDA INTERESTADUAL
			else if (!isSOTrx && !cfop.startsWith("3"))
				break; //SOMENTE IMPORTACAO
			
			BigDecimal baseICMS = line.getTaxBaseAmt("PIS");
			if (baseICMS.signum() == 1){
				qtd = qtd.add(line.getQty());
				valor = valor.add(baseICMS);
			}
		}
		
		if (qtd.signum() == 0 || valor.signum() == 0)
			return Env.ZERO;
		
		return valor.divide(qtd, TaxBR.SCALE, TaxBR.ROUND);
	} //getAmt
	
	
	/**************************************************************************
	 * Retorna as Linhas das Notas Fiscais por período (compra, venda ou ambos)
	 * @param dateFrom
	 * @param dateTo
	 * @param AD_Org_ID
	 * @param isSOTrx: true = venda, false = compra
	 * @param M_Product_ID
	 * @param trxName
	 * @return List<MLBRNotaFiscalLine> nfLine
	 */
	public static List<MLBRNotaFiscalLine> getLines(Timestamp dateFrom, Timestamp dateTo, boolean isSOTrx, int M_Product_ID, String trxName){

		String whereClause = "AD_Client_ID=? AND " +
				             "AD_Org_ID IN (0,?) AND M_Product_ID=? " +
						     "AND LBR_CFOPName IN (" + (isSOTrx ? CFOP_INTESTADUAL : CFOP_IMPORTACAO) + ") " +
							 "AND LBR_NotaFiscal_ID IN " +
							 "(SELECT LBR_NotaFiscal_ID FROM LBR_NotaFiscal " +
							 "WHERE IsCancelled='N' AND (CASE WHEN IsSOTrx='Y' THEN TRUNC(DateDoc) " +
							 "ELSE TRUNC(COALESCE(lbr_DateInOut, DateDoc)) END) BETWEEN ? AND ? " +
							 "AND IsSOTrx=?)";

		MTable table = MTable.get(Env.getCtx(), MLBRNotaFiscalLine.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause.toString(), trxName);
		      q.setParameters(new Object[]{Env.getAD_Client_ID(Env.getCtx()),
		    		  Env.getAD_Org_ID(Env.getCtx()),M_Product_ID,dateFrom,dateTo,isSOTrx});

		return q.list();
	}
	
	public static Timestamp getLastDate(Timestamp dateTo, boolean isSOTrx, int M_Product_ID, String trxName){
		
		String sql = "SELECT MAX(TRUNC(COALESCE(lbr_DateInOut, DateDoc))) " +
				     "FROM LBR_NotaFiscalLine nfl " +
				     "INNER JOIN LBR_NotaFiscal nf ON (nfl.LBR_NotaFiscal_ID = nf.LBR_NotaFiscal_ID) " +
				     "INNER JOIN LBR_NFLineTax_v nft ON (nfl.LBR_NotaFiscalLine_ID = nft.LBR_NotaFiscalLine_ID AND nft.TaxIndicator='PIS') " +
				     "WHERE nf.IsSOTrx=? AND nf.IsCancelled='N' AND nfl.M_Product_ID=? AND nft.lbr_TaxBaseAmt > 0 " +
				     "AND (CASE WHEN nf.IsSOTrx='Y' THEN TRUNC(DateDoc) " +
				     "ELSE TRUNC(COALESCE(lbr_DateInOut, DateDoc)) END) < ? " +
				     "AND nfl.LBR_CFOPName IN (" + (isSOTrx ? CFOP_INTESTADUAL : CFOP_IMPORTACAO) + ")";
		
		Timestamp dateDoc = DB.getSQLValueTSEx(trxName, sql, new Object[]{isSOTrx,M_Product_ID,dateTo});
		return dateDoc;
	} //getLastDate
	
	public static Set<Object[]> loadBOM(MProduct product, BigDecimal qty){	
		Set<Object[]> importados =  new LinkedHashSet<Object[]>();
		
		if (product.isBOM()){
			MProductBOM[] boms = MProductBOM.getBOMLines(product);
			for(MProductBOM bom : boms){
				if (!bom.isActive())
					continue;
				
				MProduct pBOM = new MProduct(bom.getCtx(),bom.getM_ProductBOM_ID(),bom.get_TrxName());
				if (pBOM.getProductType().equals(MProduct.PRODUCTTYPE_Item))
					importados.addAll(loadBOM(pBOM,bom.getBOMQty().multiply(qty)));
			}
		}
		
		I_W_M_Product pW = POWrapper.create(product, I_W_M_Product.class);
		if ("1".equals(pW.getlbr_ProductSource()) && product.isPurchased() && product.isStocked()){ //MATERIAL IMPORTADO
			importados.add(new Object[]{product.get_ID(),qty});
		}
		
		return importados;
	} //loadBOM
	

} //MLBRProductFCI