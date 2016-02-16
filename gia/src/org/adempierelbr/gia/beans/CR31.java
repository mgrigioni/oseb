package org.adempierelbr.gia.beans;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=31 – Registro de Exportação
 * 
 * @author Mario Grigioni
 * @version $Id: CR31.java, 17/06/2010, 16:00, mgrigioni
 */
public class CR31 extends RegGIA{

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

} //CR31