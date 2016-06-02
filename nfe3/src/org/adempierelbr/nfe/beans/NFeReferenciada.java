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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo de informação das NF-e referenciadas
 *  
 *  @author Mario Grigioni
 *  @version $Id: NFeReferenciada.java,v 2.0 07/08/2012 09:31:00 mgrigioni Exp $
 */
@XStreamAlias ("NFref")
public class NFeReferenciada {

	private String refNFe ;
	private NFReferenciada refNF;

	public NFeReferenciada(String refNFe){
		setRefNFe(refNFe);
	}
	
	public NFeReferenciada(NFReferenciada refNF){
		setRefNF(refNF);
	}
	
	public String getRefNFe() {
		return refNFe;
	}

	public void setRefNFe(String refNFe) {
		refNFe = TextUtil.toNumeric(refNFe);
		if (refNFe.length() != 44)
			throw new AdempiereException("refNFe = " + refNFe);
		
		this.refNFe = refNFe;
	}

	public NFReferenciada getRefNF() {
		return refNF;
	}

	public void setRefNF(NFReferenciada refNF) {
		this.refNF = refNF;
	}

} //NFeReferenciada