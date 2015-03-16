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

import org.compiere.model.MTable;
import org.compiere.model.Query;

/**
 *  LBR_NFeInut Model
 *    
 *  @author Mario Grigioni
 *  @version $Id: MLBRNFeInut.java,v 1.0 15/08/2012 09:56:00 mgrigioni Exp $
 */
public class MLBRNFeInut extends X_LBR_NFeInut {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8851217915230431636L;

	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeInut(Properties ctx, int ID, String trx) {
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeInut (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	public static List<MLBRNFeInut> get(Properties ctx, int C_Period_ID) {
		MTable table = MTable.get(ctx, MLBRNFeInut.Table_Name);
		Query query =  new Query(ctx, table, "C_Period_ID=? AND LBR_NFeStatus=?", null);
	 		  query.setParameters(C_Period_ID,MLBRNFeInut.LBR_NFESTATUS_102_InutilizaçãoDeNúmeroHomologado);
	 		  query.setOrderBy("Created");

	 	return query.list();		
	}
	
	public String getlbr_NFSerie(){
		String serie = super.getlbr_NFSerie();
		if (serie == null || serie.trim().isEmpty())
			serie = "0";
		
		return serie;
	}
	
}	//	MLBRNFeInut