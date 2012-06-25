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

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  ConsCad
 *  @author Mario Grigioni
 *  @version $Id: ConsCad.java,v 1.0 25/06/2012 15:37:00 mgrigioni Exp $
 */
@XStreamAlias ("consCad")
public class ConsCad {

	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	@XStreamAsAttribute
	private String versao;
	
	public InfCons infCons;

	/**
	 * @param versao
	 * @param uf
	 * @param id (CNPJ ou CPF)
	 */
	public ConsCad(String versao, String uf, String id) {
		super();
		setVersao(versao);
		setInfCons(new InfCons(uf,id));
	}

	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public InfCons getInfCons() {
		return infCons;
	}
	public void setInfCons(InfCons infCons) {
		this.infCons = infCons;
	}
	public String getXmlns() {
		return xmlns;
	}
	
}	// ConsCad

@XStreamAlias ("infCons")
class InfCons{
	
	public final String xServ = "CONS-CAD";
	public String UF;
	public String IE;
	public String CNPJ;
	public String CPF;
	
	/**
	 * @param uf
	 * @param id (CNPJ ou CPF)
	 */
	public InfCons(String uF, String id) {
		super();
		setUF(uF);
		
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCPF(id);
		else if (id.length() == 14)
			setCNPJ(id);
	}
	
	public String getUF() {
		return UF;
	}
	public void setUF(String uF) {
		UF = uF;
	}
	public String getIE() {
		return IE;
	}
	public void setIE(String iE) {
		IE = iE;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	public String getCPF() {
		return CPF;
	}
	public void setCPF(String cPF) {
		CPF = cPF;
	}
	public String getxServ() {
		return xServ;
	}
	
} // InfCons