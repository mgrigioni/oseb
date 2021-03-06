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
package org.adempierelbr.nfe.imposto;

import java.math.BigDecimal;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;

public class ICMSGrupoBean {

	private String orig;
	private String CST;
	private String modBC;
	private String pRedBC;
	private String vBC;
	private String pICMS;
	
	//CST 51
	private String vICMSOp;
	private String pDif;
	private String vICMSDif;
	
	private String vICMS;
	
	//CST 10, 30, 70, 90
	private String modBCST;
	private String pMVAST;
	private String pRedBCST;
	private String vBCST;
	private String pICMSST;
	private String vICMSST;
	
	//CST 20,30,40,70,90
	private String vICMSDeson;
	private String motDesICMS;
	
	public String getOrig() {
		return orig;
	}
	public void setOrig(String orig) {
		if (orig != null)
			orig = orig.trim();
	
		this.orig = orig;
	}
	public String getCST() {
		return CST;
	}
	public void setCST(String cST) {
		if (cST != null)
			cST = cST.trim();
	
		CST = cST;
	}
	public String getModBC() {
		return modBC;
	}
	public void setModBC(String modBC) {
		if (modBC != null)
			modBC = modBC.trim();
	
		this.modBC = modBC;
	}
	public String getpRedBC() {
		return pRedBC;
	}
	public void setpRedBC(String pRedBC) {
		if (pRedBC != null)
			pRedBC = pRedBC.trim();
	
		this.pRedBC = pRedBC;
	}
	public String getpICMS() {
		return pICMS;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public void setvBC(BigDecimal qCom, BigDecimal vUnCom) {
		qCom = qCom.setScale(4, TaxBR.ROUND);
		vUnCom = vUnCom.setScale(5,TaxBR.ROUND);
		
		this.vBC = TextUtil.bigdecimalToString(qCom.multiply(vUnCom));
	}
	public void setpICMS(String pICMS) {
		if (pICMS != null)
			pICMS = pICMS.trim();
	
		this.pICMS = pICMS;
	}
	public String getvICMSOp() {
		return vICMSOp;
	}
	public void setvICMSOp(BigDecimal qCom, BigDecimal vUnCom) {
		qCom = qCom.setScale(4, TaxBR.ROUND);
		vUnCom = vUnCom.setScale(5,TaxBR.ROUND);
		
		this.vICMSOp = TextUtil.bigdecimalToString(qCom.multiply(vUnCom));
	}
	public String getpDif() {
		return pDif;
	}
	public void setpDif(String pDif) {
		if (pDif != null)
			pDif = pDif.trim();
	
		this.pDif = pDif;
	}
	public String getvICMSDif() {
		return vICMSDif;
	}
	public void setvICMSDif(BigDecimal qCom, BigDecimal vUnCom) {
		qCom = qCom.setScale(4, TaxBR.ROUND);
		vUnCom = vUnCom.setScale(5,TaxBR.ROUND);
		
		this.vICMSDif = TextUtil.bigdecimalToString(qCom.multiply(vUnCom));
	}
	public String getvICMS() {
		return vICMS;
	}
	public void setvICMS(String vICMS) {
		if (vICMS != null)
			vICMS = vICMS.trim();
	
		this.vICMS = vICMS;
	}
	public String getModBCST() {		
		return modBCST;
	}
	public void setModBCST(String modBCST) {
		if (modBCST != null)
			modBCST = modBCST.trim();
		
		this.modBCST = modBCST;
	}
	public String getpMVAST() {
		return pMVAST;
	}
	public void setpMVAST(String pMVAST) {
		if (pMVAST != null)
			pMVAST = pMVAST.trim();
		
		this.pMVAST = pMVAST;
	}
	public String getpRedBCST() {
		return pRedBCST;
	}
	public void setpRedBCST(String pRedBCST) {
		if (pRedBCST != null)
			pRedBCST = pRedBCST.trim();
		
		this.pRedBCST = pRedBCST;
	}
	public String getvBCST() {
		return vBCST;
	}
	public void setvBCST(String vBCST) {
		if (vBCST != null)
			vBCST = vBCST.trim();
		
		this.vBCST = vBCST;
	}
	public String getpICMSST() {
		return pICMSST;
	}
	public void setpICMSST(String pICMSST) {
		if (pICMSST != null)
			pICMSST = pICMSST.trim();
		
		this.pICMSST = pICMSST;
	}
	public String getvICMSST() {
		return vICMSST;
	}
	public void setvICMSST(String vICMSST) {
		if (vICMSST != null)
			vICMSST = vICMSST.trim();
		
		this.vICMSST = vICMSST;
	}
	
	public String getvICMSDeson() {
		return vICMSDeson;
	}
	public void setvICMSDeson(String vICMSDeson) {
		if (vICMSDeson != null)
			vICMSDeson = vICMSDeson.trim();
		
		this.vICMSDeson = vICMSDeson;
	}
	
	public String getMotDesICMS() {
		return motDesICMS;
	}
	public void setMotDesICMS(String motDesICMS) {
		if (motDesICMS == null || motDesICMS.length() > 2)
			throw new AdempiereException("motDesICMS = " + motDesICMS);
		else
			this.motDesICMS = motDesICMS;
	}
	
} //ICMSGrupoBean