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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MProduct;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  I - Produtos e Serviços da NF-e
 *  
 *  @author Mario Grigioni
 *  @version $Id: ProdutoNFe.java,v 2.0 02/08/2012 13:54:00 mgrigioni Exp $
 */
@XStreamAlias ("prod")
public class ProdutoNFe {

	private String cProd;
	private String cEAN;
	private String xProd;
	private String NCM;
	private String EXTIPI;
	private String CFOP;
	private String uCom;
	private String qCom;
	private String vUnCom;
	private String vProd;
	private final String cEANTrib = "";
	private String uTrib;
	private String qTrib;
	private String vUnTrib;
	private String vFrete;
	private String vSeg;
	private String vDesc;
	private String vOutro;
	private final String indTot = "1"; //v2.0 = 0 – VL Ñ ENTRA NO TOT 1 - VL ENTRA
	private DeclaracaoDI DI;
	
	/**
	 * Default Constructor
	 * @param nfLine
	 */
	public ProdutoNFe(MLBRNotaFiscalLine nfLine){
		
		MProduct prod = new MProduct(nfLine.getCtx(), nfLine.getM_Product_ID(), nfLine.get_TrxName());
		setcProd(nfLine.getProductValue());
		setcEAN(prod.getUPC());
		setxProd(nfLine.getProductName());
		setNCM(nfLine.getlbr_NCMName(),nfLine.islbr_IsService());
		setCFOP(nfLine.getlbr_CFOPName());
		setuCom(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
		setqCom(nfLine.getQty());
		setvUnCom(nfLine.getPrice());
		setvProd(nfLine.getQty(),nfLine.getPrice()); //BF Rejeição: 629

		setuTrib(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
		setqTrib(nfLine.getQty());
		setvUnTrib(nfLine.getPrice());
		
		setvFrete(nfLine.getFreightAmt());
		setvSeg(nfLine.getInsuranceAmt());
		setvOutro(nfLine.getChargeAmt());
	}
	
	public String getcProd() {
		return cProd;
	}
	private void setcProd(String cProd) {
		if (cProd == null || cProd.isEmpty())
			throw new AdempiereException("cProd = " + cProd);
		else
			this.cProd = TextUtil.checkSize(RemoverAcentos.remover(cProd),60);
	}

	public String getcEAN() {
		return cEAN;
	}
	private void setcEAN(String cEAN) {
		cEAN = TextUtil.toNumeric(cEAN);
		if (cEAN.length() == 8 || cEAN.length() == 12 ||
			cEAN.length() == 13 || cEAN.length() == 14) {
			this.cEAN = cEAN;
		}
		else
			this.cEAN = "";
	}

	public String getxProd() {
		return xProd;
	}
	private void setxProd(String xProd) {
		if (xProd == null || xProd.isEmpty())
			throw new AdempiereException("xProd = " + xProd);
		else
			this.xProd = TextUtil.checkSize(RemoverAcentos.remover(xProd),120);
	}

	public String getNCM() {
		return NCM;
	}
	private void setNCM(String nCM, boolean isService) {
		if (nCM == null && !isService)
			throw new AdempiereException("NCM = " + nCM);
		else{
			if (isService)
				this.NCM = "99"; //SERVICO = 99
			else
				this.NCM = TextUtil.toNumeric(nCM);
		}
	}

	public String getEXTIPI() {
		return EXTIPI;
	}
	public void setEXTIPI(String eXTIPI) {
		EXTIPI = eXTIPI;
	}

	public String getCFOP() {
		return CFOP;
	}
	private void setCFOP(String cFOP) {
		cFOP = TextUtil.toNumeric(cFOP);
		if (cFOP.isEmpty() || cFOP.length() != 4)
			throw new AdempiereException("CFOP = " + cFOP);
		
		this.CFOP = cFOP;
	}

	public String getuCom() {
		return uCom;
	}
	private void setuCom(String uCom) {
		if (uCom == null || uCom.isEmpty())
			throw new AdempiereException("uCom = " + uCom);
		else
			this.uCom = (TextUtil.checkSize(RemoverAcentos.remover(uCom),6)).toUpperCase();
	}

	public String getqCom() {
		return qCom;
	}
	private void setqCom(BigDecimal qCom) {
		this.qCom = TextUtil.bigdecimalToString(qCom,4);
	}

	public String getvUnCom() {
		return vUnCom;
	}
	private void setvUnCom(BigDecimal vUnCom) {
		this.vUnCom = TextUtil.bigdecimalToString(vUnCom,5);
	}

	public String getvProd() {
		return vProd;
	}
	private void setvProd(BigDecimal qCom, BigDecimal vUnCom) {
		qCom = qCom.setScale(4, TaxBR.ROUND);
		vUnCom = vUnCom.setScale(5,TaxBR.ROUND);
		
		this.vProd = TextUtil.bigdecimalToString(qCom.multiply(vUnCom));
	}
	
	public String getcEANTrib() {
		return cEANTrib;
	}

	public String getuTrib() {
		return uTrib;
	}
	private void setuTrib(String uTrib) {
		if (uTrib == null || uTrib.isEmpty())
			throw new AdempiereException("uTrib = " + uTrib);
		else
			this.uTrib = (TextUtil.checkSize(RemoverAcentos.remover(uTrib),6)).toUpperCase();
	}
	
	public String getqTrib() {
		return qTrib;
	}
	private void setqTrib(BigDecimal qTrib) {
		this.qTrib = TextUtil.bigdecimalToString(qTrib,4);
	}
	
	public String getvUnTrib() {
		return vUnTrib;
	}
	private void setvUnTrib(BigDecimal vUnTrib) {
		this.vUnTrib = TextUtil.bigdecimalToString(vUnTrib,5);
	}
	
	public String getvFrete() {
		return vFrete;
	}
	private void setvFrete(BigDecimal vFrete) {
		if (vFrete != null && vFrete.signum() == 1)
			this.vFrete = TextUtil.bigdecimalToString(vFrete);
	}
	
	public String getvSeg() {
		return vSeg;
	}
	private void setvSeg(BigDecimal vSeg) {
		if (vSeg != null && vSeg.signum() == 1)
			this.vSeg = TextUtil.bigdecimalToString(vSeg);
	}
	
	public String getvDesc() {
		return vDesc;
	}
	public void setvDesc(BigDecimal vDesc) {
		if (vDesc != null && vDesc.signum() == 1)
			this.vDesc = TextUtil.bigdecimalToString(vDesc);
	}
	
	public String getvOutro() {
		return vOutro;
	}
	public void setvOutro(BigDecimal vOutro) {
		if (vOutro != null && vOutro.signum() == 1)
			this.vOutro = TextUtil.bigdecimalToString(vOutro);
	}
	
	public String getIndTot() {
		return indTot;
	}

	public DeclaracaoDI getDI() {
		return DI;
	}
	public void setDI(DeclaracaoDI dI) {
		DI = dI;
	}
	
} // ProdutoNFe