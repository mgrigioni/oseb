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
package org.adempierelbr.nfe.beans;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  NFeDadosMsg
 *  @author Mario Grigioni
 *  @version $Id: NFeDadosMsg.java,v 1.0 25/06/2012 15:13:00 mgrigioni Exp $
 */
@XStreamAlias ("nfeDadosMsg")
public class NFeDadosMsg {

	public ConsSitNFe   consSitNFe;
	public ConsStatServ consStatServ;
	public ConsCad      consCad;

	/**
	 * Consulta Protocolo
	 * @param consSitNFe
	 */
	public NFeDadosMsg(ConsSitNFe consSitNFe) {
		super();
		setConsSitNFe(consSitNFe);
	}
	
	/**
	 * Consulta Status Serviço
	 * @param consStatServ
	 */
	public NFeDadosMsg(ConsStatServ consStatServ) {
		super();
		setConsStatServ(consStatServ);
	}
	
	/**
	 * Consulta Cadastro de Parceiro
	 * @param consCad
	 */
	public NFeDadosMsg(ConsCad consCad) {
		super();
		setConsCad(consCad);
	}

	public ConsSitNFe getConsSitNFe() {
		return consSitNFe;
	}
	public void setConsSitNFe(ConsSitNFe consSitNFe) {
		this.consSitNFe = consSitNFe;
	}
	public ConsStatServ getConsStatServ() {
		return consStatServ;
	}
	public void setConsStatServ(ConsStatServ consStatServ) {
		this.consStatServ = consStatServ;
	}
	public ConsCad getConsCad() {
		return consCad;
	}
	public void setConsCad(ConsCad consCad) {
		this.consCad = consCad;
	}
	
}	// NFeDadosMsg