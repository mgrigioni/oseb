package org.adempierelbr.nfe;

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.apache.commons.lang.math.NumberUtils;
import org.compiere.util.CLogger;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import com.thoughtworks.xstream.annotations.XStreamOmitField;

/**
 * 	Inutilização da Numeração da NF.
 * 
 * 	@author Ricardo Santana
 *	@version $Id: InutilizacaoNF.java, v1.0 2010/08/04 11:45:26 AM, ralexsander Exp $
 */
@XStreamAlias ("infInut")
public class InutilizacaoNF {
	
	/**	Logger */
	@XStreamOmitField
	private static CLogger log = CLogger.getCLogger(InutilizacaoNF.class);
	
	@XStreamOmitField
	private String msg = "";
	
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
	public InutilizacaoNF (I_W_AD_OrgInfo oiW, String regionCode) {
		setCNPJ(oiW.getlbr_CNPJ());
		setTpAmb(oiW.getlbr_NFeEnv());
		setcUF(regionCode);
	}	//	InutilizacaoNF
	
	
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
	public void setnNFIni(String nNFIni)
	{
		this.nNFIni = nNFIni;
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
	public void setnNFFin(String nNFFin)
	{
		this.nNFFin = nNFFin;
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
	 * 
	 * 	@return true if there is no errors
	 */
	public boolean isValid()
	{
		msg = "";
		Id = "";
		//
		if (getTpAmb() == null || getTpAmb().length() != 1)
			msg = "Tipo de Ambiente inválido\n";
		if (getcUF() == null || getcUF().length() != 2)
			msg = "Código da UF inválido\n";
		if (getAno() == null || getAno().length() != 2)
			msg = "O Ano de inutilização é inválido\n";
		if (getCNPJ() == null || getCNPJ().length() != 14)
			msg = "CNPJ inválido\n";
		if (getMod() == null || getMod().length() != 2
				|| !NumberUtils.isNumber(getMod()))
			msg = "Modelo da NF inválido\n";
		if (getSerie() == null || getSerie().length() < 1 || 
				getSerie().length() > 3 || !NumberUtils.isNumber(getSerie()))
			msg = "Série da NF inválida\n";
		if (getnNFIni() == null || getnNFIni().length() < 1 || 
				getnNFIni().length() > 9 || !NumberUtils.isNumber(getnNFIni()))
			msg = "Número Inicial da NF para inutilização é inválido\n";
		if (getnNFFin() == null || getnNFFin().length() < 1 || 
				getnNFFin().length() > 9 || !NumberUtils.isNumber(getnNFFin()))
			msg = "Número Final da NF para inutilização é inválido\n";
		if (getxJust() == null || getxJust().length() < 15)
			msg = "Justificativa deve ser maior que 15 caracteres\n";
		//
		if (msg.equals(""))
		{
			setID();
			return true;
		}
		else
			return false;
	}	//	isValid
	
	/**
	 * 	Retorna a mensagem de Erro
	 * 
	 * 	@return Error Msg
	 */
	public String getMsg() {
		return msg;
	}	//	getMsg
	
}	//	InutilizacaoNF