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
package org.adempierelbr.gnre.beans;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Contribuinte Destinatario
 *  @author Mario Grigioni
 *  @version $Id: ContribuinteDestinatario.java,v 1.0 05/10/2012 08:30:00 mgrigioni Exp $
 */
@XStreamAlias ("c35_idContribuinteDestinatario")
public class ContribuinteDestinatario {
	
	private String CPF;
	private String CNPJ;
	
	/**
	 * Constructor
	 * @param id (CPF ou CNPJ)
	 */
	public ContribuinteDestinatario(String id){
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCPF(id);
		else if (id.length() == 14)
			setCNPJ(id);
	}

	public String getCPF() {
		return CPF;
	}
	private void setCPF(String cPF) {
		CPF = cPF;
	}

	public String getCNPJ() {
		return CNPJ;
	}
	private void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	
} //ContribuinteDestinatario