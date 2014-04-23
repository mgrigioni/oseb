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

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Z - Informações Adicionais da NF-e
 *  
 *  @author Mario Grigioni
 *  @version $Id: InfAdic.java,v 2.0 03/08/2012 15:24:00 mgrigioni Exp $
 */
@XStreamAlias ("infAdic")
public class InfAdic {
	
	private String infAdFisco;
	private String infCpl;
	
	public InfAdic(String infCpl) {
		super();
		setInfCpl(infCpl);
	}
	
	public String getInfAdFisco() {
		return infAdFisco;
	}
	public void setInfAdFisco(String infAdFisco) {
		infAdFisco = TextUtil.checkSize(RemoverAcentos.remover(infAdFisco), 2000);
		if (!infAdFisco.isEmpty())
			this.infAdFisco = infAdFisco;
	}
	
	public String getInfCpl() {
		return infCpl;
	}
	private void setInfCpl(String infCpl) {
		infCpl = TextUtil.checkSize(RemoverAcentos.remover(infCpl), 2000);
		if (!infCpl.isEmpty())
			this.infCpl = infCpl;
	}
	
}	//	InfAdic