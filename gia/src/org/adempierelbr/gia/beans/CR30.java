package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=30 – DIPAM-B
 * 
 * @author Mario Grigioni
 * @version $Id: CR30.java, 17/06/2010, 15:59, mgrigioni
 */
public class CR30 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR30() {
		super();
	} // CR30
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR30