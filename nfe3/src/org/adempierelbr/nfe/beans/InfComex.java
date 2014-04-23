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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  ZA - Informações de Comércio Exterior
 *  
 *  @author Mario Grigioni
 *  @version $Id: InfComex.java,v 2.0 31/07/2012 09:42:00 mgrigioni Exp $
 */
@XStreamAlias ("exporta")
public class InfComex {

	private String UFEmbarq;
	private String xLocEmbarq;
	
	/**
	 * Default Constructor
	 * @param ufEmbarq
	 * @param xLocEmbarq
	 */
	public InfComex(String ufEmbarq, String xLocEmbarq){
		setUFEmbarq(ufEmbarq);
		setxLocEmbarq(xLocEmbarq);
	}
	
	public String getUFEmbarq() {
		return UFEmbarq;
	}
	public void setUFEmbarq(String uFEmbarq) {
		if (uFEmbarq == null || uFEmbarq.length() != 2)
			throw new AdempiereException("uF = " + uFEmbarq);
		else
			UFEmbarq = uFEmbarq;
	}
	
	public String getxLocEmbarq() {
		return xLocEmbarq;
	}
	public void setxLocEmbarq(String xLocEmbarq) {
		if (xLocEmbarq == null || xLocEmbarq.length() < 2)
			throw new AdempiereException("xLocEmbarq = " + xLocEmbarq);
		else
			this.xLocEmbarq = TextUtil.checkSize(RemoverAcentos.remover(xLocEmbarq),60);
	}

} //InfComex