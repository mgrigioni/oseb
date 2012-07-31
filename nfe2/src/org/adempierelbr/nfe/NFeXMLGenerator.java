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
package org.adempierelbr.nfe;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.util.List;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNCMIVA;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxFormula;
import org.adempierelbr.nfe.beans.AdicoesDI;
import org.adempierelbr.nfe.beans.COFINSBean;
import org.adempierelbr.nfe.beans.COFINSGrupoBean;
import org.adempierelbr.nfe.beans.ChaveNFe;
import org.adempierelbr.nfe.beans.Cobranca;
import org.adempierelbr.nfe.beans.CobrancaGrupoDuplicata;
import org.adempierelbr.nfe.beans.CobrancaGrupoFatura;
import org.adempierelbr.nfe.beans.DadosNFE;
import org.adempierelbr.nfe.beans.DeclaracaoDI;
import org.adempierelbr.nfe.beans.DetailsNFEBean;
import org.adempierelbr.nfe.beans.ICMSBean;
import org.adempierelbr.nfe.beans.ICMSGrupoBean;
import org.adempierelbr.nfe.beans.IdentDest;
import org.adempierelbr.nfe.beans.IdentEmit;
import org.adempierelbr.nfe.beans.IdentLocalEntrega;
import org.adempierelbr.nfe.beans.IdentNFe;
import org.adempierelbr.nfe.beans.ImpostoDIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIBean;
import org.adempierelbr.nfe.beans.ImpostoIPIGrupoBean;
import org.adempierelbr.nfe.beans.InfAdiFisco;
import org.adempierelbr.nfe.beans.InfComex;
import org.adempierelbr.nfe.beans.PISBean;
import org.adempierelbr.nfe.beans.PISGrupoBean;
import org.adempierelbr.nfe.beans.ProdutosNFEBean;
import org.adempierelbr.nfe.beans.Transporte;
import org.adempierelbr.nfe.beans.TransporteGrupo;
import org.adempierelbr.nfe.beans.TransporteVol;
import org.adempierelbr.nfe.beans.TributosInciBean;
import org.adempierelbr.nfe.beans.Valores;
import org.adempierelbr.nfe.beans.ValoresICMS;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeTaxes;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TaxBR;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MProduct;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;

/**
 *  NFeXMLGenerator
 *  
 *  @author Mario Grigioni
 *  @contributor Ricardo Santana (old version)
 *  @contributor Pablo Boff Pigozzo (old version)
 *  @version $Id: NFeXMLGenerator.java,v 2.0 04/07/2012 14:16:00 mgrigioni Exp $
 */
public class NFeXMLGenerator
{
	/** Log				*/
	private static CLogger log = CLogger.getCLogger(NFeXMLGenerator.class);
	
	/**
	 * Gera o corpo da NF
	 * 
	 * @param LBR_NotaFiscal_ID
	 * @param trxName Transação
	 * @return
	 */
	@SuppressWarnings("resource")
	public static String geraCorpoNFe (int LBR_NotaFiscal_ID, String trxName) throws AdempiereException {
		
		log.fine("Gerando corpo NF-e");
		
		Properties ctx = Env.getCtx();
		
		XStream xstream = new XStream();
		xstream.autodetectAnnotations(true);
		
		DadosNFE dados = new DadosNFE();
		Cobranca cobr = new Cobranca();
		CobrancaGrupoFatura cobrfat = null;
		CobrancaGrupoDuplicata cobrdup = null;

		// Dados da NFE
		dados.setVersao(NFeUtil.VERSAO);

		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx, LBR_NotaFiscal_ID, trxName);
		if (LBR_NotaFiscal_ID == 0)
			return "Nota fiscal inexistente";

		X_LBR_NFTax[] nfTaxes = nf.getTaxes();
		List<MLBRNotaFiscalLine> nfLines = nf.getLines();

