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

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.ImpostoBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_C_Tax;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MInvoiceTax;
import org.compiere.model.MTax;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *  LBR_NFLineTax Model
 *  
 *  Class that process brazilian fiscal documents line taxes (a.k.a Nota Fiscal)
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNFLineTax.java, v2.0 15/06/2012 08:49:00 mgrigioni
 */
public class MLBRNFLineTax extends X_LBR_NFLineTax {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1365248625357576794L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNFLineTax.class);

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFLineTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFLineTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * Parent Constructor
	 * @param LBR_TaxGroup_ID
	 * @param nfLine
	 * @param taxLine
	 */
	public MLBRNFLineTax (int LBR_TaxGroup_ID, MLBRNotaFiscalLine nfLine,X_LBR_TaxLine taxLine){
		this(nfLine.getCtx(),0,nfLine.get_TrxName());
		if (nfLine.get_ID() == 0)
			throw new IllegalArgumentException("Parent not saved");
		
		BigDecimal withHold = Env.ONE;
		if (taxLine != null && taxLine.getLBR_TaxName().isHasWithHold())
			withHold = withHold.negate();
		
		setLBR_NotaFiscalLine_ID(nfLine.get_ID());
		setLBR_TaxGroup_ID(LBR_TaxGroup_ID);
		setClientOrg(nfLine);
		//values		
		setlbr_TaxBaseAmt(taxLine == null ? Env.ZERO : taxLine.getlbr_TaxBaseAmt());
		setlbr_TaxAmt(taxLine == null ? Env.ZERO : (taxLine.getlbr_TaxAmt()).multiply(withHold));
		setlbr_TaxRate(taxLine == null ? Env.ZERO : taxLine.getlbr_TaxRate());
		setlbr_TaxBase(taxLine == null ? Env.ZERO : taxLine.getlbr_TaxBase());
	}
	
	public MLBRNFLineTax (int LBR_TaxGroup_ID, MLBRNotaFiscalLine nfLine){
		this(LBR_TaxGroup_ID,nfLine,null);
	}
		
	/**
	 * Cria registros na tabela LBR_NFLineTax
	 * @param ctx
	 * @param C_InvoiceLine_ID
	 * @param LBR_NotaFiscalLine_ID
	 * @param trx
	 */
	public static boolean createLBR_NFLineTax(MLBRNotaFiscalLine nfLine){
		
		Properties ctx = nfLine.getCtx();
		String trxName = nfLine.get_TrxName();
		
		MInvoiceLine iLine = new MInvoiceLine(ctx,nfLine.getC_InvoiceLine_ID(),trxName);
		I_W_C_InvoiceLine iLineW = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
		
		X_LBR_TaxName[] taxesName = ImpostoBR.getLBR_TaxName(ctx, iLine.get_ID(), false, trxName);
		Map<Integer,X_LBR_TaxLine> lTaxes = MLBRTax.getLines(ctx,iLineW.getLBR_Tax_ID(), trxName);

		for (X_LBR_TaxName taxName : taxesName){

			if (lTaxes.containsKey(taxName.get_ID())){

				X_LBR_TaxLine taxLine = lTaxes.get(taxName.get_ID());
				int C_Tax_ID = MLBRTax.getC_Tax_ID(iLine.getC_Tax_ID(), taxName.get_ID(), trxName);
				if (C_Tax_ID > 0 && taxLine.islbr_PostTax()){

					MTax tax = new MTax(ctx,C_Tax_ID,trxName);
					int LBR_TaxGroup_ID = tax.get_ValueAsInt(I_W_C_Tax.COLUMNNAME_LBR_TaxGroup_ID);
					
					MInvoiceTax iTax = TaxBR.getMInvoiceTax(ctx,iLine.getC_Invoice_ID(),tax.get_ID(),trxName);
					
					if (LBR_TaxGroup_ID > 0 && iTax.getTaxAmt().signum() != 0) {
						
						MLBRNFLineTax nfLineTax = new MLBRNFLineTax(LBR_TaxGroup_ID,nfLine,taxLine);
						if (!nfLineTax.save(trxName)){
							log.severe("Erro ao salvar LBR_NFLineTax - LBR_NotaFiscalLine_ID = " + nfLine.get_ID() +
									   " LBR_TaxGroup_ID = " + LBR_TaxGroup_ID);
							return false;
						}
					} //if TaxGroup

				} //if PostTax/C_Tax_ID

			} //if TaxName

		}//loop TaxName
		
		return true;
	} //createLBR_NFLineTax
	
	/**
	 * Cria registros na tabela LBR_NFTax
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trx
	 */
	public boolean updateLBR_NFTax(){

		boolean success = true;
		
		MLBRNotaFiscalLine nfLine = new MLBRNotaFiscalLine(getCtx(),getLBR_NotaFiscalLine_ID(),get_TrxName());

		String sql = "SELECT t.LBR_TaxGroup_ID, SUM(t.lbr_TaxBaseAmt), SUM(t.lbr_TaxAmt) " + //1..3
			         "FROM LBR_NFLineTax t " +
		             "INNER JOIN LBR_NotaFiscalLine nfl ON (t.LBR_NotaFiscalLine_ID = nfl.LBR_NotaFiscalLine_ID) " +
		             "WHERE nfl.LBR_NotaFiscal_ID = ? AND t.LBR_TaxGroup_ID = ? " + //#1..2
		             "GROUP BY t.LBR_TaxGroup_ID";

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setInt (1, nfLine.getLBR_NotaFiscal_ID());
			pstmt.setInt(2, getLBR_TaxGroup_ID());
			rs = pstmt.executeQuery ();
			
			MLBRNFTax nfTax = MLBRNFTax.get(getCtx(), nfLine.getLBR_NotaFiscal_ID(), getLBR_TaxGroup_ID(), get_TrxName());
			if (nfTax == null)
				nfTax = new MLBRNFTax(getCtx(),0,get_TrxName());
			
			if (rs.next ()){
				/* SE A SOMA DA BASE E IMPOSTO FOR = 0, APAGA O REGISTRO */
				if (rs.getBigDecimal(2).signum() == 0 && rs.getBigDecimal(3).signum() == 0 && nfTax.get_ID() > 0){ 
					nfTax.delete(true, get_TrxName());
				}
				else{
					nfTax.setLBR_TaxGroup_ID(getLBR_TaxGroup_ID());
					nfTax.setLBR_NotaFiscal_ID(nfLine.getLBR_NotaFiscal_ID());
					nfTax.setlbr_TaxBaseAmt(rs.getBigDecimal(2));
					nfTax.setlbr_TaxAmt(rs.getBigDecimal(3));
					if (!nfTax.save(get_TrxName())){
						log.severe("Erro ao salvar LBR_NFTax - LBR_NotaFiscal_ID = " + nfLine.getLBR_NotaFiscal_ID() +
								   " LBR_TaxGroup_ID = " + getLBR_TaxGroup_ID());
						success = false;
					}
				}
			}
			else{
				nfTax.delete(true, get_TrxName());
			}
		}
		catch (Exception e) {
			log.log(Level.SEVERE, sql, e);
			success = false;
		}
		finally {
			DB.close(rs, pstmt);
		}

		return success;
	} //updateLBR_NFTax
	
	/**
	 * Quando deletar a LBR_NFLineTax, atualizar também a LBR_NFTax
	 */
	protected boolean afterDelete(boolean success){
		
		if (!updateLBR_NFTax()) {
			return false;
		}
		
		return success;
	} //afterDelete
	
	/**
	 * Quando atualizar a LBR_NFLineTax, atualizar também a LBR_NFTax
	 */
	protected boolean afterSave(boolean newRecord, boolean success){
		
		if (!updateLBR_NFTax()) {
			return false;
		}
		
		return success;
	} //afterSave
	
	public void setlbr_TaxBaseAmt(BigDecimal taxBaseAmt){
		if (taxBaseAmt == null)
			taxBaseAmt = Env.ZERO;
		
		super.setlbr_TaxBaseAmt(taxBaseAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
	}
	
	public void setlbr_TaxAmt(BigDecimal taxAmt){
		if (taxAmt == null)
			taxAmt = Env.ZERO;
		
		super.setlbr_TaxAmt(taxAmt.setScale(TaxBR.SCALE, TaxBR.ROUND));
	}
	
	public void setlbr_TaxRate(BigDecimal taxRate){
		if (taxRate == null)
			taxRate = Env.ZERO;
		
		super.setlbr_TaxRate(taxRate.setScale(TaxBR.SCALE, TaxBR.ROUND));
	}
	
	public void setlbr_TaxBase(BigDecimal taxBase){
		if (taxBase == null)
			taxBase = Env.ZERO;
		
		super.setlbr_TaxBase(taxBase.setScale(TaxBR.SCALE, TaxBR.ROUND));
	}
	
} //MLBRNFLineTax