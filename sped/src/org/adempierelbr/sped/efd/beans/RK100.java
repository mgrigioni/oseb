/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
package org.adempierelbr.sped.efd.beans;

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO K100: PERÍODO DE APURAÇÃO DO ICMS/IPI
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RK100.java, 17/11/2015, 16:43:00, mgrigioni
 */
public class RK100 extends RegSped {
	
	private Timestamp DT_INI;
	private Timestamp DT_FIN;

	/**
	 * Constructor
	 * @param DT_INI
	 * @param DT_FIN
	 */
	public RK100(Timestamp DT_INI, Timestamp DT_FIN)
	{
		super();
		this.DT_INI = DT_INI;
		this.DT_FIN = DT_FIN;
	}	// RK100

	/**
	 * Formata o Bloco K Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_INI, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.timeToString(DT_FIN, "ddMMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RK100