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
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcIdentificacaoPrestador
 *  @author Mario Grigioni
 *  @version $Id: TcIdentificacaoPrestador.java,v 1.0 05/06/2012 14:06:00 mgrigioni Exp $
 */
@XStreamAlias ("Prestador")
public class TcIdentificacaoPrestador {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcIdentificacaoPrestador.class);
	
	private String Cnpj;
	private String InscricaoMunicipal;
	
	/**
	 * Constructor
	 * @param cnpj
	 * @param inscricaoMunicipal
	 */
	public TcIdentificacaoPrestador(String cnpj, String inscricaoMunicipal) {
		super();
		setCnpj(cnpj);
		setInscricaoMunicipal(inscricaoMunicipal);
	}
	public String getCnpj() {
		return Cnpj;
	}
	private void setCnpj(String cnpj) {
		cnpj = TextUtil.toNumeric(cnpj);
		if (cnpj.length() != 14)
			throw new AdempiereException ("(CNPJ Inválido) - " + cnpj);
		
		Cnpj = cnpj;
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
	
}	// TcIdentificacaoPrestador