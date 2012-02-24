/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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

public class DeclaracaoDI {
	private String nDI;
	private String dDI;
	private String xLocDesemb;
	private String UFDesemb;
	private String dDesemb;
	private String cExportador;
	private List<AdicoesDI> adi = new ArrayList<AdicoesDI>();
	
	public String getnDI() {
		return nDI;
	}
	public void setnDI(String nDI) {
		if (nDI != null)
			nDI = nDI.trim();
	
		this.nDI = nDI;
	}
	public String getdDI() {
		return dDI;
	}
	public void setdDI(String dDI) {
		if (dDI != null)
			dDI = dDI.trim();
	
		this.dDI = dDI;
	}
	public String getxLocDesemb() {
		return xLocDesemb;
	}
	public void setxLocDesemb(String xLocDesemb) {
		if (xLocDesemb != null)
			xLocDesemb = xLocDesemb.trim();
	
		this.xLocDesemb = xLocDesemb;
	}
	public String getUFDesemb() {
		return UFDesemb;
	}
	public void setUFDesemb(String uFDesemb) {
		if (uFDesemb != null)
			uFDesemb = uFDesemb.trim();
	
		UFDesemb = uFDesemb;
	}
	public String getdDesemb() {
		return dDesemb;
	}
	public void setdDesemb(String dDesemb) {
		if (dDesemb != null)
			dDesemb = dDesemb.trim();
	
		this.dDesemb = dDesemb;
	}
	public String getcExportador() {
		return cExportador;
	}
	public void setcExportador(String cExportador) {
		if (cExportador != null)
			cExportador = cExportador.trim();
	
		this.cExportador = cExportador;
	}
	public List<AdicoesDI> getAdi() {
		return adi;
	}
	public void addAdi(AdicoesDI adi) {
		this.adi.add(adi);
	}
	
}