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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcIdentificacaoRps
 *  @author Mario Grigioni
 *  @version $Id: TcIdentificacaoRps.java,v 1.0 04/06/2012 16:07:00 mgrigioni Exp $
 */
@XStreamAlias ("IdentificacaoRps")
public class TcIdentificacaoRps {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcIdentificacaoRps.class);
	
	private String Numero;
	private String Serie;
	private String Tipo = "1"; //RPS
	
	/**
	 * Constructor
	 * @param numero
	 * @param serie
	 * @param tipo
	 */
	public TcIdentificacaoRps(String numero, String serie) {
		super();
		setNumero(numero);
		setSerie(serie);
	}
	
	public String getNumero() {
		return Numero;
	}
	public void setNumero(String numero) {
		Numero = TextUtil.toNumeric(numero);
	}
	
	public String getSerie() {
		return Serie;
	}
	public void setSerie(String serie) {
		serie = TextUtil.checkSize(serie,5);
		if (serie.isEmpty())
			serie = "0";
		
		Serie = serie;
	}
	
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		tipo = TextUtil.toNumeric(tipo);
		if("123".indexOf(tipo) == -1){
			throw new AdempiereException ("(Tipo de documento inválido) - " + tipo);
		}
		
		Tipo = tipo;
	}
	
}	// TcIdentificacaoRps