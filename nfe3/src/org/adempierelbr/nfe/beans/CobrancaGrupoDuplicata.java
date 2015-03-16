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

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo da Duplicata
 *  
 *  @author Mario Grigioni
 *  @version $Id: CobrancaGrupoDuplicata.java,v 1.0 01/08/2012 15:36:00 mgrigioni Exp $
 */
@XStreamAlias ("dup")
public class CobrancaGrupoDuplicata {

	private String nDup;
	private String dVenc;
	private String vDup;
	
	/**
	 * Default Constructor
	 * @param nDup
	 * @param dVenc
	 * @param vDup
	 */
	public CobrancaGrupoDuplicata(String nDup, Timestamp dVenc, BigDecimal vDup) {
		super();
		setnDup(nDup);
		setdVenc(dVenc);
		setvDup(vDup);
	}
	
	public String getnDup() {
		return nDup;
	}
	public void setnDup(String nDup) {
		if (nDup != null)
			this.nDup = TextUtil.checkSize(nDup, 60);
	}
	public String getdVenc() {
		return dVenc;
	}
	public void setdVenc(Timestamp dVenc) {
		if (dVenc != null)
			this.dVenc = TextUtil.timeToString(dVenc,"yyyy-MM-dd");
	}
	
	public String getvDup() {
		return vDup;
	}
	public void setvDup(BigDecimal vDup) {
		if (vDup != null)
			this.vDup = TextUtil.bigdecimalToString(vDup);
	}

} // CobrancaGrupoDuplicata