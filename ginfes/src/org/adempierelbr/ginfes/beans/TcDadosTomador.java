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
 *  TcDadosTomador
 *  @author Mario Grigioni
 *  @version $Id: TcDadosTomador.java,v 1.0 05/06/2012 14:23:00 mgrigioni Exp $
 */
@XStreamAlias ("Tomador")
public class TcDadosTomador {
		
	private TcIdentificacaoTomador IdentificacaoTomador;
	private String RazaoSocial;
	private TcEndereco Endereco;
	private TcContato Contato;
	
	/**
	 * Constructor
	 * @param identificacaoTomador
	 * @param razaoSocial
	 * @param endereco
	 * @param contato
	 */
	public TcDadosTomador(TcIdentificacaoTomador identificacaoTomador,
			String razaoSocial, TcEndereco endereco, TcContato contato) {
		super();
		setIdentificacaoTomador(identificacaoTomador);
		setRazaoSocial(razaoSocial);
		setEndereco(endereco);
		setContato(contato);
	}
	
	public TcIdentificacaoTomador getIdentificacaoTomador() {
		return IdentificacaoTomador;
	}
	private void setIdentificacaoTomador(TcIdentificacaoTomador identificacaoTomador) {
		IdentificacaoTomador = identificacaoTomador;
	}
	
	public String getRazaoSocial() {
		return RazaoSocial;
	}
	private void setRazaoSocial(String razaoSocial) {
		razaoSocial = TextUtil.checkSize(RemoverAcentos.remover(razaoSocial), 115);
		if (razaoSocial.isEmpty())
			razaoSocial = null;
		
		RazaoSocial = razaoSocial;
	}
	
	public TcEndereco getEndereco() {
		return Endereco;
	}
	private void setEndereco(TcEndereco endereco) {
		Endereco = endereco;
	}
	
	public TcContato getContato() {
		return Contato;
	}
	private void setContato(TcContato contato) {
		Contato = contato;
	}
	
}	// TcDadosTomador