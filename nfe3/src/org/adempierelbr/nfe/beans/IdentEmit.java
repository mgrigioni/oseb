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
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.validator.ValidatorBPartner;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;

import br.gov.sp.fazenda.dsge.brazilutils.uf.UF;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  C - Identificação do Emitente da Nota Fiscal eletrônica
 *  
 *  @author Mario Grigioni
 *  @version $Id: IdentEmit.java,v 2.0 04/07/2012 13:35:00 mgrigioni Exp $
 */
@XStreamAlias ("emit")
public class IdentEmit {

	// Identificação do Emitente da Nota Fiscal
	
	private String CNPJ;
	private String CPF;
	private String xNome;
	private String xFant;
	private EnderEmit enderEmit;

	private String IE;
	private String IEST;
	private String IM;
	private String CNAE;
	private final String CRT = "3"; //Regime Normal //FIXME
	
	/**
	 * Default Constructor
	 * @param MLBRNotaFiscal nf
	 */
	public IdentEmit(MLBRNotaFiscal nf){
		super();
		
		I_W_AD_OrgInfo oiW = 
				POWrapper.create(MOrgInfo.get(nf.getCtx(), nf.getAD_Org_ID(),null),I_W_AD_OrgInfo.class);
		
		setId(nf.getlbr_CNPJ());
		setxNome(nf.getlbr_OrgName());
		setxFant(oiW.getlbr_Fantasia());
		setEnderEmit(new EnderEmit(nf));
		setIE(ValidatorBPartner.validaIE(nf.getlbr_IE(),UF.valueOf(nf.getlbr_OrgRegion())));
		setIM(nf.getlbr_OrgCCM());
		setCNAE(oiW.getlbr_CNAE());
	} //IdentEmit

	public EnderEmit getEnderEmit() {
		return enderEmit;
	}
	public void setEnderEmit(EnderEmit enderEmit) {
		this.enderEmit = enderEmit;
	}
	
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
	
	public String getxFant() {
		return xFant;
	}
	private void setxFant(String xFant) {
		if (xFant != null)	
			this.xFant = TextUtil.checkSize(RemoverAcentos.remover(xFant), 60);
	}
	public String getIE() {
		return IE;
	}
	private void setIE(String iE) {
		if (iE == null)
			throw new AdempiereException("IE inválido");
		else	
			IE = iE;
	}
	
	public String getIEST() {
		return IEST;
	}
	public void setIEST(String iEST) {
		IEST = iEST;
	}
	
	public String getIM() {
		return IM;
	}
	private void setIM(String iM) {
		if (iM != null)
			IM = TextUtil.toNumeric(iM);
	}
	
	public String getCNAE() {
		return CNAE;
	}
	private void setCNAE(String cNAE) {
		if (cNAE == null && getIM() != null)
			throw new AdempiereException("CNAE Inválido");
	
		CNAE = TextUtil.toNumeric(cNAE);
	}
	
	public String getCRT() {
		return CRT;
	}
	
} //IdentEmit