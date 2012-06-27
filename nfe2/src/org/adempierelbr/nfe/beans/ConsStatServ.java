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
 *  ConsStatServ
 *  @author Mario Grigioni
 *  @version $Id: ConsStatServ.java,v 1.0 25/06/2012 15:29:00 mgrigioni Exp $
 */
@XStreamAlias ("consStatServ")
public class ConsStatServ {

	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private String cUF;
	private final String xServ = "STATUS";
	
	/**
	 * @param versao
	 * @param tpAmb
	 * @param cUF
	 */
	public ConsStatServ(String versao, String tpAmb, String cUF) {
		super();
		setVersao(versao);
		setTpAmb(tpAmb);
		setcUF(cUF);
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
	public String getcUF() {
		return cUF;
	}
	public void setcUF(String cUF) {
		this.cUF = cUF;
	}
	public String getXmlns() {
		return xmlns;
	}
	public String getxServ() {
		return xServ;
	}
	
}	// ConsStatServ