		// DADOS DA ORG DE VENDA/COMPRA
		MOrgInfo orgInfo = MOrgInfo.get(ctx, nf.getAD_Org_ID(), trxName);

		// Identificação NFE
		ChaveNFe chaveNFe = new ChaveNFe(nf);
		dados.setId("NFe" + chaveNFe.toString() + chaveNFe.getcDV());
		
		IdentNFe identNFe = new IdentNFe(chaveNFe,nf);
		dados.setIde(identNFe);

		// Dados do Emitente
		dados.setEmit(new IdentEmit(nf));

		// Dados do Destinatário
		dados.setDest(new IdentDest(identNFe.getTpAmb(),nf));

		// Dados do Local de Entrega
		// Informar apenas quando for diferente do endereço do destinatário.
		if (nf.getC_BPartner_Location_ID() != nf.getlbr_Delivery_Location_ID()){ 
			dados.setEntrega(new IdentLocalEntrega(nf));
		}
		
		// Informações de Comércio Exterior
		if (nf.getLBR_CFOP().isComex()){
			dados.setExporta(new InfComex(nf.getlbr_OrgRegion(),nf.getlbr_OrgCity()));
		}
		
		// Dados da Transportadora
		Transporte transporte = new Transporte(nf.getFreightCostRule(),
				new TransporteVol(nf.getNoPackages(),nf.getlbr_PackingType(),nf.getlbr_NetWeight(),nf.getlbr_GrossWeight()));
		if (nf.getlbr_BPShipperCNPJ() != null && !nf.getlbr_BPShipperCNPJ().trim().isEmpty()){
			transporte.setTransporta(new TransporteGrupo(nf));
		}
		dados.setTransp(transporte);
		
		// Valores Totais
		ValoresICMS valoresicms = new ValoresICMS(nf.getGrandTotal(),nf.getTotalLines(),
				nf.getFreightAmt(),nf.getlbr_InsuranceAmt());
		
		for (X_LBR_NFTax nfTax : nfTaxes){
			valoresicms.setValorImposto(nfTax);
		}
		
		dados.setTotal(new Valores(valoresicms));

		//Dados de Cobrança - Fatura
		if (nf.getC_Invoice_ID() > 0){
			MInvoice invoice = new MInvoice(ctx,nf.getC_Invoice_ID(),trxName);
			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());
			boolean HasOpenItems = dt.get_ValueAsBoolean(I_W_C_DocType.COLUMNNAME_lbr_HasOpenItems);

