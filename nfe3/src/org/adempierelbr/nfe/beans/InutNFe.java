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

import java.sql.Timestamp;

import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.commons.lang.math.NumberUtils;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 *  InutNFe
 *  @author Mario Grigioni
 *  @version $Id: InutNFe.java,v 1.0 26/06/2012 14:16:00 mgrigioni Exp $
 */
@XStreamAlias ("inutNFe")
public class InutNFe {

	@XStreamAsAttribute
	private final String xmlns=NFeUtil.NAMESPACE_NFE;
	
	@XStreamAsAttribute
	private String versao;
	
	public InfInut infInut;

	public InutNFe(String versao, I_W_AD_OrgInfo oiW, int C_Region_ID, Timestamp ano, 
			String mod, String serie, int nNFIni, int nNFFin, String xJust) {
		super();
		setVersao(versao);
		setInfInut(new InfInut(oiW,C_Region_ID,ano,mod,serie,nNFIni,nNFFin,xJust));
	}
	
	public String isValid(){
		return getInfInut().isValid();
	}
	
	public String getID(){
		return getInfInut().getID();
	}

	public String getVersao() {
		return versao;
	}
	public void setVersao(String versao) {
		this.versao = versao;
	}
	public InfInut getInfInut() {
		return infInut;
	}
	public void setInfInut(InfInut infInut) {
		this.infInut = infInut;
	}
	public String getXmlns() {
		return xmlns;
	}
	
}	// InutNFe

/** 
 * 	@author Ricardo Santana
 *	@version $Id: InfInut.java, v1.0 2010/08/04 11:45:26 AM, ralexsander Exp $
 */
@XStreamAlias ("infInut")
class InfInut {
	
	/**	Logger */
	@XStreamOmitField
	private static CLogger log = CLogger.getCLogger(InfInut.class);
		
	@XStreamAsAttribute
	private String Id;
	
	private String tpAmb;
	private final String xServ = "INUTILIZAR"; 
	private String cUF;
	private String ano;
	private String CNPJ;
	private String mod;
	private String serie;
	private String nNFIni;
	private String nNFFin;
	private String xJust;
	
	/**
	 * 	Default Constructor
	 */
	public InfInut (I_W_AD_OrgInfo oiW, int C_Region_ID, Timestamp ano, String mod,
			String serie, int nNFIni, int nNFFin, String xJust) {
		setCNPJ(oiW.getlbr_CNPJ());
		setTpAmb(oiW.getlbr_NFeEnv());
		setcUF(BPartnerUtil.getRegionCode(C_Region_ID));
		setAno(TextUtil.timeToString(ano, "yy"));
		setMod(mod);
		setSerie(serie);
		setnNFIni(nNFIni);
		setnNFFin(nNFFin);
		setxJust(xJust);
	}	//	InfInut
	
	
	public String getxServ() {
		return xServ;
	}	//	getxServ
	
	/**
	 * 	Retorna o Identificador da Inutilização, composto por:
	 * 	"ID" UF Ano CNPJ Modelo Serie NoInicial NoFinal
	 * @return
	 */
	public String getID()
	{
		return Id;
	}	//	getID
	
	/**
	 * 	Grava Identificador da Inutilização
	 */
	public void setID()
	{
		this.Id = "ID"+getcUF()+getAno()+getCNPJ()+getMod()+TextUtil.lPad(getSerie(),3)+
					TextUtil.lPad(getnNFIni(),9)+TextUtil.lPad(getnNFFin(),9);
	}	//	setID
	
	/**
	 * 	Tipo de Ambiente (Produção ou Homologação)	
	 * 	@return tipo de ambiente
	 */
	public String getTpAmb()
	{
		return tpAmb;
	}	//	getTpAmb
	
	/**
	 * 	Tipo de Ambiente (Produção ou Homologação)
	 * 	@param tpAmb
	 */
	public void setTpAmb(String tpAmb)
	{
		this.tpAmb = tpAmb;
	}	//	setTpAmb
	
	/**
	 * 	Código numérico da UF (Não é a sigla)
	 * 	@return código da UF
	 */
	public String getcUF()
	{
		return cUF;
	}	//	getcUF
	
	/**
	 * 	Código numérico da UF (Não é a sigla)
	 * 	@param cUF
	 */
	public void setcUF(String cUF)
	{
		this.cUF = cUF;
	}	//	setcUF
	
	/**
	 * 	Ano em que a sequencia deve ser inutilizada
	 * 	@return Ano
	 */
	public String getAno()
	{
		return ano;
	}	//	getAno
	
