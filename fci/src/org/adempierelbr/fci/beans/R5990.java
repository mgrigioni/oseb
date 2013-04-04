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

import org.adempierelbr.fci.CounterFci;
import org.adempierelbr.fci.RegFci;
import org.adempierelbr.util.TextUtil;

/**
 * Registro 5990 – Finalização do Bloco 5
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R5990.java, 14/03/2013, 11:11:00, mgrigioni
 */
public class R5990 extends RegFci {
	
	private String QUANTIDADE_LINHAS = "";

	public R5990()
	{
		super();
	} 	//R5990

	/**
	 * Formata o Bloco 5 Registro 990
	 * 
	 * @return
	 */
	public String toString() {
		
		QUANTIDADE_LINHAS = "" + CounterFci.getBlockCounter(REG);
		
		StringBuilder format = new StringBuilder
				   (REG) 
		    .append(PIPE).append(QUANTIDADE_LINHAS);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R5990