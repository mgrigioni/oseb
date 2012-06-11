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
 *  TcDadosPrestador
 *  @author Mario Grigioni
 *  @version $Id: TcDadosPrestador.java,v 1.0 05/06/2012 14:23:00 mgrigioni Exp $
 */
@XStreamAlias ("Prestador")
public class TcDadosPrestador {
		
	private TcIdentificacaoPrestador IdentificacaoPrestador;
	private String RazaoSocial;
	private String NomeFantasia;
	private TcEndereco Endereco;
	private TcContato Contato;
	
	/**
	 * Constructor
	 * @param identificacaoPrestador
	 * @param razaoSocial
	 * @param nomeFantasia
	 * @param endereco
	 * @param contato
	 */
	public TcDadosPrestador(TcIdentificacaoPrestador identificacaoPrestador,
			String razaoSocial, String nomeFantasia, TcEndereco endereco, TcContato contato) {
		super();
		setIdentificacaoPrestador(identificacaoPrestador);
		setRazaoSocial(razaoSocial);
		setNomeFantasia(nomeFantasia);
		setEndereco(endereco);
		setContato(contato);
	}
	
	public TcIdentificacaoPrestador getIdentificacaoPrestador() {
		return IdentificacaoPrestador;
	}
	private void setIdentificacaoPrestador(TcIdentificacaoPrestador identificacaoPrestador) {
		IdentificacaoPrestador = identificacaoPrestador;
	}
	
	public String getRazaoSocial() {
		return RazaoSocial;
	}
	private void setRazaoSocial(String razaoSocial) {		
		RazaoSocial = TextUtil.checkSize(RemoverAcentos.remover(razaoSocial), 115);;
	}
	
	public String getNomeFantasia() {
		return NomeFantasia;
	}
	private void setNomeFantasia(String nomeFantasia) {
		nomeFantasia = TextUtil.checkSize(RemoverAcentos.remover(nomeFantasia), 60);
		if (nomeFantasia.isEmpty())
			nomeFantasia = null;
		
		NomeFantasia = nomeFantasia;
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
	
}	// TcDadosPrestador