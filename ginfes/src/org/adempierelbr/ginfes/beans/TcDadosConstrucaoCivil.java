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
package org.adempierelbr.ginfes.beans;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  TcDadosConstrucaoCivil
 *  @author Mario Grigioni
 *  @version $Id: TcDadosConstrucaoCivil.java,v 1.0 05/06/2012 15:30:00 mgrigioni Exp $
 */
@XStreamAlias ("ConstrucaoCivil")
public class TcDadosConstrucaoCivil {
	
	private String CodigoObra;
	private String Art;
	
	/**
	 * Constructor
	 * @param codigoObra
	 * @param art
	 */
	public TcDadosConstrucaoCivil(String codigoObra, String art) {
		super();
		setCodigoObra(codigoObra);
		setArt(art);
	}
	public String getCodigoObra() {
		return CodigoObra;
	}
	private void setCodigoObra(String codigoObra) {
		CodigoObra = TextUtil.checkSize(codigoObra,15);
	}
	
	public String getArt() {
		return Art;
	}
	private void setArt(String art) {
		Art = TextUtil.checkSize(art,15);
	}
	
}	// TcDadosConstrucaoCivil