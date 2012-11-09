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
package org.adempierelbr.gnre.beans;

import java.util.ArrayList;
import java.util.List;

import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  Lote GNRE
 *  @author Mario Grigioni
 *  @version $Id: LoteGNRE.java,v 1.0 07/11/2012 10:55:00 mgrigioni Exp $
 */
@XStreamAlias ("TLote_GNRE")
public class LoteGNRE {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(LoteGNRE.class);
	
	@XStreamAsAttribute
	private String xmlns = "http://www.gnre.pe.gov.br";
	
	private Guias guias;
	
	public LoteGNRE(List<DadosGNRE> guias){
		this.guias = new Guias(guias);
	}

	public Guias getGuias() {
		return guias;
	}
	
} //LoteGNRE

@XStreamAlias ("guias")
class Guias {

	@XStreamImplicit(itemFieldName="TDadosGNRE")
	private List<DadosGNRE> dadosGNRE = new ArrayList<DadosGNRE>();
	
	Guias(List<DadosGNRE> dadosGNRE){
		this.dadosGNRE = dadosGNRE;
	}
}