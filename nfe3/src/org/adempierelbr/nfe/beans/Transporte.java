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
 *  X - Informações do Transporte da NF-e
 *  
 *  @author Mario Grigioni
 *  @version $Id: Transporte.java,v 2.0 31/07/2012 10:56:00 mgrigioni Exp $
 */
@XStreamAlias ("transp")
public class Transporte {

	private String modFrete;
	private TransporteGrupo transporta;
	private TransporteRetencao retTransp;
	private TransporteGrupoVeiculos veicTransp;
	private TransporteReboque reboque;
	private TransporteVol vol;
	private TransporteLacres lacres;
	
	public Transporte(String FreightCostRule, TransporteVol vol){
		setModFrete(FreightCostRule);
		if (vol.getqVol() != null)
			setVol(vol);
	}
	
	public String getModFrete() {
		return modFrete;
	}
	private void setModFrete(String FreightCostRule) {
		if (FreightCostRule == null || FreightCostRule.isEmpty() || FreightCostRule.equals("I"))
			modFrete = "0";
		else
			modFrete = "1";
	}
	
	public TransporteGrupo getTransporta() {
		return transporta;
	}
	public void setTransporta(TransporteGrupo transporta) {
		this.transporta = transporta;
	}
	
	public TransporteRetencao getRetTransp() {
		return retTransp;
	}
	public void setRetTransp(TransporteRetencao retTransp) {
		this.retTransp = retTransp;
	}
	
	public TransporteGrupoVeiculos getVeicTransp() {
		return veicTransp;
	}
	public void setVeicTransp(TransporteGrupoVeiculos veicTransp) {
		this.veicTransp = veicTransp;
	}
	
	public TransporteReboque getReboque() {
		return reboque;
	}
	public void setReboque(TransporteReboque reboque) {
		this.reboque = reboque;
	}
	
	public TransporteVol getVol() {
		return vol;
	}
	private void setVol(TransporteVol vol) {
		this.vol = vol;
	}
	
	public TransporteLacres getLacres() {
		return lacres;
	}
	public void setLacres(TransporteLacres lacres) {
		this.lacres = lacres;
	}
	
} //Transporte