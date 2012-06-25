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
 *  ProtNFe
 *  @author Mario Grigioni
 *  @version $Id: ProtNFe.java,v 1.0 22/06/2012 14:08:00 mgrigioni Exp $
 */
@XStreamAlias ("protNFe")
public class ProtNFe {

	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	@XStreamAsAttribute
	private String versao;
	
	private InfProt infProt;
	
	/**
	 * @param versao
	 * @param infProt
	 */
	public ProtNFe(String versao, InfProt infProt) {
		super();
		setVersao(versao);
		setInfProt(infProt);
	}
	
	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public InfProt getInfProt() {
		return infProt;
	}
	public void setInfProt(InfProt infProt) {
		this.infProt = infProt;
	}
	public String getXmlns() {
		return xmlns;
	}

}	// ProtNFe