/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
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
package org.adempierelbr.sped.efd.contrib.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO D500: NOTA FISCAL DE SERVIÇO DE COMUNICAÇÃO (CÓDIGO 21) E 
 * NOTA FISCAL DE SERVIÇO DE TELECOMUNICAÇÃO (CÓDIGO 22) – DOCUMENTOS DE AQUISIÇÃO COM DIREITO A CRÉDITO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RD500.java, 21/02/2011, 12:34:00, mgrigioni
 */
public class RD500 extends RegSped implements Comparable<Object>{	
	
	private String 		IND_OPER;
	private String 		IND_EMIT;
	private String 		COD_PART;
	private String 		COD_MOD;
	private String 		COD_SIT;
	private String 		SER;
	private String      SUB;
	private String 		NUM_DOC;
	private String      COD_INF;
	
	private Timestamp 	DT_DOC;
	private Timestamp 	DT_A_P;
	
	private BigDecimal 	VL_DOC;
	private BigDecimal	VL_DESC;
	private BigDecimal 	VL_SERV;
	private BigDecimal 	VL_SERV_NT;
	private BigDecimal 	VL_TERC;
	private BigDecimal 	VL_DA;
	private BigDecimal 	VL_BC_ICMS;
	private BigDecimal 	VL_ICMS;
	private BigDecimal 	VL_PIS;
	private BigDecimal 	VL_COFINS;
	
	private boolean isCancelled = false; //Documento Cancelado
	
	public RD500(String IND_OPER, String IND_EMIT, String COD_PART,
			String COD_MOD, String COD_SIT, String SER, String SUB,
			String NUM_DOC, Timestamp DT_DOC, Timestamp DT_A_P,
			BigDecimal VL_DOC, BigDecimal VL_DESC,
			BigDecimal VL_SERV, BigDecimal VL_SERV_NT, BigDecimal VL_TERC,
			BigDecimal VL_DA, BigDecimal VL_BC_ICMS, BigDecimal VL_ICMS, 
			String COD_INF, BigDecimal VL_PIS, BigDecimal VL_COFINS)
	{		
		super();
		this.IND_OPER 	= IND_OPER;
		this.IND_EMIT 	= IND_EMIT;
		setCOD_MOD(COD_MOD);
		setCOD_SIT(COD_SIT);
		setSER(SER);
		this.SUB = SUB;
		setNUM_DOC(NUM_DOC);
		setCOD_PART(COD_PART); //definido para comparação e verificado na toString()
		
		if (!isCancelled){
			this.DT_DOC 	= DT_DOC;
			this.DT_A_P 	= DT_A_P;
			this.VL_DOC 	= VL_DOC;
			this.VL_DESC 	= VL_DESC;
			this.VL_SERV    = VL_SERV;
			this.VL_SERV_NT = VL_SERV_NT;
			this.VL_TERC 	= VL_TERC;
			this.VL_DA 	    = VL_DA;
			this.VL_BC_ICMS = VL_BC_ICMS;
			this.VL_ICMS 	= VL_ICMS;
			this.COD_INF    = COD_INF;
			this.VL_PIS 	= VL_PIS;
			this.VL_COFINS 	= VL_COFINS;
		}
	}//	RD500
	
	public void addValues(RD500 otherD500){
		this.VL_DOC        = getVL_DOC().add(otherD500.getVL_DOC());
		this.VL_DESC       = getVL_DESC().add(otherD500.getVL_DESC());
		this.VL_SERV       = getVL_SERV().add(otherD500.getVL_SERV());
		this.VL_SERV_NT    = getVL_SERV_NT().add(otherD500.getVL_SERV_NT());
		this.VL_TERC       = getVL_TERC().add(otherD500.getVL_TERC());
		this.VL_DA         = getVL_DA().add(otherD500.getVL_DA());
		this.VL_BC_ICMS    = getVL_BC_ICMS().add(otherD500.getVL_BC_ICMS());
		this.VL_ICMS       = getVL_ICMS().add(otherD500.getVL_ICMS());
		this.VL_PIS        = getVL_PIS().add(otherD500.getVL_PIS());
		this.VL_COFINS     = getVL_COFINS().add(otherD500.getVL_COFINS());
	}
	
	private void setCOD_MOD(String COD_MOD){
				
		if (COD_MOD == null || COD_MOD.trim().isEmpty() || COD_MOD.trim().length() != 2 )
			log.severe("MODELO NF = NULL");
		else if (!(COD_MOD.equals("21") || //SERVIÇO DE COMUNICAÇÃO
				   COD_MOD.equals("22")))  //SERVIÇO DE TELECOMUNICAÇÃO
			log.severe("MODELO NF INVALIDO");
		else
			this.COD_MOD = COD_MOD;
	}
	
	private void setCOD_SIT(String COD_SIT){
		
		if (COD_SIT == null || COD_SIT.trim().isEmpty() || COD_SIT.trim().length() != 2 ){
			log.severe("SITUACAO NF = NULL");
			return;
		}
		else if (COD_SIT.equals("02") || //cancelado
				 COD_SIT.equals("03") || //cancelado extemporâneo
				 COD_SIT.equals("04") || //Nota Fiscal Eletrônica (NF-e) denegada
				 COD_SIT.equals("05")){  //numeração inutilizada
			log.finer("NF cancelada");
			isCancelled = true;
		}
		
		this.COD_SIT = COD_SIT;
	}
	
