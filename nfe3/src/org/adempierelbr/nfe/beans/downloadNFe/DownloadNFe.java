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
package org.adempierelbr.nfe.beans.downloadNFe;

import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  DownloadNFe
 *  @author Mario Grigioni
 *  @version $Id: DownloadNFe.java,v 1.0 24/04/2013 09:57:00 mgrigioni Exp $
 */
@XStreamAlias ("downloadNFe")
public class DownloadNFe {
	
	@XStreamAsAttribute
	public final String xmlns=NFeUtil.NAMESPACE_NFE;

	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private final String xServ = "DOWNLOAD NFE";
	private String CNPJ;
	private String chNFe;
	
	/**
	 * Default Constructor
	 * @param versao
	 * @param tpAmb
	 * @param cNPJ
	 * @param chNFe
	 */
	public DownloadNFe(String versao, String tpAmb, String cNPJ, String chNFe) {
		super();
		setVersao(versao);
		setTpAmb(tpAmb);
		setCNPJ(cNPJ);
		setChNFe(chNFe);
	}

	public String getVersao() {
		return versao;
	}
	private void setVersao(String versao) {
		this.versao = versao;
	}

	public String getTpAmb() {
		return tpAmb;
	}
	private void setTpAmb(String tpAmb) {
		this.tpAmb = tpAmb;
	}
	
	public String getCNPJ() {
		return CNPJ;
	}
	private void setCNPJ(String cNPJ) {
		CNPJ = TextUtil.toNumeric(cNPJ);
	}

	public String getChNFe() {
		return chNFe;
	}
	private void setChNFe(String chNFe) {
		this.chNFe = chNFe;
	}

	public String getXmlns() {
		return xmlns;
	}
	
	public String getxServ() {
		return xServ;
	}

}	// DownloadNFe