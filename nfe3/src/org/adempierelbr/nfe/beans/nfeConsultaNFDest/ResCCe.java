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
package org.adempierelbr.nfe.beans.nfeConsultaNFDest;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  ResCCe
 *  @author Mario Grigioni
 *  @version $Id: ResCCe.java,v 1.0 27/08/2012 10:10:00 mgrigioni Exp $
 */
@XStreamAlias ("resCCe")
public class ResCCe {
	
	private String NSU;
	private String chNFe;
	private String dhEvento;
	private String tpEvento;
	private String nSeqEvento;
	private String descEvento;
	private String xCorrecao;
	private String tpNF;
	private String dhRecbto;
	
	public String getNSU() {
		return NSU;
	}
	public String getChNFe() {
		return chNFe;
	}
	public String getDhEvento() {
		return dhEvento;
	}
	public String getTpEvento() {
		return tpEvento;
	}
	public String getnSeqEvento() {
		return nSeqEvento;
	}
	public String getDescEvento() {
		return descEvento;
	}
	public String getxCorrecao() {
		return xCorrecao;
	}
	public String getTpNF() {
		return tpNF;
	}
	public String getDhRecbto() {
		return dhRecbto;
	}
	public void setNSU(String nSU) {
		NSU = nSU;
	}
	public void setChNFe(String chNFe) {
		this.chNFe = chNFe;
	}
	public void setDhEvento(String dhEvento) {
		this.dhEvento = dhEvento;
	}
	public void setTpEvento(String tpEvento) {
		this.tpEvento = tpEvento;
	}
	public void setnSeqEvento(String nSeqEvento) {
		this.nSeqEvento = nSeqEvento;
	}
	public void setDescEvento(String descEvento) {
		this.descEvento = descEvento;
	}
	public void setxCorrecao(String xCorrecao) {
		this.xCorrecao = xCorrecao;
	}
	public void setTpNF(String tpNF) {
		this.tpNF = tpNF;
	}
	public void setDhRecbto(String dhRecbto) {
		this.dhRecbto = dhRecbto;
	}
	
}	// ResCCe