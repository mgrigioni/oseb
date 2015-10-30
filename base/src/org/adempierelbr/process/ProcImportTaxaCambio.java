/******************************************************************************
 * Copyright (C) 2015 Eltek Valere Sistemas de Energia Ind. e Comer. SA       *
 * Copyright (C) 2015 Mario Grigioni                                          *
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
import java.sql.Timestamp;
import java.util.logging.Level;

import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MConversionRate;
import org.compiere.model.MConversionType;
import org.compiere.model.MCurrency;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * 	Processo para importar a taxa de cambio de moedas
 *	
 *  @author Mario Grigioni
 *  @version $Id: ProcImportTaxaCambio.java, 25/09/2015 09:28:00 mgrigioni $
 */
public class ProcImportTaxaCambio extends SvrProcess
{

	private String p_FileName = "";
	
	private final int BRL = 297;
	
	/**
	 * 	Prepare
	 */
	protected void prepare ()
	{
		ProcessInfoParameter[] para = getParameter();
		for (int i = 0; i < para.length; i++)
		{
			String name = para[i].getParameterName();
			if (para[i].getParameter() == null)
				;
			if (name.equals("FileName")){
				p_FileName = (String)para[i].getParameter();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception
	{
		
		if (p_FileName == null || p_FileName.isEmpty())
			throw new IllegalArgumentException("Informar arquivo");
		
		
		String[] lines = TextUtil.readFile(p_FileName);
		for (String line : lines){
			if (line.indexOf(";") == -1)
				continue;
			
			String[] campos = line.split(";");
			if (campos.length != 8)
				continue;
			
			Timestamp dataConversao = TextUtil.stringToTime(campos[0], "ddMMyyyy");
			String ISOcode = campos[3];
			BigDecimal taxaVenda = new BigDecimal(campos[5].replace(",","."));
			
			
			if (dataConversao == null || taxaVenda == null){
				return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessFailed", true);
			}
		 
			MCurrency currency = MCurrency.get(getCtx(), ISOcode);
			int C_Conversion_Rate_ID = getC_Conversion_Rate_ID(dataConversao,currency.get_ID());
			MConversionRate rate = new MConversionRate(getCtx(),C_Conversion_Rate_ID,get_TrxName());
			
			if (rate.getValidFrom().equals(dataConversao) &&
				rate.getMultiplyRate().equals(taxaVenda)){
				log.info("Câmbio já atualizado.");
				continue;
			}
			
			rate.setC_Currency_ID(currency.get_ID());
			rate.setC_Currency_ID_To(BRL);
			rate.setValidFrom(dataConversao);
			rate.setValidTo(AdempiereLBR.addDays(dataConversao, 7)); //BF - Válido por 7 dias para garantir fds e feriados
			rate.setMultiplyRate(taxaVenda);
			rate.setC_ConversionType_ID(MConversionType.getDefault(Env.getAD_Client_ID(getCtx())));
			rate.save(get_TrxName());
			
		}
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
    private int getC_Conversion_Rate_ID(Timestamp validFrom,int C_Currency_ID){
    	
    	String sql = "SELECT C_Conversion_Rate_ID " +
    			     "FROM C_Conversion_Rate " +
    			     "WHERE C_Currency_ID = ? " +
    			     "AND C_Currency_ID_TO = ? " +
    			     "AND ValidFrom = ? " +
    			     "AND AD_Client_ID in (0,?) " +
    			     "ORDER BY AD_Client_ID DESC"; 
    	
    	int C_Conversion_Rate_ID = DB.getSQLValue(get_TrxName(), sql,
    			new Object[]{C_Currency_ID,BRL,validFrom,Env.getAD_Client_ID(getCtx())});
    	
		if (C_Conversion_Rate_ID == -1){
			C_Conversion_Rate_ID = 0;
		}
    	
    	return C_Conversion_Rate_ID;
    }
	
} //ProcImportTaxaCambio