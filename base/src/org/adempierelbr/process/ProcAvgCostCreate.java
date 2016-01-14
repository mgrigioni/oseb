/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.adempierelbr.model.X_LBR_AverageCost;
import org.adempierelbr.model.X_LBR_AverageCostLine;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.model.MPeriod;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Average Cost BR
 *	
 *  @author Ricardo Santana
 *  @contributor Mario Grigioni
 *  @version $Id: ProcAvgCostCreate.java, 30/07/2006 00:51:01 ralexsander Exp $
 */
public class ProcAvgCostCreate extends SvrProcess
{

	private int	   p_LBR_AverageCost_ID = 0;
	private String costType = "";
	
	private final String  MANUFACTURED = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Manufactured;
	private final String  PUCHASED     = X_LBR_AverageCostLine.LBR_AVGCOSTTYPE_Purchased;
	
	public String trxName = null;
	
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("lbr_AvgCostType"))
				costType = (String) para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		p_LBR_AverageCost_ID = getRecord_ID();
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		if (p_LBR_AverageCost_ID == 0)
		{
			log.warning("LBR_AverageCost_ID=" + p_LBR_AverageCost_ID);
			return "ERR: No LBR_AverageCost_ID";
		}
		
		X_LBR_AverageCost avgCost = new X_LBR_AverageCost(getCtx(), p_LBR_AverageCost_ID, trxName);				
		MPeriod period = new MPeriod(getCtx(), avgCost.getC_Period_ID(), trxName);
		
		cleanupLines(avgCost.get_ID(),costType);
		
		Map<Integer,BigDecimal> nfsComp = getNfComplementar(period);
		
		String sql = "";
		
		if(costType.equals(PUCHASED)){
			sql = "SELECT DISTINCT aux.M_Product_ID, QtyOnDate(aux.M_Product_ID, ?), "
					+ "aux.CurrentCostPrice, SUM(aux.TotalCost), SUM(aux.QtyEntered) "
					+ "FROM( "
					+ "SELECT p.M_Product_ID, COALESCE(c.CurrentCostPrice,0) as CurrentCostPrice, "
					+ "CASE WHEN ( il.LBR_CFOP_ID IN (SELECT LBR_CFOP_ID FROM LBR_CFOP WHERE Value LIKE '%.116' OR Value LIKE '%.117') ) "
					+ "THEN "
					+ "(SUM((il.PriceEntered-(il.lbr_PriceEnteredBR*0.0925))*il.QtyEntered)) "
					+ "ELSE "
					+ "SUM(il.PriceEntered*il.QtyEntered) "
					+ "END AS TotalCost, "
					+ "SUM(il.QtyEntered) as QtyEntered "
					+ "FROM C_Invoice i "
					+ "INNER JOIN C_InvoiceLine il ON i.C_Invoice_ID = il.C_Invoice_ID "
					+ "INNER JOIN C_DocType dt ON dt.C_DocType_ID=i.C_DocTypeTarget_ID "
					+ "INNER JOIN M_Product p ON p.M_Product_ID = il.M_Product_ID "
					+ "LEFT JOIN M_Cost c ON (c.M_Product_ID = il.M_Product_ID AND "
					+ "c.M_CostElement_ID = ?) "
					+ "WHERE i.DocStatus IN ('CL', 'CO') "
					+ "AND p.ProductType = 'I' "
					+ "AND i.AD_Client_ID = ? "
					+ "AND p.IsPurchased = 'Y' "
					+ "AND PriceEntered > 0 "
					+ "AND QtyEntered > 0 "
					+ "AND dt.DocBaseType = 'API' "
					+ "AND ((dt.lbr_HasOpenItems = 'Y' AND il.LBR_CFOP_ID NOT IN (SELECT LBR_CFOP_ID FROM LBR_CFOP WHERE Value LIKE '%.922')) "
					+ "OR (dt.lbr_HasOpenItems = 'N' AND il.LBR_CFOP_ID IN (SELECT LBR_CFOP_ID FROM LBR_CFOP WHERE Value LIKE '%.116' OR Value LIKE '%.117'))) "
					+ "AND TRUNC(i.DateAcct) BETWEEN ? AND ? "
					+ "GROUP BY p.M_Product_ID, c.CurrentCostPrice, il.LBR_CFOP_ID "
					+ "ORDER BY CurrentCostPrice DESC) aux "
					+ "GROUP BY aux.M_Product_ID, aux.CurrentCostPrice";
		}
		else if(costType.equals(MANUFACTURED)){
			sql = "SELECT PlanCost.M_Product_ID, QtyOnDate(PlanCost.M_Product_ID, ?), c.CurrentCostPrice, " +
						"SUM(Custo*ProductionQty) AS Custo, SUM(ProductionQty) AS Qtd " +
					"FROM " +
						"(SELECT pp.M_ProductionPlan_ID, pp.M_Product_ID, pp.ProductionQty AS ProductionQty, " +
							"SUM((ABS(pl.MovementQty)/ABS(pp.ProductionQty)) * c.CurrentCostPrice) AS Custo FROM M_Production pr " +
							"INNER JOIN M_ProductionPlan pp ON pr.M_Production_ID=pp.M_Production_ID " +
							"INNER JOIN M_ProductionLine pl ON (pl.M_ProductionPlan_ID=pp.M_ProductionPlan_ID AND pl.M_Product_ID <> pp.M_Product_ID) " +
							"INNER JOIN M_Cost c ON (c.M_Product_ID=pl.M_Product_ID AND c.M_CostElement_ID=?) " +
						"WHERE pr.Processed='Y' " +
							"AND pr.AD_Client_ID=? " +
							"AND TRUNC(pr.MovementDate) BETWEEN ? AND ? " +
						" GROUP BY pp.M_ProductionPlan_ID, pp.M_Product_ID, pp.ProductionQty " +
						") PlanCost INNER JOIN M_Cost c ON (c.M_Product_ID=PlanCost.M_Product_ID AND c.M_CostElement_ID=?) " +
					"GROUP BY PlanCost.M_Product_ID, CurrentCostPrice";
		}
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int i=1;
			pstmt = DB.prepareStatement (sql, trxName);
			pstmt.setTimestamp(i++, AdempiereLBR.addDays(period.getStartDate(), -1));
			pstmt.setInt(i++, avgCost.getM_CostElement_ID());
			pstmt.setInt(i++, avgCost.getAD_Client_ID());
			pstmt.setTimestamp(i++, period.getStartDate());
			pstmt.setTimestamp(i++, period.getEndDate());
			
			if(costType.equals(MANUFACTURED))
				pstmt.setInt(i++, avgCost.getM_CostElement_ID());

			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				X_LBR_AverageCostLine line = new X_LBR_AverageCostLine(getCtx(), 0, trxName);
				line.setLBR_AverageCost_ID(p_LBR_AverageCost_ID);
				line.setM_Product_ID(rs.getInt(1));
				line.setCurrentQty(rs.getBigDecimal(2));
				line.setCurrentCostPrice(rs.getBigDecimal(3));
				line.setCumulatedAmt(rs.getBigDecimal(4));
				line.setCumulatedQty(rs.getBigDecimal(5));
				line.setlbr_AvgCostType(costType);
				
				BigDecimal totCurrent = line.getCurrentCostPrice().multiply(line.getCurrentQty());
				BigDecimal totCumulated = line.getCumulatedAmt();
				if (costType.equals(PUCHASED) && !nfsComp.isEmpty()){
					BigDecimal compAmt = nfsComp.get(rs.getInt(1));
					if (compAmt != null && compAmt.signum() == 1){
						totCumulated = totCumulated.add(compAmt);
						line.setExpenseAmt(compAmt);
					}
				}
				
				BigDecimal total = totCurrent.add(totCumulated);
				BigDecimal sumQty = line.getCurrentQty().add(line.getCumulatedQty());
				if(sumQty.signum() == 0)
				{
					sumQty = Env.ONE;
					line.setDescription("ERRO NO CALCULO, DIVIDIDO POR ZERO");
				}
				line.setFutureCostPrice(total.divide(sumQty, 12, BigDecimal.ROUND_HALF_UP));
				line.save();
			}
			
			/** Executar varias vezes devido aos niveis da LDM */
			if(costType.equals(MANUFACTURED))
			{
				int j=0;
				BigDecimal oldCost = Env.ZERO;
				Boolean allLevelsOK = false;
				
				while(!allLevelsOK)
				{
					i=1;
					
					sql = "SELECT PlanCost.M_Product_ID,  PlanCost.LBR_AverageCostLine_ID, " +
								"SUM(Custo*ProductionQty) AS Custo, SUM(ProductionQty) AS Qtd " +
							"FROM " +
								"(SELECT pp.M_ProductionPlan_ID, pp.M_Product_ID, avgl.LBR_AverageCostLine_ID, pp.ProductionQty AS ProductionQty, " +
							    "SUM((ABS(pl.MovementQty)/ABS(pp.ProductionQty)) * (CASE WHEN new_avg_cost.FutureCostPrice IS NOT NULL OR new_avg_cost.FutureCostPrice > 0 THEN new_avg_cost.FutureCostPrice ELSE c.CurrentCostPrice END)) AS Custo FROM M_Production pr " +
									"INNER JOIN M_ProductionPlan pp ON pr.M_Production_ID=pp.M_Production_ID " +
									"INNER JOIN M_ProductionLine pl ON (pl.M_ProductionPlan_ID=pp.M_ProductionPlan_ID AND pl.M_Product_ID <> pp.M_Product_ID) " +
									"INNER JOIN M_Cost c ON (c.M_Product_ID=pl.M_Product_ID AND c.M_CostElement_ID=?) " +
									"INNER JOIN LBR_AverageCostLine avgl ON (avgl.M_Product_ID=pp.M_Product_ID AND avgl.LBR_AverageCost_ID=? AND avgl.lbr_AvgCostType='M') " +
									" LEFT JOIN LBR_AverageCostLine new_avg_cost ON (new_avg_cost.M_Product_ID=pl.M_Product_ID AND new_avg_cost.LBR_AverageCost_ID=? AND new_avg_cost.lbr_AvgCostType='M') " +
								"WHERE pr.Processed='Y' " +
									"AND pr.AD_Client_ID=? " +
									"AND TRUNC(pr.MovementDate) BETWEEN ? AND ? " +
								"GROUP BY pp.M_ProductionPlan_ID, pp.M_Product_ID, pp.ProductionQty, avgl.LBR_AverageCostLine_ID " +
								") PlanCost " +
							"GROUP BY PlanCost.M_Product_ID, PlanCost.LBR_AverageCostLine_ID";
					
					pstmt = DB.prepareStatement (sql, trxName);
					pstmt.setInt(i++, avgCost.getM_CostElement_ID());
					pstmt.setInt(i++, avgCost.getLBR_AverageCost_ID());
					pstmt.setInt(i++, avgCost.getLBR_AverageCost_ID());
					pstmt.setInt(i++, avgCost.getAD_Client_ID());
					pstmt.setTimestamp(i++, period.getStartDate());
					pstmt.setTimestamp(i++, period.getEndDate());
					
					rs = pstmt.executeQuery ();
					while (rs.next ())
					{
						X_LBR_AverageCostLine line = new X_LBR_AverageCostLine(getCtx(), rs.getInt(2), trxName);
	
						line.setCumulatedAmt(rs.getBigDecimal(3));
						line.setCumulatedQty(rs.getBigDecimal(4));
						
						BigDecimal totCurrent = line.getCurrentCostPrice().multiply(line.getCurrentQty());
						BigDecimal totCumulated = line.getCumulatedAmt();
						BigDecimal total = totCurrent.add(totCumulated);
						BigDecimal sumQty = line.getCurrentQty().add(line.getCumulatedQty());
						if(sumQty.signum() == 0)
						{
							sumQty = Env.ONE;
							line.setDescription("ERRO NO CALCULO, DIVIDIDO POR ZERO");
						}
						line.setFutureCostPrice(total.divide(sumQty, 12, BigDecimal.ROUND_HALF_UP));
						line.save();
					}
					
					BigDecimal result = DB.getSQLValueBD(avgCost.get_TrxName(), "SELECT SUM(CumulatedAmt+ExpenseAmt) " +
							"FROM LBR_AverageCostLine WHERE LBR_AverageCost_ID=?", avgCost.getLBR_AverageCost_ID());
					
					log.info("Passo: " + j + " / Cost total: " + result);
					
					if(result.compareTo(oldCost) == 0 || j > 29)
						allLevelsOK = true;
					else{
						oldCost = result;
						j++;
					}
				}
			}
			
			//	Produtos Comprados
			if(costType.equals(PUCHASED))
				avgCost.setlbr_AvgStep1(true);
			//	Produtos Fabricados
			else
				avgCost.setlbr_AvgStep3(true);
			
			avgCost.save(trxName);
		}
		catch (Exception e)
		{
			log.log (Level.SEVERE, sql, e);
		}
		finally{
			DB.close(rs, pstmt);
		}
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	private void cleanupLines(int ID, String costType){
		
		String sql = "DELETE FROM LBR_AverageCostLine " +
				     "WHERE lbr_AvgCostType=? AND LBR_AverageCost_ID=?";
		
		DB.executeUpdate(sql, new Object[]{costType,ID}, false, trxName);
	} //cleanupLine
	
	private Map<Integer,BigDecimal> getNfComplementar(MPeriod period){
		
		String sql =
				
				"SELECT M_Product_ID, SUM(ComplAmt) FROM ( " +
						"SELECT nfComplementar.*, (TotalLines * perct) as ComplAmt FROM ( " +
						"SELECT M_Product_ID, LineTotalAmt, " +
						"(SELECT TotalLines FROM LBR_NotaFiscal WHERE nfl.LBR_NotaFiscal_ID = LBR_NotaFiscal.LBR_NotaFiscal_ID) as GrandTotal, " +
						"ROUND(LineTotalAmt / (SELECT TotalLines FROM LBR_NotaFiscal WHERE nfl.LBR_NotaFiscal_ID = LBR_NotaFiscal.LBR_NotaFiscal_ID),4) as perct, " +
						"compl.LBR_RefNotaFiscal_ID, compl.TotalLines " +
						"FROM LBR_NotaFiscalLine nfl " +
						"INNER JOIN " +
						"(SELECT ref.LBR_NotaFiscal_ID as LBR_RefNotaFiscal_ID, complementar.LineNetAmt as TotalLines " +
						"FROM C_InvoiceLine complementar " +
						"INNER JOIN C_Invoice i ON (complementar.C_Invoice_ID = i.C_Invoice_ID) " +
						"INNER JOIN LBR_NotaFiscal ref ON (complementar.LBR_NotaFiscal_ID = ref.LBR_NotaFiscal_ID) " + 
						"WHERE i.DocStatus='CO' AND complementar.C_Charge_ID = 3000114 " +
						"AND i.dateacct BETWEEN ? and ?) compl " +
						"ON (nfl.LBR_NotaFiscal_ID = compl.LBR_RefNotaFiscal_ID)) nfComplementar) " +
						"GROUP BY M_Product_ID";
				
		Map<Integer, BigDecimal> nfs = new HashMap<Integer,BigDecimal>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, get_TrxName());
			pstmt.setTimestamp(1, period.getStartDate());
			pstmt.setTimestamp(2, period.getEndDate());
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				nfs.put(rs.getInt(1), rs.getBigDecimal(2));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}
		
		return nfs;
	}

}	//ProcAvgCostCreate