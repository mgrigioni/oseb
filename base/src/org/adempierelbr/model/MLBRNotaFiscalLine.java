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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempiere.model.POWrapper;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.wrapper.I_W_C_InvoiceLine;
import org.adempierelbr.wrapper.I_W_M_Product;
import org.compiere.model.MClientInfo;
import org.compiere.model.MConversionRate;
import org.compiere.model.MInvoiceLine;
import org.compiere.model.MProduct;
import org.compiere.model.MTable;
import org.compiere.model.MUOM;
import org.compiere.model.Query;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Msg;

/**
 *  LBR_NotaFiscalLines Model
 *  
 *  Class that process brazilian fiscal documents lines (a.k.a Nota Fiscal)
 *
 *	@author Mario Grigioni
 *	@version $Id: MLBRNotaFiscalLine.java, v2.0 15/06/2012 08:45:00 mgrigioni
 */
public class MLBRNotaFiscalLine extends X_LBR_NotaFiscalLine {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8912428424313726648L;
	
	private MLBRNotaFiscal m_parent = null; //parent
	private MClientInfo    m_client = null; //client
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNotaFiscalLine(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNotaFiscalLine (Properties ctx, ResultSet rs, String trxName) {
		super(ctx, rs, trxName);
	}
	
	/**
	 * Parent constructor
	 * @param nf
	 */
	public MLBRNotaFiscalLine (MLBRNotaFiscal nf, MInvoiceLine iLine){
		this(nf.getCtx(),0,nf.get_TrxName());
		if (nf.get_ID() == 0)
			throw new IllegalArgumentException("Parent not saved");
		setLBR_NotaFiscal_ID(nf.get_ID());
		setClientOrg(nf);
		m_parent = nf;
		m_client = MClientInfo.get(getCtx(), getAD_Client_ID());
		setInvoiceLine(iLine);
	}
	
	private MLBRNotaFiscal getParent(){
		if (m_parent == null)
			m_parent = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		
		return m_parent;
	} //getParent
	
	/**************************************************************************
	 * 	Before Save
	 *	@param newRecord
	 *	@return true if it can be saved
	 */
	protected boolean beforeSave (boolean newRecord)
	{
		if (newRecord && getParent().isComplete()) {
			log.saveError("ParentComplete", Msg.translate(getCtx(), "LBR_NotaFiscalLine"));
			return false;
		}
		
		//	Get Line No
		if (getLine() == 0) {
			String sql = "SELECT COALESCE(MAX(Line),0)+1 FROM LBR_NotaFiscalLine WHERE LBR_NotaFiscal_ID=?";
			int ii = DB.getSQLValue (get_TrxName(), sql, getLBR_NotaFiscal_ID());
			setLine (ii);
		}
		
		return true;
	} //beforeSave
	
	public void setInvoiceLine(MInvoiceLine iLine) throws AdempiereException{
		
		if (getParent().get_ID() == 0)
			throw new IllegalArgumentException("Parent not set");
			
		//não cria linha para observação da fatura
		if (iLine.isDescription()) 
			return;
		
		//produto padrão da Empresa não cria linha, atribui ao parent
		if (setClientProduct(iLine.getM_Product_ID(),iLine.getLineNetAmt()))
			return; 
		
		//desconto não cria linha, atribui ao parent
		if (iLine.getLineNetAmt().signum() == -1){
			getParent().setDiscountAmt(getParent().getDiscountAmt().add(iLine.getLineNetAmt().abs()));
			getParent().save(get_TrxName());
			return;
		}
		
		I_W_C_InvoiceLine iLineW = POWrapper.create(iLine, I_W_C_InvoiceLine.class);
		MUOM uom  = new MUOM(getCtx(),iLine.getC_UOM_ID(),get_TrxName());
		
		MProduct   product = new MProduct(getCtx(),iLine.getM_Product_ID(),get_TrxName());
		I_W_M_Product proW = POWrapper.create(product, I_W_M_Product.class);
		
		int LBR_NCM_ID = iLine.get_ValueAsInt("LBR_NCM_ID") == 0 ? proW.getLBR_NCM_ID() : iLine.get_ValueAsInt("LBR_NCM_ID"); //FIXME
		MLBRNCM  ncm  = new MLBRNCM(getCtx(),LBR_NCM_ID,get_TrxName());
		MLBRCFOP cfop = new MLBRCFOP(getCtx(),iLineW.getLBR_CFOP_ID(),get_TrxName());
		//
		setC_InvoiceLine_ID(iLine.get_ID());
		setM_Product_ID(product.get_ID());
		setC_UOM_ID(uom.get_ID());
		setCFOP(cfop);
		setNCM(ncm);
		//
		setlbr_IsService(cfop.isService());
		setDescription(TextUtil.itrim(iLine.getDescription()));
		setProductName(product.getName());
		setProductValue(proW.getlbr_ServiceCode() != null ? proW.getlbr_ServiceCode() : product.getValue());
		setVendorProductNo(AdempiereLBR.getVendorProductNo(product.get_ID(),getParent().getC_BPartner_ID(),get_TrxName()));
		setlbr_UOMName(AdempiereLBR.getUOM_trl(uom));
		setQty(iLine.getQtyEntered());
		//
		setlbr_TaxStatus(iLineW.getlbr_TaxStatus());
		setlbr_TaxStatusIPI(iLineW.getlbr_TaxStatusIPI());
		setlbr_TaxStatusPIS(iLineW.getlbr_TaxStatusPIS()); 
		setlbr_TaxStatusCOFINS(iLineW.getlbr_TaxStatusCOFINS());
		save(get_TrxName());
		//IMPOSTOS
		MLBRNFLineTax.createLBR_NFLineTax(this);
		//Valores
		setlbr_ServiceTaxes();
		setAmounts(iLine);
		//Valiação Situação Tributária
		validateCST();
		save(get_TrxName());
	} //setInvoiceLine
	
	/**
	 * @param M_Product_ID
	 * @return true se é um clientProduct atribui valor ao parent, senão cria a linha
	 */
	private boolean setClientProduct(int M_Product_ID, BigDecimal amt){
		if (m_client == null)
			m_client = MClientInfo.get(getCtx(), getAD_Client_ID());
		
		boolean isClientProduct = false;
		
		if (M_Product_ID == m_client.getM_ProductFreight_ID()){ //FRETE
			getParent().setFreightAmt(getParent().getFreightAmt().add(amt));
			isClientProduct = true;
		}
		else if (M_Product_ID == m_client.get_ValueAsInt("Z_ProductInsurance_ID")){ //SEGURO
			getParent().setlbr_InsuranceAmt(getParent().getlbr_InsuranceAmt().add(amt));	
			isClientProduct = true;
		}
		else if (M_Product_ID == m_client.get_ValueAsInt("Z_ProductSiscomex_ID")){ //SISCOMEX
			getParent().setlbr_TotalSISCOMEX(getParent().getlbr_TotalSISCOMEX().add(amt));	
			isClientProduct = true;
		}
		else if (M_Product_ID == m_client.get_ValueAsInt("Z_ProductCharge_ID")){ //OUTRAS DESPESAS
			getParent().setChargeAmt(getParent().getChargeAmt().add(amt));	
			isClientProduct = true;
		}
		
		if (isClientProduct){
			getParent().setGrandTotal(getParent().getGrandTotal().add(amt));
			getParent().save(get_TrxName());
		}
		
		return isClientProduct;
	} //setClientProduct
	
	private void setAmounts(MInvoiceLine iLine){
		
		if (iLine.getQtyEntered().signum() != 1)
			return;
		
		BigDecimal lineNetAmt = iLine.getLineNetAmt();
		BigDecimal price      = iLine.getPriceEntered();
		BigDecimal priceList  = iLine.getPriceList();
		
		boolean hasPriceList = priceList.signum() != 0;
		
		if (!(getCFOP().startsWith("3") || getCFOP().startsWith("7"))){
			if (!iLine.getParent().isTaxIncluded()) {
				lineNetAmt = lineNetAmt.add(getTotalTaxAmt());
				if (hasPriceList)
					priceList = priceList.add(getTotalTaxAmt().divide(iLine.getQtyEntered(), 5, TaxBR.ROUND));
			}
		
			BigDecimal excludedTaxes = getIPIAmt().add(getTaxAmt("ICMSST"));
			lineNetAmt = lineNetAmt.subtract(excludedTaxes);
			
			//Problemas com arredondamento de impostos
			//Comparar com a base de cálculo do ICMS para definir o valor da linha
			//BaseICMS * (1+(RedBase/100) - Adiciona o isento/outros a base
			BigDecimal icmsTaxBase = getICMSBaseAmt().multiply(Env.ONE.add(getICMSBaseReduction().divide(Env.ONEHUNDRED, TaxBR.MCROUND)));
			BigDecimal decimalCheck = icmsTaxBase.subtract(lineNetAmt);
			if (decimalCheck.abs().compareTo(Env.ONE) < 0)
				lineNetAmt = icmsTaxBase;
			
			price = lineNetAmt.divide(iLine.getQtyEntered(), 5, TaxBR.ROUND);
			if (hasPriceList)
				priceList = priceList.subtract(excludedTaxes.divide(iLine.getQtyEntered(), 5, TaxBR.ROUND));
		}
		
		setPrice(convertAmt(price)); //Preço
		setPriceListAmt(convertAmt(priceList)); //Preço de Lista
		setLineTotalAmt(convertAmt(lineNetAmt).setScale(TaxBR.SCALE,TaxBR.ROUND)); //Total da Linha
		
		if (getPrice().signum() == 1 && getPriceListAmt().signum() == 1){
			//(1-(preco/precoLista))*100
			setDiscount((Env.ONE.subtract(getPrice().
					divide(getPriceListAmt(), TaxBR.MCROUND))).multiply(Env.ONEHUNDRED));
		}
		
		//Valores cabeçalho
		BigDecimal grandTotal  = getParent().getGrandTotal(); //Total da Nota
		BigDecimal totalLines  = getParent().getTotalLines(); //Total dos Produtos
		BigDecimal serviceAmt  = getParent().getlbr_ServiceTotalAmt(); //Total dos Serviços
		
		grandTotal = grandTotal.add(getTotalOperationAmt());
		if (islbr_IsService())
			serviceAmt = serviceAmt.add(getLineTotalAmt());
		else
			totalLines = totalLines.add(getLineTotalAmt());
		
		getParent().setGrandTotal(grandTotal);
		getParent().setTotalLines(totalLines);
		getParent().setlbr_ServiceTotalAmt(serviceAmt);
		getParent().save(get_TrxName());
	} //setAmounts
	
	private void setNCM(MLBRNCM ncm){
		setLBR_NCM_ID(ncm.get_ID());
		setlbr_NCMName(ncm.getValue());
	}
	
	private void setCFOP(MLBRCFOP cfop){
		setLBR_CFOP_ID(cfop.get_ID());
		setlbr_CFOPName(cfop.getValue());
		
		if (getlbr_CFOPName() != null && !getlbr_CFOPName().isEmpty()) {
			if (!getParent().m_refCFOP.contains(getlbr_CFOPName())) {
				getParent().m_refCFOP.add(getlbr_CFOPName());
				getParent().m_CFOPNote += cfop.getDescription() + ", ";
				getParent().m_CFOPReference += getlbr_CFOPName() + ", ";
			}
		}
	}
	
	/**
	 * Convert Amt 
	 */
	private BigDecimal convertAmt(BigDecimal amt){

		if (amt == null || amt.signum() == 0)
			return amt;
		
		if (m_client == null)
			m_client = MClientInfo.get(getCtx(), getAD_Client_ID());
		
		int C_Currency_ID = getParent().getC_Invoice().getC_Currency_ID();
		if (C_Currency_ID == m_client.getC_Currency_ID())
			return amt;
		
		BigDecimal convertedAmt = MConversionRate.convertBase(getCtx(), amt, C_Currency_ID,
				  getParent().getDateDoc(), 0, Env.getAD_Client_ID(getCtx()),
				  Env.getAD_Org_ID(getCtx()));

		if (convertedAmt == null){
			log.log(Level.SEVERE,"null if no rate = " + getParent().getDateDoc() + 
					" / Currency = " + C_Currency_ID);
			convertedAmt = amt;
		}

		return convertedAmt;
	} //convertAmt
	

	/**************************************************************************
	 *  selbr_ServiceTaxes
	 *  Geração de String com Impostos da Linha (Serviço)
	 */
	private void setlbr_ServiceTaxes(){

		List<MLBRNFLineTax> taxes = getTaxes();
		String serviceString = "IMPOSTOS: ";
		for(MLBRNFLineTax tax : taxes){
			X_LBR_TaxGroup taxGroup = new X_LBR_TaxGroup(getCtx(),tax.getLBR_TaxGroup_ID(),get_TrxName());
			serviceString += taxGroup.getName() + ":" +
							 tax.getlbr_TaxRate() + "% R$" +
							 tax.getlbr_TaxAmt() + ", ";
		}

		serviceString = TextUtil.retiraPontoFinal(serviceString);

		if (taxes.size() > 0)
			setlbr_ServiceTaxes("\n" + serviceString);
		else
			setlbr_ServiceTaxes("");
	} //setlbr_ServiceTaxes
	
	/**
	 * Verifica a Situação Tributária do ICMS e IPI
	 */
	private void validateCST(){
		
		//CST ICMS
		String CST_ICMS = getlbr_TaxStatus();
		
		if (CST_ICMS == null || CST_ICMS.isEmpty() || CST_ICMS.length() != 3){
			CST_ICMS = TextUtil.lPad(CST_ICMS, 3);
		}
		
		if (CST_ICMS.endsWith("00") && getICMSAmt().signum() == 0){
			CST_ICMS = CST_ICMS.substring(0, 1) + "40"; //ISENTO
		}
		
		if (!CST_ICMS.endsWith("10") && getTaxAmt("ICMSST").signum() == 1){
			CST_ICMS = CST_ICMS.substring(0, 1) + "10"; //ICMSST
		}
		
		if (CST_ICMS != getlbr_TaxStatus()){
			log.finest(get_ID() + " - CST ICMS alterado para " + CST_ICMS);
			setlbr_TaxStatus(CST_ICMS);
		}

		//CST IPI
		String CST_IPI = getlbr_TaxStatusIPI();
		
		if (CST_IPI == null || CST_IPI.isEmpty() || CST_IPI.length() != 2){
			if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) //ENTRADA
				CST_IPI = "00";
			else
				CST_IPI = "50";
		}
		
		if (getIPIAmt().signum() == 0){ //ISENTO
			if (CST_IPI.equals("00"))
				CST_IPI = "02";
			else if (CST_IPI.equals("50"))
				CST_IPI = "52";
		}
		
		int startWith = Integer.valueOf(CST_IPI.substring(0, 1)).intValue();
		if (startWith < 5 && getParent().isSOTrx()){
			CST_IPI = startWith+5 + CST_IPI.substring(1);
		}
		else if (startWith >= 5 && !getParent().isSOTrx()){
			CST_IPI = startWith-5 + CST_IPI.substring(1);
		}
		
		if (CST_IPI != getlbr_TaxStatusIPI()){
			log.finest(get_ID() + " - CST IPI alterado para " + CST_IPI);
			setlbr_TaxStatusIPI(CST_IPI);
		}
		
	} //checkCST
			
