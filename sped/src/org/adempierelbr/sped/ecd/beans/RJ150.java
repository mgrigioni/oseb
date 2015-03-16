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
import org.compiere.model.MElementValue;
/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J150 - DEMONSTRAÇÃO DO RESULTADO DO EXERCÍCIO
 * 
 * Ocorrência - 1:N Os registros devem ser gerados na mesma ordem em que devem
 * ser visualizados. Campo 02 – COD_AGL. Devem ser informados códigos para todas
 * as linhas nas quais exista valor. Campo 04 – DESCR_COD_AGL. A definição da
 * descrição, função e funcionamento do código de aglutinação são prerrogativa e
 * responsabilidade do empresário ou sociedade empresária. Chave: [COD_AGL]
 * (para [IND_VL] = P ou N)
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ150.java, 18/11/2010, 11:40:00, mgrigioni
 */
public class RJ150 extends RegSped {
	
	private String COD_AGL;
	private BigDecimal NIVEL_AGL;
	private String DESCR_COD_AGL;
	private BigDecimal VL_CTA;
	private String IND_VL;

	/**
	 * Constructor
	 */
	public RJ150(ECDBalance balance)
	{
		super();
		this.COD_AGL       = balance.getAccount().getValue();;
		this.NIVEL_AGL     = new BigDecimal (COD_AGL.replaceAll("[^.]","").length() + 1);
		this.DESCR_COD_AGL = balance.getAccount().getName();
		this.VL_CTA		   = balance.getBeginBalance().abs();
		setIND_VL(balance);
	} // RJ150
	
	private void setIND_VL(ECDBalance balance){
		
		String acctType = balance.getAccount().getAccountType();
		if (acctType.equals(MElementValue.ACCOUNTTYPE_Revenue)){
			this.IND_VL = "R";
		}
		else if (acctType.equals(MElementValue.ACCOUNTTYPE_Expense)){
			this.IND_VL = "D";
		}
		else {
			if (balance.getBeginBalance().signum() == 1){
				this.IND_VL = "R";
			}
			else{
				this.IND_VL = "D";
			}
		}
	}

	/**
	 * Formata o Bloco J Registro 150
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(COD_AGL, 255))
            .append(PIPE).append(TextUtil.toNumeric(NIVEL_AGL, 0))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(DESCR_COD_AGL), 255))
            .append(PIPE).append(TextUtil.toNumeric(VL_CTA, 0, 255))
            .append(PIPE).append(TextUtil.checkSize(IND_VL, 1))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}

} // RJ150 