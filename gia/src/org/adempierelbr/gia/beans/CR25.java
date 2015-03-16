package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=25 – IEs
 * 
 * @author Mario Grigioni
 * @version $Id: CR25.java, 17/06/2010, 15:56, mgrigioni
 */
public class CR25 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR25() {
		super();
	} // CR25
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR25