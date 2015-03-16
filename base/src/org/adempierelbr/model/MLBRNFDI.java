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

import org.compiere.util.DB;

/**
 *  LBR_NFDI Model
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNFDI.java, v0.1 24/09/2012 09:09:00 mgrigioni
 */
public class MLBRNFDI extends X_LBR_NFDI {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 4055385920365507657L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFDI(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFDI (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * 	After Save
	 *	@param newRecord new
	 *	@param success success
	 *	@return true if can be saved
	 */
	protected boolean afterSave (boolean newRecord, boolean success) {
		if (!success)
			return success;
		
		if (newRecord){ //SE HOUVER MAIS UMA DI, NECESSARIO ATRIBUIR NA MAO
			int count = DB.getSQLValue(get_TrxName(), 
					"SELECT COUNT(*) FROM LBR_NFDI WHERE LBR_NotaFiscal_ID=?", getLBR_NotaFiscal_ID());
			if (count > 1)
				return true;
		}
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		for(MLBRNotaFiscalLine line : nf.getLines()){
			line.setLBR_NFDI_ID(get_ID());
			line.setManufacturer(getManufacturer());
			line.setlbr_NumAdicao(1);
			line.setlbr_NumSeqItem(line.getLine());
			line.save(get_TrxName());
		}
		
		return true;
	}
	
} //MLBRNFDI