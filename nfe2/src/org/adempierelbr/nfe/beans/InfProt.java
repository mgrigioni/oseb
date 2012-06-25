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

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  InfProt
 *  @author Mario Grigioni
 *  @version $Id: InfProt.java,v 1.0 22/06/2012 14:01:00 mgrigioni Exp $
 */
@XStreamAlias ("infProt")
public class InfProt {
	
	private String tpAmb;
	private String verAplic;
	private String chNFe;
	private String dhRecbto;
	private String nProt;
	private String digVal;
	private String cStat;
	private String xMotivo;
	
	/**
	 * Constructor
	 * @param tpAmb
	 * @param verAplic
	 * @param chNFe
	 * @param dhRecbto
	 * @param nProt
	 * @param digVal
	 * @param cStat
	 * @param xMotivo
	 */
	public InfProt(String tpAmb, String verAplic, String chNFe,
			Timestamp dhRecbto, String nProt, String digVal, String cStat,
			String xMotivo) {
		super();
		setTpAmb(tpAmb);
		setVerAplic(verAplic);
		setChNFe(chNFe);
		setDhRecbto(dhRecbto);
		setnProt(nProt);
		setDigVal(digVal);
		setcStat(cStat);
		setxMotivo(xMotivo);
	}
	
	public String getTpAmb() {
		return tpAmb;
	}
	public void setTpAmb(String tpAmb) {
		this.tpAmb = tpAmb;
	}
	public String getVerAplic() {
		return verAplic;
	}
	public void setVerAplic(String verAplic) {
		this.verAplic = verAplic;
	}
	public String getChNFe() {
		return chNFe;
	}
	public void setChNFe(String chNFe) {
		this.chNFe = chNFe;
	}
	public String getDhRecbto() {
		return dhRecbto;
	}
	public void setDhRecbto(Timestamp dhRecbto) {
		this.dhRecbto = NFeUtil.timeToString(dhRecbto);
	}
	public String getnProt() {
		return nProt;
	}
	public void setnProt(String nProt) {
		this.nProt = nProt;
	}
	public String getDigVal() {
		return digVal;
	}
	public void setDigVal(String digVal) {
		this.digVal = digVal;
	}
	public String getcStat() {
		return cStat;
	}
	public void setcStat(String cStat) {
		this.cStat = cStat;
	}
	public String getxMotivo() {
		return xMotivo;
	}
	public void setxMotivo(String xMotivo) {
		this.xMotivo = xMotivo;
	}
	
}	// InfProt