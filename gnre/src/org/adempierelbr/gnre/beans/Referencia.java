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

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Referencia
 *  @author Mario Grigioni
 *  @version $Id: Referencia.java,v 1.0 05/10/2012 08:35:00 mgrigioni Exp $
 */
@XStreamAlias ("c05_referencia")
public class Referencia {
	
	private String periodo;
	private String mes;
	private String ano;
	private String parcela;
	
	public Referencia(String uf, Timestamp dateDoc) {
		super();
		setPeriodo(uf);
		setMes(TextUtil.timeToString(dateDoc, "MM"));
		setAno(TextUtil.timeToString(dateDoc, "yyyy"));
	}
	public String getPeriodo() {
		return periodo;
	}
	public void setPeriodo(String uf) {
		String periodo = null;
		if (uf != null){
				if (uf.equals("MG") || uf.equals("SE")){
					periodo = "0"; //mensal
				}
		}
		
		this.periodo = periodo;
	}
	public String getMes() {
		return mes;
	}
	private void setMes(String mes) {
		this.mes = TextUtil.toNumeric(mes);
	}
	public String getAno() {
		return ano;
	}
	private void setAno(String ano) {
		this.ano = TextUtil.toNumeric(ano);
	}
	public String getParcela() {
		return parcela;
	}
	public void setParcela(String parcela) {
		this.parcela = parcela;
	}
	
} //Referencia