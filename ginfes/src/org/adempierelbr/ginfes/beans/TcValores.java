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
package org.adempierelbr.ginfes.beans;

import java.math.BigDecimal;

import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  TcValores  
 *  @author Mario Grigioni
 *  @version $Id: TcValores.java,v 1.0 30/05/2012 14:38:00 mgrigioni Exp $
 */
@XStreamAlias ("Valores")
public class TcValores {
	
	private String ValorServicos;
	private String ValorDeducoes;
	private String ValorPis;
	private String ValorCofins;
	private String ValorInss;
	private String ValorIr;
	private String ValorCsll;
	private String IssRetido = "2"; //NAO
	private String ValorIss;
	private String OutrasRetencoes;
	private String BaseCalculo;
	private String Aliquota;
	private String ValorLiquidoNfse;
	private String ValorIssRetido;
	private String DescontoCondicionado;
	private String DescontoIncondicionado;
	
	/**
	 * Construtor
	 * @param valorServicos
	 * @param issRetido
	 */
	public TcValores(BigDecimal valorServicos) {
		super();
		setValorServicos(valorServicos);
	}
	
	public String getValorServicos() {
		return ValorServicos;
	}
	private void setValorServicos(BigDecimal valorServicos) {
		ValorServicos = TextUtil.bigdecimalToString(valorServicos);
	}
	
	public String getValorDeducoes() {
		return ValorDeducoes;
	}
	public void setValorDeducoes(BigDecimal valorDeducoes) {
		ValorDeducoes = TextUtil.bigdecimalToString(valorDeducoes);
	}
	
	public String getValorPis() {
		return ValorPis;
	}
	public void setValorPis(BigDecimal valorPis) {
		ValorPis = TextUtil.bigdecimalToString(valorPis);
	}
	
	public String getValorCofins() {
		return ValorCofins;
	}
	public void setValorCofins(BigDecimal valorCofins) {
		ValorCofins = TextUtil.bigdecimalToString(valorCofins);
	}
	
	public String getValorInss() {
		return ValorInss;
	}
	public void setValorInss(BigDecimal valorInss) {
		ValorInss = TextUtil.bigdecimalToString(valorInss);
	}
	
	public String getValorIr() {
		return ValorIr;
	}
	public void setValorIr(BigDecimal valorIr) {
		ValorIr = TextUtil.bigdecimalToString(valorIr);
	}
	
	public String getValorCsll() {
		return ValorCsll;
	}
	public void setValorCsll(BigDecimal valorCsll) {
		ValorCsll = TextUtil.bigdecimalToString(valorCsll);
	}
	
	public String getIssRetido() {
		return IssRetido;
	}
	private void setIssRetido(boolean issRetido) {
		if (issRetido)
			IssRetido = "1"; //SIM
		else
			IssRetido = "2"; //NAO
	}
	
	public String getValorIss() {
		return ValorIss;
	}
	public void setValorIss(BigDecimal valorIss) {
		if (valorIss.signum() >= 0)
			ValorIss = TextUtil.bigdecimalToString(valorIss);
		else{
			setValorIssRetido(valorIss.abs());
			setIssRetido(true);
		}
	}
	
	public String getOutrasRetencoes() {
		return OutrasRetencoes;
	}
	public void setOutrasRetencoes(BigDecimal outrasRetencoes) {
		OutrasRetencoes = TextUtil.bigdecimalToString(outrasRetencoes);
	}
	
	public String getBaseCalculo() {
		return BaseCalculo;
	}
	public void setBaseCalculo(BigDecimal baseCalculo) {
		BaseCalculo = TextUtil.bigdecimalToString(baseCalculo);
	}
	
	public String getAliquota() {
		return Aliquota;
	}
	public void setAliquota(BigDecimal aliquota) {
		Aliquota = TextUtil.bigdecimalToString(aliquota,4);
	}
	
	public String getValorLiquidoNfse() {
		return ValorLiquidoNfse;
	}
	public void setValorLiquidoNfse() {
		
		BigDecimal ValorServicos = getValorServicos() == null ? Env.ZERO : new BigDecimal (getValorServicos());
		BigDecimal ValorPis = getValorPis() == null ? Env.ZERO : new BigDecimal (getValorPis());
		BigDecimal ValorCofins = getValorCofins() == null ? Env.ZERO : new BigDecimal (getValorCofins());
		BigDecimal ValorInss = getValorInss() == null ? Env.ZERO : new BigDecimal (getValorInss());
		BigDecimal ValorIr = getValorIr() == null ? Env.ZERO : new BigDecimal (getValorIr());
		BigDecimal ValorCsll = getValorCsll() == null ? Env.ZERO : new BigDecimal (getValorCsll());
		BigDecimal ValorIssRetido = getValorIssRetido() == null ? Env.ZERO : new BigDecimal (getValorIssRetido());
		
		BigDecimal valorLiquidoNfse = ValorServicos.subtract(ValorPis).subtract(ValorCofins)
				.subtract(ValorInss).subtract(ValorIr).subtract(ValorCsll).subtract(ValorIssRetido);
		
		ValorLiquidoNfse = TextUtil.bigdecimalToString(valorLiquidoNfse);
	}
	
	public String getValorIssRetido() {
		return ValorIssRetido;
	}
	private void setValorIssRetido(BigDecimal valorIssRetido) {
		ValorIssRetido = TextUtil.bigdecimalToString(valorIssRetido);
	}
	
	public String getDescontoCondicionado() {
		return DescontoCondicionado;
	}
	public void setDescontoCondicionado(BigDecimal descontoCondicionado) {
		DescontoCondicionado = TextUtil.bigdecimalToString(descontoCondicionado);
	}
	
	public String getDescontoIncondicionado() {
		return DescontoIncondicionado;
	}
	public void setDescontoIncondicionado(BigDecimal descontoIncondicionado) {
		DescontoIncondicionado = TextUtil.bigdecimalToString(descontoIncondicionado);
	}
	
}	// TcValores