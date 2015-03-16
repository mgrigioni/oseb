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
package org.adempierelbr.fci.beans;

import org.adempierelbr.fci.RegFci;
import org.adempierelbr.util.TextUtil;

/**
 * Registro 9001 – Identificação do inicio do Bloco
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9001.java, 03/04/2013, 14:52:00, mgrigioni
 */
public class R9001 extends RegFci {
	
	public R9001()
	{
		super();
	} 	//R9001

	/**
	 * Formata o Bloco 9 Registro 001
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
				   (REG);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R9001