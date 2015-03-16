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
package org.adempierelbr.nfe.beans;

import java.math.BigDecimal;

import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxGroup;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo de Valores Totais referentes ao ICMS
 *  
 *  @author Mario Grigioni
 *  @version $Id: ValoresICMS.java,v 3.0 16/10/2014 15:09:00 mgrigioni Exp $
 */
@XStreamAlias ("ICMSTot")
public class ValoresICMS {
	
	private String vBC;        // vBC - BC do ICMS
	private String vICMS;      // vICMS - Valor Total do ICMS
	private String vICMSDeson; // vICMSDeson - Valor Total do ICMS desonerado
	private String vBCST;      // vBCST - BC do ICMS ST
	private String vST;        // vST - Valor Total do ICMS ST
	private String vProd;      // vProd - Valor Total dos produtos e serviços
	private String vFrete;     // vFrete - Valor Total do Frete
	private String vSeg;       // vSeg - Valor Total do Seguro
	private String vDesc;      // vDesc - Valor Total do Desconto
	private String vII;        // vII - Valor Total do II
	private String vIPI;       // vIPI - Valor Total do IPI
	private String vPIS;       // vPIS - Valor do PIS
	private String vCOFINS;    // vCOFINS - Valor do COFINS
	private String vOutro;     // vOutro - Outras Despesas acessórias
	private String vNF;        // vNF - Valor Total da NF-e
	private String vTotTrib;   // vTotTrib - Valor aproximado total de tributos federais, estaduais e municipais.
	
	/**
	 * Default Constructor
	 * @param grandTotal
	 * @param totalLines
	 * @param freightAmt
	 * @param lbr_InsuranceAmt
	 * @param chargeAmt
	 */
	public ValoresICMS(BigDecimal grandTotal, BigDecimal totalLines, BigDecimal freightAmt,
			BigDecimal lbr_InsuranceAmt, BigDecimal chargeAmt, BigDecimal vTotTrib){
		setvNF(grandTotal);
		setvProd(totalLines);
		setvFrete(freightAmt);
		setvSeg(lbr_InsuranceAmt);
		setvICMSDeson(null);
		setvDesc(null);
		setvBCST(null);
		setvST(null);
		setvBC(null);
		setvICMS(null);
		setvPIS(null);
		setvCOFINS(null);
		setvIPI(null);
		setvII(null);
		setvTotTrib(vTotTrib);
		setvOutro(chargeAmt); 
	} //ValoresICMS
	
	public void addvBC(BigDecimal vBC){
		if (vBC.signum() != 1)
			return;
		
		BigDecimal actualBC = Env.ZERO;
		if (getvBC() != null)
			actualBC = new BigDecimal(getvBC());
			
		setvBC(actualBC.add(vBC));
	} //addvBC
	
	/**
	 * Verifica qual o imposto e define o valor
	 * @param nfTax
	 */
	public void setValorImposto(X_LBR_NFTax nfTax){
		X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(nfTax.getCtx(), nfTax.getLBR_TaxGroup_ID(), null);
		String taxName = taxGroup.getName().toUpperCase();
		
		if (taxName.equals("ICMSST")) {
			setvBCST(nfTax.getlbr_TaxBaseAmt());
			setvST(nfTax.getlbr_TaxAmt());
			return;
		}

		if (taxName.equals("ICMS")) {
			setvBC(nfTax.getlbr_TaxBaseAmt());
			setvICMS(nfTax.getlbr_TaxAmt());
			return;
		}

		if (taxName.equals("PIS")) {
			setvPIS(nfTax.getlbr_TaxAmt());
			return;
		}

		if (taxName.equals("COFINS")) {
			setvCOFINS(nfTax.getlbr_TaxAmt());
			return;
		}

		if (taxName.equals("IPI")) {
			setvIPI(nfTax.getlbr_TaxAmt());
			return;
		}

		if (taxName.equals("II")) {
			setvII(nfTax.getlbr_TaxAmt());
			return;
		}
	} // setValorImposto
	
	public String getvBC() {
		return vBC;
	}
	private void setvBC(BigDecimal vBC) {
		this.vBC = TextUtil.bigdecimalToString(vBC);
	}
	
	public String getvICMS() {
		return vICMS;
	}
	private void setvICMS(BigDecimal vICMS) {
		this.vICMS = TextUtil.bigdecimalToString(vICMS);
	}
	
	public String getvICMSDeson() {
		return vICMSDeson;
	}
	private void setvICMSDeson(BigDecimal vICMSDeson) {
		this.vICMSDeson = TextUtil.bigdecimalToString(vICMSDeson);
	}
	
	public String getvBCST() {
		return vBCST;
	}
	private void setvBCST(BigDecimal vBCST) {
		this.vBCST = TextUtil.bigdecimalToString(vBCST);
	}
	
	public String getvST() {
		return vST;
	}
	private void setvST(BigDecimal vST) {
		this.vST = TextUtil.bigdecimalToString(vST);
	}
	
	public String getvProd() {
		return vProd;
	}
	private void setvProd(BigDecimal vProd) {
		this.vProd = TextUtil.bigdecimalToString(vProd);
	}
	
	public String getvFrete() {
		return vFrete;
	}
	private void setvFrete(BigDecimal vFrete) {
		this.vFrete = TextUtil.bigdecimalToString(vFrete);
	}
	
	public String getvSeg() {
		return vSeg;
	}
	private void setvSeg(BigDecimal vSeg) {
		this.vSeg = TextUtil.bigdecimalToString(vSeg);
	}
	
	public String getvDesc() {
		return vDesc;
	}
	public void setvDesc(BigDecimal vDesc) {	
		this.vDesc = TextUtil.bigdecimalToString(vDesc);
	}
	
	public String getvII() {
		return vII;
	}
	private void setvII(BigDecimal vII) {
		this.vII = TextUtil.bigdecimalToString(vII);
	}
	
	public String getvIPI() {
		return vIPI;
	}
	private void setvIPI(BigDecimal vIPI) {
		this.vIPI = TextUtil.bigdecimalToString(vIPI);
	}
	
	public String getvPIS() {
		return vPIS;
	}
	private void setvPIS(BigDecimal vPIS) {
		this.vPIS = TextUtil.bigdecimalToString(vPIS);
	}
	
	public String getvCOFINS() {
		return vCOFINS;
	}
	private void setvCOFINS(BigDecimal vCOFINS) {
		this.vCOFINS = TextUtil.bigdecimalToString(vCOFINS);
	}
	
	public String getvOutro() {
		return vOutro;
	}
	public void setvOutro(BigDecimal vOutro) {
		this.vOutro = TextUtil.bigdecimalToString(vOutro);
	}
	
	public String getvNF() {
		return vNF;
	}
	private void setvNF(BigDecimal vNF) {
		this.vNF = TextUtil.bigdecimalToString(vNF);
	}
	
	public String getvTotTrib() {
		return vTotTrib;
	}
	private void setvTotTrib(BigDecimal vTotTrib) {
		if (vTotTrib != null && vTotTrib.signum() == 1)
			this.vTotTrib = TextUtil.bigdecimalToString(vTotTrib);
	}

} //ValoresICMS