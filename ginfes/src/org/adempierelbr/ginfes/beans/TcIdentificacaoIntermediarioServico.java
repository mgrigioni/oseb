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
 *  TcIdentificacaoIntermediarioServico
 *  @author Mario Grigioni
 *  @version $Id: TcIdentificacaoIntermediarioServico.java,v 1.0 05/06/2012 14:31:00 mgrigioni Exp $
 */
@XStreamAlias ("IntermediarioServico")
public class TcIdentificacaoIntermediarioServico {
	
	private String RazaoSocial;
	private TcCpfCnpj CpfCnpj;
	private String InscricaoMunicipal;
	
	/**
	 * Constructor
	 * @param razaoSocial
	 * @param cpfCnpj
	 * @param inscricaoMunicipal
	 */
	public TcIdentificacaoIntermediarioServico(String razaoSocial,
			TcCpfCnpj cpfCnpj, String inscricaoMunicipal) {
		super();
		setRazaoSocial(razaoSocial);
		setCpfCnpj(cpfCnpj);
		setInscricaoMunicipal(inscricaoMunicipal);
	}
	
	public String getRazaoSocial() {
		return RazaoSocial;
	}
	private void setRazaoSocial(String razaoSocial) {
		RazaoSocial = TextUtil.checkSize(RemoverAcentos.remover(razaoSocial), 115);;
	}
	
	public TcCpfCnpj getCpfCnpj() {
		return CpfCnpj;
	}
	private void setCpfCnpj(TcCpfCnpj cpfCnpj) {
		CpfCnpj = cpfCnpj;
	}
	
	public String getInscricaoMunicipal() {
		return InscricaoMunicipal;
	}
	private void setInscricaoMunicipal(String inscricaoMunicipal) {
		inscricaoMunicipal = TextUtil.checkSize(inscricaoMunicipal, 15);
		if (inscricaoMunicipal.isEmpty())
			inscricaoMunicipal = null;
		
		InscricaoMunicipal = inscricaoMunicipal;
	}
	
}	// TcIdentificacaoIntermediarioServico