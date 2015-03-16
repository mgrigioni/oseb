package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=26 – IESubstituto
 * 
 * @author Mario Grigioni
 * @version $Id: CR26.java, 17/06/2010, 15:56, mgrigioni
 */
public class CR26 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR26() {
		super();
	} // CR26
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR26