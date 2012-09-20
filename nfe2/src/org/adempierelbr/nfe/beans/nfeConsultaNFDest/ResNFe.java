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
package org.adempierelbr.nfe.beans.nfeConsultaNFDest;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  ResNFe
 *  @author Mario Grigioni
 *  @version $Id: ResNFe.java,v 1.0 27/08/2012 10:05:00 mgrigioni Exp $
 */
@XStreamAlias ("resNFe")
public class ResNFe {
	
	private String NSU;
	private String chNFe;
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String IE;
	private String dEmi;
	private String tpNF;
	private String vNF;
	private String digVal;
	private String dhRecbto;
	private String cSitNFe;
	private String cSitConf;
	
	public String getNSU() {
		return NSU;
	}
	public String getChNFe() {
		return chNFe;
	}
	public String getCNPJ() {
		return CNPJ;
	}
	public String getCPF() {
		return CPF;
	}
	public String getxNome() {
		return xNome;
	}
	public String getIE() {
		return IE;
	}
	public String getdEmi() {
		return dEmi;
	}
	public String getTpNF() {
		return tpNF;
	}
	public String getvNF() {
		return vNF;
	}
	public String getDigVal() {
		return digVal;
	}
	public String getDhRecbto() {
		return dhRecbto;
	}
	public String getcSitNFe() {
		return cSitNFe;
	}
	public String getcSitConf() {
		return cSitConf;
	}

}	// ResNFe