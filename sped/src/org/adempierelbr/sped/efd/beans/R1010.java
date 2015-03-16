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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO 1010: OBRIGATORIEDADE DE REGISTROS DO BLOCO 1
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R1010.java, 15/08/2012, 11:36:00, mgrigioni
 */
public class R1010 extends RegSped{

	private String IND_EXP;
	private String IND_CCRF;
	private String IND_COMB;
	private String IND_USINA;
	private String IND_VA;
	private String IND_EE;
	private String IND_CART;
	private String IND_FORM;
	private String IND_AER;

	/**
	 * Default Constructor 
	 * @param iND_EXP   = Reg 1100
	 * @param iND_CCRF  = Reg 1200
	 * @param iND_COMB  = Reg 1300
	 * @param iND_USINA = Reg 1390
	 * @param iND_VA    = Reg 1400
	 * @param iND_EE    = Reg 1500
	 * @param iND_CART  = Reg 1600
	 * @param iND_FORM  = Reg 1700
	 * @param iND_AER   = Reg 1800
	 */
	public R1010(boolean iND_EXP, boolean iND_CCRF, boolean iND_COMB,
			boolean iND_USINA, boolean iND_VA, boolean iND_EE, boolean iND_CART,
			boolean iND_FORM, boolean iND_AER) {
		super();
		IND_EXP = booleanToString(iND_EXP);
		IND_CCRF = booleanToString(iND_CCRF);
		IND_COMB = booleanToString(iND_COMB);
		IND_USINA = booleanToString(iND_USINA);
		IND_VA = booleanToString(iND_VA);
		IND_EE = booleanToString(iND_EE);
		IND_CART = booleanToString(iND_CART);
		IND_FORM = booleanToString(iND_FORM);
		IND_AER = booleanToString(iND_AER);
	}

	private String booleanToString(boolean value){
		if (value)
			return "S";
		else
			return "N";
	}

	/**
	 * Formata o Bloco 1 Registro 010
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(IND_EXP)
            .append(PIPE).append(IND_CCRF)
            .append(PIPE).append(IND_COMB)
            .append(PIPE).append(IND_USINA)
            .append(PIPE).append(IND_VA)
            .append(PIPE).append(IND_EE)
            .append(PIPE).append(IND_CART)
            .append(PIPE).append(IND_FORM)
            .append(PIPE).append(IND_AER)
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

} //R1010