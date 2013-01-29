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

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MDocType;
import org.compiere.model.MLocation;

import com.thoughtworks.xstream.annotations.XStreamAlias;

/**
 *  B - Identificação da Nota Fiscal eletrônica
 *  
 *  @author Mario Grigioni
 *  @version $Id: IdentNFe.java,v 2.0 03/07/2012 11:58:00 mgrigioni Exp $
 */
@XStreamAlias ("ide")
public class IdentNFe {
	
	// Identificação da Nota Fiscal Eletronica
	private String cUF;
	private String cNF;
	private String natOp;
	private String indPag;
	private final String mod = "55"; //NFe = 55
	private String serie;
	private String nNF;
	private String dEmi;
	private String dSaiEnt;
	private String hSaiEnt;
	private String tpNF;
	private String cMunFG;
	private NFReferenciada NFref;
	private String tpImp;
	private String tpEmis;
	private String cDV;
	private String tpAmb;
	private String finNFe;
	private final String procEmi = "0"; //Emissão aplicativo próprio
	private final String verProc = AdempiereLBR.VERSION; //Versão do aplicativo
	private String dhCont;
	private String xJust;
	
	/**
	 * Default Constructor
	 * @param ChaveNFe chaveNFe
	 * @param MLBRNotaFiscal nf
	 */
	public IdentNFe(ChaveNFe chaveNFe,MLBRNotaFiscal nf){
		super();
		I_W_C_DocType dtW = 
				POWrapper.create(MDocType.get(nf.getCtx(), nf.getC_DocType_ID()), I_W_C_DocType.class);
	
		setcUF(chaveNFe.getcUF());
		setcNF(chaveNFe.getcNF());
		setNatOp(RemoverAcentos.remover(TextUtil.checkSize(nf.getlbr_CFOPNote(), 1, 60)));
		setIndPag(nf.getIndPag());
		setSerie(nf.getSerieNo());
		setnNF(nf.getDocumentNo(true));
		setdEmi(nf.getDateDoc());
		setdSaiEnt(nf.getlbr_DateInOut());
		sethSaiEnt(nf.getlbr_TimeInOut());
		setTpNF(nf.isSOTrx() ? "1" : "0");
		setcDV(chaveNFe.getcDV());
		setFinNFe(nf.getlbr_FinNFe());
		setcMunFG(BPartnerUtil.getCityCode(MLocation.get(nf.getCtx(), nf.getOrg_Location_ID(), null)));
		setTpImp(dtW.getlbr_DANFEFormat());
		setTpAmb(dtW.getlbr_NFeEnv());
		setTpEmis(dtW.getlbr_NFeTpEmi(),nf.getlbr_DateScan(),nf.getlbr_MotivoScan());
		if (nf.getLBR_RefNotaFiscal_ID() > 0)
			setNFref(new NFReferenciada(new MLBRNotaFiscal(nf.getCtx(),nf.getLBR_RefNotaFiscal_ID(),null).getlbr_NFeID()));
	} //IdentNFe
	
	public NFReferenciada getNFref() {
		return NFref;
	}
	private void setNFref(NFReferenciada fref) {
		NFref = fref;
	}
	
	public String getcUF() {
		return cUF;
	}
	private void setcUF(String cUF) {
		if (cUF == null || cUF.length() != 2)
			throw new AdempiereException("cUF = " + cUF);
		else
			this.cUF = cUF;
	}
	
	public String getcNF() {
		return cNF;
	}
	private void setcNF(String cNF) {
		if (cNF == null  || cNF.length() != 8)
			throw new AdempiereException("cNF = " + cNF);
		else
			this.cNF = cNF;
	}
	
	public String getNatOp() {
		return natOp;
	}
	private void setNatOp(String natOp) {
		if (natOp == null)
			throw new AdempiereException("natOp = " + natOp);
		else
			this.natOp = (RemoverAcentos.remover(natOp)).toUpperCase();
	}
	
	public String getIndPag() {
		return indPag;
	}
	private void setIndPag(String indPag) {
		if (indPag == null || indPag.length() != 1 || "012".indexOf(indPag) == -1)
			indPag = "2"; //OUTROS
		
		this.indPag = indPag;
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
		
		this.serie = serie;
	}
	
