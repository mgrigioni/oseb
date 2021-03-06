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
package org.adempierelbr.nfe.beans.retRecepcao;

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  ConsReciNFe
 *  @author Mario Grigioni
 *  @version $Id: ConsReciNFe.java,v 1.0 26/06/2012 15:10:00 mgrigioni Exp $
 */
@XStreamAlias ("consReciNFe")
public class ConsReciNFe {

	@XStreamAsAttribute
	public final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private String nRec;
	
	/**
	 * @param versao
	 * @param tpAmb
	 * @param nRec
	 */
	public ConsReciNFe(String versao, String tpAmb, String nRec) {
		super();
		setVersao(versao);
		setTpAmb(tpAmb);
		setnRec(nRec);
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
	public String getnRec() {
		return nRec;
	}
	public void setnRec(String nRec) {
		this.nRec = nRec;
	}
	public String getXmlns() {
		return xmlns;
	}
	
}	// ConsReciNFe