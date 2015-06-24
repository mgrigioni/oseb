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

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J935: Identificação dos Auditores Independentes
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ935.java, 23/06/2015, 15:35:00, mgrigioni
 */

public class RJ935 extends RegSped {
	
	private String NOME_AUDITOR;
	private String COD_CVM_AUDITOR;

	/**
	 * Constructor
	 */
	public RJ935(String NOME_AUDITOR, String COD_CVM_AUDITOR)
	{
		super();
		this.NOME_AUDITOR = NOME_AUDITOR;
		this.COD_CVM_AUDITOR = COD_CVM_AUDITOR;
	} // RJ935

	/**
	 * Formata o Bloco J Registro 935
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(NOME_AUDITOR), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_CVM_AUDITOR, 255))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} // RJ935