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
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO E116: OBRIGAÇÕES DO ICMS RECOLHIDO OU A RECOLHER – OPERAÇÕES PRÓPRIAS.
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RE116.java, 23/01/2015, 11:26:00, mgrigioni
 */
public class RE116 extends RegSped {
	
	private String COD_OR;
	private BigDecimal VL_OR;
	private Timestamp DT_VCTO;
	private String COD_REC;
	private String NUM_PROC = "";
	private String IND_PROC = "";
	private String PROC ="";
	private String TXT_COMPL = "";
	private Timestamp MES_REF;

	/**
	 * Constructor
	 * @param COD_AJ_APUR
	 * @param DESCR_COMPL_AJ
	 * @param VL_AJ_APUR
	 */
	public RE116(String COD_OR, BigDecimal VL_OR, Timestamp DT_VCTO, String COD_REC)
	{
		super();
		this.COD_OR = COD_OR;
		this.VL_OR = VL_OR;
		this.DT_VCTO = DT_VCTO;
		this.COD_REC = COD_REC;
		this.MES_REF = AdempiereLBR.addMonths(DT_VCTO, -1);
	}	// RE116
	
	/**
	 * Formata o Bloco E Registro 116
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_OR,3))
            .append(PIPE).append(TextUtil.toNumeric(VL_OR))
            .append(PIPE).append(TextUtil.timeToString(DT_VCTO, "ddMMyyyy"))
            .append(PIPE).append(COD_REC)
            .append(PIPE).append(NUM_PROC)
            .append(PIPE).append(IND_PROC)
            .append(PIPE).append(PROC)
            .append(PIPE).append(TXT_COMPL)
            .append(PIPE).append(TextUtil.timeToString(MES_REF, "MMyyyy"))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RE116