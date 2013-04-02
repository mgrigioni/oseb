/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2013 Mario Grigioni                                          *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.fci;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;

import org.compiere.util.CLogger;

/**
 *  Counter FCI
 *
 *	@author Mario Grigioni
 *	@version $Id: CounterFci.java, v1.0 14/03/2013 10:52:00 mgrigioni
 */
public class CounterFci
{
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(CounterFci.class);
	
	/**	Contador de Registros	*/
	private static Map<String, Integer> regs = new HashMap<String, Integer>();

	//Limpa o contador de registros
	public static void clear(){
		regs = new HashMap<String, Integer>();
	}
	
	/**
	 * 	Adiciona o registro no contador
	 * 
	 * @param regName
	 */
	public static void register (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count+1);
		}
		else
			regs.put(regName, 1);
	}	//	register
	
	/**
	 * 	Remove o registro no contador
	 * 
	 * @param regName
	 */
	public static void unregister (String regName)
	{
		if (regs.containsKey(regName))
		{
			Integer count = regs.get(regName);
			regs.remove(regName);
			regs.put(regName, count-1);
		}
	}	//	unregister
		
	/**
	 * Retorna todos os registros do arquivo
	 * @return String[] registros
	 */
	public static String[] getRegsFci(){
		
		ArrayList<String> list = new ArrayList<String>(); 
		Object[] keys = regs.keySet().toArray();
		Arrays.sort(keys, FCIComparator.get());
		//
		for (Object key : keys)
		{
			if (key instanceof String)
				list.add((String)key);
		}
		
		return list.toArray(new String[list.size()]);
	} // getRegsFci
	
	/**
	 * 	Retorna o contador do registro especificado
	 * 	@return int
	 */
	public static int getCounter (String regName)
	{
		if (regs.containsKey(regName)){
			return regs.get(regName);
		}
		else
			log.log(Level.WARNING, "Registro não encontrado: " + regName);
			
		return 0;
	}	//	getCounter
			
	/**
	 * 	Retorna o contador do bloco especificado
	 * 	@return int
	 */
	public static int getBlockCounter (String bloco) {
		
		if (bloco == null || bloco.isEmpty()){
			log.log(Level.WARNING, "Bloco inválido: " + bloco);
			return 0;
		}
		
		if (bloco.length() > 1)
			bloco = bloco.substring(0, 1); //SE PASSAR O REGISTRO, RETORNA O CONTADOR DO BLOCO
		
		int counter = 0;
		Object[] keys = regs.keySet().toArray();
		//
		for (Object key : keys)
		{
			if (bloco == null || 
					(key instanceof String && ((String) key).charAt(0) == bloco.charAt(0)))
				counter += regs.get(key);
		}
		//
		return counter;
	}	//	getBlockCounter
	
	/**
	 * 	Retorna o contador total do arquivo
	 * 	@return int
	 */
	public static long getTotalCounter ()
	{
		int counter = 0;
		
		String[] regs = CounterFci.getRegsFci();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterFci.getCounter(reg);
		
			counter += qtd;
		}
		
		return counter;
	} // getTotalCounter
	
}	// CounterFci

class FCIComparator implements Comparator<Object>
{
	/**
	 * 	Comparator para ordenar os Arrays
	 */
	public int compare (Object o1, Object o2)
	{
		String s1 = null, s2 = null;
		//
		if (o1 instanceof String)
			s1 = (String)o1;
		else if (o1 instanceof RegFci)
			s1 = ((RegFci) o1).getReg();
		
		if (o2 instanceof String)
			s2 = (String)o2;
		else if (o2 instanceof RegFci)
			s2 = ((RegFci) o2).getReg();

		if (s1 == null || s2 == null)
			return 0;
		if (s1.isEmpty() || s2.isEmpty())
			return 0;
		//
		return s1.compareTo(s2);
	}	//	compare

	/**
	 * 	Get new Comparator
	 *
	 * 	@return FCIComparator
	 */
	static FCIComparator get ()
	{
		return new FCIComparator ();
	}	//	get	
	
}