	private void setNUM_DOC(String NUM_DOC){
		this.NUM_DOC = TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9);
	}
	
	private void setSER(String SER){
		this.SER = TextUtil.checkSize(SER, 3);
	}
	
	private void setCOD_PART(String COD_PART){
		this.COD_PART = TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60);
	}
	
	public String getIND_EMIT(){
		return IND_EMIT;
	}
	
	public String getCOD_MOD(){
		return COD_MOD;
	}
	
	private BigDecimal getVL_DOC() {
		return VL_DOC == null ? Env.ZERO : VL_DOC;
	}

	private BigDecimal getVL_DESC() {
		return VL_DESC == null ? Env.ZERO : VL_DESC;
	}

	private BigDecimal getVL_SERV() {
		return VL_SERV == null ? Env.ZERO : VL_SERV;
	}

	private BigDecimal getVL_SERV_NT() {
		return VL_SERV_NT == null ? Env.ZERO : VL_SERV_NT;
	}

	private BigDecimal getVL_TERC() {
		return VL_TERC == null ? Env.ZERO : VL_TERC;
	}

	private BigDecimal getVL_DA() {
		return VL_DA == null ? Env.ZERO : VL_DA;
	}

	private BigDecimal getVL_BC_ICMS() {
		return VL_BC_ICMS == null ? Env.ZERO : VL_BC_ICMS;
	}

	private BigDecimal getVL_ICMS() {
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}

	private BigDecimal getVL_PIS() {
		return VL_PIS == null ? Env.ZERO : VL_PIS;
	}

	private BigDecimal getVL_COFINS() {
		return VL_COFINS == null ? Env.ZERO : VL_COFINS;
	}


	/**
	 * Formata o Bloco D Registro 500
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(IND_OPER, 1, 1))
            .append(PIPE).append(TextUtil.checkSize(IND_EMIT, 1))
            .append(PIPE).append(isCancelled ? "" : COD_PART) //verifica se está cancelado
            .append(PIPE).append(COD_MOD) 
            .append(PIPE).append(COD_SIT)
            .append(PIPE).append(SER)
            .append(PIPE).append(TextUtil.checkSize(SUB, 3))
            .append(PIPE).append(NUM_DOC)
            .append(PIPE).append(TextUtil.timeToString(DT_DOC, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.timeToString(DT_A_P, "ddMMyyyy", false))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DOC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DESC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_SERV), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_SERV_NT), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_TERC), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_DA), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_BC_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_ICMS), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_INF, 6))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_PIS), 255))
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(VL_COFINS), 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((COD_MOD == null) ? 0 : COD_MOD.hashCode());
		result = prime * result
				+ ((COD_PART == null) ? 0 : COD_PART.hashCode());
		result = prime * result + ((COD_SIT == null) ? 0 : COD_SIT.hashCode());
		result = prime * result
				+ ((IND_EMIT == null) ? 0 : IND_EMIT.hashCode());
		result = prime * result
				+ ((IND_OPER == null) ? 0 : IND_OPER.hashCode());
		result = prime * result + ((NUM_DOC == null) ? 0 : NUM_DOC.hashCode());
		result = prime * result + ((SER == null) ? 0 : SER.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		RD500 other = (RD500) obj;
		if (COD_MOD == null) {
			if (other.COD_MOD != null)
				return false;
		} else if (!COD_MOD.equals(other.COD_MOD))
			return false;
		if (COD_PART == null) {
			if (other.COD_PART != null)
				return false;
		} else if (!COD_PART.equals(other.COD_PART))
			return false;
		if (COD_SIT == null) {
			if (other.COD_SIT != null)
				return false;
		} else if (!COD_SIT.equals(other.COD_SIT))
			return false;
		if (IND_EMIT == null) {
			if (other.IND_EMIT != null)
				return false;
		} else if (!IND_EMIT.equals(other.IND_EMIT))
			return false;
		if (IND_OPER == null) {
			if (other.IND_OPER != null)
				return false;
		} else if (!IND_OPER.equals(other.IND_OPER))
			return false;
		if (NUM_DOC == null) {
			if (other.NUM_DOC != null)
				return false;
		} else if (!NUM_DOC.equals(other.NUM_DOC))
			return false;
		if (SER == null) {
			if (other.SER != null)
				return false;
		} else if (!SER.equals(other.SER))
			return false;
		return true;
	}
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof RD500
				&& o2 instanceof RD500)
		{
			RD500 e1 = (RD500) o1;
			RD500 e2 = (RD500) o2;
			//
			if (e1.DT_A_P == null)						//	Depois
				return 1;
			else if (e2.DT_A_P == null)					// 	Antes
				return -1;
			
			int compare = e1.DT_A_P.compareTo(e2.DT_A_P);
			
			if (compare == 0)
				return e1.NUM_DOC.compareTo(e2.NUM_DOC);	//	Comparar
			else
				return compare;
		}
		else
			return 0;									//
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
		
} //RD500