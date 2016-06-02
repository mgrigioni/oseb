package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=31 – Registro de Exportação
 * 
 * @author Mario Grigioni
 * @version $Id: CR31.java, 17/06/2010, 16:00, mgrigioni
 */
public class CR31 extends RegGIA implements Comparable<Object>{

	private String RE = "";
	
	/**
	 * Constructor //TODO
	 */
	public CR31(String RE) {
		super();
		this.RE = RE;
	} // CR31
	
	public String toString(){
		
		String format = 
			CR 
			+ TextUtil.lPad(TextUtil.toNumeric(RE), 15);
		
		return TextUtil.removeEOL(format) + EOL;
	}
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof CR31
				&& o2 instanceof CR31)
		{
			CR31 e1 = (CR31) o1;
			CR31 e2 = (CR31) o2;
			//
			if (e1.RE == null)						//	Depois
				return 1;
			else if (e2.RE == null)					// 	Antes
				return -1;
			else
				return e1.RE.compareTo(e2.RE);	//	Comparar
		}
		else
			return 0;									//
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}

} //CR31