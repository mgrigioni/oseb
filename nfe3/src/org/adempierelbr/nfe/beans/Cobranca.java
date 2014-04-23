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

import java.util.ArrayList;
import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  Grupo de Cobrança
 *  
 *  @author Mario Grigioni
 *  @version $Id: Cobranca.java,v 1.0 01/08/2012 14:57:00 mgrigioni Exp $
 */
@XStreamAlias ("cobr")
public class Cobranca {

	private CobrancaGrupoFatura fat;

	@XStreamImplicit(itemFieldName="dup")
	private List<CobrancaGrupoDuplicata> dups = new ArrayList<CobrancaGrupoDuplicata>();

	public Cobranca(CobrancaGrupoFatura fat, List<CobrancaGrupoDuplicata> dups) {
		super();
		setFat(fat);
		setDups(dups);
	}
	
	public List<CobrancaGrupoDuplicata> getDups() {
		return dups;
	}
	public void setDups(List<CobrancaGrupoDuplicata> dups) {
		if (dups != null && dups.size() > 0)
			this.dups = dups;
	}

	public CobrancaGrupoFatura getFat() {
		return fat;
	}
	public void setFat(CobrancaGrupoFatura fat) {
		this.fat = fat;
	}
	
} // Cobranca