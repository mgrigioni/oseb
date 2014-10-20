/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2013 Mario Grigioni                                          *
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

import java.util.logging.Level;

import org.adempierelbr.model.MLBRProductFCI;
import org.adempierelbr.model.X_LBR_FCIProcess;
import org.adempierelbr.util.TextUtil;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Process to update FCI records
 * @author Mario Grigioni, mgrigioni
 * @version $Id: ProcUpdateFCI.java, 09/05/2013, 12:03:00, mgrigioni
 */
public class ProcUpdateFCI extends SvrProcess
{
		
	private X_LBR_FCIProcess fciProcess;
	
	private String fileName;
	
	/**
	 * 	Prepare
	 */
	protected void prepare () {
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
			else if (name.equals("FileName")){
				fileName = (String)para.getParameter();
			}
			else
				log.log(Level.SEVERE, "Unknown Parameter: " + name);
		}
		
		fciProcess = new X_LBR_FCIProcess(getCtx(),getRecord_ID(),get_TrxName());
	}	//	prepare

	/**
	 * 	Process
	 *	@return Info
	 *	@throws Exception
	 */
	protected String doIt() throws Exception {

		boolean isValid = false;
		
		String[] linhas = TextUtil.readFile(fileName);
		for (String linha : linhas){
			if (!linha.startsWith("5020") || linha.indexOf(TextUtil.PIPE) == -1)
				continue;

			String[] campos = linha.split("\\" + TextUtil.PIPE);
			if (campos.length == 11){
				
				isValid = true;
				
				String productValue = campos[3];
				String fciNumber    = campos[9];
						
				MLBRProductFCI fci = MLBRProductFCI.get(getCtx(), productValue, fciProcess.getC_Period_ID(), get_TrxName());
				if (fci != null && fci.getValue().startsWith("TEMP_")){
					fci.setValue(fciNumber);
					fci.save(get_TrxName());
				}		
			}
		} //loop linhas
		
		if (!isValid)
			return Msg.getMsg(Env.getAD_Language(getCtx()), "ValidationError", true);
		
		fciProcess.setProcessed(true);
		fciProcess.save(get_TrxName());
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
} //ProcUpdateFCI