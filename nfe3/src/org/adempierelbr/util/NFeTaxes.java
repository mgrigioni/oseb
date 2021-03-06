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
package org.adempierelbr.util;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;

import org.adempierelbr.model.MLBRNFLineTax;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.compiere.util.Env;

/**
 *	NFeTaxes
 *
 *	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: NFeTaxes.java,v 1.0 2009/08/23 00:51:27 ralexsander Exp $
 */
public class NFeTaxes
{
	private String taxIndicator;

	private BigDecimal vBC;
	private BigDecimal vImposto;
	private BigDecimal pImposto;
	private BigDecimal pRedBC;
	
	private BigDecimal vBCST;
	private BigDecimal vImpostoST;
	private BigDecimal pImpostoST;
	private BigDecimal pRedBCST;

	private String CST;

	/**
	 * @param taxIndicator
	 * @param CST
	 */
	public NFeTaxes (String taxIndicator, String CST)
	{
		setTaxIndicator(taxIndicator);
		setvBC(Env.ZERO);
		setvImposto(Env.ZERO);
		setpImposto(Env.ZERO);
		setpRedBC(Env.ZERO);
		setCST(CST);
	}

	/**
	 * @param taxIndicator
	 * @param vBC
	 * @param vImposto
	 * @param pImposto
	 * @param pRedBC
	 * @param CST
	 * @param isST
	 */
	public NFeTaxes (String taxIndicator, String CST, boolean isST, 
			BigDecimal vBC, BigDecimal vImposto, BigDecimal pImposto, BigDecimal pRedBC) {
		this (taxIndicator, CST);
		add(isST, vBC,vImposto, pImposto, pRedBC);
	}

	/**
	 * 	Retorna os impostos da NF-e.
	 *
	 * 	Mesmo que a NF-e seja isenta de imposto é necessário
	 * 		retornar os registros de PIS, COFINS e ICMS
	 * 		mesmo que sem valores a destacar.
	 * @return NFeTaxes Taxes
	 */
	public static NFeTaxes[] getTaxes (MLBRNotaFiscalLine nfl)
	{
		HashMap<String, NFeTaxes> txs = new HashMap<String, NFeTaxes>();
		//
		List<MLBRNFLineTax> lineTaxes = nfl.getTaxes();
		//
		for (MLBRNFLineTax lt : lineTaxes) {
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(nfl.getCtx(), lt.getLBR_TaxGroup_ID(), nfl.get_TrxName());
			String taxIndicator = taxGroup.getName();
			
			boolean isST = false;
			if (taxIndicator.endsWith("ST")){
				isST = true;
				taxIndicator = taxIndicator.substring(0, taxIndicator.length()-2);
			}
			
			//
			NFeTaxes tx = null;
			if (txs.containsKey(taxIndicator)) {
				tx = txs.get(taxIndicator);
				tx.add (isST, lt.getlbr_TaxBaseAmt(), lt.getlbr_TaxAmt(), lt.getlbr_TaxRate(), lt.getlbr_TaxBase());
			}
			else {
				tx = new NFeTaxes(taxIndicator, nfl.getCST_ICMS(), isST, lt.getlbr_TaxBaseAmt(), 
						lt.getlbr_TaxAmt(), lt.getlbr_TaxRate(),lt.getlbr_TaxBase());
			}
			//	Inclui os impostos no mapa
			txs.put(taxIndicator, tx);
		}
		//
		if (!txs.containsKey("PIS")) {
			NFeTaxes tx = new NFeTaxes ("PIS", nfl.getCST_PIS());
			txs.put("PIS", tx);
		}
		
		if (!txs.containsKey("COFINS")) {
			NFeTaxes tx = new NFeTaxes ("COFINS", nfl.getCST_COFINS());
			txs.put("COFINS", tx);
		}
		
		if (!txs.containsKey("ICMS")) {
			NFeTaxes tx = new NFeTaxes ("ICMS", nfl.getCST_ICMS());
			txs.put("ICMS", tx);
		}
		//
		NFeTaxes[] list = new NFeTaxes[txs.size()];
		txs.values().toArray(list);
		//
		return list;
	}	//	NFeTaxes
	
	private void add (boolean isST, BigDecimal vBC, BigDecimal vImposto, BigDecimal pImposto, BigDecimal pRedBC){
		if (isST)
			addST(vBC,vImposto,pImposto,pRedBC);
		else
			add(vBC,vImposto,pImposto,pRedBC);
	}
	
	private void add (BigDecimal vBC, BigDecimal vImposto, BigDecimal pImposto, BigDecimal pRedBC) {
		this.vBC      = this.vBC == null ? vBC : this.vBC.add(vBC);
		this.vImposto = this.vImposto == null ? vImposto : this.vImposto.add(vImposto);
		this.pImposto = pImposto;
		this.pRedBC   = pRedBC;
	}	//	add
	
	private void addST (BigDecimal vBCST, BigDecimal vImpostoST, BigDecimal pImpostoST, BigDecimal pRedBCST) {
		this.vBCST      = this.vBCST == null ? vBCST : this.vBCST.add(vBCST);
		this.vImpostoST = this.vImpostoST == null ? vImpostoST : this.vImpostoST.add(vImpostoST);
		this.pImpostoST = pImpostoST;
		this.pRedBCST   = pRedBCST;
	}	//	addST

	public String getTaxIndicator() {
		return taxIndicator;
	}

	public void setTaxIndicator(String taxIndicator) {
		this.taxIndicator = taxIndicator;
	}

	public BigDecimal getvBC() {
		return vBC;
	}

	public void setvBC(BigDecimal vBC) {
		this.vBC = vBC;
	}

	public BigDecimal getvImposto() {
		return vImposto;
	}

	public void setvImposto(BigDecimal vImposto) {
		this.vImposto = vImposto;
	}

	public BigDecimal getpImposto() {
		return pImposto;
	}

	public void setpImposto(BigDecimal pImposto) {
		this.pImposto = pImposto;
	}

	public BigDecimal getpRedBC() {
		return pRedBC;
	}

	public void setpRedBC(BigDecimal pRedBC) {
		this.pRedBC = pRedBC;
	}
	
	public BigDecimal getvBCST() {
		return vBCST;
	}

	public void setvBCST(BigDecimal vBCST) {
		this.vBCST = vBCST;
	}

	public BigDecimal getvImpostoST() {
		return vImpostoST;
	}

	public void setvImpostoST(BigDecimal vImpostoST) {
		this.vImpostoST = vImpostoST;
	}

	public BigDecimal getpImpostoST() {
		return pImpostoST;
	}

	public void setpImpostoST(BigDecimal pImpostoST) {
		this.pImpostoST = pImpostoST;
	}

	public BigDecimal getpRedBCST() {
		return pRedBCST;
	}

	public void setpRedBCST(BigDecimal pRedBCST) {
		this.pRedBCST = pRedBCST;
	}

	public String getCST() {
		return CST;
	}

	public void setCST(String cST) {
		CST = cST;
	}
}	//	NFeTaxes