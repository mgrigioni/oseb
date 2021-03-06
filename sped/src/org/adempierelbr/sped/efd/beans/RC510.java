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
package org.adempierelbr.sped.efd.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.util.Env;

/**
 * REGISTRO C510: ITENS DO DOCUMENTO NOTA FISCAL/CONTA ENERGIA
 * ELÉTRICA (CÓDIGO 06), NOTA FISCAL/CONTA DE FORNECIMENTO D'ÁGUA
 * CANALIZADA (CÓDIGO 29) E NOTA FISCAL/CONTA DE FORNECIMENTO DE GÁS (CÓDIGO 28).
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RC510.java, 10/02/2011, 15:04:00, mgrigioni
 */
public class RC510 extends RegSped implements Comparable<Object> {

	private Integer             NUM_ITEM;
	private String              COD_ITEM;
	private String              COD_CLASS;
	private String              UNID;
	private String				CST_ICMS;
	private String				CFOP;
	private String              IND_REC;
	private String              COD_PART;
	private String              COD_CTA;

	private BigDecimal          QTD;
	private BigDecimal          VL_ITEM;
	private BigDecimal          VL_DESC;
	private BigDecimal          VL_BC_ICMS;
	private BigDecimal          ALIQ_ICMS;
	private BigDecimal          VL_ICMS;
	private BigDecimal          VL_BC_ICMS_ST;
	private BigDecimal          ALIQ_ST;
	private BigDecimal          VL_ICMS_ST;
	private BigDecimal          VL_PIS;
	private BigDecimal          VL_COFINS;
	
	 //UTILIZADO NA SOMATORIA DO C590
	private String NUM_DOC;
	private Timestamp DT_DOC;
	private BigDecimal PERC_BC_ICMS;
	private BigDecimal VL_OPR;
	
	/**
	 * Constructor
	 * @param NUM_ITEM
	 * @param COD_ITEM
	 * @param COD_CLASS
	 * @param QTD
	 * @param UNID
	 * @param VL_ITEM
	 * @param VL_DESC
	 * @param CST_ICMS
	 * @param CFOP
	 * @param VL_BC_ICMS
	 * @param ALIQ_ICMS
	 * @param VL_ICMS
	 * @param VL_BC_ICMS_ST
	 * @param ALIQ_ST
	 * @param VL_ICMS_ST
	 * @param IND_REC
	 * @param COD_PART
	 * @param VL_PIS
	 * @param VL_COFINS
	 * @param COD_CTA
	 * @param PERC_BC_ICMS
	 * @param VL_OPR
	 */
	public RC510 (int NUM_ITEM, String COD_ITEM, String COD_CLASS, BigDecimal QTD,
			       String UNID, BigDecimal VL_ITEM, BigDecimal VL_DESC, String CST_ICMS, 
			       String CFOP, BigDecimal VL_BC_ICMS, BigDecimal ALIQ_ICMS, 
			       BigDecimal VL_ICMS, BigDecimal VL_BC_ICMS_ST, BigDecimal ALIQ_ST,
			       BigDecimal VL_ICMS_ST, String IND_REC, String COD_PART, BigDecimal VL_PIS,
			       BigDecimal VL_COFINS, String COD_CTA, BigDecimal PERC_BC_ICMS, BigDecimal VL_OPR,
			       String NUM_DOC, Timestamp DT_DOC)
	{	
		super();
		this.NUM_ITEM = NUM_ITEM;
		this.COD_ITEM = COD_ITEM;
		this.COD_CLASS = COD_CLASS;
		this.QTD = QTD;
		this.UNID = UNID;
		this.VL_ITEM = VL_ITEM;
		this.VL_DESC = VL_DESC;
		this.CST_ICMS = CST_ICMS;
		setCFOP(CFOP);
		this.VL_BC_ICMS = VL_BC_ICMS;
		this.ALIQ_ICMS = ALIQ_ICMS;
		this.VL_ICMS = VL_ICMS;
		this.VL_BC_ICMS_ST = VL_BC_ICMS_ST;
		this.ALIQ_ST = ALIQ_ST;
		this.VL_ICMS_ST = VL_ICMS_ST;
		this.IND_REC = IND_REC;
		this.COD_PART = COD_PART;
		this.VL_PIS = VL_PIS;
		this.VL_COFINS = VL_COFINS;
		this.COD_CTA = COD_CTA;
		this.PERC_BC_ICMS = PERC_BC_ICMS;
		this.VL_OPR = VL_OPR;
		setNUM_DOC(NUM_DOC);
		this.DT_DOC = DT_DOC;
	}//RC510
	
