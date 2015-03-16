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
import java.sql.Timestamp;
import java.util.List;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  Declaração de Importação
 *  
 *  @author Mario Grigioni
 *  @version $Id: DeclaracaoDI.java,v 3.0 20/10/2014 15:44:00 mgrigioni Exp $
 */
@XStreamAlias ("DI")
public class DeclaracaoDI {
	
	private String nDI;
	private String dDI;
	private String xLocDesemb;
	private String UFDesemb;
	private String dDesemb;
	private String tpViaTransp;
	private String vAFRMM;
	private String tpIntermedio;
	private String CNPJ;
	private String UFTerceiro;
	private String cExportador;
	
	@XStreamImplicit(itemFieldName="adi")
	private List<AdicoesDI> adi;
	
	/**
	 * Default Constructor
	 * @param nDI
	 * @param dDI
	 * @param xLocDesemb
	 * @param uFDesemb
	 * @param dDesemb
	 * @param cExportador
	 * @param adi
	 */
	public DeclaracaoDI(String nDI, Timestamp dDI, String xLocDesemb,
			String uFDesemb, Timestamp dDesemb, String cExportador, 
			String tpViaTransp, String tpIntermedio, List<AdicoesDI> adi) {
		super();
		setnDI(nDI);
		setdDI(dDI);
		setxLocDesemb(xLocDesemb);
		setUFDesemb(uFDesemb);
		setdDesemb(dDesemb);
		setcExportador(cExportador);
		setTpViaTransp(tpViaTransp);
		setTpIntermedio(tpIntermedio);
		setAdi(adi);
	}
	
	public String getnDI() {
		return nDI;
	}
	private void setnDI(String nDI) {
		if (nDI == null)
			throw new AdempiereException("nDi = " + nDI);
		else	
			this.nDI = TextUtil.checkSize(nDI,12);
	}
	
	public String getdDI() {
		return dDI;
	}
	private void setdDI(Timestamp dDI) {
		if (dDI == null)
			throw new AdempiereException("dDI = " + dDI);
		else	
			this.dDI = TextUtil.timeToString(dDI, "yyyy-MM-dd");
	}
	
	public String getxLocDesemb() {
		return xLocDesemb;
	}
	private void setxLocDesemb(String xLocDesemb) {
		if (xLocDesemb == null)
			throw new AdempiereException("xLocDesemb =" + xLocDesemb);
		else	
			this.xLocDesemb = TextUtil.checkSize(RemoverAcentos.remover(xLocDesemb),60);
	}
	
	public String getUFDesemb() {
		return UFDesemb;
	}
	private void setUFDesemb(String uFDesemb) {
		if (uFDesemb == null || uFDesemb.length() != 2)
			throw new AdempiereException("uFDesemb " + uFDesemb);
		else
			UFDesemb = uFDesemb;
	}
	
	public String getdDesemb() {
		return dDesemb;
	}
	private void setdDesemb(Timestamp dDesemb) {
		if (dDesemb == null)
			throw new AdempiereException("dDesemb = " + dDesemb);
		else	
			this.dDesemb = TextUtil.timeToString(dDesemb, "yyyy-MM-dd");
	}
	public String getTpViaTransp() {
		return tpViaTransp;
	}
	private void setTpViaTransp(String tpViaTransp) {
		int viaTransp = Integer.parseInt(tpViaTransp); //excluir 0 à esquerda
		this.tpViaTransp = String.valueOf(viaTransp);
	}
	public String getvAFRMM() {
		return vAFRMM;
	}
	public void setvAFRMM(BigDecimal vAFRMM) {
		this.vAFRMM = TextUtil.bigdecimalToString(vAFRMM);
	}
	public String getTpIntermedio() {
		return tpIntermedio;
	}
	private void setTpIntermedio(String tpIntermedio) {
		this.tpIntermedio = tpIntermedio;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	public String getUFTerceiro() {
		return UFTerceiro;
	}
	public void setUFTerceiro(String uFTerceiro) {
		if (uFTerceiro.length() != 2)
			throw new AdempiereException("UF Terceiros = " + uFTerceiro);
		
		UFTerceiro = uFTerceiro;
	}
	public String getcExportador() {
		return cExportador;
	}
	private void setcExportador(String cExportador) {
		if (cExportador == null)
			throw new AdempiereException("cExportador =" + cExportador);
		else	
			this.cExportador = TextUtil.checkSize(RemoverAcentos.remover(cExportador),60);
	}
	public List<AdicoesDI> getAdi() {
		return adi;
	}
	private void setAdi(List<AdicoesDI> adi) {
		this.adi = adi;
	}
	
} // DeclaracaoDI