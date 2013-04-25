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

import java.util.List;

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  RetDownloadNFe
 *  @author Mario Grigioni
 *  @version $Id: RetDownloadNFe.java,v 1.0 24/04/2013 10:25:00 mgrigioni Exp $
 */
@XStreamAlias ("retDownloadNFe")
public class RetDownloadNFe {
	
	@XStreamAsAttribute
	private String versao;
	
	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	private String tpAmb;
	private String verAplic;
	private String cStat;
	private String xMotivo;
	private String dhResp;

	@XStreamImplicit(itemFieldName="retNFe")
	private List<RetNFe> retNFe;

	public String getVersao() {
		return versao;
	}
	public String getXmlns() {
		return xmlns;
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
	public String getDhResp() {
		return dhResp;
	}
	public List<RetNFe> getRetNFe() {
		return retNFe;
	}
	
}	// RetDownloadNFe