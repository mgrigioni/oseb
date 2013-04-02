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
package org.adempierelbr.eventoNFe.beans.evento.infevento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.eventoNFe.beans.evento.infevento.detevento.DetCancelamento;
import org.adempierelbr.model.X_LBR_EventoNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 * 	Informações de Cancelamento
 * 
 * 	@author Mario Grigioni
 *	@version $Id: InfCancelamento.java, v1.0 01/04/2013 10:35, mgrigioni Exp $
 */
@XStreamAlias ("infEvento")
public class InfCancelamento extends InfEvento {	
	
	public InfCancelamento(){
		this.tpEvento = X_LBR_EventoNFe.EVENTTYPE_Cancelamento;
	}
	
	@XMLFieldProperties	(needsValidation=true, id = "HP17")
	private DetCancelamento detEvento;

	public DetCancelamento getDetEvento()
	{
		return detEvento;
	}	//	getDetEvento

	public void setDetEvento(DetCancelamento detEvento)
	{
		this.detEvento = detEvento;
	}	//	setDetEvento

}	//	InfCancelamento