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
 *  E - Identificação do Destinatário da Nota Fiscal eletrônica
 *  
 *  @author Mario Grigioni
 *  @version $Id: IdentNFe.java,v 2.0 30/07/2012 17:11:00 mgrigioni Exp $
 */
@XStreamAlias ("dest")
public class IdentDest {

	private String CNPJ;
	private String CPF;
	private String idEstrangeiro;
	private String xNome;
	private EnderDest enderDest;
	private String indIEDest;
	private String IE;
	private String ISUF;
	private String IM;
	private String email;
	
	/**
	 * Default Constructor
	 * @param MLBRNotaFiscal nf
	 */
	public IdentDest(String tpAmb, MLBRNotaFiscal nf){
		super();
		
		if (tpAmb.equals("1")){
			setId(nf.getlbr_BPCNPJ());
			setxNome(nf.getBPName());
			setIE(ValidatorBPartner.validaIE(nf.getlbr_BPIE(),UF.valueOf(nf.getlbr_BPRegion())));
			setISUF(nf.getlbr_BPSuframa());
		}
		else {
			
			/** 
			 * AMBIENTE DE HOMOLOGACAO 
			 **/
			if (nf.getlbr_BPCNPJ() != null)
				setCNPJ("99999999000191");
			else
				setIdEstrangeiro(""); //Operacao Comex nao preencher
				
			setxNome("NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL");
			setIE("");
		}
		
		setEnderDest(new EnderDest(nf));
		//setEmail(null); //TODO
		
	} //IdentDest
	
	private void setId(String id){
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCPF(id);
		else if (id.length() == 14)
			setCNPJ(id);
		else
			setIdEstrangeiro(""); //Operacao Comex
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
	public String getIdEstrangeiro() {
		return idEstrangeiro;
	}
	public void setIdEstrangeiro(String idEstrangeiro) {
		this.idEstrangeiro = idEstrangeiro;
	}

	public String getxNome() {
		return xNome;
	}
	private void setxNome(String xNome) {	
		this.xNome = TextUtil.checkSize(RemoverAcentos.remover(xNome),2,60);
	}

	public EnderDest getEnderDest() {
		return enderDest;
	}

	public void setEnderDest(EnderDest enderDest) {
		this.enderDest = enderDest;
	}
	public String getIndIEDest() {
		return indIEDest;
	}

	private void setIndIEDest(String indIEDest) {
		if (indIEDest == null || indIEDest.length() != 1 || "129".indexOf(indIEDest) == -1)
			throw new AdempiereException("indIEDest = " + indIEDest); 
		else
			this.indIEDest = indIEDest;
	}
	public String getIE() {
		return IE;
	}

	public void setIE(String iE) {
		if (iE == null)
			throw new AdempiereException("IE inválido");
		else{
			if ((iE.trim()).isEmpty() /*|| getCPF() != null*/){
				setIndIEDest("9"); //9=Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.
				return;
			}
			else if (iE.toUpperCase().contains("ISENT")){
				setIndIEDest("2"); //2=Contribuinte isento de Inscrição no cadastro de Contribuintes do ICMS;
				return;
			}
			
			setIndIEDest("1"); //1=Contribuinte ICMS (informar a IE do destinatário);
			IE = iE;
		}
	}

	public String getISUF() {
		return ISUF;
	}

	public void setISUF(String iSUF) {
		iSUF = TextUtil.toNumeric(iSUF);
		if(!iSUF.isEmpty())	
			ISUF = iSUF;
	}
	public String getIM() {
		return IM;
	}

	public void setIM(String iM) {
		IM = iM;
	}
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
} //IdentDest