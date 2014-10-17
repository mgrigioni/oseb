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
package org.adempierelbr.process;

import java.math.BigDecimal;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.util.TextUtil;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *  Arquivo de download das alíquotas de tributação média dos produtos e serviços 
 *  calculados pelo IBPT – Instituto Brasileiro de Planejamento Tributário e os 
 *  sistemas de informações das empresas emissoras de cupons fiscais, 
 *  conhecimentos de transporte e Nota Fiscal, sejam eletrônicas ou não.
 *  
 *  @author Mario Grigioni
 *  @version $Id: ProcImportTotTrib.java,v 1.0 17/10/2014 09:54:00 mgrigioni Exp $
 */
public class ProcImportTotTrib extends SvrProcess{
	
	/** Nome do Arquivo **/
	private String p_FileName = "";

	/**
	 *  Prepare - e.g., get Parameters.
	 */
	
	protected void prepare() {
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			else if (name.equals("FileName"))
				p_FileName = (String)para[i].getParameter();
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
	}

	protected String doIt() throws Exception {
		
		if(p_FileName == null || p_FileName.isEmpty())
			throw new IllegalArgumentException("Informar arquivo");

		if (!(p_FileName.endsWith(".csv")))
			throw new IllegalArgumentException("Arquivo inválido. Arquivo requerido (.csv)");

		String[] linhas = TextUtil.readFile(p_FileName);
		for(String linha : linhas){
			if (linha.indexOf(";") == -1)
				continue;
			
			//codigo [0];ex [1];tabela [2];descricao [3];aliqNac [4];aliqImp [5];
			String[] valores = linha.split(";");
			if (valores.length != 6)
				continue;
			
			int LBR_NCM_ID = getLBR_NCM_ID(valores[0]);
			if (LBR_NCM_ID <= 0)
				continue;
			
			MLBRNCM ncm = new MLBRNCM(getCtx(),LBR_NCM_ID,get_TrxName());
			ncm.setlbr_aliqNac(new BigDecimal(valores[4]));
			ncm.setlbr_aliqImp(new BigDecimal(valores[5]));
			ncm.save(get_TrxName());
		} //loop linhas
		
		return "Processo concluído";
	}

	private int getLBR_NCM_ID(String ncmValue){
		int LBR_NCM_ID = 0;
		String sql = "SELECT LBR_NCM_ID FROM LBR_NCM WHERE REPLACE(Value,'.','') = ? AND AD_Client_ID=?";
		LBR_NCM_ID = DB.getSQLValue(get_TrxName(), sql, new Object[]{ncmValue,Env.getAD_Client_ID(getCtx())});
		if (LBR_NCM_ID <= 0){
			log.info("NCM não encontrado. " + ncmValue);
		}
		
		return LBR_NCM_ID;
	} //getLBR_NCM_ID
	
} //ProcImportTotTrib