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

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.fci.CounterFci;
import org.adempierelbr.fci.beans.R0000;
import org.adempierelbr.fci.beans.R0001;
import org.adempierelbr.fci.beans.R0010;
import org.adempierelbr.fci.beans.R0990;
import org.adempierelbr.fci.beans.R5001;
import org.adempierelbr.fci.beans.R5020;
import org.adempierelbr.fci.beans.R5990;
import org.adempierelbr.fci.beans.R9001;
import org.adempierelbr.fci.beans.R9900;
import org.adempierelbr.fci.beans.R9990;
import org.adempierelbr.fci.beans.R9999;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.model.MLBRProductFCI;
import org.adempierelbr.model.X_LBR_FCIProcess;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MAttachment;
import org.compiere.model.MLocation;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.model.MUOM;
import org.compiere.process.ProcessInfoParameter;
import org.compiere.process.SvrProcess;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 * Process to create FCI File
 * @author Mario Grigioni, mgrigioni
 * @version $Id: ProcCreateFCIFile.java, 08/05/2013, 14:57:00, mgrigioni
 */
public class ProcCreateFCIFile extends SvrProcess
{

	private I_W_AD_OrgInfo oiW;
	
	private X_LBR_FCIProcess fciProcess;
	
	/**
	 * 	Prepare
	 */
	protected void prepare () {
		ProcessInfoParameter[] paras = getParameter();
		for (ProcessInfoParameter para : paras) {
			String name = para.getParameterName();
			if (para.getParameter() == null)
				;
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

		MOrgInfo orgInfo = MOrgInfo.get(getCtx(), Env.getAD_Org_ID(getCtx()),get_TrxName());
		oiW = POWrapper.create(orgInfo, I_W_AD_OrgInfo.class);
		
		StringBuilder result = montaBLOCO0()
				       .append(montaBLOCO5())
				       .append(montaBLOCO9());
		
		File fciFile = new File(TextUtil.generateTmpFile(result.toString(), fciProcess.get_ID() + "_fci.txt"));
		
		MAttachment attach = fciProcess.getAttachment(true);
		if (attach != null)
			attach.delete(true);  //Exclui anexo anterior. BUG ADempiere
		
		attach = fciProcess.createAttachment(true);
		attach.addEntry(fciFile);
		attach.save();
		
		fciProcess.setlbr_Step2(true);
		fciProcess.save(get_TrxName());
		
		return Msg.getMsg(Env.getAD_Language(getCtx()), "ProcessOK", true);
	}	//	doIt
	
	private StringBuilder montaBLOCO0(){
		
		MLocation orgLoc = new MLocation(getCtx(),oiW.getC_Location_ID(), get_TrxName());
		
		StringBuilder bloco0 = new StringBuilder();
		
		bloco0.append(new R0000(oiW.getlbr_CNPJ(),oiW.getlbr_LegalEntity()));
		bloco0.append(new R0001());
		bloco0.append(new R0010(oiW.getlbr_CNPJ(),oiW.getlbr_LegalEntity(),
				oiW.getlbr_IE(),orgLoc.getAddress1() + ", " + orgLoc.getAddress2(),
				orgLoc.getPostal(), orgLoc.getCity(), orgLoc.getC_Region().getName()));
		bloco0.append(new R0990());
		return bloco0;
	}
	
	private StringBuilder montaBLOCO5(){
		
		List<MLBRProductFCI> fcis = MLBRProductFCI.get(getCtx(), fciProcess.getC_Period_ID(), get_TrxName());
	
		StringBuilder bloco5 = new StringBuilder();
		
		bloco5.append(new R5001());
		
		for(MLBRProductFCI fci : fcis){
			MProduct produto = MProduct.get(getCtx(), fci.getM_Product_ID());
			I_W_M_Product pW = POWrapper.create(produto, I_W_M_Product.class);
			
			MLBRNCM ncm = new MLBRNCM(getCtx(),pW.getLBR_NCM_ID(),get_TrxName());
			MUOM uom    = MUOM.get(getCtx(), produto.getC_UOM_ID());
			
			bloco5.append(new R5020(produto.getName(),ncm.getValue(),produto.getValue(),
					"",AdempiereLBR.getUOM_trl(uom),
					fci.getInvoicedAmt(),fci.getAmtSource(),fci.getPercentage()));
		}
		
		bloco5.append(new R5990());
		
		return bloco5;
	}
	
	private StringBuilder montaBLOCO9(){
		
		StringBuilder bloco9 = new StringBuilder("");
	
		//MONTA BLOCO 9
		bloco9.append(new R9001());
		R9990 r9990 = new R9990();
		
		R9900[] contRegistros = createR9900();
		Arrays.sort(contRegistros);
		for(R9900 registro : contRegistros){
			bloco9.append(registro);
		}
		//
		bloco9.append(r9990);
		bloco9.append(new R9999());
		//FIM BLOCO 9
		
		return bloco9;
	} //montaBLOCO9
	
	private R9900[] createR9900(){

		ArrayList<R9900> list = new ArrayList<R9900>();
		String[] regs = CounterFci.getRegsFci();
		for(int i=0; i<regs.length; i++){
			String reg = regs[i];
			int    qtd = CounterFci.getCounter(reg);
			if (reg.equals("0000") || reg.equals("0010") || reg.equals("5020")){
				list.add(new R9900(reg,""+qtd));
			}
		}
		
		return list.toArray(new R9900[list.size()]);
	} //createR9900
		
} //ProcCreateFCI