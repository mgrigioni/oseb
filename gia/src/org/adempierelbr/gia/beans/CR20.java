package org.adempierelbr.gia.beans;

import java.math.BigDecimal;

import org.adempierelbr.gia.CounterGIA;
import org.adempierelbr.gia.RegGIA;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * CR=20 – Ocorrências
 * 
 * @author Mario Grigioni
 * @version $Id: CR20.java, 17/06/2010, 15:36, mgrigioni
 */
public class CR20 extends RegGIA implements Comparable<Object>{

	private String CODSUBITEM = "";
	private String PROPOUST   = "0";
	private String FLEGAL     = "";
	private String OCORRENCIA = "";
	
	private BigDecimal VALOR = Env.ZERO;
	
	private int Q25 = 0;
	private int Q26 = 0;
	private int Q27 = 0;
	private int Q28 = 0;
	
	/**
	 * Constructor
	 */
	public CR20(String CODSUBITEM, BigDecimal VALOR, String PROPOUST, String FLEGAL, String OCORRENCIA) {
		super();
		this.CODSUBITEM = CODSUBITEM;
		this.VALOR = VALOR;
		this.PROPOUST   = PROPOUST;
		
		if (CODSUBITEM.endsWith("99")){ //APENAS QUANDO COD = XXX99	
			this.FLEGAL = FLEGAL;
			this.OCORRENCIA = OCORRENCIA;
		}
		
	} // CR20
	
	public String toString(){
		
		Q25 = CounterGIA.getCounter("25");
		Q26 = CounterGIA.getCounter("26");
		Q27 = CounterGIA.getCounter("27");
		Q28 = CounterGIA.getCounter("28");
		
		String format = 
			CR
			+ TextUtil.lPad(CODSUBITEM, 5)
			+ TextUtil.lPad(VALOR, 15)
			+ PROPOUST
			+ TextUtil.rPad(TextUtil.removeEOL(FLEGAL), 100)
			+ TextUtil.rPad(TextUtil.removeEOL(OCORRENCIA), 300)
			+ TextUtil.lPad(Q25,4)
			+ TextUtil.lPad(Q26,4)
			+ TextUtil.lPad(Q27,4)
			+ TextUtil.lPad(Q28,4);
		
		return format + EOL;
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
		else if (o1 instanceof CR20
				&& o2 instanceof CR20)
		{
			CR20 e1 = (CR20) o1;
			CR20 e2 = (CR20) o2;
			//
			if (e1.CODSUBITEM == null)						//	Depois
				return 1;
			else if (e2.CODSUBITEM == null)					// 	Antes
				return -1;
			else
				return e1.CODSUBITEM.compareTo(e2.CODSUBITEM);	//	Comparar
		}
		else
			return 0;									//	Não é EstadoBR
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}

} //CR20