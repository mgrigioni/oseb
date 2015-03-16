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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Registro 0000 - Identificação do contribuinte
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0000.java, 14/03/2013, 10:59:00, mgrigioni
 */
public class R0000 extends RegFci {
	
	private String CNPJ_CONTRIBUINTE;
	private String NOME_CONTRIBUINTE;
	private final String VERSAO_LEIAUTE = "1.0";

	public R0000(String CNPJ_CONTRIBUINTE, String NOME_CONTRIBUINTE)
	{
		super();
		this.CNPJ_CONTRIBUINTE 	= CNPJ_CONTRIBUINTE;
		this.NOME_CONTRIBUINTE 	= NOME_CONTRIBUINTE;
	} 	//R0000

	/**
	 * Formata o Bloco 0 Registro 000
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
				   (REG)
		    .append(PIPE).append(TextUtil.toNumeric(CNPJ_CONTRIBUINTE))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME_CONTRIBUINTE), 0, 255))
		    .append(PIPE).append(VERSAO_LEIAUTE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R0000