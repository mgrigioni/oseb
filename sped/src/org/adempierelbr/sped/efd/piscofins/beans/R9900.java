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
package org.adempierelbr.sped.efd.piscofins.beans;

import org.adempierelbr.sped.RegSped;

/**
 * REGISTRO 9900: REGISTROS DO ARQUIVO.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R9900.java, 07/02/2011, 14:44:00, mgrigioni
 */
public class R9900 extends RegSped implements Comparable<Object>{
	
	private String REG_BLC     = "";
	private String QTD_REG_BLC = "";

	/**
	 * Constructor
	 */
	public R9900(String REG_BLC, String QTD_REG_BLC) {
		super();
		this.REG_BLC = REG_BLC;
		this.QTD_REG_BLC = QTD_REG_BLC;
	} //R9900

	public String toString(){
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG)
            .append(PIPE).append(REG_BLC)
            .append(PIPE).append(QTD_REG_BLC)
            .append(PIPE).append(EOL);

		return format.toString();
	} //toString
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		String s1 = null, s2 = null;
		//
		if (o1 instanceof String)
			s1 = (String)o1;
		else if (o1 instanceof R9900)
			s1 = ((R9900) o1).REG_BLC;
		
		if (o2 instanceof String)
			s2 = (String)o2;
		else if (o2 instanceof R9900)
			s2 = ((R9900) o2).REG_BLC;

		if (s1 == null || s2 == null)
			return 0;
		if (s1.isEmpty() || s2.isEmpty())
			return 0;
		//		
		switch(s1.charAt(0)){
			case '1' : s1 = "ZZ"  + s1; break;
			case '9' : s1 = "ZZZ" + s1; break;
		}
		
		switch(s2.charAt(0)){
			case '1' : s2 = "ZZ"  + s2; break;
			case '9' : s2 = "ZZZ" + s2; break;
		}
		
		//
		return s1.compareTo(s2);
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
	
} //R9900