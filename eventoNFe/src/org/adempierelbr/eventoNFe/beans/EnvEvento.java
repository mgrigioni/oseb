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
package org.adempierelbr.eventoNFe.beans;

import org.adempierelbr.annotation.XMLFieldProperties;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 	Envio de Evento
 * 
 * 	@author Mario Grigioni
 *	@version $Id: EnvCancelamento.java, v1.0 01/04/2013 15:09, mgrigioni Exp $
 */
@XStreamAlias ("envEvento")
public abstract class EnvEvento
{
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP02")
	private String versao;
	
	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	@XMLFieldProperties	(minSize=1, maxSize=15, id = "HP03")
	private String idLote;
	
	public String getVersao()
	{
		return versao;
	}

	public void setVersao(String versao)
	{
		this.versao = versao;
	}

	public String getIdLote()
	{
		return idLote;
	}

	public void setIdLote(String idLote)
	{
		this.idLote = idLote;
	}

}	//	EnvEvento