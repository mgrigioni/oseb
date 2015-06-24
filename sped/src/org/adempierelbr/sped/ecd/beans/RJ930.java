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

import java.sql.Timestamp;

import org.adempierelbr.sped.RegSped;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

/**
 * Identificação do Arquivo
 * 
 * Bloco J Registro J930 - IDENTIFICAÇÃO DOS SIGNATÁRIOS DA ESCRITURAÇÃO
 * 
 * Ocorrência - 1:N Chave: [IDENT_CPF]+[COD_ASSIN]
 * 
 * @author Priscila Pinheiro (Kenos, www.kenos.com.br)
 * @author Mario Grigioni, mgrigioni
 * @version $Id: RJ930.java, 18/11/2010, 14:24:00, mgrigioni
 */

public class RJ930 extends RegSped {
	
	private String IDENT_NOM;
	private String IDENT_CPF;
	private String IDENT_QUALIF;
	private String COD_ASSIM;
	private String IND_CRC;
	private String EMAIL = "";
	private String FONE = "";
	private String UF_CRC = "";
	private String NUM_SEQ_CRC = "";
	private Timestamp DT_CRC;

	/**
	 * Constructor
	 */
	public RJ930(String IDENT_NOM, String IDENT_CPF, String IDENT_QUALIF,
			String COD_ASSIM, String IND_CRC, String EMAIL, String FONE,
			String UF_CRC, String NUM_SEQ_CRC, Timestamp DT_CRC)
	{
		super();
		this.IDENT_NOM = IDENT_NOM;
		this.IDENT_CPF = IDENT_CPF;
		this.IDENT_QUALIF = IDENT_QUALIF;
		this.COD_ASSIM = COD_ASSIM;
		this.IND_CRC = IND_CRC;
		this.EMAIL = EMAIL;
		this.FONE = FONE;
		this.UF_CRC = UF_CRC;
		this.NUM_SEQ_CRC = NUM_SEQ_CRC;
		this.DT_CRC = DT_CRC;
	} // RJ930
	

	/**
	 * Constructor
	 */
	public RJ930(String IDENT_NOM, String IDENT_CPF, String IDENT_QUALIF,
			String COD_ASSIM, String IND_CRC)
	{
		super();
		this.IDENT_NOM = IDENT_NOM;
		this.IDENT_CPF = IDENT_CPF;
		this.IDENT_QUALIF = IDENT_QUALIF;
		this.COD_ASSIM = COD_ASSIM;
		this.IND_CRC = IND_CRC;
	} // RJ930

	/**
	 * Formata o Bloco J Registro 930
	 * 
	 * @return
	 */
	public String toString() {
		
		StringBuilder format = new StringBuilder
                   (PIPE).append(REG) 
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(IDENT_NOM), 255))
            .append(PIPE).append(TextUtil.toNumeric(IDENT_CPF))
            .append(PIPE).append(TextUtil.checkSize(RemoverAcentos.remover(IDENT_QUALIF), 255))
            .append(PIPE).append(TextUtil.checkSize(COD_ASSIM, 3))
            .append(PIPE).append(TextUtil.checkSize(IND_CRC, 11))
            .append(PIPE).append(TextUtil.checkSize(EMAIL, 60))
            .append(PIPE).append(TextUtil.checkSize(FONE, 14))
            .append(PIPE).append(TextUtil.checkSize(UF_CRC, 2))
            .append(PIPE).append(NUM_SEQ_CRC)
            .append(PIPE).append(TextUtil.timeToString(DT_CRC, "ddMMyyyy", false))
            .append(PIPE);

		return (TextUtil.removeEOL(format).append(EOL)).toString();
	}
	
} // RJ930