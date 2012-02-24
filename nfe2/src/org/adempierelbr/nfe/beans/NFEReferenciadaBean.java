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

public class NFEReferenciadaBean {

	private String refNFe ;
	private InformacoesNFEReferenciadaBean refNF;

	public NFEReferenciadaBean(String refNFe){
		setRefNFe(refNFe);
	}
	
	public String getRefNFe() {
		return refNFe;
	}

	public void setRefNFe(String refNFe) {
		if (refNFe != null)
			refNFe = refNFe.trim();
		
		this.refNFe = refNFe;
	}

	public InformacoesNFEReferenciadaBean getRefNF() {
		return refNF;
	}

	public void setRefNF(InformacoesNFEReferenciadaBean refNF) {
		this.refNF = refNF;
	}
	
	
	
}
