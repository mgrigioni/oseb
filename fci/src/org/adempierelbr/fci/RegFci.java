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
package org.adempierelbr.fci;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 *  Sistema FCI - Ficha de Controle de Importação
 *
 *	@author Mario Grigioni
 *	@version $Id: RegFci.java, v1.0 14/03/2013 10:54:00 mgrigioni
 */
public abstract class RegFci {
	
	/**	Logger			*/
	public CLogger log = CLogger.getCLogger(this.getClass());
	
	//String PIPE
	public static final String PIPE = "|";
	
	//String EOL
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	protected String REG = getClassName();
		
	//Método para retornar registro formatado
	//Todo registro do SPED deve iniciar com PIPE e terminar com PIPE
	public abstract String toString();
	
	/**
	 * Constructor
	 */
	public RegFci() {
		addCounter();
	}

	//Método para retornar o nome do registro
	public String getReg(){
		return REG;
	}
	
	//Método para adicionar registro ao contador
	public void addCounter(){
		CounterFci.register(getReg());
	}
	
	//Método para subtrair registro ao contador
	public void subtractCounter(){
		CounterFci.unregister(getReg());
	}
	
	//Método para pegar o className e retornar o registro
	private String getClassName() {
		String FQClassName = this.getClass().getName();
		int firstChar;
		firstChar = FQClassName.lastIndexOf ('.') + 1;
		if ( firstChar > 0 ) {
			FQClassName = FQClassName.substring ( firstChar );
		}
		
		return FQClassName.substring(1);
	}
	
} //RegFci