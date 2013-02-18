package org.adempierelbr.gia.beans;

import java.sql.Timestamp;

import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;

/**
 * CR=01 – Registro Mestre
 * 
 * @author Mario Grigioni
 * @version $Id: CR01.java, 16/06/2010, 14:31, mgrigioni
 */
public class CR01 extends RegGIA{

	private final String TIPODOCTO      = "01"; //01 front-end NOVA GIA
	private final String VERSAOFRONTEND = "0000"; //Deve ser igual a ZEROS
	private final String VERSAOPREF     = "0210"; //Versão Nova Gia 0800
	private final String Q5             = "0001"; //quantidade de registros-filhos  05 
	
	private String DATAGERACAO = ""; //AAAAMMDD
	private String HORAGERACAO = ""; //HHMMSS
	
	/**
	 * Constructor
	 */
	public CR01() {
		super();
	} // CR01
	
	public String toString(){
		
		Timestamp now = new Timestamp(System.currentTimeMillis());
		DATAGERACAO = TextUtil.timeToString(now);
		HORAGERACAO = TextUtil.timeToString(now, "HHmmss");
		
		String format = 
			CR
			+ TIPODOCTO 
			+ DATAGERACAO
			+ HORAGERACAO
			+ VERSAOFRONTEND
			+ VERSAOPREF
			+ Q5;
		
		return TextUtil.removeEOL(format) + EOL;
	}

} //CR01