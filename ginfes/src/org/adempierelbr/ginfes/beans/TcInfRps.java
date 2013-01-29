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

import java.sql.Timestamp;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  TcInfRps
 *  @author Mario Grigioni
 *  @version $Id: TcInfRps.java,v 1.0 05/06/2012 15:24:00 mgrigioni Exp $
 */
@XStreamAlias ("InfRps")
public class TcInfRps {
	
	@XStreamOmitField
	private CLogger log =  CLogger.getCLogger(TcInfRps.class);

	@XStreamAsAttribute
	private String Id;
	
	private TcIdentificacaoRps IdentificacaoRps;
	private String DataEmissao;
	private String NaturezaOperacao = "1"; //TRIBUTACAO NO MUNICIPIO
	private String RegimeEspecialTributacao;
	private String OptanteSimplesNacional;
	private String IncentivadorCultural;
	private String Status = "1"; //NORMAL
	private TcIdentificacaoRps RpsSubstituido;
	private TcDadosServico Servico;
	private TcIdentificacaoPrestador Prestador;
	private TcDadosTomador Tomador;
	private TcIdentificacaoIntermediarioServico IntermediarioServico;
	private TcDadosConstrucaoCivil ConstrucaoCivil;
	
	/**
	 * Constructor
	 * @param id
	 * @param identificacaoRps
	 * @param dataEmissao
	 * @param naturezaOperacao
	 * @param optanteSimplesNacional
	 * @param IncentivadorCultural
	 * @param servico
	 * @param prestador
	 * @param tomador
	 */
	public TcInfRps(String id, TcIdentificacaoRps identificacaoRps, Timestamp dataEmissao,
			boolean optanteSimplesNacional, boolean incentivadorCultural, TcDadosServico servico, 
			TcIdentificacaoPrestador prestador, TcDadosTomador tomador) {
		super();
		setId(id);
		setIdentificacaoRps(identificacaoRps);
		setDataEmissao(dataEmissao);
		setOptanteSimplesNacional(optanteSimplesNacional);
		setIncentivadorCultural(incentivadorCultural);
		setServico(servico);
		setPrestador(prestador);
		setTomador(tomador);
	}
	public String getId() {
		return Id;
	}
	private void setId(String id) {
		Id = id;
	}
	
	public TcIdentificacaoRps getIdentificacaoRps() {
		return IdentificacaoRps;
	}
	private void setIdentificacaoRps(TcIdentificacaoRps identificacaoRps) {
		IdentificacaoRps = identificacaoRps;
	}
	
	public String getDataEmissao() {
		return DataEmissao;
	}
	private void setDataEmissao(Timestamp dataEmissao) {
		DataEmissao = NFeUtil.timeToString(dataEmissao);
	}
	
	public String getNaturezaOperacao() {
		return NaturezaOperacao;
	}
	public void setNaturezaOperacao(String naturezaOperacao) {
		naturezaOperacao = TextUtil.toNumeric(naturezaOperacao);
		if("123456".indexOf(naturezaOperacao) == -1){
			throw new AdempiereException ("(Natureza da Operação inválida) - " + naturezaOperacao);
		}
		
		NaturezaOperacao = naturezaOperacao;
	}
	
	public String getRegimeEspecialTributacao() {
		return RegimeEspecialTributacao;
	}
	public void setRegimeEspecialTributacao(String regimeEspecialTributacao) {
		RegimeEspecialTributacao = regimeEspecialTributacao;
	}
	
	public String getOptanteSimplesNacional() {
		return OptanteSimplesNacional;
	}
	private void setOptanteSimplesNacional(boolean optanteSimplesNacional) {
		if (optanteSimplesNacional)
			OptanteSimplesNacional = "1"; //SIM
		else
			OptanteSimplesNacional = "2"; //NAO
	}
	
	public String getIncentivadorCultural() {
		return IncentivadorCultural;
	}
	public void setIncentivadorCultural(boolean incentivadorCultural) {
		if (incentivadorCultural)
			IncentivadorCultural = "1"; //SIM
		else
			IncentivadorCultural = "2"; //NAO
	}
	
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	
	public TcIdentificacaoRps getRpsSubstituido() {
		return RpsSubstituido;
	}
	public void setRpsSubstituido(TcIdentificacaoRps rpsSubstituido) {
		RpsSubstituido = rpsSubstituido;
	}
	
	public TcDadosServico getServico() {
		return Servico;
	}
	private void setServico(TcDadosServico servico) {
		Servico = servico;
	}
	
	public TcIdentificacaoPrestador getPrestador() {
		return Prestador;
	}
	private void setPrestador(TcIdentificacaoPrestador prestador) {
		Prestador = prestador;
	}
	
	public TcDadosTomador getTomador() {
		return Tomador;
	}
	private void setTomador(TcDadosTomador tomador) {
		Tomador = tomador;
	}
	
	public TcIdentificacaoIntermediarioServico getIntermediarioServico() {
		return IntermediarioServico;
	}
	public void setIntermediarioServico(
			TcIdentificacaoIntermediarioServico intermediarioServico) {
		IntermediarioServico = intermediarioServico;
	}
	
	public TcDadosConstrucaoCivil getConstrucaoCivil() {
		return ConstrucaoCivil;
	}
	public void setConstrucaoCivil(TcDadosConstrucaoCivil construcaoCivil) {
		ConstrucaoCivil = construcaoCivil;
	}
	
}	// TcInfRps