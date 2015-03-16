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
package org.adempierelbr.grid;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Vector;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_DE;
import org.compiere.grid.CreateFrom;
import org.compiere.minigrid.IMiniTable;
import org.compiere.model.GridTab;
import org.compiere.model.MCountry;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.KeyNamePair;
import org.compiere.util.Msg;

/**
 *  Add NF to LBR_DE (Declaração de Exportação)
 *
 *  @author Mario Grigioni
 *  @version  $Id: CreateFromDE, 14/02/2011 10:52:00 mgrigioni Exp $
 */
public class CreateFromDE extends CreateFrom {
	
	public CreateFromDE(GridTab mTab)
	{
		super(mTab);
		log.info(mTab.toString());
	}
	
	@Override
	public boolean dynInit() throws Exception 
	{
		log.config("");
        setTitle(Msg.translate(Env.getCtx(), "LBR_DE") + " .. " + Msg.translate(Env.getCtx(), "CreateFrom"));

		return true;
	}
	
	protected Vector<Vector<Object>> getNFeLotData()
	{
		/**
		 *  Selected        - 0
		 *  Documentno      - 1
		 *  Line            - 2
		 *  ProductValue    - 3
		 *  DateTrx    		- 4
		 *  BPName     		- 5
		 *  País            - 6
		 */
		Vector<Vector<Object>> data = new Vector<Vector<Object>>();
		String sql = "SELECT nfl.LBR_NotaFiscalLine_ID, nf.Documentno, nfl.Line, nfl.ProductValue, " +
			         "nf.DateDoc, nf.BPName, nf.lbr_BPCountry  " +
			         "FROM LBR_NotaFiscal nf " +
			         "INNER JOIN LBR_NotaFiscalLine nfl ON (nf.LBR_NotaFiscal_ID = nfl.LBR_NotaFiscal_ID) " +
			         "WHERE nf.IsCancelled = 'N' " +
			         "AND nf.IsSOTrx = 'Y' AND nf.lbr_BPCountry = ? " +
			         "AND nfl.LBR_DE_ID IS NULL  " +
			         "ORDER BY 3";
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int LBR_DE_ID = Env.getContextAsInt(Env.getCtx(), getGridTab().getWindowNo(), "LBR_DE_ID");
		X_LBR_DE de = new X_LBR_DE(Env.getCtx(),LBR_DE_ID,null);
		MCountry country = new MCountry(Env.getCtx(),de.getC_Country_ID(),null);
		
		try
		{
			pstmt = DB.prepareStatement(sql.toString(), null);
			pstmt.setString(1, country.getCountryCode());
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				Vector<Object> line = new Vector<Object>(7);
				line.add(new Boolean(false));       //  0-Selection
				//
				KeyNamePair kp = new KeyNamePair(rs.getInt(1), rs.getString(2));
				//
				line.add(kp);						//	1-DocumentNo
				line.add(rs.getString(3));          //  2-Line
				line.add(rs.getString(4));          //  3-ProductValue
				line.add(rs.getTimestamp(5));       //  4-DateTrx
				line.add(rs.getString(6));			//	5-BPName
				line.add(rs.getString(7));			//	6-Country
				data.add(line);
			}
			rs.close();
			pstmt.close();
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
		}
		finally{
			DB.close(rs, pstmt);
		}
        
        return data;
	}

	@Override
	public void info() 
	{

	}
	
	protected void configureMiniTable (IMiniTable miniTable)
	{
		miniTable.setColumnClass(0, Boolean.class, false);      //  0-Selection
		miniTable.setColumnClass(1, String.class, true);   		//  1-DocumentNo
		miniTable.setColumnClass(2, String.class, true);   		//  2-Line
		miniTable.setColumnClass(3, String.class, true);   		//  3-ProductValue
		miniTable.setColumnClass(4, Timestamp.class, true);     //  4-TrxDate
		miniTable.setColumnClass(5, String.class, true);        //  5-BPName
		miniTable.setColumnClass(6, String.class, true);    	//  6-BPCountry
        
        //  Table UI
		miniTable.autoSize();
	}

	@Override
	public boolean save(IMiniTable miniTable, String trxName) 
	{
		log.config("");
		int rows = miniTable.getRowCount();
		if (rows == 0)
			return false;

		//  fixed values
		int LBR_DE_ID = Env.getContextAsInt(Env.getCtx(), getGridTab().getWindowNo(), "LBR_DE_ID");

		//  Lines
		for (int i = 0; i < rows; i++)
		{
			if (((Boolean)miniTable.getValueAt(i, 0)).booleanValue())
			{
				KeyNamePair pp = (KeyNamePair)miniTable.getValueAt(i, 1);
				int LBR_NotaFiscalLine_ID = pp.getKey();
				//
				MLBRNotaFiscalLine nfl = new MLBRNotaFiscalLine (Env.getCtx(), LBR_NotaFiscalLine_ID, null);
				nfl.setLBR_DE_ID(LBR_DE_ID);
				log.fine("LBR_NotaFiscalLine_ID="+LBR_NotaFiscalLine_ID);
				//
				if (!nfl.save())
					log.log(Level.SEVERE, "NF not added to DE, #" + i);
				
			}   //   if selected
		}   //  for all rows
		return true;
	}
	
	protected Vector<String> getOISColumnNames()
	{
		//  Header Info
		Vector<String> columnNames = new Vector<String>(7);
		columnNames.add(Msg.getMsg(Env.getCtx(), "Select"));
		columnNames.add(Msg.getElement(Env.getCtx(), "DocumentNo"));
		columnNames.add(Msg.getElement(Env.getCtx(), "Line"));
		columnNames.add(Msg.getElement(Env.getCtx(), "ProductValue"));
		columnNames.add(Msg.translate(Env.getCtx(), "Date"));
		columnNames.add(Msg.translate(Env.getCtx(), "BPName"));
		columnNames.add(Msg.translate(Env.getCtx(), "lbr_BPCountry"));
	    return columnNames;
	}
	
} //CreateFromDE