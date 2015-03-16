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
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_City;
import org.compiere.model.MCountry;
import org.compiere.model.X_C_City;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  G - Identificação do Local de Entrega
 *  
 *  @author Mario Grigioni
 *  @version $Id: IdentLocalEntrega.java,v 2.0 31/07/2012 09:30:00 mgrigioni Exp $
 */
@XStreamAlias ("entrega")
public class IdentLocalEntrega {

	private String CNPJ;
	private String CPF;
	private String xLgr;
	private String nro;
	private String xCpl;
	private String xBairro;
	private String cMun;
	private String xMun;
	private String UF;
	
	/**
	 * Default Constructor
	 * @param MLBRNotaFiscal nf
	 */
	public IdentLocalEntrega(MLBRNotaFiscal nf){
		super();
		setId(nf.getlbr_BPDeliveryCNPJ());
		setxLgr(nf.getlbr_BPDeliveryAddress1());
		setNro(nf.getlbr_BPDeliveryAddress2());
		setxBairro(nf.getlbr_BPDeliveryAddress3());
		setxCpl(nf.getlbr_BPDeliveryAddress4());
		
		MCountry country = new MCountry(nf.getCtx(), BPartnerUtil.getC_Country_ID(nf.getlbr_BPDeliveryCountry()),null);
	
		if (country.get_ID() == BPartnerUtil.BRASIL) {
			X_C_City bpCity = BPartnerUtil.getX_C_City(nf.getCtx(),
					nf.getlbr_BPDeliveryCity(),BPartnerUtil.getC_Region_ID(nf.getlbr_BPDeliveryRegion()),nf.get_TrxName());
			
			if (bpCity == null){
				throw new AdempiereException("Cidade do Parceiro de Negócios não encontrada");
			}
			
			int bpCityCode = bpCity.get_ValueAsInt(I_W_C_City.COLUMNNAME_lbr_CityCode);
			if (bpCityCode <= 0){
				throw new AdempiereException("Código do cidade (IBGE) não cadastrado - " + nf.getlbr_BPCity());
			}
			
			setcMun(Integer.toString(bpCityCode));
			setxMun(nf.getlbr_BPDeliveryCity());
			setUF(nf.getlbr_BPDeliveryRegion());
		}
		else{
			setcMun(BPartnerUtil.EXTCOD);
			setxMun(BPartnerUtil.EXTMUN);
			setUF(BPartnerUtil.EXTREG);
		}
		
	} //IdentLocalEntrega
	
	private void setId(String id){
		id = TextUtil.toNumeric(id);
		if (id.length() == 11)
			setCPF(id);
		else if (id.length() == 14)
			setCNPJ(id);
		else
			setCNPJ(""); //Operacao Comex
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
	
	public String getxLgr() {
		return xLgr;
	}
	private void setxLgr(String xLgr) {
		if (xLgr == null || xLgr.length() < 2)
			throw new AdempiereException("xLgr = " + xLgr);
		else
			this.xLgr = TextUtil.checkSize(RemoverAcentos.remover(xLgr),60);
	}
	
	public String getNro() {
		return nro;
	}
	private void setNro(String nro) {
		if (nro != null)
			nro = "S/N";
	
		this.nro = nro;
	}
	
	public String getxCpl() {
		return xCpl;
	}
	private void setxCpl(String xCpl) {	
		if (xCpl != null && !xCpl.isEmpty())
			this.xCpl = TextUtil.checkSize(RemoverAcentos.remover(xCpl),60);
	}
	
	public String getxBairro() {
		return xBairro;
	}
	private void setxBairro(String xBairro) {
		if (xBairro == null || xBairro.length() < 2)
			throw new AdempiereException("xBairro = " + xBairro);
		else
			this.xBairro = TextUtil.checkSize(RemoverAcentos.remover(xBairro),60);
	}
	
	public String getcMun() {
		return cMun;
	}
	private void setcMun(String cMun) {
		if (cMun == null || cMun.length() != 7)
			throw new AdempiereException("cMun = " + cMun);
		else
			this.cMun = cMun;
	}
	
	public String getxMun() {
		return xMun;
	}
	private void setxMun(String xMun) {
		if (xMun == null || xMun.length() < 2)
			throw new AdempiereException("xMun = " + xMun);
		else
			this.xMun = TextUtil.checkSize(RemoverAcentos.remover(xMun),60);
	}
	
	public String getUF() {
		return UF;
	}
	private void setUF(String uF) {
		if (uF == null || uF.length() != 2)
			throw new AdempiereException("uF = " + uF);
		else
			UF = uF;
	}

} // IdentLocalEntrega