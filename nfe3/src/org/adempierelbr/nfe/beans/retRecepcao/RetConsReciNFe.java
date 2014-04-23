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
package org.adempierelbr.nfe.beans.retRecepcao;

import java.util.List;

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  RetConsReciNFe
 *  @author Mario Grigioni
 *  @version $Id: RetConsReciNFe.java,v 1.0 04/07/2012 15:32:00 mgrigioni Exp $
 */
@XStreamAlias ("retConsReciNFe")
public class RetConsReciNFe
{
	@XStreamAsAttribute
	private String versao;
	
	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	private String tpAmb;
	private String verAplic;
	private String nRec;
	private String cStat;
	private String xMotivo;
	private String cUF;
	private String cMsg;
	private String xMsg;
	
	@XStreamImplicit(itemFieldName="protNFe")
	private List<ProtNFe> protNFe;

	public String getTpAmb() {
		return tpAmb;
	}
	public String getVerAplic() {
		return verAplic;
	}
	public String getnRec() {
		return nRec;
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
	public String getcMsg() {
		return cMsg;
	}
	public String getxMsg() {
		return xMsg;
	}
	public List<ProtNFe> getProtNFe() {
		return protNFe;
	}

}	//	RetConsReciNFe