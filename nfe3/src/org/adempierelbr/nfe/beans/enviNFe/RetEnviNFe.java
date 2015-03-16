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
package org.adempierelbr.nfe.beans.enviNFe;

import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  RetEnviNFe
 *  @author Mario Grigioni
 *  @version $Id: RetEnviNFe.java,v 1.0 01/08/2012 09:05:00 mgrigioni Exp $
 */
@XStreamAlias ("retEnviNFe")
public class RetEnviNFe {
	
	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private String verAplic;
	private String cStat;
	private String xMotivo;
	private String cUF;
	private String dhRecbto;
	
	@XStreamImplicit(itemFieldName="infRec")
	private List<InfRec> infRec;
	
	private String nRec;
	private String tMed;
	private String protNFe;

	public String getVersao() {
		return versao;
	}
	public String getTpAmb() {
		return tpAmb;
	}
	public String getVerAplic() {
		return verAplic;
	}
	public String getcStat() {
		return cStat;
	}
	public String getxMotivo() {
		return xMotivo;
	}
	public String getcUF() {
		return cUF;
	}
	public String getDhRecbto() {
		return dhRecbto;
	}
	public List<InfRec> getInfRec() {
		return infRec;
	}
	public String getnRec() {
		return nRec;
	}

	public String gettMed() {
		return tMed;
	}
	public String getProtNFe() {
		return protNFe;
	}

}	// RetEnviNFe