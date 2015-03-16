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

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.ValidatorBPartner;

import br.gov.sp.fazenda.dsge.brazilutils.uf.UF;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  Grupo Transportador
 *  
 *  @author Mario Grigioni
 *  @version $Id: Grupo Transportador.java,v 2.0 31/07/2012 11:00:00 mgrigioni Exp $
 */
@XStreamAlias ("transporta")
public class TransporteGrupo {
	
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String IE;
	private String xEnder;
	private String xMun;
	
	@XStreamAlias("UF")
	private String uF;
	
	/**
	 * Default Constructor
	 * @param MLBRNotaFiscal nf
	 */
	public TransporteGrupo(MLBRNotaFiscal nf){
		super();
		setId(nf.getlbr_BPShipperCNPJ());
		setxNome(nf.getlbr_BPShipperName());
		setIE(ValidatorBPartner.validaIE(nf.getlbr_BPShipperIE(),UF.valueOf(nf.getlbr_BPShipperRegion())));
		setxEnder(nf.getlbr_BPShipperAddress1());
		setxMun(nf.getlbr_BPShipperCity());
		setUF(nf.getlbr_BPShipperRegion());
	} //TransporteGrupo
	
	private void setId(String id){
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCPF(id);
		else if (id.length() == 14)
			setCNPJ(id);	
	}
	
	public String getCNPJ() {
		return CNPJ;
	}
	private void setCNPJ(String cNPJ) {	
		CNPJ = cNPJ;
	}
	public String getCPF() {
		return CPF;
	}
	private void setCPF(String cPF) {
		CPF = cPF;
	}
	
	public String getxNome() {
		return xNome;
	}
	private void setxNome(String xNome) {	
		this.xNome = TextUtil.checkSize(RemoverAcentos.remover(xNome),2,60);
	}

	public String getIE() {
		return IE;
	}

	public void setIE(String iE) {
		if (iE == null)
			throw new AdempiereException("IE inválido");
		else	
			IE = iE;
	}
	
	public String getxEnder() {
		return xEnder;
	}
	private void setxEnder(String xEnder) {
		if (xEnder != null)
			this.xEnder = TextUtil.checkSize(RemoverAcentos.remover(xEnder),60);
	}
	
	public String getxMun() {
		return xMun;
	}
	private void setxMun(String xMun) {
		if (xMun != null)
			this.xMun = TextUtil.checkSize(RemoverAcentos.remover(xMun),60);
	}
	
	public String getUF() {
		return uF;
	}
	private void setUF(String uF) {
		if (uF != null && uF.length() == 2)
			this.uF = uF;
	}
	
} //TransporteGrupo