	private void setCFOP(String CFOP){
		this.CFOP = TextUtil.lPad(TextUtil.toNumeric(CFOP),4);
		if (!(this.CFOP.startsWith("1") || this.CFOP.startsWith("2") ||
			  this.CFOP.startsWith("3") || this.CFOP.startsWith("5") ||	
			  this.CFOP.startsWith("6") || this.CFOP.startsWith("7"))){
			log.severe("RC510 - CFOP INVALIDO (" + this.CFOP + "). " +
					           "COD_ITEM = " + this.COD_ITEM);
		}
	}
	
	private void setNUM_DOC(String NUM_DOC){
		this.NUM_DOC = TextUtil.checkSize(TextUtil.toNumeric(NUM_DOC), 9);
	}
	
	public String getCST_ICMS(){
		return CST_ICMS;
	}
		
	public String getCFOP(){
		return CFOP;
	}
	
	public String getNUM_DOC(){
		return NUM_DOC;
	}
	
	public Timestamp getDT_DOC(){
		return DT_DOC;
	}
	
	public BigDecimal getALIQ_ICMS(){
		return ALIQ_ICMS == null ? Env.ZERO : ALIQ_ICMS;
	}
	
	public BigDecimal getVL_BC_ICMS(){
		return VL_BC_ICMS == null ? Env.ZERO : VL_BC_ICMS;
	}
	
	public BigDecimal getVL_ICMS(){
		return VL_ICMS == null ? Env.ZERO : VL_ICMS;
	}
	
	public BigDecimal getVL_BC_ICMS_ST(){
		return VL_BC_ICMS_ST == null ? Env.ZERO : VL_BC_ICMS_ST;
	}
	
	public BigDecimal getVL_ICMS_ST(){
		return VL_ICMS_ST == null ? Env.ZERO : VL_ICMS_ST;
	}
	
	public BigDecimal getVL_RED_BC_ICMS(){
		
		BigDecimal baseICMS  = getVL_BC_ICMS();
		// redução = 1-(PERC_BC_ICMS/100)
		BigDecimal reduction = Env.ONE.subtract(getPERC_BC_ICMS().divide(Env.ONEHUNDRED, TaxBR.MCROUND));
		if (reduction.signum() != 1)
			reduction = Env.ONE;
		
		return (baseICMS.divide(reduction,TaxBR.MCROUND)).subtract(baseICMS);
	}
		
	private BigDecimal getPERC_BC_ICMS(){
		return PERC_BC_ICMS == null ? Env.ZERO : PERC_BC_ICMS;
	}
	
	public BigDecimal getVL_OPR(){
		return VL_OPR == null ? Env.ZERO : VL_OPR;
	}
	
	/**
	 * Formata o Bloco C Registro 510
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.lPad(NUM_ITEM, 3))
            .append(PIPE).append(COD_ITEM)
            .append(PIPE).append(TextUtil.checkSize(TextUtil.toNumeric(COD_CLASS), 4))
            .append(PIPE).append(TextUtil.toNumeric(QTD, 3))
            .append(PIPE).append(UNID)
            .append(PIPE).append(TextUtil.toNumeric(VL_ITEM, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_DESC, 2))
            .append(PIPE).append(TextUtil.checkSize(CST_ICMS, 3,3))
            .append(PIPE).append(CFOP)
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_BC_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(ALIQ_ST, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_ICMS_ST, 2))
            .append(PIPE).append(TextUtil.checkSize(IND_REC, 1,1))
            .append(PIPE).append(TextUtil.checkSize(COD_PART, 60))
            .append(PIPE).append(TextUtil.toNumeric(VL_PIS, 2))
            .append(PIPE).append(TextUtil.toNumeric(VL_COFINS, 2))
            .append(PIPE).append(TextUtil.checkSize(COD_CTA, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result
				+ ((NUM_ITEM == null) ? 0 : NUM_ITEM.hashCode());
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
		RC510 other = (RC510) obj;
		if (NUM_ITEM == null) {
			if (other.NUM_ITEM != null)
				return false;
		} else if (!NUM_ITEM.equals(other.NUM_ITEM))
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
		else if (o1 instanceof RC510
				&& o2 instanceof RC510)
		{
			RC510 e1 = (RC510) o1;
			RC510 e2 = (RC510) o2;
			//
			if (e1.NUM_ITEM == null)						//	Depois
				return 1;
			else if (e2.NUM_ITEM == null)					// 	Antes
				return -1;
			else
				return e1.NUM_ITEM.compareTo(e2.NUM_ITEM);	//	Comparar
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
	
}//RC510