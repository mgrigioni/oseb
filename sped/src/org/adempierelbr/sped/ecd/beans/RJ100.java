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
package org.adempierelbr.sped.ecd.beans;

import java.math.BigDecimal;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.sped.ecd.ECDBalance;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;


/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J100 - BALANÇO PATRIMONIAL
 * 
 * Ocorrência - 1:N Os registros devem ser gerados na mesma ordem em que devem
 * ser visualizados. Campo 02 – COD_AGL. Devem ser informados códigos para todas
 * as linhas nas quais exista valor. Campo 05 – DESCR_COD_AGL. A definição da
 * descrição, função e funcionamento do código de aglutinação são prerrogativa e
 * responsabilidade do empresário ou sociedade empresária.
 * 
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ100.java, 18/11/2010, 11:36:00, mgrigioni
 */
public class RJ100 extends RegSped {
	
	private String COD_AGL;
	private BigDecimal NIVEL_AGL;
	private String IND_GPR_BAL;
	private String DESCR_COD_AGL;
	private BigDecimal VL_CTA;
	private String IND_DC_BAL;

	/**
	 * Constructor
	 */
	public RJ100(int IND_GPR_BAL, ECDBalance balance) 
	{
		super();
		this.COD_AGL = balance.getAccount().getValue();
		this.NIVEL_AGL = new BigDecimal (COD_AGL.replaceAll("[^.]","").length() + 1);
		setIND_GPR_BAL(IND_GPR_BAL);
		this.DESCR_COD_AGL = balance.getAccount().getName();
		this.VL_CTA = balance.getBeginBalance().abs();
		this.IND_DC_BAL = balance.getBeginBalance().signum() == 1 ? "D" : "C";
	} // RJ100
	
	private void setIND_GPR_BAL(int IND_GPR_BAL){
		if (IND_GPR_BAL == 1)
			this.IND_GPR_BAL = "1";
		else if (IND_GPR_BAL >= 2 && IND_GPR_BAL <= 3)
			this.IND_GPR_BAL = "2";
		else
			log.warning("ERRO NO TIPO DE CONTA DO BALANÇO");
	}

	/**
	 * Formata o Bloco J Registro 100
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_AGL, 255))
            .append(PIPE).append(TextUtil.toNumeric(NIVEL_AGL, 0) )
            .append(PIPE).append(TextUtil.checkSize(IND_GPR_BAL, 1))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_COD_AGL), 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_CTA, 0, 255))
            .append(PIPE).append(TextUtil.checkSize(IND_DC_BAL, 1))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} // RJ100