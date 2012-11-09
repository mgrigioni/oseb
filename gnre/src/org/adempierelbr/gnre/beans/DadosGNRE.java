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
package org.adempierelbr.gnre.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MLocation;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  Dados GNRE
 *  @author Mario Grigioni
 *  @version $Id: DadosGNRE.java,v 1.0 05/10/2012 08:20:00 mgrigioni Exp $
 */
@XStreamAlias ("TDadosGNRE")
public class DadosGNRE {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(DadosGNRE.class);
	
	@XStreamOmitField
	private String RECEITA = "100099"; //ICMS ST
	
	private String c01_UfFavorecida;
	private String c02_receita;
	private String c25_detalhamentoReceita;
	private String c26_produto;
	private String c27_tipoIdentificacaoEmitente;
	private ContribuinteEmitente c03_idContribuinteEmitente;
	private String c28_tipoDocOrigem;
	private String c04_docOrigem;
	private String c06_valorPrincipal;
	private String c10_valorTotal;
	private String c14_dataVencimento;
	private String c15_convenio;
	private String c16_razaoSocialEmitente;
	private String c17_inscricaoEstadualEmitente;
	private String c18_enderecoEmitente;
	private String c19_municipioEmitente;
	private String c20_ufEnderecoEmitente;
	private String c21_cepEmitente;
	private String c22_telefoneEmitente;
	private String c34_tipoIdentificacaoDestinatario;
	private ContribuinteDestinatario c35_idContribuinteDestinatario;
	private String c36_inscricaoEstadualDestinatario;
	private String c37_razaoSocialDestinatario;
	private String c38_municipioDestinatario;
	private String c33_dataPagamento;
	private Referencia c05_referencia;
	private CamposExtras c39_camposExtras;
	
	/**
	 * Desenvolvido apenas para guias ICMS ST
	 * @param nf
	 */
	public DadosGNRE(MLBRNotaFiscal nf, Timestamp dueDate){
		this.setC01_UfFavorecida(nf.getlbr_BPRegion());
		this.setC02_receita(RECEITA);
		this.setC25_detalhamentoReceita(getDetalhamentoReceitaUf());
		this.setC26_produto(getProdutoUf());
		this.setC27_tipoIdentificacaoEmitente("1"); //CNPJ
		this.setC03_idContribuinteEmitente(new ContribuinteEmitente(nf.getlbr_CNPJ()));
		this.setC28_tipoDocOrigem("10"); //NOTA FISCAL
		this.setC04_docOrigem(nf.getDocumentNo(true));
		this.setC06_valorPrincipal(nf.getTaxAmt("ICMSST"));
		this.setC10_valorTotal(nf.getTaxAmt("ICMSST"));
		this.setC14_dataVencimento(dueDate);
		this.setC16_razaoSocialEmitente(nf.getlbr_OrgName());
		this.setC18_enderecoEmitente(nf.getlbr_OrgAddress1());
		this.setC19_municipioEmitente(BPartnerUtil.getCityCode(MLocation.get(nf.getCtx(), nf.getOrg_Location_ID(), null)));
		this.setC20_ufEnderecoEmitente(nf.getlbr_OrgRegion());
		this.setC21_cepEmitente(nf.getlbr_OrgPostal());
		this.setC36_inscricaoEstadualDestinatario(nf.getlbr_BPIE());
		if (getC36_inscricaoEstadualDestinatario() == null){
			this.setC34_tipoIdentificacaoDestinatario("1"); //CNPJ
			this.setC35_idContribuinteDestinatario(new ContribuinteDestinatario(nf.getlbr_BPCNPJ()));
			this.setC37_razaoSocialDestinatario(nf.getBPName());
			this.setC38_municipioDestinatario(BPartnerUtil.getCityCode(MLocation.get(nf.getCtx(), nf.getlbr_Delivery_Location_ID(), null)));
		}
		
		this.setC33_dataPagamento(dueDate);
		this.setC05_referencia(new Referencia(nf.getDateDoc()));
	} //DadosGNRE
	
