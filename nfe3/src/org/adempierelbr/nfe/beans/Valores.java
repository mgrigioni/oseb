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
 *  W - Valores Totais da NF-e
 *  
 *  @author Mario Grigioni
 *  @version $Id: Valores.java,v 2.0 31/07/2012 11:58:00 mgrigioni Exp $
 */
@XStreamAlias ("total")
public class Valores {

	private ValoresICMS ICMSTot;
	private ValoresISSQN ISSQNot;
	private ValoresRetTrib retTrib;
	
	public Valores(ValoresICMS icmsTot){
		this(icmsTot,null,null);
	}
	
	public Valores(ValoresICMS icmsTot, ValoresISSQN issqNot, ValoresRetTrib retTrib){
		setICMSTot(icmsTot);
		setISSQNot(issqNot);
		setRetTrib(retTrib);
	}
	
	public ValoresICMS getICMSTot() {
		return ICMSTot;
	}
	private void setICMSTot(ValoresICMS tot) {
		if (tot != null)
			ICMSTot = tot;
	}
	
	public ValoresISSQN getISSQNot() {
		return ISSQNot;
	}
	public void setISSQNot(ValoresISSQN not) {
		if (not != null)
			ISSQNot = not;
	}
	
	public ValoresRetTrib getRetTrib() {
		return retTrib;
	}
	public void setRetTrib(ValoresRetTrib retTrib) {
		if (retTrib != null)
			this.retTrib = retTrib;
	}
				
} //Valores