	/**
	 * 	Ano em que a sequencia deve ser inutilizada
	 * 	@param ano
	 */
	public void setAno(String ano)
	{
		this.ano = ano;
	}	//	setAno
	
	/**
	 * 	CNPJ
	 * 	@return CNPJ
	 */
	public String getCNPJ()
	{
		return CNPJ;
	}	//	getCNPJ
	
	/**
	 * 	CNPJ
	 * 	@param cNPJ
	 */
	public void setCNPJ(String cNPJ)
	{
		CNPJ = TextUtil.toNumeric(cNPJ);
	}	//	setCNPJ
	
	/**
	 * 	Modelo da sequencia a ser inutilizada, atualmente 55
	 * 	@return mod
	 */
	public String getMod()
	{
		return mod;
	}	//	getMod
	
	/**
	 * 	Modelo da sequencia a ser inutilizada, atualmente 55
	 * 	@param mod
	 */
	public void setMod(String mod)
	{
		this.mod = mod;
	}	//	setMod
	
	/**
	 * 	Série da sequencia a ser inutilizada
	 * 	@return serie
	 */
	public String getSerie()
	{
		return serie;
	}	//	getSerie
	
	/**
	 * 	Série da sequencia a ser inutilizada
	 * 	@param serie
	 */
	public void setSerie(String serie)
	{
		this.serie = serie;
	}	//	setSerie
	
	/**
	 * 	Número Inicial da Sequencia a ser inutilizada
	 * 	@return número inicial
	 */
	public String getnNFIni()
	{
		return nNFIni;
	}	//	getnNFIni
	
	/**
	 * 	Número Inicial da Sequencia a ser inutilizada
	 * 	@param nNFIni
	 */
	public void setnNFIni(int nNFIni)
	{
		this.nNFIni = String.valueOf(nNFIni);
	}	//	setnNFIni
	
	/**
	 * 	Número Final da Sequencia a ser inutilizada
	 * 	@return número final
	 */
	public String getnNFFin()
	{
		return nNFFin;
	}	//	getnNFFin
	
	/**
	 * 	Número Final da Sequencia a ser inutilizada
	 * 	@param nNFFin
	 */
	public void setnNFFin(int nNFFin)
	{
		this.nNFFin = String.valueOf(nNFFin);
	}	//	setnNFFin
	
	/**
	 * 	Justificativa da Inutilização
	 * 	@return Mensagem de justificativa
	 */
	public String getxJust()
	{
		return xJust;
	}	//	getxJust
	
	/**
	 * 	Justificativa da Inutilização
	 * 	@param xJust
	 */
	public void setxJust(String xJust)
	{
		xJust = RemoverAcentos.remover(xJust);
		//
		if (xJust != null && xJust.length() > 255)
		{
			log.warning("Motivo do cancelamento truncado para 255 caracteres");
			xJust = xJust.substring(0, 255);
		}
		//
		this.xJust = xJust;
	}	//	setxJust
	
	/**
	 * 	Faz as validações solicitadas no manual de integração
	 */
	public String isValid() {
		
		if (getTpAmb() == null || getTpAmb().length() != 1){
			return "Tipo de Ambiente inválido";
		}
		
		if (getcUF() == null || getcUF().length() != 2){
			return "Código da UF inválido";
		}
		
		if (getAno() == null || getAno().length() != 2){
			return "O Ano de inutilização é inválido";
		}
		
		if (getCNPJ() == null || getCNPJ().length() != 14){
			return "CNPJ inválido";
		}
		
		if (getMod() == null || getMod().length() != 2 || !NumberUtils.isNumber(getMod())){
			return "Modelo da NF inválido";
		}
		
		if (getSerie() == null || getSerie().length() < 1 || 
				getSerie().length() > 3 || !NumberUtils.isNumber(getSerie())){
			return "Série da NF inválida";
		}
		
		if (getnNFIni() == null || getnNFIni().length() < 1 || 
				getnNFIni().length() > 9 || !NumberUtils.isNumber(getnNFIni())){
			return "Número Inicial da NF para inutilização é inválido";
		}
		
		if (getnNFFin() == null || getnNFFin().length() < 1 || 
				getnNFFin().length() > 9 || !NumberUtils.isNumber(getnNFFin())){
			return "Número Final da NF para inutilização é inválido";
		}
				
		if (getxJust() == null || getxJust().length() < 15){
			return "Justificativa deve ser maior que 15 caracteres";
		}
		
		if (Integer.parseInt(getnNFIni()) > Integer.parseInt(getnNFFin())){
			return "Número Final da NF não pode ser menor que Número Inicial da NF";
		}
	
		setID();
		return null;
	}	//	isValid
	
} // infInut