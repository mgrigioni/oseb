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

	private String UFSaidaPais;
	private String xLocExporta;
	private String xLocDespacho;
	
	/**
	 * Default Constructor
	 * @param ufEmbarq
	 * @param xLocEmbarq
	 */
	public InfComex(String UFSaidaPais, String xLocExporta){
		setUFSaidaPais(UFSaidaPais);
		setxLocExporta(xLocExporta);
	}
	
	public String getUFSaidaPais() {
		return UFSaidaPais;
	}
	public void setUFSaidaPais(String UFSaidaPais) {
		if (UFSaidaPais == null || UFSaidaPais.length() != 2)
			throw new AdempiereException("uF = " + UFSaidaPais);
		else
			this.UFSaidaPais = UFSaidaPais;
	}
	
	public String getxLocExporta() {
		return xLocExporta;
	}
	public void setxLocExporta(String xLocExporta) {
		if (xLocExporta == null || xLocExporta.length() < 2)
			throw new AdempiereException("xLocExporta = " + xLocExporta);
		else
			this.xLocExporta = TextUtil.checkSize(RemoverAcentos.remover(xLocExporta),60);
	}
	public String getxLocDespacho() {
		return xLocDespacho;
	}
	public void setxLocDespacho(String xLocDespacho) {
		this.xLocDespacho = xLocDespacho;
	}
	

} //InfComex