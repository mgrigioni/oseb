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

import java.util.List;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamImplicit;

/**
 *  I03. Produtos e Serviços / Grupo de Exportação
 *  
 *  @author Mario Grigioni
 *  @version $Id: DetExport.java,v 1.0 15/10/2014 15:10:00 mgrigioni Exp $
 */
@XStreamAlias ("detExport")
public class DetExport {
	
	private String nDraw;
	
	@XStreamImplicit(itemFieldName="exportInd")
	private List<ExportInd> exportInd;
	
	/**
	 * Default Constructor
	 * @param nDraw
	 * @param exportInd
	 */
	public DetExport(String nDraw) {
		super();
		setnDraw(nDraw);
	}

	public String getnDraw() {
		return nDraw;
	}
	public void setnDraw(String nDraw) {
		this.nDraw = nDraw;
	}
	public List<ExportInd> getExportInd() {
		return exportInd;
	}
	public void setExportInd(List<ExportInd> exportInd) {
		this.exportInd = exportInd;
	}
	
} // DetExport


/**
 *  Grupo sobre exportação indireta
 */
@XStreamAlias ("exportInd")
class ExportInd {

	private String nRE;
	private String chNFe;
	private String qExport;
	
	/**
	 * Default Constructor
	 * @param nAdicao
	 * @param nSeqAdic
	 * @param cFabricante
	 */
	public ExportInd(String nRE, String chNFe, String qExport) {
		super();
		setnRE(nRE);
		setChNFe(chNFe);
		setqExport(qExport);
	}

	public String getnRE() {
		return nRE;
	}
	public void setnRE(String nRE) {
		this.nRE = nRE;
	}
	public String getChNFe() {
		return chNFe;
	}
	public void setChNFe(String chNFe) {
		this.chNFe = chNFe;
	}
	public String getqExport() {
		return qExport;
	}
	public void setqExport(String qExport) {
		this.qExport = qExport;
	}

} //ExportInd