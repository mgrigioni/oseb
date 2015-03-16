package org.adempierelbr.gia;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

/**
 * Interface de Registro do Projeto GIA
 * 
 * Uso obrigatório a partir de 01/junho/2008. 
 * Para uso exclusivo de desenvolvedores de sistemas. 
 * (versão 0208a - 15/05/2008) 
 * 
 * @author Mario Grigioni
 * @version $Id: RegGIA.java, 16/06/2010, 14:29, mgrigioni
 */
public abstract class RegGIA {
	
	/**	Logger			*/
	public CLogger log = CLogger.getCLogger(this.getClass());
	
	//String EOL
	public static final String EOL  = TextUtil.EOL_WIN32;
	
	protected String CR = getClassName();
	
	//Método para retornar registro formatado
	public abstract String toString();
	
	/**
	 * Constructor
	 */
	public RegGIA() {
		addCounter(getCR());
	}
	
	public RegGIA(String CR){
		addCounter(CR);
	}
	
	//Método para retornar o nome do registro
	public String getCR(){
		return CR;
	}
		
	//Método para adicionar registro ao contador
	public void addCounter(String CR){
		CounterGIA.register(CR);
	}
	
	//Método para subtrair registro ao contador
	public void subtractCounter(String CR){
		CounterGIA.register(CR);
	}
	
	//Método para subtrair registro ao contador
	public void subtractCounter(){
		CounterGIA.register(getCR());
	}
		
	//Método para pegar o className e retornar o registro
	private String getClassName() {
		String FQClassName = this.getClass().getName();
		int firstChar;
		firstChar = FQClassName.lastIndexOf ('.') + 1;
		if ( firstChar > 0 ) {
			FQClassName = FQClassName.substring ( firstChar );
		}
		
		return FQClassName.substring(2);
	}
	
} //RegGIA