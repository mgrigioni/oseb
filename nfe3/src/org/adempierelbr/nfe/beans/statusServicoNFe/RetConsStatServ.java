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
package org.adempierelbr.nfe.beans.statusServicoNFe;

import org.adempierelbr.util.NFeUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  RetConsStatServ
 *  @author Mario Grigioni
 *  @version $Id: RetConsStatServ.java,v 1.0 06/07/2012 09:25:00 mgrigioni Exp $
 */
@XStreamAlias ("retConsStatServ")
public class RetConsStatServ {

	@XStreamOmitField
	private final String EOL = "<br/>";
	
	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	@XStreamAsAttribute
	private String versao;
	
	private String tpAmb;
	private String verAplic;
	private String cStat;
	private String xMotivo;
	private String cUF;
	private String dhRecbto;
	private String tMed;
	private String dhRetorno;
	private String xObs;

	public String getVersao() {
		return versao == null ? "" : versao;
	}
	public String getTpAmb() {
		if (tpAmb == null)
			return "";
		
		return tpAmb.equals("1") ? "Producao" : "Homologacao";
	}
	public String getVerAplic() {
		return verAplic == null ? "" : verAplic;
	}
	public String getcStat() {
		return cStat == null ? "" : cStat;
	}
	public String getxMotivo() {
		return xMotivo == null ? "" : xMotivo;
	}
	public String getcUF() {
		return cUF == null ? "" : cUF;
	}
	public String getDhRecbto() {
		return dhRecbto ==  null ? "" : dhRecbto;
	}
	public String gettMed() {
		return tMed == null ? "" : tMed;
	}
	public String getDhRetorno() {
		return dhRetorno == null ? "" : dhRetorno;
	}
	public String getxObs() {
		return xObs == null ? "" : xObs;
	}
	
	public String toString(){
		StringBuilder string = new StringBuilder(EOL)
				          .append("Versao : ").append(getVersao()).append(EOL)
				          .append("Ver. Aplicativo: ").append(getVerAplic()).append(EOL)
		                  .append("Ambiente: ").append(getTpAmb()).append(EOL)
		                  .append("Status: ").append(getcStat())
		                  .append(" - ").append(getxMotivo()).append(EOL)
		                  .append("UF: ").append(getcUF()).append(EOL)
		                  .append("Data Receb.: ").append(getDhRecbto()).append(EOL)
		                  .append("Temp. Resp.(seg): ").append(gettMed()).append(EOL)
		                  .append("Data Ret.: ").append(getDhRetorno()).append(EOL)
		                  .append("Obs.: ").append(getxObs());
		
		return string.toString();
	}
	
}	// RetConsStatServ