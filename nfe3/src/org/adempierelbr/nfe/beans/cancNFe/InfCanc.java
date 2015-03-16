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
package org.adempierelbr.nfe.beans.cancNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  InfCanc
 *  @author Mario Grigioni
 *  @version $Id: InfCanc.java,v 1.0 26/06/2012 10:27:00 mgrigioni Exp $
 */
@XStreamAlias ("infCanc")
public class InfCanc{
	
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