	/**
	 * Desenvolvido apenas para receita ICMS ST
	 * @return c25
	 */
	private String getDetalhamentoReceitaUf(){
		
		String detalhamento = null;
		
		String uf = getC01_UfFavorecida();
		if (uf != null){
			String receita = getC02_receita();
			if (receita.equals(RECEITA)){
				if (uf.equals("MA")){
					detalhamento = "000012";
				}
				else if (uf.equals("MT")){
					detalhamento = "000022";
				}
				else if (uf.equals("TO")){
					detalhamento = "000005";
				}
			}
		}
		
		return detalhamento;
	} //getDetalhamentoReceitaUf
	
	/**
	 * Desenvolvido apenas Materiais Elétricos para receita ICMS ST
	 * @return c26
	 */
	private String getProdutoUf(){
		String produto = null;
		
		String uf = getC01_UfFavorecida();
		if (uf != null){
			String receita = getC02_receita();
			if (receita.equals(RECEITA)){
				if (uf.equals("AL") || uf.equals("BA") || uf.equals("CE") ||
					uf.equals("GO") || uf.equals("MA") || uf.equals("MS") ||
					uf.equals("PE") || uf.equals("RN") || uf.equals("RR") ||
					uf.equals("SC") || uf.equals("SE") || uf.equals("TO")){
					produto = "46";
				}
			}
		}
		
		return produto;
	}