			if (HasOpenItems && nf.isSOTrx()){
				
				MLBROpenItem[] openItems = MLBROpenItem.getOpenItem(nf.getC_Invoice_ID(), trxName);
				
				cobrfat = new CobrancaGrupoFatura();
				cobrfat.setnFat(invoice.getDocumentNo()); // Codigo NFE
				cobrfat.setvOrig(TextUtil.bigdecimalToString(nf.getGrandTotal())); // Valor Bruto
			    cobrfat.setvLiq(TextUtil.bigdecimalToString(nf.getGrandTotal())); // Valor Liquido
			    //cobrfat.setvDesc(TextUtil.ZERO_STRING); // Desconto
			    cobr.setFat(cobrfat);

			    //Adiciona as duplicatas da fatura
			    for(int i=0; i < openItems.length; i++) {
					MLBROpenItem openItem = openItems[i];
					cobrdup = new CobrancaGrupoDuplicata();
					cobrdup.setdVenc(TextUtil.timeToString(openItem.getDueDate(),"yyyy-MM-dd"));
					cobrdup.setnDup(cobrfat.getnFat()+"/"+Integer.toString(i+1));
					cobrdup.setvDup(TextUtil.bigdecimalToString(openItem.getGrandTotal()));
					cobr.addDup(cobrdup);
				}
			    dados.setCobr(cobr);
			}
		}

		int linhaNF = 1;

		for (MLBRNotaFiscalLine nfLine : nfLines) {
			ProdutosNFEBean produtos = new ProdutosNFEBean();
			DeclaracaoDI declaracao = new DeclaracaoDI();

			//Importação - nDI Obrigatório
			if (nfLine.getlbr_CFOPName() != null &&
					nfLine.getlbr_CFOPName().startsWith("3")){
				if (nfLine.getLBR_NFDI_ID() == 0)
					return "Linha: " + nfLine.getLine() + " CFOP Importação. " +
							"DI Obrigatório!";
				
				//	DI e Adições
				X_LBR_NFDI di = new X_LBR_NFDI(Env.getCtx(), nfLine.getLBR_NFDI_ID(), null);
				//
				declaracao.setcExportador(RemoverAcentos.remover(di.getlbr_CodExportador()));
				declaracao.setdDesemb(TextUtil.timeToString(di.getlbr_DataDesemb(), "yyyy-MM-dd"));
				declaracao.setdDI(TextUtil.timeToString(di.getDateTrx(), "yyyy-MM-dd"));
				declaracao.setnDI(di.getlbr_DI());
				declaracao.setUFDesemb(di.getlbr_BPRegion());
				declaracao.setxLocDesemb(RemoverAcentos.remover(di.getlbr_LocDesemb()));

				AdicoesDI adicao = new AdicoesDI();
				adicao.setcFabricante(RemoverAcentos.remover(nfLine.get_ValueAsString("Manufacturer")));
				adicao.setnAdicao(nfLine.get_ValueAsString("lbr_NumAdicao"));
				adicao.setnSeqAdic(nfLine.get_ValueAsString("lbr_NumSeqItem"));
				//adicao.setVDescDI(Env.ZERO);	//TODO
				adicao.setnDI(di.getlbr_DI());
				declaracao.addAdi(adicao);
				produtos.setDI(declaracao);
			} //DI

			//
			ICMSBean icmsnfe = new ICMSBean(); // ICMS
			ICMSGrupoBean icmsgrupo = new ICMSGrupoBean(); // Grupo de ICMS
			ICMSBean.ICMS60Grp icms60 = new ICMSBean.ICMS60Grp();
			ImpostoIPIBean ipinfe = new ImpostoIPIBean(); // IPI
			ImpostoIPIGrupoBean ipigrupo = new ImpostoIPIGrupoBean(); // Grupo de IPI
			ImpostoDIBean impostodi = new ImpostoDIBean(); // DI
			PISBean pisnfe = new PISBean(); // PIS
			PISGrupoBean pisgrupo = new PISGrupoBean(); // Grupo de PIS
			COFINSBean cofinsnfe = new COFINSBean(); // COFINS
			COFINSGrupoBean cofinsgrupo = new COFINSGrupoBean(); // Grupo de COFINS
			TributosInciBean impostos = new TributosInciBean(); // Tributos

			MProduct prdt = new MProduct(ctx, nfLine.getM_Product_ID(), null);
			produtos.setcProd(RemoverAcentos.remover(nfLine.getProductValue()));
			produtos.setxProd(RemoverAcentos.remover(nfLine.getProductName()));
			if (prdt.getUPC() == null || (prdt.getUPC().length() < 12 || prdt.getUPC().length() > 14)) {
				produtos.setcEAN("");
			}
			else
				produtos.setcEAN(prdt.getUPC());

			produtos.setcEANTrib("");
			produtos.setCFOP(TextUtil.toNumeric(nfLine.getlbr_CFOPName()));
			produtos.setqCom(TextUtil.bigdecimalToString(nfLine.getQty(),4));
			produtos.setqTrib(TextUtil.bigdecimalToString(nfLine.getQty(),4));
			produtos.setuCom(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setuTrib(RemoverAcentos.remover(nfLine.getlbr_UOMName()));
			produtos.setvProd(TextUtil.bigdecimalToString((nfLine.getQty().setScale(4,TaxBR.ROUND)).multiply(nfLine.getPrice().setScale(4, TaxBR.ROUND)))); //BF Rejeição: 629
			produtos.setvUnCom(TextUtil.bigdecimalToString(nfLine.getPrice(),4));
			produtos.setvUnTrib(TextUtil.bigdecimalToString(nfLine.getPrice(),4));

			if (nf.getFreightAmt().signum() == 1) //FRETE
				produtos.setvFrete(TextUtil.bigdecimalToString(nfLine.getFreightAmt()));
			if (nf.getlbr_InsuranceAmt().signum() == 1) //SEGURO
				produtos.setvSeg(TextUtil.bigdecimalToString(nfLine.getInsuranceAmt()));

			produtos.setIndTot("1"); //v2.0 = 0 – VL Ñ ENTRA NO TOT 1 - VL ENTRA
			String ncm = nfLine.getlbr_NCMName();

			if (ncm == null && !nfLine.islbr_IsService())
				return "NCM Obrigatório. Linha: " + nfLine.getLine();

			if (nfLine.islbr_IsService())
				ncm = "99"; //SERVICO INFORMAR 99

			produtos.setNCM(TextUtil.toNumeric(ncm));
			//

			String desc = RemoverAcentos.remover(TextUtil.removeEOL(nfLine.getDescription()));
			if (desc != null && !desc.equals("")) {
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++, desc));
			}
			else {
				dados.add(new DetailsNFEBean(produtos, impostos, linhaNF++));
			}

			//
			NFeTaxes[] lineTax = NFeTaxes.getTaxes(nfLine);
			//
			for (NFeTaxes lt : lineTax) {

				if (lt.getTaxIndicator().equals("ICMS")) {
					String taxStatus = nfLine.getlbr_TaxStatus();
					if (taxStatus == null)
						taxStatus = "000";

					// Modalidade de determinação da BC do ICMS:
					// 0 - Margem Valor Agregado (%);
					// 1 - Pauta (valor);
					// 2 - Preço Tabelado Máximo (valor);
					// 3 - Valor da Operação
					if (taxStatus.endsWith("40") ||
					    taxStatus.endsWith("41") ||
					    taxStatus.endsWith("50"))
					{
						icmsgrupo.setOrig(taxStatus.substring(0, 1));
						icmsgrupo.setCST(taxStatus.substring(1));
					}
					else
					{
						icmsgrupo.setModBC("3");
						icmsgrupo.setCST(taxStatus.substring(1));
						icmsgrupo.setOrig(taxStatus.substring(0, 1));
						icmsgrupo.setpICMS(TextUtil.bigdecimalToString(lt.getpImposto()));
						icmsgrupo.setvBC(TextUtil.bigdecimalToString(lt.getvBC()));
						icmsgrupo.setvICMS(TextUtil.bigdecimalToString(lt.getvImposto()));
						
						if (taxStatus.endsWith("10") ||
							taxStatus.endsWith("30")){
							icmsgrupo.setModBCST("4");
							icmsgrupo.setvBCST(TextUtil.bigdecimalToString(lt.getvBCST()));
							icmsgrupo.setpICMSST(TextUtil.bigdecimalToString(lt.getpImpostoST()));
							icmsgrupo.setvICMSST(TextUtil.bigdecimalToString(lt.getvImpostoST()));
						
							BigDecimal iva = MLBRNCMIVA.getProfitPercentage(ctx, nfLine.getLBR_NCM_ID(), nf.getAD_Org_ID(), nf.getC_BPartner_Location(),nf.isSOTrx());
							if (nf.getlbr_TransactionType().equals(X_LBR_TaxFormula.LBR_TRANSACTIONTYPE_Resale)){
								if (iva.signum() == 1){
									icmsgrupo.setpMVAST(TextUtil.bigdecimalToString(iva));
								}
							}
							
							if (taxStatus.endsWith("30")){
								icmsgrupo.setpRedBCST(TextUtil.bigdecimalToString(lt.getpRedBCST()));
							}
						}

						//BF - Redução Base de Cálculo
						if (taxStatus.endsWith("20") ||
							taxStatus.endsWith("70")){
							icmsgrupo.setpRedBC(TextUtil.bigdecimalToString(lt.getpRedBC()));
						}

						if (taxStatus.endsWith("60"))
						{
							icms60.setCST(taxStatus.substring(1));
							icms60.setOrig(taxStatus.substring(0, 1));
							icms60.setVBCSTRet(TextUtil.bigdecimalToString(lt.getvBCST()));
							icms60.setVICMSSTRet(TextUtil.bigdecimalToString(lt.getvImpostoST()));
						}
					}

					int taxStatusDV = Integer.parseInt(taxStatus.substring(taxStatus.length()-2));

					switch (taxStatusDV) {
						case 0:  icmsnfe.setICMS00(icmsgrupo); break;
						case 10: icmsnfe.setICMS10(icmsgrupo); break;
						case 20: icmsnfe.setICMS20(icmsgrupo); break;
						case 30: icmsnfe.setICMS30(icmsgrupo); break;
						case 40: icmsnfe.setICMS40(icmsgrupo); break;
						case 41: icmsnfe.setICMS40(icmsgrupo); break;
						case 50: icmsnfe.setICMS40(icmsgrupo); break;
						case 51: icmsnfe.setICMS51(icmsgrupo); break;
						case 60: icmsnfe.setICMS60(icms60); break;
						case 70: icmsnfe.setICMS70(icmsgrupo); break;
						case 90: icmsnfe.setICMS90(icmsgrupo); break;
					}
					//
					impostos.setICMS(icmsnfe);
				} //ICMS

				else if (lt.getTaxIndicator().equals("PIS")) {
					pisgrupo.setCST("01");
					if (pisgrupo.getCST().equals("01")) {
						pisgrupo.setvPIS(TextUtil.bigdecimalToString(lt.getvImposto()));// vPIS - Valor do PIS
						pisgrupo.setvBC(TextUtil.bigdecimalToString(lt.getvBC()));// vBC - Base de calculo do PIS
						pisgrupo.setpPIS(TextUtil.bigdecimalToString(lt.getpImposto()));// pPIS - percentual do pis
						pisnfe.setPIS(pisgrupo);
						xstream.aliasField("PISAliq", PISBean.class, "PIS");
						impostos.setPIS(pisnfe);
					}
					else {
						pisgrupo.setCST("04");
						pisnfe.setPIS(pisgrupo);
						xstream.aliasField("PISNT", PISBean.class, "PIS");
						impostos.setPIS(pisnfe);
					}
				} //PIS

				else if (lt.getTaxIndicator().equals("COFINS")) {
					cofinsgrupo.setCST("01");
					if (cofinsgrupo.getCST().equals("01")) {
						cofinsgrupo.setCST("01");
						cofinsgrupo.setvCOFINS(TextUtil.bigdecimalToString(lt.getvImposto())); // vCOFINS - Valor do COFINS
						cofinsgrupo.setvBC(TextUtil.bigdecimalToString(lt.getvBC())); // vBC - Valor da Base de calculo
						cofinsgrupo.setpCOFINS(TextUtil.bigdecimalToString(lt.getpImposto())); // pCofins - Aliquota cofins
						cofinsnfe.setCOFINS(cofinsgrupo);
						xstream.aliasField("COFINSAliq", COFINSBean.class, "COFINS");
						impostos.setCOFINS(cofinsnfe);
					}
					else {
						cofinsgrupo.setCST("04");
						cofinsnfe.setCOFINS(cofinsgrupo);
						xstream.aliasField("COFINSNT", COFINSBean.class, "COFINS");
						impostos.setCOFINS(cofinsnfe);
					}
				} //COFINS

				else if(lt.getTaxIndicator().toUpperCase().equals("IPI")) {
					String CST = nfLine.getlbr_TaxStatusIPI();
					//
					if (CST == null || CST.equals(""))
						;
					else if (CST.endsWith("0") || CST.endsWith("9"))
					{
						ipigrupo.setCST(CST);
						ipigrupo.setvIPI(TextUtil.bigdecimalToString(lt.getvImposto()));
						ipigrupo.setvBC(TextUtil.bigdecimalToString(lt.getvBC()));
						ipigrupo.setpIPI(TextUtil.bigdecimalToString(lt.getpImposto()));
						ipinfe.setcEnq("999");	//	Deixar 999 até a RBF criar a regra.
						ipinfe.setIPI(ipigrupo);
						impostos.setIPI(ipinfe);
					}
					else
					{
						ipigrupo.setCST(CST);
						ipinfe.setcEnq("999");
						ipinfe.setIPINT(ipigrupo);
						impostos.setIPI(ipinfe);
					}
				} //IPI

				else if(lt.getTaxIndicator().equals("II")) {
					impostodi.setvBC(TextUtil.bigdecimalToString(lt.getvBC()));
					impostodi.setvDespAdu(TextUtil.ZERO_STRING);
					impostodi.setvII(TextUtil.bigdecimalToString(lt.getvImposto()));
					impostodi.setvIOF(TextUtil.ZERO_STRING);
					impostos.setII(impostodi);
				} //II

				else if(lt.getTaxIndicator().equals("ISSQN")) {
					//TNFe.InfNFe.Det.Imposto.ISSQN issqn =
					//obj.createTNFeInfNFeDetImpostoISSQN();
					//imposto.setISSQN(issqn);
				} //ISSQN

			}//Impostos das Linhas

		}//	Linhas da NF


		String dadosAdi = RemoverAcentos.remover(TextUtil.removeEOL(nf.getDescription()));
		if (dadosAdi != null && !dadosAdi.equals(""))
		{
			InfAdiFisco infAdi = new InfAdiFisco();
			infAdi.setInfCpl(dadosAdi);
			dados.setInfAdic(infAdi);
		}

		StringWriter sw = new StringWriter ();
		xstream.marshal (dados,  new CompactWriter (sw));
		
		String nfeID = dados.getId().substring(3);
		String arquivoXML = nfeID + NFeUtil.EXT_NFE;
		
		String NFeEmXML = NFeUtil.geraCabecNFe() + TextUtil.removeEOL(sw.toString()) + NFeUtil.geraRodapNFe();
		
		try
		{
			log.fine("Assinando NF-e");
			arquivoXML = TextUtil.generateTmpFile(NFeEmXML, arquivoXML);
			AssinaturaDigital.Assinar(arquivoXML, orgInfo, AssinaturaDigital.DOCTYPE_RECEPCAO_NFE);
		}
		catch (Exception e){
			log.severe(e.getMessage());
			System.out.println(e.getMessage());
		}

		String retValidacao = "";

		File file = new File(arquivoXML);

		try{
			log.fine("Validando NF-e");

			retValidacao = NFeUtil.validateSize(file);
			if (retValidacao != null)
				return retValidacao;

			FileInputStream stream = new FileInputStream(file);
			InputStreamReader streamReader = new InputStreamReader(stream);
			BufferedReader reader = new BufferedReader(streamReader);

			String validar = "";
			String line    = null;
			while( (line=reader.readLine() ) != null ) {
				validar += line;
			}
			//
			retValidacao = ValidaXML.validaNFe(validar);
		}
		catch (Exception e){
			log.severe(e.getMessage());
		}

		if (!retValidacao.equals("")){
			log.log(Level.SEVERE, retValidacao);
			return retValidacao;
		}

		else{
			//	Grava ID
			nf.setlbr_NFeID(nfeID);
			nf.save(trxName);
			//	Anexa o XML na NF
			MAttachment attachNFe = nf.createAttachment();
			attachNFe.addEntry(file);
			attachNFe.save(trxName);
			//
			return "";
		}

	}	//	geraCorpoNFe

}	//	NFeXMLGenerator