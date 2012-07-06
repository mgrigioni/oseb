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
import java.util.Properties;

import org.compiere.model.MTable;
import org.compiere.model.Query;

/**
 *  LBR_NFTax Model
 *  
 *  Class that process brazilian fiscal documents taxes (a.k.a Nota Fiscal)
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNFLineTax.java, v2.0 15/06/2012 08:50:00 mgrigioni
 */
public class MLBRNFTax extends X_LBR_NFTax {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6542295150876191957L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFTax(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFTax (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	public static MLBRNFTax get(Properties ctx, int LBR_NotaFiscal_ID, int LBR_TaxGroup_ID, String trx){
		
		String whereClause = "LBR_NotaFiscal_ID = ? AND LBR_TaxGroup_ID = ?";
		MTable table = MTable.get(ctx, MLBRNFTax.Table_Name);
		Query query =  new Query(ctx, table, whereClause, trx);
	 		  query.setParameters(new Object[]{LBR_NotaFiscal_ID,LBR_TaxGroup_ID});
	 		  
		return query.first();
	} //get
	
} //MLBRNFTax