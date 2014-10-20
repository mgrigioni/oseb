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

import org.adempierelbr.nfe.imposto.COFINSBean;
import org.adempierelbr.nfe.imposto.ICMSBean;
import org.adempierelbr.nfe.imposto.ImpostoII;
import org.adempierelbr.nfe.imposto.ImpostoIPIBean;
import org.adempierelbr.nfe.imposto.PISBean;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  M - Tributos incidentes no Produto ou Serviço
 *  
 *  @author Mario Grigioni
 *  @version $Id: ImpostoProduto.java,v 3.0 16/10/2014 15:44:00 mgrigioni Exp $
 */
@XStreamAlias ("imposto")
public class ImpostoProduto {

	private String vTotTrib;
	private ICMSBean ICMS;
	private ImpostoIPIBean IPI;
	private ImpostoII II;
	private PISBean PIS;
	private COFINSBean COFINS;
	
	public ImpostoProduto(BigDecimal vTotTrib) {
		super();
		setvTotTrib(vTotTrib);
	}
	
	public String getvTotTrib() {
		return vTotTrib;
	}
	public void setvTotTrib(BigDecimal vTotTrib) {
		if (vTotTrib != null && vTotTrib.signum() == 1)
			this.vTotTrib = TextUtil.bigdecimalToString(vTotTrib);
	}
	
	public ICMSBean getICMS() {
		return ICMS;
	}

	public void setICMS(ICMSBean icms) {
		ICMS = icms;
	}

	public ImpostoIPIBean getIPI() {
		return IPI;
	}

	public void setIPI(ImpostoIPIBean ipi) {
		IPI = ipi;
	}

	public ImpostoII getII() {
		return II;
	}

	public void setII(ImpostoII ii) {
		II = ii;
	}

	public PISBean getPIS() {
		return PIS;
	}

	public void setPIS(PISBean pis) {
		PIS = pis;
	}

	public COFINSBean getCOFINS() {
		return COFINS;
	}

	public void setCOFINS(COFINSBean cofins) {
		COFINS = cofins;
	}
	
} //ImpostoProduto