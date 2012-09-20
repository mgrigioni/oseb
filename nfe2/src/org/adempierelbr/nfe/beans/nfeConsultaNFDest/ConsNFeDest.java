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

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  ConsNFeDest
 *  @author Mario Grigioni
 *  @version $Id: ConsNFeDest.java,v 1.0 27/08/2012 09:54:00 mgrigioni Exp $
 */
@XStreamAlias ("consNFeDest")
public class ConsNFeDest {
	
	@XStreamAsAttribute
	public final String xmlns=NFeUtil.NAMESPACE_NFE;

	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private final String xServ = "CONSULTAR NFE DEST";
	private String CNPJ;
	private String indNFe;
	private String indEmi;
	private String ultNSU;
	
	/**
	 * Default Constructor
	 * @param versao
	 * @param tpAmb
	 * @param cNPJ
	 * @param indNFe
	 * @param indEmi
	 * @param ultNSU
	 */
	public ConsNFeDest(String versao, String tpAmb, String cNPJ, String indNFe,
			String indEmi, String ultNSU) {
		super();
		setVersao(versao);
		setTpAmb(tpAmb);
		setCNPJ(cNPJ);
		setIndNFe(indNFe);
		setIndEmi(indEmi);
		setUltNSU(ultNSU);
	}

	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}

	public String getTpAmb() {
		return tpAmb;
	}
	public void setTpAmb(String tpAmb) {
		this.tpAmb = tpAmb;
	}
	
	public String getCNPJ() {
		return CNPJ;
	}
	public void setCNPJ(String cNPJ) {
		CNPJ = cNPJ;
	}
	
	public String getIndNFe() {
		return indNFe;
	}
	public void setIndNFe(String indNFe) {
		this.indNFe = indNFe;
	}
	
	public String getIndEmi() {
		return indEmi;
	}
	public void setIndEmi(String indEmi) {
		this.indEmi = indEmi;
	}

	public String getUltNSU() {
		return ultNSU;
	}
	public void setUltNSU(String ultNSU) {
		this.ultNSU = ultNSU;
	}

	public String getXmlns() {
		return xmlns;
	}
	
	public String getxServ() {
		return xServ;
	}

}	// ConsNFeDest