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
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRProductFCI;
import org.adempierelbr.model.X_LBR_FCIProcess;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MPeriod;
import org.compiere.model.MProduct;
import org.compiere.model.MProductBOM;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Process to create records for Import Content Sheet
 * @author Mario Grigioni, mgrigioni
 * @version $Id: ProcCreateProductFCI.java, 02/05/2013, 14:42:00, mgrigioni
 */
public class ProcCreateProductFCI extends SvrProcess
{
		
	private Map<Integer,Set<Integer>> _PRODUCTS = new HashMap<Integer,Set<Integer>>();	
	
	private X_LBR_FCIProcess fciProcess;
	
	/**
	 * 	Prepare
	 */
	protected void prepare () {
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		fciProcess = new X_LBR_FCIProcess(getCtx(),getRecord_ID(),get_TrxName());
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception {

		MPeriod period = MPeriod.get(getCtx(), fciProcess.getC_Period_ID());
		Timestamp dateFrom = AdempiereLBR.getFirstDayOfMonth(AdempiereLBR.addDays(period.getStartDate(),-1));
		Timestamp dateTo   = AdempiereLBR.getLastDayOfMonth(dateFrom);
		
		List<MProduct> produtos = getProducts(fciProcess.getC_Period_ID());
		for (MProduct produto : produtos){
			loadBOM(produto,produto);
		}
		
		Iterator<Integer> pais = _PRODUCTS.keySet().iterator();
		while(pais.hasNext()){
			Integer id = pais.next();
			Set<Integer> importados = _PRODUCTS.get(id);
			
			if (importados.size() <= 0) //NAO TEM PRODUTO IMPORTADO
				continue;
			
			BigDecimal parcImp = Env.ZERO;
			BigDecimal parcSai = Env.ZERO;
			
			MLBRProductFCI actualFCI = MLBRProductFCI.getActual(id, get_TrxName());
			boolean hasNewEntry =  false; //VERIFICACAO SE HOUVE QUALQUER ENTRADA NO ULTIMO MES
			
			//VERIFICACAO PARCELA IMPORTADA
			for (Integer importado : importados){
				BigDecimal valorImportado = MLBRProductFCI.getAmt(dateFrom, dateTo, false, importado);
				if (valorImportado.signum() != 1){ //NAO HOUVE ENTRADA NO ULTIMO MES
					Timestamp lastDate = MLBRProductFCI.getLastDate(dateFrom,false,importado,get_TrxName()); //PROCURA ULTIMA ENTRADA COM IMPOSTO
					if (lastDate != null){
						valorImportado = MLBRProductFCI.getAmt(AdempiereLBR.getFirstDayOfMonth(lastDate), 
								AdempiereLBR.getLastDayOfMonth(lastDate), false, importado);
					}
				}
				else{
					hasNewEntry = true;
				}
				
				parcImp = parcImp.add(valorImportado);
			}
			
			//VERIFICA SE NAO HOUVE ENTRADA E JA EXISTE FCI
			if ((!hasNewEntry && actualFCI != null) || parcImp.signum() != 1)
				continue;
			
			//VERIFICACAO PARCELA SAIDA
			parcSai = MLBRProductFCI.getAmt(dateFrom, dateTo, true, id);
			if (parcSai.signum() != 1){ //NAO HOUVE SAIDA NO ULTIMO MES
				Timestamp lastDate = MLBRProductFCI.getLastDate(dateFrom,true,id,get_TrxName()); //PROCURA ULTIMA SAIDA COM IMPOSTO
				if (lastDate != null){
					parcSai = MLBRProductFCI.getAmt(AdempiereLBR.getFirstDayOfMonth(lastDate), 
							AdempiereLBR.getLastDayOfMonth(lastDate), true, id);
				}
			}
			
			//VERIFICA SE NAO HOUVE SAIDA
			if (parcSai.signum() != 1)
				continue;
			
			//VERIFICA SE A NOVA PORCENTAGEM POSSUI VARIACAO MAIOR QUE 5%
			boolean hasNewFCI = true;
			if (parcImp.compareTo(parcSai) > 0) //SE IMPORTACAO MAIOR QUE SAIDA, AJUSTA PARA 100%
				parcImp = parcSai;
			
			BigDecimal newPercentage = ((parcImp.divide(parcSai, TaxBR.MCROUND)).multiply(Env.ONEHUNDRED)).setScale(TaxBR.SCALE, TaxBR.ROUND);
			if (actualFCI != null){
				BigDecimal currentPercentage = actualFCI.getPercentage();
				BigDecimal variacao = currentPercentage.subtract(newPercentage);
				if ((variacao.abs()).compareTo(new BigDecimal("5")) <= 0){
					hasNewFCI = false;
				}
			}
			
			if (hasNewFCI){
				MProduct product = MProduct.get(getCtx(), id);
				
				MLBRProductFCI pFCI = new MLBRProductFCI(product, fciProcess.getC_Period_ID());
				pFCI.setAmtSource(parcImp);
				pFCI.setInvoicedAmt(parcSai);
				pFCI.setPercentage(newPercentage);
				pFCI.save(get_TrxName());
				
				String productSource = "5";
				if (newPercentage.compareTo(new BigDecimal("40")) > 0)
					productSource = "3";
				
				product.set_ValueOfColumn("lbr_ProductSource", productSource);
				product.save(get_TrxName());
			} //FCI
			
		} // loop pais
		
		fciProcess.setlbr_Step1(true);
		fciProcess.save(get_TrxName());
	
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	private List<MProduct> getProducts(int C_Period_ID){
				
		String whereClause =  "IsStocked='Y' AND IsBOM='Y' AND IsPurchased='N' AND M_Product_ID NOT IN " +
		   "(SELECT fci.M_Product_ID FROM LBR_ProductFCI fci WHERE fci.C_Period_ID=?)";
		
		MTable table = MTable.get(Env.getCtx(), MProduct.Table_Name);
		Query q =  new Query(Env.getCtx(), table, whereClause, get_TrxName());
		      q.setClient_ID();
		      q.setOnlyActiveRecords(true);
              q.setParameters(new Object[]{C_Period_ID});
		
		return q.list();
	} //getProducts
	
	private void loadBOM(MProduct pai, MProduct product){	
		if (product.isBOM()){
			MProductBOM[] boms = MProductBOM.getBOMLines(product);
			for(MProductBOM bom : boms){
				if (!bom.isActive())
					continue;
				
				MProduct pBOM = new MProduct(bom.getCtx(),bom.getM_ProductBOM_ID(),bom.get_TrxName());
				if (pBOM.getProductType().equals(MProduct.PRODUCTTYPE_Item))
					loadBOM(pai,pBOM);
			}
		}
		
		I_W_M_Product pW = POWrapper.create(product, I_W_M_Product.class);
		if ("1".equals(pW.getlbr_ProductSource()) && product.isPurchased()){ //MATERIAL IMPORTADO
			
			Set<Integer> importados =  new LinkedHashSet<Integer>();
			if (_PRODUCTS.containsKey(pai.get_ID()))
				importados = _PRODUCTS.get(pai.get_ID());
			
			importados.add(product.get_ID());
			_PRODUCTS.put(pai.get_ID(), importados);
		}
	} //loadBOM
	
} //ProcCreateProductFCI