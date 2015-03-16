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
package org.adempierelbr.fci.beans;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;

import org.adempierelbr.fci.RegFci;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Registro 5020: abertura dos registros de mercadoria
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R5001.java, 03/04/2013, 14:52:00, mgrigioni
 */
public class R5020 extends RegFci {
	
	private final List<String> _UDM = Arrays.asList("A","Ah","ASTM","Bq","°C","CCD",
			"cg","cm","cm2","cm3","cN","cSt","DCI","g","Gbit","GHz","h","HP",
			"HRC","Hz","ISO","IV","kbit","kcal","kg","kgf","kHz","kN","kPa",
			"kV","kVA","kvar","kW","l","m","m-","m2","m3","mbar","Mbit","μCi",
			"mg","MHz","min","mm","mN","MPa","MW","N","n°","nm","Nm","ns",
			"o-","p-","pH","s","t","UV","V","vol","W","x°","%","pç","unid");
	
	public String NOME_MERCADORIA;
	public String CODIGO_NCM;
	public String CODIGO_MERCADORIA;
	public String CODIGO_GTIN;
	public String UNIDADE_MERCADORIA;
	public BigDecimal VALOR_SAIDA_MERCADORIA_INTERESTADUAL;
	public BigDecimal VALOR_PARCELA_IMPORTADA_EXTERIOR;
	public BigDecimal CONTEUDO_IMPORTACAO_CI;
	
	/**
	 * Constructor
	 * @param nOME_MERCADORIA
	 * @param cODIGO_NCM
	 * @param cODIGO_MERCADORIA
	 * @param cODIGO_GTIN
	 * @param uNIDADE_MERCADORIA
	 * @param vALOR_SAIDA_MERCADORIA_INTERESTADUAL
	 * @param vALOR_PARCELA_IMPORTADA_EXTERIOR
	 * @param cONTEUDO_IMPORTACAO_CI
	 */
	public R5020(String nOME_MERCADORIA, String cODIGO_NCM,
			String cODIGO_MERCADORIA, String cODIGO_GTIN,
			String uNIDADE_MERCADORIA,
			BigDecimal vALOR_SAIDA_MERCADORIA_INTERESTADUAL,
			BigDecimal vALOR_PARCELA_IMPORTADA_EXTERIOR,
			BigDecimal cONTEUDO_IMPORTACAO_CI) {
		super();
		NOME_MERCADORIA = nOME_MERCADORIA;
		CODIGO_NCM = cODIGO_NCM;
		CODIGO_MERCADORIA = cODIGO_MERCADORIA;
		CODIGO_GTIN = cODIGO_GTIN;
		setUNIDADE_MERCADORIA(uNIDADE_MERCADORIA);
		VALOR_SAIDA_MERCADORIA_INTERESTADUAL = vALOR_SAIDA_MERCADORIA_INTERESTADUAL;
		VALOR_PARCELA_IMPORTADA_EXTERIOR = vALOR_PARCELA_IMPORTADA_EXTERIOR;
		CONTEUDO_IMPORTACAO_CI = cONTEUDO_IMPORTACAO_CI;
	} //R5020
	
	private void setUNIDADE_MERCADORIA(String udm){
		if (!_UDM.contains(udm))
			udm = "99";
		
		this.UNIDADE_MERCADORIA = udm;
	}

	/**
	 * Formata o Bloco 5 Registro 020
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
				   (REG)
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME_MERCADORIA), 0, 255))
	        .append(PIPE).append(TextUtil.toNumeric(CODIGO_NCM))
	        .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(CODIGO_MERCADORIA), 0, 255))
	        .append(PIPE).append(TextUtil.toNumeric(CODIGO_GTIN))
	        .append(PIPE).append(TextUtil.checkSize(UNIDADE_MERCADORIA, 0, 6))
	        .append(PIPE).append(TextUtil.toNumeric(VALOR_SAIDA_MERCADORIA_INTERESTADUAL, 2))
	        .append(PIPE).append(TextUtil.toNumeric(VALOR_PARCELA_IMPORTADA_EXTERIOR, 2))
	        .append(PIPE).append(TextUtil.toNumeric(CONTEUDO_IMPORTACAO_CI, 2));

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R5020