	/**************************************************************************
	 *  retorna todas as linhas de impostos
	 *  @return List<MLBRNFLineTax> taxes
	 */
	public List<MLBRNFLineTax> getTaxes(){

		String whereClause = "LBR_NotaFiscalLine_ID = ?";

		MTable table = MTable.get(getCtx(), MLBRNFLineTax.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(new Object[]{getLBR_NotaFiscalLine_ID()});

		return query.list();
	} //getTaxes
	
	public BigDecimal getFreightAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getAvgExpenseAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getFreightAmt());
	}

	public BigDecimal getInsuranceAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getAvgExpenseAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getlbr_InsuranceAmt());
	}
	
	public BigDecimal getDiscountAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getAvgExpenseAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getDiscountAmt());
	}
	
	public BigDecimal getChargeAmt(){
		MLBRNotaFiscal nf = new MLBRNotaFiscal(getCtx(),getLBR_NotaFiscal_ID(),get_TrxName());
		return getAvgExpenseAmt(nf.getTotalLines().add(nf.getlbr_ServiceTotalAmt()),nf.getChargeAmt());
	}

	protected BigDecimal getAvgExpenseAmt(BigDecimal totalLinesAmt, BigDecimal totalExpenseAmt){

		if (totalLinesAmt.signum() <= 0 || totalExpenseAmt.signum() <= 0)
			return Env.ZERO;
		
		BigDecimal lineAmt = getLineTotalAmt();
		BigDecimal expenseAmt = lineAmt.divide(totalLinesAmt, TaxBR.MCROUND);
		           expenseAmt = totalExpenseAmt.multiply(expenseAmt);

		return expenseAmt.setScale(TaxBR.SCALE, TaxBR.ROUND);
	} //getAvgExpensesAmt
	
	/**
	 * Retorna a DIs da Linha
	 * @return X_LBR_NFDI
	 */
	public X_LBR_NFDI getDI(){
		
		String   whereClause = "LBR_NotaFiscal_ID = ? AND lbr_NFDI_ID = ?";
		Object[] parameters  = new Object[]{getLBR_NotaFiscal_ID(),getLBR_NFDI_ID()};
		
		MTable table = MTable.get(getCtx(), X_LBR_NFDI.Table_Name);
		Query query =  new Query(getCtx(), table, whereClause, get_TrxName());
	 		  query.setParameters(parameters);

	 	return (X_LBR_NFDI)query.firstOnly();
	} //getDI

	public BigDecimal getTotalOperationAmt(){
		
		BigDecimal lineAmt      = getLineTotalAmt();
		BigDecimal freightAmt   = getFreightAmt();		
		BigDecimal insuranceAmt = getInsuranceAmt();
		BigDecimal chargeAmt    = getChargeAmt();
		BigDecimal discountAmt  = getDiscountAmt().negate();
		BigDecimal siscomexAmt  = getlbr_LineTotalSISCOMEX();
		BigDecimal taxAmt       = getIPIAmt().add(getTaxAmt("ICMSST"));
		
		String cfop = getCFOP();
		//Para operações com exterior pegar todos os impostos
		if (cfop.startsWith("3") || cfop.startsWith("7")){
			taxAmt = getTotalTaxAmt();
			taxAmt = taxAmt.subtract(getTaxAmt("II")); //exclui o II do cálculo
		}
			
		//VALOR LINHA + FRETE + SEGURO + SISCOMEX + IPI = VALOR TOTAL DA OPERACAO
		return (lineAmt.add(freightAmt).add(insuranceAmt).add(chargeAmt).add(siscomexAmt).add
			   (taxAmt).add(discountAmt)).setScale(TaxBR.SCALE, TaxBR.ROUND);
	}
	
	/**
	 * Retorna CFOP sem formatação
	 * Ex. CFOP 1.101 = 1101
	 * Ex. CFOP Z.ZZZ = 0000
	 * @return String CFOP formatação (só numeros)
	 */
	public String getCFOP(){
		return TextUtil.lPad(TextUtil.toNumeric(getlbr_CFOPName()),4);
	}
	
	/**
	 * isAsset (verifica se a linha é um ativo fixo)
	 * @return boolean
	 */
	public boolean isAsset(){
		
		boolean isAsset = false;
		
		//COMPRA DE ATIVO O CREDITO É LANÇADO NO BLOCO G
		if (getCFOP().equals("1551") || getCFOP().equals("2551") || getCFOP().equals("3551")){
			isAsset = !getLBR_NotaFiscal().islbr_IsOwnDocument(); //SOMENTE EMISSAO DE TERCEIROS
		}
		
		return isAsset;
	} //isAsset
	
	/**
	 * Retorno o valor de TODOS os impostos da linha
	 * @return TotalTaxAmt
	 */
	public BigDecimal getTotalTaxAmt(){
		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
                     "WHERE LBR_NotaFiscalLine_ID = ?";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID()});
		return result == null ? Env.ZERO : result;
	} //getTotalTaxAmt
	
	/**
	 * Retorno o valor do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxAmt
	 */
	public BigDecimal getTaxAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxAmt

	/**
	 * Retorna a Base de Cálculo do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxBaseAmt 
	 */
	public BigDecimal getTaxBaseAmt(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT SUM(lbr_TaxBaseAmt) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBase

	/**
	 * Retorna a redução da Base de Cálculo
	 * @return BigDecimal amt
	 */
	public BigDecimal getTaxBaseReduction(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxBase) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? AND LBR_TaxGroup_ID IN " +
		             "(SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//
		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxBaseReduction

	/**
	 * Retorna a Alíquota do Imposto
	 * @param taxIndicator (Ex. PIS, COFINS, ICMS)
	 * @return TaxRate 
	 */
	public BigDecimal getTaxRate(String taxIndicator){

		if (taxIndicator == null)
			return Env.ZERO;

		String sql = "SELECT AVG(lbr_TaxRate) FROM LBR_NFLineTax " +
		             "WHERE LBR_NotaFiscalLine_ID = ? " +
		             "AND LBR_TaxGroup_ID IN (SELECT LBR_TaxGroup_ID FROM LBR_TaxGroup WHERE UPPER(Name)=?)";
		//

		BigDecimal result = DB.getSQLValueBD(get_TrxName(), sql, new Object[]{getLBR_NotaFiscalLine_ID(),taxIndicator.toUpperCase()});
		return result == null ? Env.ZERO : result;
	} //getTaxRate

	/**
	 *  @return	Retorno o valor da Base de ICMSST
	 */
	public BigDecimal getICMSSTBase()
	{
		return getTaxBaseAmt("ICMSST");
	}	//	getICMSSTBase
	
	/**
	 *  @return	Retorno o valor do ICMS
	 */
	public BigDecimal getICMSAmt()
	{
		return getTaxAmt("ICMS");
	}	//	getICMSAmt

	/**
	 *  @return	Retorno o valor da Base de ICMS
	 */
	public BigDecimal getICMSBaseAmt()
	{
		return getTaxBaseAmt("ICMS");
	}	//	getICMSBase

	/**
	 *  @return	Retorno a porcetagem da Redução da Base de ICMS
	 */
	public BigDecimal getICMSBaseReduction()
	{
		return getTaxBaseReduction("ICMS");
	}	//	getICMSBaseReduction

	/**
	 *  @return	Retorno a alíquota de ICMS
	 */
	public BigDecimal getICMSRate()
	{
		return getTaxRate("ICMS");
	}	//	getICMSRate
	

	/**
	 *  @return	Retorno o valor do IPI
	 */
	public BigDecimal getIPIAmt()
	{
		return getTaxAmt("IPI");
	}	//	getIPIAmt

	/**
	 *  @return	Retorno o valor da Base de IPI
	 */
	public BigDecimal getIPIBaseAmt()
	{
		return getTaxBaseAmt("IPI");
	}	//	getIPIBase

	/**
	 *  @return	Retorno a alíquota de IPI
	 */
	public BigDecimal getIPIRate()
	{
		return getTaxRate("IPI");
	}	//	getIPIRate
	
	/**
	 * @return Formata e retorna a Situação Tributária do ICMS
	 */
	public String getCST_ICMS(){
		String CST_ICMS = getlbr_TaxStatus();
		
		if (CST_ICMS == null || CST_ICMS.isEmpty() || CST_ICMS.length() != 3){
			CST_ICMS = TextUtil.lPad(CST_ICMS, 3);
		}
		
		if (CST_ICMS.endsWith("00") && getICMSAmt().signum() == 0){
			CST_ICMS = CST_ICMS.substring(0, 1) + "40"; //ISENTO
		}
		
		return CST_ICMS;
	} //getCST_ICMS
	
	/**
	 * @return Formata e retorna a Situação Tributária do IPI
	 */
	public String getCST_IPI(){
		String CST_IPI = getlbr_TaxStatusIPI();
		
		if (CST_IPI == null || CST_IPI.isEmpty() || CST_IPI.length() != 2){
			if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) //ENTRADA
				CST_IPI = "00";
			else
				CST_IPI = "50";
		}
		
		if (getIPIAmt().signum() == 0){ //ISENTO
			if (CST_IPI.equals("00"))
				CST_IPI = "02";
			else if (CST_IPI.equals("50"))
				CST_IPI = "52";
		}
		
		return CST_IPI;
	} //getCST_IPI
		
	/**
	 * @return Formata e retorna a Situação Tributária do PIS
	 */
	public String getCST_PIS(){

		String CST_PIS = getlbr_TaxStatusCOFINS();
		
		MLBRCFOP cfop = new MLBRCFOP(getCtx(),getLBR_CFOP_ID(),get_TrxName());
		
		if (CST_PIS == null || CST_PIS.trim().isEmpty()){
			if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) {//ENTRADA
				CST_PIS = "56";
				if (cfop.isDevolution())
					CST_PIS = "50";
			}
			else{
				CST_PIS = "01";
				if (getTaxRate("PIS").compareTo(TaxBR.PISRATE) != 0)
					CST_PIS = "02";
			}
		}
				
		if (getTaxAmt("PIS").signum() != 1){ //ISENTO
			if (CST_PIS.equals("50") || CST_PIS.equals("56"))
				CST_PIS = "98";
			else if (CST_PIS.equals("01") || CST_PIS.equals("02")){
				CST_PIS = "07";
				if (!cfop.isRevenue())
					CST_PIS = "49";
			}
		}
		
		return CST_PIS;
	} //getCST_PIS
	
	/**
	 * @return Formata e retorna a Situação Tributária do COFINS
	 */
	public String getCST_COFINS(){
		
		String CST_COFINS = getlbr_TaxStatusCOFINS();
		
		MLBRCFOP cfop = new MLBRCFOP(getCtx(),getLBR_CFOP_ID(),get_TrxName());
		
		if (CST_COFINS == null || CST_COFINS.trim().isEmpty()){
			if (Integer.valueOf(getCFOP().substring(0, 1)).intValue() < 5) {//ENTRADA
				CST_COFINS = "56";
				if (cfop.isDevolution())
					CST_COFINS = "50";
			}
			else{
				CST_COFINS = "01";
				if (getTaxRate("COFINS").compareTo(TaxBR.COFINSRATE) != 0)
					CST_COFINS = "02";
			}
		}
				
		if (getTaxAmt("COFINS").signum() != 1){ //ISENTO
			if (CST_COFINS.equals("50") || CST_COFINS.equals("56"))
				CST_COFINS = "98";
			else if (CST_COFINS.equals("01") || CST_COFINS.equals("02")){
				CST_COFINS = "07";
				if (!cfop.isRevenue())
					CST_COFINS = "49";
			}
		}
		
		return CST_COFINS;
	} //getCST_COFINS

} //MLBRNotaFiscalLine