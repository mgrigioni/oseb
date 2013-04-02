/******************************************************************************
 * Copyright (C) 2011 Kenos Assessoria e Consultoria de Sistemas Ltda         *
 * Copyright (C) 2011 Ricardo Santana                                         *
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

import org.adempierelbr.eventoNFe.beans.evento.EventoCCe;
import org.adempierelbr.eventoNFe.beans.retevento.RetEvento;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 		4.8.10 Armazenamento e Disponibilização da Carta de Correção
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: ProcEventoNFe.java, v1.0 2012/05/21 13:59:56 PM, ralexsander Exp $
 */
@XStreamAlias ("procEventoNFe")
public class ProcEventoCCe
{
	@XStreamAsAttribute
	private String versao;
	
	@XStreamAsAttribute
	private String xmlns="http://www.portalfiscal.inf.br/nfe";
	
	private EventoCCe evento;
	private RetEvento retEvento;
	
	public String getVersao()
	{
		return versao;
	}	//	getVersao
	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	public EventoCCe getEvento()
	{
		return evento;
	}	//	getEvento
	public void setEvento(EventoCCe evento)
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
	
}	//	ProcEventoCCe