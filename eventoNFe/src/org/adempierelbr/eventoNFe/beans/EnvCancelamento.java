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
import org.adempierelbr.eventoNFe.beans.evento.EventoCancelamento;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * 	Envio Cancelamento
 * 
 * 	@author Mario Grigioni
 *	@version $Id: EnvCancelamento.java, v1.0 01/04/2013 14:44, mgrigioni Exp $
 */
@XStreamAlias ("envEvento")
public class EnvCancelamento extends EnvEvento
{
	@XMLFieldProperties	(needsValidation=true, id = "HP04")
	private EventoCancelamento evento;
	
	public EventoCancelamento getEvento()
	{
		return evento;
	}

	public void setEvento(EventoCancelamento evento)
	{
		this.evento = evento;
	}
	
}	//	EnvCancelamento