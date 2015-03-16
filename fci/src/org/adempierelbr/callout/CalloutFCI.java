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
package org.adempierelbr.callout;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Properties;
import java.util.Set;

import org.adempierelbr.model.MLBRProductFCI;
import org.adempierelbr.util.AdempiereLBR;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.util.Env;

/**
 * CalloutFCI
 * 
 * Callout for Table LBR_ProductFCI
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: CalloutFCI.java, 16/05/2013 16:05:00 mgrigioni
 */
public class CalloutFCI extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;
	
	/**
	 *  Product
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_ProductFCI / Column C_Period_ID
	 * 
	 */
	public String Product (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_Period_ID = (Integer)mField.getValue();
		if (C_Period_ID == null || C_Period_ID.intValue() == 0)
			return "";
		
		Integer M_Product_ID = (Integer)mTab.getValue("M_Product_ID");
		if (M_Product_ID == null || M_Product_ID.intValue() == 0)
			return "";

		MProduct product = MProduct.get(ctx, M_Product_ID);
		MPeriod  period  = MPeriod.get(ctx, C_Period_ID);
		
		Timestamp dateFrom = AdempiereLBR.getFirstDayOfMonth(AdempiereLBR.addDays(period.getStartDate(),-1));
		Timestamp dateTo   = AdempiereLBR.getLastDayOfMonth(dateFrom);
		
		BigDecimal parcImp = Env.ZERO;
		BigDecimal parcSai = Env.ZERO;
			
		Set<Integer> importados = MLBRProductFCI.loadBOM(product);
		for (Integer importado : importados){
			
			BigDecimal valorImportado = MLBRProductFCI.getAmt(dateFrom, dateTo, false, importado);
			if (valorImportado.signum() != 1){ //NAO HOUVE ENTRADA NO ULTIMO MES
				Timestamp lastDate = MLBRProductFCI.getLastDate(AdempiereLBR.addDays(period.getEndDate(),1),false,importado,null); //PROCURA ULTIMA ENTRADA COM IMPOSTO
				if (lastDate != null){
					valorImportado = MLBRProductFCI.getAmt(AdempiereLBR.getFirstDayOfMonth(lastDate), 
							AdempiereLBR.getLastDayOfMonth(lastDate), false, importado);
				}
			}
				
			parcImp = parcImp.add(valorImportado);
		} // loop entrada importados
		
			
		//VERIFICACAO PARCELA SAIDA
		parcSai = MLBRProductFCI.getAmt(dateFrom, dateTo, true, product.get_ID());
		if (parcSai.signum() != 1){ //NAO HOUVE SAIDA NO ULTIMO MES
			Timestamp lastDate = MLBRProductFCI.getLastDate(AdempiereLBR.addDays(period.getEndDate(),1),true,product.get_ID(),null); //PROCURA ULTIMA SAIDA COM IMPOSTO
			if (lastDate != null){
				parcSai = MLBRProductFCI.getAmt(AdempiereLBR.getFirstDayOfMonth(lastDate), 
						AdempiereLBR.getLastDayOfMonth(lastDate), true, product.get_ID());
			}
		}
			
		if (parcImp.compareTo(parcSai) > 0 && parcSai.signum() == 1) //SE IMPORTACAO MAIOR QUE SAIDA, AJUSTA PARA 100%
			parcImp = parcSai;
			
		mTab.setValue("AmtSource", parcImp);
		mTab.setValue("InvoicedAmt", parcSai);
		
		return "";
	}	// Product
	
	
} //CalloutAsset