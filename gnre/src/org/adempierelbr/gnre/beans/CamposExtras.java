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
package org.adempierelbr.gnre.beans;

import java.util.ArrayList;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  Campos Extras
 *  @author Mario Grigioni
 *  @version $Id: CamposExtras.java,v 1.0 05/10/2012 08:42:00 mgrigioni Exp $
 */
@XStreamAlias ("c39_camposExtras")
public class CamposExtras {
	
	@XStreamImplicit(itemFieldName="campoExtra")
	private List<CampoExtra> campoExtra = new ArrayList<CampoExtra>();

	public CamposExtras(List<CampoExtra> campoExtra) {
		super();
		setCampoExtra(campoExtra);
	}
	
	public List<CampoExtra> getCampoExtra() {
		return campoExtra;
	}
	public void setCampoExtra(List<CampoExtra> campoExtra) {
		this.campoExtra = campoExtra;
	}

} //CamposExtras

@XStreamAlias ("campoExtra")
class CampoExtra{
	
	private String codigo;
	private String tipo;
	private String valor;
	
	public String getCodigo() {
		return codigo;
	}
	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getValor() {
		return valor;
	}
	public void setValor(String valor) {
		this.valor = valor;
	}
	
} //CampoExtra