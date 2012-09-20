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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcEndereco
 *  @author Mario Grigioni
 *  @version $Id: TcEndereco.java,v 1.0 04/06/2012 15:39:00 mgrigioni Exp $
 */
@XStreamAlias ("Endereco")
public class TcEndereco {

	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcEndereco.class);
	
	private String Endereco;
	private String Numero;
	private String Complemento;
	private String Bairro;
	private String CodigoMunicipio;
	private String Uf;
	private String Cep;
	
	/**
	 * Constructor
	 * @param endereco
	 * @param numero
	 * @param bairro
	 * @param codigoMunicipio
	 * @param uf
	 * @param cep
	 */
	public TcEndereco(String endereco, String numero, String bairro,
			String codigoMunicipio, String uf, String cep) {
		super();
		setEndereco(endereco);
		setNumero(numero);
		setBairro(bairro);
		setCodigoMunicipio(codigoMunicipio);
		setUf(uf);
		setCep(cep);
	}
	
	public String getEndereco() {
		return Endereco;
	}
	private void setEndereco(String endereco) {
		endereco = TextUtil.checkSize(RemoverAcentos.remover(endereco),125);
		if (endereco.isEmpty())
			endereco = null;
		
		Endereco = endereco;
	}
	
	public String getNumero() {
		return Numero;
	}
	private void setNumero(String numero) {
		Numero = numero;
	}
	
	public String getComplemento() {
		return Complemento;
	}
	public void setComplemento(String complemento) {
		complemento =TextUtil.checkSize(RemoverAcentos.remover(complemento),60);
		if (complemento.isEmpty())
			complemento = null;
		
		Complemento = complemento;
	}
	
	public String getBairro() {
		return Bairro;
	}
	private void setBairro(String bairro) {
		bairro =TextUtil.checkSize(RemoverAcentos.remover(bairro),60);
		if (bairro.isEmpty())
			bairro = null;
		
		Bairro = bairro;
	}
	
	public String getCodigoMunicipio() {
		return CodigoMunicipio;
	}
	private void setCodigoMunicipio(String codigoMunicipio) {
		CodigoMunicipio = TextUtil.toNumeric(codigoMunicipio);
	}
	
	public String getUf() {
		return Uf;
	}
	private void setUf(String uf) {
		if (uf == null || uf.length() != 2){
			throw new AdempiereException ("(UF length <> 2) - " + uf);
		}
		
		Uf = uf.toUpperCase();
	}
	
	public String getCep() {
		return Cep;
	}
	private void setCep(String cep) {
		cep = TextUtil.checkSize(TextUtil.toNumeric(cep), 8);
		if (cep.length() != 8){
			throw new AdempiereException ("(CEP inválido) - " + cep);
		}
		
		Cep = cep;
	}
	
}	// TcEndereco