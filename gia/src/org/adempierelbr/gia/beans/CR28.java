package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=28 – CredAcum
 * 
 * @author Mario Grigioni
 * @version $Id: CR28.java, 17/06/2010, 15:58, mgrigioni
 */
public class CR28 extends RegGIA{

	/**
	 * Constructor //TODO
	 */
	public CR28() {
		super();
	} // CR28
	
	public String toString(){
		
		String format = 
			CR;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR28