/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2012 Mario Grigioni                                          *
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
package org.adempierelbr.ginfes.beans;

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  TcDadosServico
 *  @author Mario Grigioni
 *  @version $Id: TcDadosServico.java,v 1.0 05/06/2012 14:56:00 mgrigioni Exp $
 */
@XStreamAlias ("Servico")
public class TcDadosServico {
		
	private TcValores Valores;
	private String ItemListaServico;
	private String CodigoCnae;
	private String CodigoTributacaoMunicipio;
	private String Discriminacao;
	private String CodigoMunicipio;
	
	/**
	 * Constructor
	 * @param valores
	 * @param itemListaServico
	 * @param discriminacao
	 * @param codigoMunicipio
	 */
	public TcDadosServico(TcValores valores, String itemListaServico,
			String discriminacao, String codigoMunicipio) {
		super();
		setValores(valores);
		setItemListaServico(itemListaServico);
		setDiscriminacao(discriminacao);
		setCodigoMunicipio(codigoMunicipio);
	}
	
	public TcValores getValores() {
		return Valores;
	}
	private void setValores(TcValores valores) {
		Valores = valores;
	}
	
	public String getItemListaServico() {
		return ItemListaServico;
	}
	private void setItemListaServico(String itemListaServico) {
		ItemListaServico = TextUtil.checkSize(itemListaServico,5);
	}
	
	public String getCodigoCnae() {
		return CodigoCnae;
	}
	public void setCodigoCnae(String codigoCnae) {
		codigoCnae = TextUtil.checkSize(TextUtil.toNumeric(codigoCnae),7);
		if (codigoCnae.isEmpty())
			codigoCnae = null;
		
		CodigoCnae = codigoCnae;
	}
	
	public String getCodigoTributacaoMunicipio() {
		return CodigoTributacaoMunicipio;
	}
	public void setCodigoTributacaoMunicipio(String codigoTributacaoMunicipio) {
		codigoTributacaoMunicipio = TextUtil.checkSize(codigoTributacaoMunicipio,20);
		if (codigoTributacaoMunicipio.isEmpty())
			codigoTributacaoMunicipio = null;
		
		CodigoTributacaoMunicipio = codigoTributacaoMunicipio;
	}
	
	public String getDiscriminacao() {
		return Discriminacao;
	}
	private void setDiscriminacao(String discriminacao) {
		Discriminacao = TextUtil.checkSize(RemoverAcentos.remover(discriminacao),2000);
	}
	
	public String getCodigoMunicipio() {
		return CodigoMunicipio;
	}
	private void setCodigoMunicipio(String codigoMunicipio) {
		CodigoMunicipio = TextUtil.toNumeric(codigoMunicipio);
	}
	
}	// TcDadosServico