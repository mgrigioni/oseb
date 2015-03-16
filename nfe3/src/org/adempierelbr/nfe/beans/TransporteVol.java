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

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo Volumes
 *  
 *  @author Mario Grigioni
 *  @version $Id: TransporteVol.java,v 2.0 31/07/2012 10:41:00 mgrigioni Exp $
 */
@XStreamAlias ("vol")
public class TransporteVol {

	private String qVol;
	private String esp;
	private String marca;
	private String nVol;
	private String pesoL;
	private String pesoB;

	/**
	 * Default Constructor
	 * @param NoPackages
	 * @param lbr_PackingType
	 * @param lbr_NetWeight
	 * @param lbr_GrossWeight
	 */
	public TransporteVol(BigDecimal NoPackages, String lbr_PackingType, BigDecimal lbr_NetWeight, BigDecimal lbr_GrossWeight){
		setqVol(NoPackages);
		setEsp(lbr_PackingType);
		setPesoL(lbr_NetWeight);
		setPesoB(lbr_GrossWeight);
	}
	
	public String getqVol() {
		return qVol;
	}
	private void setqVol(BigDecimal qVol) {
		if (qVol != null && qVol.signum() == 1)
			this.qVol = TextUtil.bigdecimalToString(qVol, 0);
	}
	
	public String getEsp() {
		return esp;
	}
	private void setEsp(String esp) {
		if (esp != null)
			this.esp = TextUtil.checkSize(RemoverAcentos.remover(esp),60);
	}
	
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		if (marca != null)
			this.marca = TextUtil.checkSize(RemoverAcentos.remover(marca),60);
	}
	
	public String getnVol() {
		return nVol;
	}
	public void setnVol(String nVol) {
		if (nVol != null)
			this.nVol = TextUtil.checkSize(RemoverAcentos.remover(nVol),60);
	}
	
	public String getPesoL() {
		return pesoL;
	}
	private void setPesoL(BigDecimal pesoL) {
		if (pesoL != null)
			this.pesoL = TextUtil.bigdecimalToString(pesoL, 3);
	}
	
	public String getPesoB() {
		return pesoB;
	}
	private void setPesoB(BigDecimal pesoB) {
		if (pesoB != null)
			this.pesoB = TextUtil.bigdecimalToString(pesoB, 3);
	}
		
} //TransporteVol