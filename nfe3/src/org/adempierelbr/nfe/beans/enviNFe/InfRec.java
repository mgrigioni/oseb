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
package org.adempierelbr.nfe.beans.enviNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  InfRec
 *  @author Mario Grigioni
 *  @version $Id: InfRec.java,v 1.0 01/08/2012 09:09:00 mgrigioni Exp $
 */
@XStreamAlias ("infRec")
public class InfRec {
	
	private String nRec;
	private String tMed;
	
	public String getnRec() {
		return nRec;
	}
	public String gettMed() {
		return tMed;
	}

}	// InfRec