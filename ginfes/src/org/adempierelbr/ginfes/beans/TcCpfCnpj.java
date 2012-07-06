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
package org.adempierelbr.ginfes.beans;

import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  TcCpfCnpj  
 *  @author Mario Grigioni
 *  @version $Id: TcCpfCnpj.java,v 1.0 30/05/2012 16:29:00 mgrigioni Exp $
 */
@XStreamAlias ("CpfCnpj")
public class TcCpfCnpj {

	private String Cpf;
	private String Cnpj;
	
	/**
	 * Constructor
	 * @param id (CPF ou CNPJ)
	 */
	public TcCpfCnpj(String id){
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCpf(id);
		else if (id.length() == 14)
			setCnpj(id);
	}
	
	public String getCpf() {
		return Cpf;
	}

	public void setCpf(String cpf) {
		Cpf = cpf;
	}

	public String getCnpj() {
		return Cnpj;
	}

	public void setCnpj(String cnpj) {
		Cnpj = cnpj;
	}
	
}	// TcCpfCnpj