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

import java.math.BigDecimal;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Adições
 *  
 *  @author Mario Grigioni
 *  @version $Id: AdicoesDI.java,v 2.0 02/08/2012 12:07:00 mgrigioni Exp $
 */
@XStreamAlias ("adi")
public class AdicoesDI {

	private String nAdicao;
	private String nSeqAdic;
	private String cFabricante;
	private String vDescDI;
	private String nDraw;
	
	/**
	 * Default Constructor
	 * @param nAdicao
	 * @param nSeqAdic
	 * @param cFabricante
	 */
	public AdicoesDI(String nAdicao, String nSeqAdic, String cFabricante, String nDraw) {
		super();
		setnAdicao(nAdicao);
		setnSeqAdic(nSeqAdic);
		setcFabricante(cFabricante);
		setnDraw(nDraw);
	}
	
	public String getnAdicao() {
		return nAdicao;
	}
	private void setnAdicao(String nAdicao) {
		nAdicao = TextUtil.toNumeric(nAdicao);
		if (nAdicao == null || nAdicao.isEmpty())
			throw new AdempiereException("nAdicao = " + nAdicao);
		else	
			this.nAdicao = nAdicao;
	}

	public String getnSeqAdic() {
		return nSeqAdic;
	}
	private void setnSeqAdic(String nSeqAdic) {
		nSeqAdic = TextUtil.toNumeric(nSeqAdic);
		if (nSeqAdic == null || nSeqAdic.isEmpty())
			throw new AdempiereException("nSeqAdic = " + nSeqAdic);
		else	
			this.nSeqAdic = nSeqAdic;
	}
	
	public String getcFabricante() {
		return cFabricante;
	}
	private void setcFabricante(String cFabricante) {
		if (cFabricante == null)
			throw new AdempiereException("cFabricante =" + cFabricante);
		else	
			this.cFabricante = TextUtil.checkSize(RemoverAcentos.remover(cFabricante),60);
	}
	public String getvDescDI() {
		return vDescDI;
	}
	public void setvDescDI(BigDecimal vDescDI) {
		if (vDescDI != null)
			this.vDescDI = TextUtil.bigdecimalToString(vDescDI);
	}
	public String getnDraw() {
		return nDraw;
	}
	public void setnDraw(String nDraw) {
		if (nDraw != null && !nDraw.trim().isEmpty())
			this.nDraw = nDraw;
	}
	
} //AdicoesDI