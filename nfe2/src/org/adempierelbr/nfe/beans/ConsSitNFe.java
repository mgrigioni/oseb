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

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  ConsSitNFe
 *  @author Mario Grigioni
 *  @version $Id: ConsSitNFe.java,v 1.0 25/06/2012 15:15:00 mgrigioni Exp $
 */
@XStreamAlias ("consSitNFe")
public class ConsSitNFe {

	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private final String xServ = "CONSULTAR";
	private String chNFe;
	
	/**
	 * @param versao
	 * @param tpAmb
	 * @param chNFe
	 */
	public ConsSitNFe(String versao, String tpAmb, String chNFe) {
		super();
		setVersao(versao);
		setTpAmb(tpAmb);
		setChNFe(chNFe);
	}
	
	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public String getTpAmb() {
		return tpAmb;
	}
	public void setTpAmb(String tpAmb) {
		this.tpAmb = tpAmb;
	}
	public String getChNFe() {
		return chNFe;
	}
	public void setChNFe(String chNFe) {
		this.chNFe = chNFe;
	}
	public String getXmlns() {
		return xmlns;
	}
	public String getxServ() {
		return xServ;
	}
	
}	// ConsSitNFe