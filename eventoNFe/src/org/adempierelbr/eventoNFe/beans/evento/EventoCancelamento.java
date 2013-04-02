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
package org.adempierelbr.eventoNFe.beans.evento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.eventoNFe.beans.Signature;
import org.adempierelbr.eventoNFe.beans.evento.infevento.InfCancelamento;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 	Evento Cancelamento
 * 
 * 	@author Mario Grigioni
 *	@version $Id: EventoCancelamento.java, v1.0 01/04/2013 10:56, mgrigioni Exp $
 */
@XStreamAlias ("evento")
public class EventoCancelamento
{
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP05")
	private String versao;
	
	@XStreamAsAttribute
	private final String xmlns="http://www.portalfiscal.inf.br/nfe";
		
	@XMLFieldProperties	(needsValidation=true, id = "HP06")
	private InfCancelamento infEvento;
	
	@XStreamAlias ("Signature")
	private Signature signature;
	
	public String getVersao()
	{
		return versao;
	}	//	getVersao

	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao

	public InfCancelamento getInfEvento()
	{
		return infEvento;
	}	//	getInfEvento

	public void setInfEvento(InfCancelamento infEvento)
	{
		this.infEvento = infEvento;
	}	//	setInfEvento
	
}	//	EventoCancelamento