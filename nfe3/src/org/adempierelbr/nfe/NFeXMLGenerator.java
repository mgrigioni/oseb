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
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNCMIVA;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.model.MLBRNotaFiscalLine;
import org.adempierelbr.model.MLBROpenItem;
import org.adempierelbr.model.X_LBR_NFDI;
import org.adempierelbr.model.X_LBR_NFTax;
import org.adempierelbr.model.X_LBR_TaxFormula;
import org.adempierelbr.nfe.beans.AdicoesDI;
import org.adempierelbr.nfe.beans.ChaveNFe;
import org.adempierelbr.nfe.beans.Cobranca;
import org.adempierelbr.nfe.beans.CobrancaGrupoDuplicata;
import org.adempierelbr.nfe.beans.CobrancaGrupoFatura;
import org.adempierelbr.nfe.beans.DeclaracaoDI;
import org.adempierelbr.nfe.beans.DetExport;
import org.adempierelbr.nfe.beans.DetalheProduto;
import org.adempierelbr.nfe.beans.IdentDest;
import org.adempierelbr.nfe.beans.IdentEmit;
import org.adempierelbr.nfe.beans.IdentLocalEntrega;
import org.adempierelbr.nfe.beans.IdentNFe;
import org.adempierelbr.nfe.beans.ImpostoProduto;
import org.adempierelbr.nfe.beans.InfAdic;
import org.adempierelbr.nfe.beans.InfComex;
import org.adempierelbr.nfe.beans.InfNFE;
import org.adempierelbr.nfe.beans.ProdutoNFe;
import org.adempierelbr.nfe.beans.Transporte;
import org.adempierelbr.nfe.beans.TransporteGrupo;
import org.adempierelbr.nfe.beans.TransporteVol;
import org.adempierelbr.nfe.beans.Valores;
import org.adempierelbr.nfe.beans.ValoresICMS;
import org.adempierelbr.nfe.imposto.COFINSBean;
import org.adempierelbr.nfe.imposto.COFINSGrupoBean;
import org.adempierelbr.nfe.imposto.ICMSBean;
import org.adempierelbr.nfe.imposto.ICMSGrupoBean;
import org.adempierelbr.nfe.imposto.ImpostoII;
import org.adempierelbr.nfe.imposto.ImpostoIPIBean;
import org.adempierelbr.nfe.imposto.ImpostoIPIGrupoBean;
import org.adempierelbr.nfe.imposto.PISBean;
import org.adempierelbr.nfe.imposto.PISGrupoBean;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeTaxes;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.adempierelbr.util.ValidaXML;
import org.adempierelbr.wrapper.I_W_C_DocType;
import org.compiere.model.MAttachment;
import org.compiere.model.MDocType;
import org.compiere.model.MInvoice;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Env;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

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
	 * Gera o arquivo xml no padrão da NFe
	 * @param ctx
	 * @param LBR_NotaFiscal_ID
	 * @param trxName
	 * @return
	 * @throws AdempiereException
	 */
	@SuppressWarnings("resource")
	public static void geraCorpoNFe (Properties ctx, int LBR_NotaFiscal_ID, String trxName) throws AdempiereException {
		
		if (LBR_NotaFiscal_ID <= 0)
			throw new AdempiereException("Nota Fiscal inválida");
		
		MLBRNotaFiscal nf = new MLBRNotaFiscal(ctx,LBR_NotaFiscal_ID,trxName);
		
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		
		InfNFE dados = new InfNFE();

		// Dados da NFE
		dados.setVersao(NFeUtil.VERSAO);

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
		if (nf.isSOTrx() && nf.getLBR_CFOP().isComex()){
			dados.setExporta(new InfComex(nf.getlbr_OrgRegion(),nf.getlbr_OrgCity()));
		}
		
		// Dados da Transportadora
		Transporte transporte = new Transporte(nf.getFreightCostRule(),
				new TransporteVol(nf.getNoPackages(),nf.getlbr_PackingType(),nf.getlbr_NetWeight(),nf.getlbr_GrossWeight()));
		if (nf.getlbr_BPShipperCNPJ() != null && !nf.getlbr_BPShipperCNPJ().trim().isEmpty()){
			transporte.setTransporta(new TransporteGrupo(nf));
		}
		dados.setTransp(transporte);
		
		// Dados Adicionais
		dados.setInfAdic(new InfAdic(nf.getDescription()));
				
		//Dados de Cobrança - Fatura
		if (nf.getC_Invoice_ID() > 0){
			MInvoice invoice = new MInvoice(ctx,nf.getC_Invoice_ID(),trxName);
			MDocType dt = MDocType.get(ctx, invoice.getC_DocTypeTarget_ID());

			if (nf.isSOTrx() && dt.get_ValueAsBoolean(I_W_C_DocType.COLUMNNAME_lbr_HasOpenItems)){
					
				CobrancaGrupoFatura cobrfat = new CobrancaGrupoFatura(invoice.getDocumentNo(),nf.getGrandTotal());
				
				MLBROpenItem[] openItems = MLBROpenItem.getOpenItem(nf.getC_Invoice_ID(), trxName);
				List<CobrancaGrupoDuplicata> dups = new ArrayList<CobrancaGrupoDuplicata>();
				
			    //Adiciona as duplicatas da fatura
			    for(int i=0; i < openItems.length; i++) {
					MLBROpenItem oi = openItems[i];
					String nDup = cobrfat.getnFat()+"/"+Integer.toString(i+1);
					dups.add(new CobrancaGrupoDuplicata(nDup,oi.getDueDate(),oi.getGrandTotal()));
				}
			    dados.setCobr(new Cobranca(cobrfat,dups));
			}
		}
				
		int linhaNF = 1;
		BigDecimal vBC = Env.ZERO;
		
		List<MLBRNotaFiscalLine> nfLines = nf.getLines();
		for (MLBRNotaFiscalLine nfLine : nfLines) {
			
			ProdutoNFe produto = new ProdutoNFe(nfLine);
			
			/*
			 * Detalhes de Importação do Produto
			 */
			if (nfLine.getCFOP().startsWith("3")) {
				if (nfLine.getLBR_NFDI_ID() <= 0)
					throw new AdempiereException("Linha: " + nfLine.getLine() + " sem DI");
				
				X_LBR_NFDI di = new X_LBR_NFDI(ctx, nfLine.getLBR_NFDI_ID(), trxName);
				
				List<AdicoesDI> adis = new ArrayList<AdicoesDI>();
				adis.add(new AdicoesDI(nfLine.get_ValueAsString("lbr_NumAdicao"),
						nfLine.get_ValueAsString("lbr_NumSeqItem"),
						nfLine.get_ValueAsString("Manufacturer"),di.getlbr_Drawback()));
				
				DeclaracaoDI declaracaoDI = new DeclaracaoDI(di.getlbr_DI(),
						di.getDateTrx(), di.getlbr_LocDesemb(), di.getlbr_BPRegion(),
						di.getlbr_DataDesemb(),di.getlbr_CodExportador(),
						di.getlbr_ViaTransp(),di.getlbr_TpIntermedio(),adis);
				
				if (di.getlbr_ViaTransp().equals(X_LBR_NFDI.LBR_VIATRANSP_01_Marítima)){
					declaracaoDI.setvAFRMM(di.getlbr_AFRMM());
				}
				
				if (!di.getlbr_TpIntermedio().equals(X_LBR_NFDI.LBR_TPINTERMEDIO_1_ImportaçãoPorContaPrópria)){
					declaracaoDI.setCNPJ(di.getlbr_BPCNPJ());
					declaracaoDI.setUFTerceiro(di.getlbr_BPDeliveryRegion());
				}
				
				produto.setDI(declaracaoDI);
				
				if (di.getlbr_Drawback() != null && !di.getlbr_Drawback().trim().isEmpty()){
					DetExport detExport = new DetExport(di.getlbr_Drawback());
					produto.setDetExport(detExport);
				}
				
			}
			
			/*
			 * Detalhes de Exportação do Produto
			 */
			if (nfLine.getCFOP().startsWith("7")) {
				if (nfLine.getlbr_Drawback() != null &&
					!nfLine.getlbr_Drawback().trim().isEmpty()){
					DetExport detExport = new DetExport(nfLine.getlbr_Drawback());
					produto.setDetExport(detExport);
				}
			}
			
			ICMSBean icmsnfe = new ICMSBean(); // ICMS
			ICMSGrupoBean icmsgrupo = new ICMSGrupoBean(); // Grupo de ICMS
			ICMSBean.ICMS60Grp icms60 = new ICMSBean.ICMS60Grp();
			ImpostoIPIBean ipinfe = new ImpostoIPIBean(); // IPI
			ImpostoIPIGrupoBean ipigrupo = new ImpostoIPIGrupoBean(); // Grupo de IPI
			PISBean pisnfe = new PISBean(); // PIS
			PISGrupoBean pisgrupo = new PISGrupoBean(); // Grupo de PIS
			COFINSBean cofinsnfe = new COFINSBean(); // COFINS
			COFINSGrupoBean cofinsgrupo = new COFINSGrupoBean(); // Grupo de COFINS
			ImpostoProduto impostos = new ImpostoProduto(nfLine.getlbr_ValorTotTrib()); // Tributos

			dados.add(new DetalheProduto(linhaNF++, produto, impostos, nfLine.getDescription()));

			//			
			for (NFeTaxes lt : NFeTaxes.getTaxes(nfLine)) {

				if (lt.getTaxIndicator().equals("ICMS")) {
					String taxStatus = nfLine.getCST_ICMS();

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

						if (taxStatus.endsWith("60")){
							icms60.setCST(taxStatus.substring(1));
							icms60.setOrig(taxStatus.substring(0, 1));
							icms60.setVBCSTRet(TextUtil.bigdecimalToString(lt.getvBCST()));
							icms60.setVICMSSTRet(TextUtil.bigdecimalToString(lt.getvImpostoST()));
						}
						
						//Diferimento
						if (taxStatus.endsWith("51")){
							icmsgrupo.setvBC(nfLine.getQty(),nfLine.getPrice());
							icmsgrupo.setpICMS("100");
							icmsgrupo.setvICMSOp(nfLine.getQty(),nfLine.getPrice());
							icmsgrupo.setpDif("100");
							icmsgrupo.setvICMSDif(nfLine.getQty(),nfLine.getPrice());
						
							vBC = vBC.add(new BigDecimal(icmsgrupo.getvBC()));
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
					String cEnqIPI = nfLine.get_ValueAsString("lbr_cEnqIPI");
					if (cEnqIPI == null || cEnqIPI.trim().isEmpty())
						cEnqIPI = "999"; 	//	Deixar 999 padrão
					//
					if (CST == null || CST.equals(""))
						;
					else if (CST.endsWith("0") || CST.endsWith("9"))
					{
						ipigrupo.setCST(CST);
						ipigrupo.setvIPI(TextUtil.bigdecimalToString(lt.getvImposto()));
						ipigrupo.setvBC(TextUtil.bigdecimalToString(lt.getvBC()));
						ipigrupo.setpIPI(TextUtil.bigdecimalToString(lt.getpImposto()));
						ipinfe.setcEnq(cEnqIPI);
						ipinfe.setIPI(ipigrupo);
						impostos.setIPI(ipinfe);
					}
					else
					{
						ipigrupo.setCST(CST);
						ipinfe.setcEnq(cEnqIPI);
						ipinfe.setIPINT(ipigrupo);
						impostos.setIPI(ipinfe);
					}
				} //IPI

				else if(lt.getTaxIndicator().equals("II")) {
					ImpostoII impostodi = new ImpostoII(lt.getvBC(),lt.getvImposto());
					impostos.setII(impostodi);
				} //II

			}//Impostos das Linhas

		}//	Linhas da NF
		
		// Valores Totais
		ValoresICMS valoresicms = new ValoresICMS(nf.getGrandTotal(),nf.getTotalLines(),
				nf.getFreightAmt(),nf.getlbr_InsuranceAmt(), nf.getChargeAmt(), nf.getValorTotTrib());
		
		for (X_LBR_NFTax nfTax : nf.getTaxes()){
			valoresicms.setValorImposto(nfTax);
		}
		
		valoresicms.addvBC(vBC);
		
		dados.setTotal(new Valores(valoresicms));

		StringWriter sw = new StringWriter ();
		xstream.marshal (dados,  new CompactWriter (sw));
		
		String nfeID = dados.getId().substring(3);
		String arquivoXML = nfeID + NFeUtil.EXT_NFE;
		
		String NFeEmXML = NFeUtil.geraCabecNFe() + TextUtil.removeEOL(sw.toString()) + NFeUtil.geraRodapNFe();
		
		try {
			log.fine("Assinando NF-e");
			arquivoXML = TextUtil.generateTmpFile(NFeEmXML, arquivoXML);
			AssinaturaDigital.Assinar(arquivoXML, orgInfo, AssinaturaDigital.DOCTYPE_RECEPCAO_NFE);
		}
		catch (Exception e) {
			log.severe(e.getMessage());
			System.out.println(e.getMessage());
		}

		String retValidacao = "";

		File file = new File(arquivoXML);

		try{
			retValidacao = NFeUtil.validateSize(file);
			if (retValidacao != null)
				throw new AdempiereException(retValidacao);

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

		if (retValidacao.equals("")){
			//	Grava ID
			nf.setlbr_NFeID(nfeID);
			nf.save(trxName);
			//	Anexa o XML na NF
			MAttachment attachNFe = nf.createAttachment(true);
			attachNFe.addEntry(file);
			attachNFe.save(trxName);
		}
		else{
			log.severe(retValidacao);
			throw new AdempiereException(retValidacao);
		}

	}	//	geraCorpoNFe

}	//	NFeXMLGenerator