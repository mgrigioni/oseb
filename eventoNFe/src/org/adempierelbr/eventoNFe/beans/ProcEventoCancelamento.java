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

import org.adempierelbr.eventoNFe.beans.evento.EventoCancelamento;
import org.adempierelbr.eventoNFe.beans.retevento.RetEvento;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 	Armazenamento e Disponibilização
 * 
 * 	@author Mario Grigioni
 *	@version $Id: EnvCancelamento.java, v1.0 01/04/2013 14:44, mgrigioni Exp $
 */
@XStreamAlias ("procEventoNFe")
public class ProcEventoCancelamento
{
	@XStreamAsAttribute
	private String versao;
	
	@XStreamAsAttribute
	private String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	private EventoCancelamento evento;
	private RetEvento retEvento;
	
	public String getVersao()
	{
		return versao;
	}	//	getVersao
	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	public EventoCancelamento getEvento()
	{
		return evento;
	}	//	getEvento
	public void setEvento(EventoCancelamento evento)
	{
		this.evento = evento;
	}	//	setEvento
	public RetEvento getRetEvento()
	{
		return retEvento;
	}	//	getRetEvento
	public void setRetEvento(RetEvento retEvento)
	{
		this.retEvento = retEvento;
	}	//	setRetEvento
	
}	//	ProcEventoCancelamento