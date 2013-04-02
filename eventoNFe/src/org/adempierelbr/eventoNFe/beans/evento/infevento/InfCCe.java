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
package org.adempierelbr.eventoNFe.beans.evento.infevento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.eventoNFe.beans.evento.infevento.detevento.DetCCe;
import org.adempierelbr.model.X_LBR_EventoNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * 	Grupo de informações do registro do Evento
 * 
 *  @contributor Mario Grigioni
 *  	<li>Extensão da classe abstrata InfEvento</li>
 * 
 * 	@author Ricardo Santana (Kenos, www.kenos.com.br)
 *	@version $Id: InfCCe.java, v1.0 2012/05/12 16:44:58 PM, ralexsander Exp $
 */
@XStreamAlias ("infEvento")
public class InfCCe extends InfEvento {	
	
	public InfCCe(){
		this.tpEvento = X_LBR_EventoNFe.EVENTTYPE_CartaDeCorreção;
	}
	
	@XMLFieldProperties	(needsValidation=true, id = "HP17")
	private DetCCe detEvento;

	public DetCCe getDetEvento()
	{
		return detEvento;
	}	//	getDetEvento

	public void setDetEvento(DetCCe detEvento)
	{
		this.detEvento = detEvento;
	}	//	setDetEvento

}	//	InfCCe