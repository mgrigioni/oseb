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

import org.adempierelbr.fci.RegFci;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Registro 0010 – Informações do estabelecimento/Contribuinte informante
 * @author Mario Grigioni, mgrigioni
 * @version $Id: R0010.java, 14/03/2013, 11:00:00, mgrigioni
 */
public class R0010 extends RegFci {
	
	private String CNPJ_CONTRIBUINTE;
	private String NOME_RAZAO_SOCIAL;
	private String INSCRICAO_ESTADUAL;
	private String ENDERECO_ESTABELECIMENTO;
	private String CEP;
	private String MUNICIPIO;
	private String UF;

	/**
	 * Constructor
	 * @param cNPJ_CONTRIBUINTE
	 * @param nOME_RAZAO_SOCIAL
	 * @param iNSCRIÇÃO_ESTADUAL
	 * @param eNDEREÇO_ESTABELECIMENTO
	 * @param cEP
	 * @param mUNICIPIO
	 * @param uF
	 */
	public R0010(String cNPJ_CONTRIBUINTE, String nOME_RAZAO_SOCIAL,
			String iNSCRICAO_ESTADUAL, String eNDERECO_ESTABELECIMENTO,
			String cEP, String mUNICIPIO, String uF) {
		super();
		CNPJ_CONTRIBUINTE = cNPJ_CONTRIBUINTE;
		NOME_RAZAO_SOCIAL = nOME_RAZAO_SOCIAL;
		INSCRICAO_ESTADUAL = iNSCRICAO_ESTADUAL;
		ENDERECO_ESTABELECIMENTO = eNDERECO_ESTABELECIMENTO;
		CEP = cEP;
		MUNICIPIO = mUNICIPIO;
		UF = uF;
	}

	/**
	 * Formata o Bloco 0 Registro 010
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
				   (REG) 
		    .append(PIPE).append(TextUtil.toNumeric(CNPJ_CONTRIBUINTE))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME_RAZAO_SOCIAL), 0, 255))
		    .append(PIPE).append(TextUtil.toNumeric(INSCRICAO_ESTADUAL))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(ENDERECO_ESTABELECIMENTO), 0, 255))
		    .append(PIPE).append(TextUtil.toNumeric(CEP))
		    .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(MUNICIPIO), 0, 255))
		    .append(PIPE).append(TextUtil.checkSize(UF, 0, 2));

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}	//	toString
	
}	//R0010