	public String getnNF() {
		return nNF;
	}
	private void setnNF(String nNF) {
		if (nNF == null || nNF.length() > 9)
			throw new AdempiereException("nNF = " + nNF);
		else
			this.nNF = nNF;
	}
	
	public String getdEmi() {
		return dEmi;
	}
	private void setdEmi(Timestamp dEmi) {
		if (dEmi == null)
			throw new AdempiereException("dEmi = " + dEmi);
		else
			this.dEmi = TextUtil.timeToString(dEmi, "yyyy-MM-dd");
	}
	
	public String getdSaiEnt() {
		return dSaiEnt;
	}
	private void setdSaiEnt(Timestamp dSaiEnt) {
		if (dSaiEnt != null)
			this.dSaiEnt = TextUtil.timeToString(dSaiEnt, "yyyy-MM-dd");;
	}
	
	public String gethSaiEnt() {
		return hSaiEnt;
	}
	private void sethSaiEnt(String hSaiEnt) {
		if (hSaiEnt != null && hSaiEnt.length() == 5)
			this.hSaiEnt = hSaiEnt + ":00";
	}
	
	public String getTpNF() {
		return tpNF;
	}
	private void setTpNF(String tpNF) {
		if (tpNF == null || tpNF.length() != 1 || "01".indexOf(tpNF) == -1)
			throw new AdempiereException("tpNF = " + tpNF); 
		else
			this.tpNF = tpNF;
	}
	
	public String getcMunFG() {
		return cMunFG;
	}
	private void setcMunFG(String cMunFG) {
		if (cMunFG == null || cMunFG.length() != 7)
			throw new AdempiereException("cMunFG = " + cMunFG);
		else
			this.cMunFG = cMunFG;
	}
	
	public String getTpImp() {
		return tpImp;
	}
	private void setTpImp(String tpImp) {
		if (tpImp == null || tpImp.length() != 1 || "12".indexOf(tpImp) == -1)
			throw new AdempiereException("tpImp = " + tpImp);
		else
			this.tpImp = tpImp;
	}
	
	public String getTpEmis() {
		return tpEmis;
	}
	private void setTpEmis(String tpEmis, Timestamp dhCont, String xJust) {
		if (tpEmis == null || tpEmis.length() != 1 || "1234567".indexOf(tpEmis) == -1)
			throw new AdempiereException("tpEmis = " + tpEmis);
		else{
			this.tpEmis = tpEmis;
			setDhCont(dhCont);
			setxJust(xJust);
		}
	}
	
	public String getcDV() {
		return cDV;
	}
	private void setcDV(String cDV) {
		this.cDV = cDV;
	}
	
	public String getTpAmb() {
		return tpAmb;
	}
	private void setTpAmb(String tpAmb) {
		if (tpAmb == null || tpAmb.length() != 1 || "12".indexOf(tpAmb) == -1){
			tpAmb = "2"; //SE ERRO tpAmb, define como HOMOLOGACAO para evitar problemas em producao
		}
	
		this.tpAmb = tpAmb;
	}
	
	public String getFinNFe() {
		return finNFe;
	}
	private void setFinNFe(String finNFe) {
		if (finNFe == null || finNFe.length() != 1 || "123".indexOf(finNFe) == -1)
			throw new AdempiereException("finNFe = " + finNFe);
		else
			this.finNFe = finNFe;
	}
	public String getProcEmi() {
		return procEmi;
	}

	public String getVerProc() {
		return verProc;
	}

	public String getDhCont() {
		return dhCont;
	}
	private void setDhCont(Timestamp dhCont) {
		if (dhCont != null && getTpEmis().equals("3"))
			this.dhCont = NFeUtil.timeToString(dhCont);
	}
	
	public String getxJust() {
		return xJust;
	}
	private void setxJust(String xJust) {
		if (xJust != null && getTpEmis().equals("3"))
			this.xJust = TextUtil.itrim(xJust);
	}

} //IdentNFe