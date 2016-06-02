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

import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo de informação das NF referenciadas
 *  
 *  @author Mario Grigioni
 *  @version $Id: NFReferenciada.java,v 2.0 07/08/2012 09:31:00 mgrigioni Exp $
 */
@XStreamAlias ("refNF")
public class NFReferenciada {

	private String cUF ;
	private String AAMM;
	private String CNPJ;
	private String mod = "01";
	private String serie;
	private String nNF;
	
	
	public NFReferenciada(String cUF, Timestamp aAMM, String cNPJ,
			String serie, String nNF) {
		super();
		this.cUF = cUF;
		setAAMM(aAMM);
		setCNPJ(cNPJ);
		setSerie(serie);
		this.nNF = nNF;
	}
	public String getcUF() {
		return cUF;
	}
	public void setcUF(String cUF) {
		this.cUF = cUF;
	}
	public String getAAMM() {
		return AAMM;
	}
	public void setAAMM(Timestamp aAMM) {
		AAMM = TextUtil.timeToString(aAMM, "yyMM");
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = TextUtil.toNumeric(cNPJ);
	}
	public String getMod() {
		return mod;
	}
	public void setMod(String mod) {
		this.mod = mod;
	}
	public String getSerie() {
		return serie;
	}
	public void setSerie(String serie) {
		if (serie == null || serie.isEmpty())
			serie = "0";
		
		this.serie = serie;
	}
	public String getnNF() {
		return nNF;
	}
	public void setnNF(String nNF) {
		this.nNF = nNF;
	}

} //NFReferenciada