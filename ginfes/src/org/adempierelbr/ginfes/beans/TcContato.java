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
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcContato
 *  @author Mario Grigioni
 *  @version $Id: TcContato.java,v 1.0 04/06/2012 15:51:00 mgrigioni Exp $
 */
@XStreamAlias ("Contato")
public class TcContato {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcContato.class);
	
	private String Telefone;
	private String Email;
	
	/**
	 * Constructor
	 * @param telefone
	 * @param email
	 */
	public TcContato(String telefone, String email) {
		super();
		setTelefone(telefone);
		setEmail(email);
	}
	
	public String getTelefone() {
		return Telefone;
	}
	private void setTelefone(String telefone) {
		telefone = TextUtil.checkSize(TextUtil.toNumeric(telefone),11);
		if (telefone.isEmpty())
			telefone = null;
		
		Telefone = telefone;
	}
	
	public String getEmail() {
		return Email;
	}
	private void setEmail(String email) {
		if (email.indexOf('@') == -1){
			log.warning("(Email inválido) - " + email);
			return;
		}
		
		email = TextUtil.checkSize(email, 80);
		if (email.isEmpty())
			email = null;
		
		Email = email;
	}

}	// TcContato