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

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo da Fatura
 *  
 *  @author Mario Grigioni
 *  @version $Id: CobrancaGrupoFatura.java,v 1.0 01/08/2012 15:00:00 mgrigioni Exp $
 */
@XStreamAlias ("fat")
public class CobrancaGrupoFatura {

	private String nFat;
	private String vOrig;
	private String vDesc;
	private String vLiq;
	
	/**
	 * Default Constructor
	 * @param nFat
	 * @param vOrig
	 */
	public CobrancaGrupoFatura(String nFat, BigDecimal vOrig) {
		super();
		setnFat(nFat);
		setvOrig(vOrig);
		setvLiq(vOrig);
	}
	
	public String getnFat() {
		return nFat;
	}
	public void setnFat(String nFat) {
		if (nFat != null)	
			this.nFat = TextUtil.checkSize(nFat, 60);
	}
	
	public String getvOrig() {
		return vOrig;
	}
	public void setvOrig(BigDecimal vOrig) {
		if (vOrig != null)
			this.vOrig = TextUtil.bigdecimalToString(vOrig);
	}
	
	public String getvDesc() {
		return vDesc;
	}
	public void setvDesc(BigDecimal vDesc) {
		if (vDesc != null)
			this.vDesc = TextUtil.bigdecimalToString(vDesc);
	}
	
	public String getvLiq() {
		return vLiq;
	}
	public void setvLiq(BigDecimal vLiq) {
		if (vLiq != null)
			this.vLiq = TextUtil.bigdecimalToString(vLiq);
	}

} // CobrancaGrupoFatura