	public String getC01_UfFavorecida() {
		return c01_UfFavorecida;
	}
	public void setC01_UfFavorecida(String c01_UfFavorecida) {
		this.c01_UfFavorecida = c01_UfFavorecida;
	}
	public String getC02_receita() {
		return c02_receita;
	}
	public void setC02_receita(String c02_receita) {
		this.c02_receita = c02_receita;
	}
	public String getC25_detalhamentoReceita() {
		return c25_detalhamentoReceita;
	}
	public void setC25_detalhamentoReceita(String c25_detalhamentoReceita) {
		this.c25_detalhamentoReceita = c25_detalhamentoReceita;
	}
	public String getC26_produto() {
		return c26_produto;
	}
	public void setC26_produto(String c26_produto) {
		this.c26_produto = c26_produto;
	}
	public String getC27_tipoIdentificacaoEmitente() {
		return c27_tipoIdentificacaoEmitente;
	}
	public void setC27_tipoIdentificacaoEmitente(
			String c27_tipoIdentificacaoEmitente) {
		this.c27_tipoIdentificacaoEmitente = c27_tipoIdentificacaoEmitente;
	}
	public ContribuinteEmitente getC03_idContribuinteEmitente() {
		return c03_idContribuinteEmitente;
	}
	public void setC03_idContribuinteEmitente(
			ContribuinteEmitente c03_idContribuinteEmitente) {
		this.c03_idContribuinteEmitente = c03_idContribuinteEmitente;
	}
	public String getC28_tipoDocOrigem() {
		return c28_tipoDocOrigem;
	}
	public void setC28_tipoDocOrigem(String c28_tipoDocOrigem) {
		this.c28_tipoDocOrigem = c28_tipoDocOrigem;
	}
	public String getC04_docOrigem() {
		return c04_docOrigem;
	}
	public void setC04_docOrigem(String c04_docOrigem) {
		this.c04_docOrigem = c04_docOrigem;
	}
	public String getC06_valorPrincipal() {
		return c06_valorPrincipal;
	}
	public void setC06_valorPrincipal(BigDecimal c06_valorPrincipal) {
		this.c06_valorPrincipal = TextUtil.bigdecimalToString(c06_valorPrincipal);
	}
	public String getC10_valorTotal() {
		return c10_valorTotal;
	}
	public void setC10_valorTotal(BigDecimal c10_valorTotal) {
		this.c10_valorTotal = TextUtil.bigdecimalToString(c10_valorTotal);
	}
	public String getC14_dataVencimento() {
		return c14_dataVencimento;
	}
	public void setC14_dataVencimento(Timestamp c14_dataVencimento) {
		this.c14_dataVencimento = TextUtil.timeToString(c14_dataVencimento, "yyyy-MM-dd");
	}
	public String getC15_convenio() {
		return c15_convenio;
	}
	public void setC15_convenio(String c15_convenio) {
		this.c15_convenio = c15_convenio;
	}
	public String getC16_razaoSocialEmitente() {
		return c16_razaoSocialEmitente;
	}
	public void setC16_razaoSocialEmitente(String c16_razaoSocialEmitente) {
		this.c16_razaoSocialEmitente = TextUtil.checkSize(RemoverAcentos.remover(c16_razaoSocialEmitente),2,60);
	}
	public String getC17_inscricaoEstadualEmitente() {
		return c17_inscricaoEstadualEmitente;
	}
	public void setC17_inscricaoEstadualEmitente(
			String c17_inscricaoEstadualEmitente) {
		this.c17_inscricaoEstadualEmitente = c17_inscricaoEstadualEmitente;
	}
	public String getC18_enderecoEmitente() {
		return c18_enderecoEmitente;
	}
	public void setC18_enderecoEmitente(String c18_enderecoEmitente) {
		this.c18_enderecoEmitente = TextUtil.checkSize(RemoverAcentos.remover(c18_enderecoEmitente),2,100);
	}
	public String getC19_municipioEmitente() {
		return c19_municipioEmitente;
	}
	public void setC19_municipioEmitente(String c19_municipioEmitente) {
		this.c19_municipioEmitente =  c19_municipioEmitente.substring(2);
	}
	public String getC20_ufEnderecoEmitente() {
		return c20_ufEnderecoEmitente;
	}
	public void setC20_ufEnderecoEmitente(String c20_ufEnderecoEmitente) {
		this.c20_ufEnderecoEmitente = c20_ufEnderecoEmitente;
	}
	public String getC21_cepEmitente() {
		return c21_cepEmitente;
	}
	public void setC21_cepEmitente(String c21_cepEmitente) {
		this.c21_cepEmitente = TextUtil.toNumeric(c21_cepEmitente);
	}
	public String getC22_telefoneEmitente() {
		return c22_telefoneEmitente;
	}
	public void setC22_telefoneEmitente(String c22_telefoneEmitente) {
		this.c22_telefoneEmitente = c22_telefoneEmitente;
	}
	public String getC34_tipoIdentificacaoDestinatario() {
		return c34_tipoIdentificacaoDestinatario;
	}
	public void setC34_tipoIdentificacaoDestinatario(
			String c34_tipoIdentificacaoDestinatario) {
		this.c34_tipoIdentificacaoDestinatario = c34_tipoIdentificacaoDestinatario;
	}
	public ContribuinteDestinatario getC35_idContribuinteDestinatario() {
		return c35_idContribuinteDestinatario;
	}
	public void setC35_idContribuinteDestinatario(
			ContribuinteDestinatario c35_idContribuinteDestinatario) {
		this.c35_idContribuinteDestinatario = c35_idContribuinteDestinatario;
	}
	public String getC36_inscricaoEstadualDestinatario() {
		return c36_inscricaoEstadualDestinatario;
	}
	public void setC36_inscricaoEstadualDestinatario(
			String c36_inscricaoEstadualDestinatario) {
		
		c36_inscricaoEstadualDestinatario = TextUtil.toNumeric(c36_inscricaoEstadualDestinatario);
		if (!c36_inscricaoEstadualDestinatario.isEmpty())
			this.c36_inscricaoEstadualDestinatario = c36_inscricaoEstadualDestinatario;
	}
	public String getC37_razaoSocialDestinatario() {
		return c37_razaoSocialDestinatario;
	}
	public void setC37_razaoSocialDestinatario(String c37_razaoSocialDestinatario) {
		this.c37_razaoSocialDestinatario = TextUtil.checkSize(RemoverAcentos.remover(c37_razaoSocialDestinatario),2,60);
	}
	public String getC38_municipioDestinatario() {
		return c38_municipioDestinatario;
	}
	public void setC38_municipioDestinatario(String c38_municipioDestinatario) {
		this.c38_municipioDestinatario = c38_municipioDestinatario.substring(2);
	}
	public String getC33_dataPagamento() {
		return c33_dataPagamento;
	}
	public void setC33_dataPagamento(Timestamp c33_dataPagamento) {
		this.c33_dataPagamento = TextUtil.timeToString(c33_dataPagamento, "yyyy-MM-dd");;
	}
	public Referencia getC05_referencia() {
		return c05_referencia;
	}
	public void setC05_referencia(Referencia c05_referencia) {
		this.c05_referencia = c05_referencia;
	}
	public CamposExtras getC39_camposExtras() {
		return c39_camposExtras;
	}
	public void setC39_camposExtras(CamposExtras c39_camposExtras) {
		this.c39_camposExtras = c39_camposExtras;
	}
	
} //DadosGNRE