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
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcIdentificacaoOrgaoGerador
 *  @author Mario Grigioni
 *  @version $Id: TcIdentificacaoOrgaoGerador.java,v 1.0 04/06/2012 16:03:00 mgrigioni Exp $
 */
@XStreamAlias ("OrgaoGerador")
public class TcIdentificacaoOrgaoGerador {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcIdentificacaoOrgaoGerador.class);
	
	private String CodigoMunicipio;
	private String Uf;
	
	/**
	 * Constructor
	 * @param codigoMunicipio
	 * @param uf
	 */
	public TcIdentificacaoOrgaoGerador(String codigoMunicipio, String uf) {
		super();
		setCodigoMunicipio(codigoMunicipio);
		setUf(uf);
	}
	public String getCodigoMunicipio() {
		return CodigoMunicipio;
	}
	private void setCodigoMunicipio(String codigoMunicipio) {
		CodigoMunicipio = TextUtil.toNumeric(codigoMunicipio);
	}
	
	public String getUf() {
		return Uf;
	}
	private void setUf(String uf) {
		if (uf == null || uf.length() != 2){
			log.warning("(UF length <> 2) - " + uf);
			return;
		}
		
		Uf = uf.toUpperCase();
	}
	
}	// TcIdentificacaoOrgaoGerador