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
package org.adempierelbr.nfe.beans.retCancNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  InfCanc
 *  @author Mario Grigioni
 *  @version $Id: InfCanc.java,v 1.0 05/07/2012 11:50:00 mgrigioni Exp $
 */
@XStreamAlias ("infCanc")
public class InfCanc{
	
	@XStreamAsAttribute
	public String Id;

	public String tpAmb;
	public String verAplic;
	public String cStat;
	public String xMotivo;
	public String cUF;
	public String chNFe;
	public String dhRecbto = "";
	public String nProt;
	public String Signature;
	
	public String getId() {
		return Id;
	}
	public String getTpAmb() {
		return tpAmb;
	}
	public String getVerAplic() {
		return verAplic;
	}
	public String getcStat() {
		return cStat;
	}
	public String getxMotivo() {
		return xMotivo;
	}
	public String getcUF() {
		return cUF;
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
	public String getSignature() {
		return Signature;
	}

} // InfCanc