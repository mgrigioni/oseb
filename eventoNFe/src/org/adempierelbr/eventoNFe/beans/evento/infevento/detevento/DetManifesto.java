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
package org.adempierelbr.eventoNFe.beans.evento.infevento.detevento;

import org.adempierelbr.annotation.XMLFieldProperties;
import org.adempierelbr.model.X_LBR_EventoNFe;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 * 	Detalhes da Manifestação do Destinatário
 * 
 * 	@author Mario Grigioni
 *	@version $Id: DetManifesto.java, v1.0 01/04/2013 11:06, mgrigioni Exp $
 */
@XStreamAlias ("detEvento")
public class DetManifesto implements I_DetEvento
{
	public DetManifesto(String tpEvento){
		setDescEvento(tpEvento);
	}
	
	@XStreamAsAttribute
	@XMLFieldProperties	(id = "HP18")
	private String versao;
	
	@XMLFieldProperties	(minSize=5, maxSize=60, id = "HP19")
	private String descEvento;
	
	@XMLFieldProperties	(minSize=15, maxSize=255, id = "HP20")
	private String xJust;

	public String getVersao()
	{
		return versao;
	}	//	getVersao

	public void setVersao(String versao)
	{
		this.versao = versao;
	}	//	setVersao
	
	public String getDescEvento()
	{
		return descEvento;
	}	//	getDescEvento

	private void setDescEvento(String tpEvento){
		if (tpEvento.equals(X_LBR_EventoNFe.EVENTTYPE_ConfirmaçãoDaOperação))
			this.descEvento = "Confirmacao da Operacao";
		else if (tpEvento.equals(X_LBR_EventoNFe.EVENTTYPE_CiênciaDaOperação))
			this.descEvento = "Ciência da Operação";
		else if (tpEvento.equals(X_LBR_EventoNFe.EVENTTYPE_DesconhecimentoDaOperação))
			this.descEvento = "Desconhecimento da Operação";
		else if (tpEvento.equals(X_LBR_EventoNFe.EVENTTYPE_OperaçãoNãoRealizada))
			this.descEvento = "Operação não Realizada";
	}
	
	public String getXJust()
	{
		return xJust;
	}	//	getXJust

	public void setXJust(String xJust)
	{
		this.xJust = xJust;
	}	//	setXJust
	
}	//DetManifesto