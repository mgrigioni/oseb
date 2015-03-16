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
	
	public String getTpAmb() {
		return tpAmb;
	}
	public String getVerAplic() {
		return verAplic;
	}
	public String getChNFe() {
		return chNFe;
	}
	public String getDhRecbto() {
		return dhRecbto;
	}
	public String getnProt() {
		return nProt;
	}
	public String getDigVal() {
		return digVal;
	}
	public String getcStat() {
		return cStat;
	}
	public String getxMotivo() {
		return xMotivo;
	}

}	// InfProt