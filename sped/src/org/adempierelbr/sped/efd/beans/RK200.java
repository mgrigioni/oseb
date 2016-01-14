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
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * REGISTRO K200: ESTOQUE ESCRITURADO
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RK200.java, 18/11/2015, 14:29:00, mgrigioni
 */
public class RK200 extends RegSped {
	
	private Timestamp DT_EST;
	private String COD_ITEM;
	private BigDecimal QTD;
	private String IND_EST;
	private String COD_PART;


	public RK200(Timestamp DT_EST, String COD_ITEM, BigDecimal QTD,
			String IND_EST, String COD_PART)
	{
		super();
		this.DT_EST = DT_EST;
		this.COD_ITEM = COD_ITEM;
		this.QTD = QTD;
		this.IND_EST = IND_EST;
		this.COD_PART = COD_PART;
	}	// RK200

	/**
	 * Formata o Bloco K Registro 200
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.timeToString(DT_EST, "ddMMyyyy"))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_ITEM), 60))
            .append(PIPE).append(TextUtil.toNumeric(QTD,3))
            .append(PIPE).append(IND_EST)
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(COD_PART), 60))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	} // toString
	
} 	// RK200