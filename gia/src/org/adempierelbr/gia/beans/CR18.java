package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=18 – ZFM/ALC
 * 
 * @author Mario Grigioni
 * @version $Id: CR18.java, 17/06/2010, 15:34, mgrigioni
 */
public class CR18 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR18() {
		super();
	} // CR18
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR18