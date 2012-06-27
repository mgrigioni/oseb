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

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  CancNFe
 *  @author Mario Grigioni
 *  @version $Id: CancNFe.java,v 1.0 26/06/2012 10:27:00 mgrigioni Exp $
 */
@XStreamAlias ("cancNFe")
public class CancNFe {

	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	@XStreamAsAttribute
	private String versao;
	
	public InfCanc infCanc;

	/**
	 * @param versao
	 * @param uf
	 * @param id (CNPJ ou CPF)
	 */
	public CancNFe(String versao, String tpAmb, String chNFe, String nProt, String xJust) {
		super();
		setVersao(versao);
		setInfCanc(new InfCanc(tpAmb,chNFe,nProt,xJust));
	}

	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public InfCanc getInfCanc() {
		return infCanc;
	}
	public void setInfCanc(InfCanc infCanc) {
		this.infCanc = infCanc;
	}
	public String getXmlns() {
		return xmlns;
	}
	
}	// CancNFe

@XStreamAlias ("infCanc")
class InfCanc{
	
	@XStreamAsAttribute
	public String Id;

	public String tpAmb;
	public final String xServ = "CANCELAR";
	public String chNFe;
	public String nProt;
	public String xJust;
	
	/**
	 * @param tpAmb
	 * @param chNFe
	 * @param nProt
	 * @param xJust
	 */
	public InfCanc(String tpAmb, String chNFe, String nProt, String xJust) {
		super();
		setId("ID" + chNFe);
		setTpAmb(tpAmb);
		setChNFe(chNFe);
		setnProt(nProt);
		setxJust(xJust);
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		this.Id = id;
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
	public String getnProt() {
		return nProt;
	}
	public void setnProt(String nProt) {
		this.nProt = nProt;
	}
	public String getxJust() {
		return xJust;
	}
	public void setxJust(String xJust) {
		this.xJust = xJust;
	}
	public String getxServ() {
		return xServ;
	}
	
} // InfCanc