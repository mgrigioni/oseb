/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2013 Mario Grigioni                                          *
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
package org.adempierelbr.nfe.beans.downloadNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  RetNFe
 *  @author Mario Grigioni
 *  @version $Id: RetNFe.java,v 1.0 24/04/2013 10:22:00 mgrigioni Exp $
 */
@XStreamAlias ("retNFe")
public class RetNFe {
	
	private String chNFe;
	private String cStat;
	private String xMotivo;
	private byte[] procNFeZip;
	
	public String getChNFe() {
		return chNFe;
	}
	public String getcStat() {
		return cStat;
	}
	public String getxMotivo() {
		return xMotivo;
	}
	public byte[] getProcNFeZip() {
		return procNFeZip;
	}

}	// RetNFe