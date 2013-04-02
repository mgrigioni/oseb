/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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
package org.adempierelbr.eventoNFe.beans.evento.infevento.detevento;

import org.adempierelbr.annotation.XMLFieldProperties;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		Informações da carta de correção
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: DetCCe.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
@XStreamAlias ("detEvento")
public class DetCCe implements I_DetEvento
{
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP18")
	private String versao;
	
	@XMLFieldProperties	(minSize=5, maxSize=60, id = "HP19")
	private final String descEvento = "Carta de Correcao";
	
	@XMLFieldProperties	(minSize=15, maxSize=1000, id = "HP20")
	private String xCorrecao;
	
	@XMLFieldProperties	(id = "HP20a")
	private final String xCondUso = "A Carta de Correcao e disciplinada pelo paragrafo 1o-A do art. 7o do Convenio S/N, " +
			"de 15 de dezembro de 1970 e pode ser utilizada para regularizacao de erro ocorrido na emissao de documento fiscal, " +
			"desde que o erro nao esteja relacionado com: I - as variaveis que determinam o valor do imposto tais como: " +
			"base de calculo, aliquota, diferenca de preco, quantidade, valor da operacao ou da prestacao; " +
			"II - a correcao de dados cadastrais que implique mudanca do remetente ou do destinatario; " +
			"III - a data de emissao ou de saida.";

	public String getVersao()
	{
		return versao;
	}	//	getVersao

	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	
	public String getDescEvento()
	{
		return descEvento;
	}	//	getDescEvento

	public String getXCorrecao()
	{
		return xCorrecao;
	}	//	getXCorrecao

	public void setXCorrecao(String xCorrecao)
	{
		this.xCorrecao = xCorrecao;
	}	//	setXCorrecao

	public String getXCondUso()
	{
		return xCondUso;
	}	//	getXCondUso
	
}	//	DetCCe