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

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  P - Imposto de Importação
 *  
 *  @author Mario Grigioni
 *  @version $Id: ImpostoII.java,v 1.0 07/08/2012 09:46:00 mgrigioni Exp $
 */
@XStreamAlias ("II")
public class ImpostoII {
	
	private String vBC;
	private String vDespAdu = TextUtil.ZERO_STRING;
	private String vII;
	private String vIOF = TextUtil.ZERO_STRING;
	
	public ImpostoII(BigDecimal vBC, BigDecimal vII) {
		super();
		setvBC(vBC);
		setvII(vII);
	}
	
	public String getvBC() {
		return vBC;
	}
	public void setvBC(BigDecimal vBC) {
		this.vBC = TextUtil.bigdecimalToString(vBC);
	}
	
	public String getvDespAdu() {
		return vDespAdu;
	}
	public void setvDespAdu(BigDecimal vDespAdu) {
		this.vDespAdu = TextUtil.bigdecimalToString(vDespAdu);
	}
	
	public String getvII() {
		return vII;
	}
	public void setvII(BigDecimal vII) {	
		this.vII = TextUtil.bigdecimalToString(vII);
	}
	
	public String getvIOF() {
		return vIOF;
	}
	public void setvIOF(BigDecimal vIOF) {
		this.vIOF = TextUtil.bigdecimalToString(vIOF);
	}

} // ImpostoII