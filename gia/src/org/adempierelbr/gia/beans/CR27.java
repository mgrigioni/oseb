package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=27 – IESubstituído
 * 
 * @author Mario Grigioni
 * @version $Id: CR27.java, 17/06/2010, 15:57, mgrigioni
 */
public class CR27 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR27() {
		super();
	} // CR27
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR27