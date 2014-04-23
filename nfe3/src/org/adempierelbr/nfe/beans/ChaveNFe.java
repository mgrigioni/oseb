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
import java.util.Random;

import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MDocType;
import org.compiere.util.CLogger;

/**
 *  ChaveNFe
 *  
 *  @author Mario Grigioni
 *  @version $Id: ChaveNFe.java,v 2.0 03/07/2012 14:02:00 mgrigioni Exp $
 */
public class ChaveNFe {
	
	/**	Logger */
	private static CLogger log = CLogger.getCLogger(ChaveNFe.class);
	
	/**			Peso			**/
	private static final String PESO = "4329876543298765432987654329876543298765432";

	private String cUF;
	private String AAMM;
	private String CNPJ;
	private final String mod = "55"; 	//NFe = 55
	private String serie;
	private String tpEmis;
	private String nNF;
	private String cNF;

	public String toString(){
		return getcUF()    + getAAMM()  + getCNPJ()
             + getMod()    + getSerie() + getnNF()
             + getTpEmis() + getcNF();
	} //toString
	
	/**
	 * Default Constructor
	 * @param MLBRNotaFiscal nf
	 */
	public ChaveNFe(MLBRNotaFiscal nf){
		super();
		I_W_C_DocType dtW = 
				POWrapper.create(MDocType.get(nf.getCtx(), nf.getC_DocType_ID()), I_W_C_DocType.class);
		
		setcUF(BPartnerUtil.getRegionCode(nf.getOrg_Location().getC_Region_ID()));
		setAAMM(nf.getDateDoc());
		setCNPJ(nf.getlbr_CNPJ());
		setSerie(nf.getSerieNo());
		setTpEmis(dtW.getlbr_NFeTpEmi());
		setnNF(nf.getDocumentNo(true));
		setcNF(TextUtil.lPad("" + new Random().nextInt(99999999), 8));	
	} //ChaveNFe

	/**
	 * @return cDV
	 */
	public String getcDV(){
		return "" + gerarDigito(toString());
	}
	
	/**
	 * 	Retorna o digito na NFe através da chave de acesso.
	 * 
	 * @param chave
	 * @return	Digito
	 */
	
	public static int gerarDigito (String chave) {
		int x = 0;
		int soma = 0;
		int dv = 0;
		//
		try {
			for (int i = 0; i < chave.length(); i++) {
				x = Integer.parseInt(chave.substring(i, i + 1))
						* Integer.parseInt(PESO.substring(i, i + 1));
				soma += x;
			}
			
			dv = 11 - (soma % 11);

			if (dv > 9) {
				dv = 0;
			}
		}
		catch (Exception e) {
			log.severe("Chave Inválida = " + chave);
		}

		return dv;
	}	// gerarDigito
	
	public String getcUF() {
		return cUF;
	}

	private void setcUF(String cuf) {
		cUF = cuf;
	}

	public String getAAMM() {
		return AAMM;
	}

	private void setAAMM(Timestamp aamm) {
		AAMM = TextUtil.timeToString(aamm, "yyMM");;
	}

	public String getCNPJ() {
		return CNPJ;
	}

	private void setCNPJ(String cnpj) {
		CNPJ = TextUtil.toNumeric(cnpj);
	}

	public String getMod() {
		return mod;
	}

	public String getSerie() {
		return serie;
	}

	private void setSerie(String serie) {
		if (serie == null || serie.isEmpty())
			serie = "0";
		
		this.serie = TextUtil.lPad(serie,3);
	}

	public String getnNF() {
		return nNF;
	}

	private void setnNF(String nnf) {
		nNF = TextUtil.lPad(nnf,9);
	}
	
	public String getTpEmis() {
		return tpEmis;
	}
	
	private void setTpEmis(String tpemis){
		tpEmis = tpemis;
	}

	public String getcNF() {
		return cNF;
	}

	private void setcNF(String cnf) {
		cNF = cnf;
	}
	
} //ChaveNFe