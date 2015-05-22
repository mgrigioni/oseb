/******************************************************************************
 * Product: AdempiereLBR ERP & CRM Smart Business Solution                    *
 * Copyright (C) 1999-2007 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software, you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY, without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program, if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
/** Generated Model - DO NOT CHANGE */
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_NFDI
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LBR_NFDI extends PO implements I_LBR_NFDI, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150522L;

    /** Standard Constructor */
    public X_LBR_NFDI (Properties ctx, int LBR_NFDI_ID, String trxName)
    {
      super (ctx, LBR_NFDI_ID, trxName);
      /** if (LBR_NFDI_ID == 0)
        {
			setlbr_AFRMM (Env.ZERO);
			setlbr_BPCNPJ (null);
			setlbr_BPDeliveryRegion (null);
			setLBR_NFDI_ID (0);
			setLBR_NotaFiscal_ID (0);
			setlbr_TpIntermedio (null);
// 1
			setlbr_ViaTransp (null);
			setType (null);
// 0
        } */
    }

    /** Load Constructor */
    public X_LBR_NFDI (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 3 - Client - Org 
      */
    protected int get_AccessLevel()
    {
      return accessLevel.intValue();
    }

    /** Load Meta Data */
    protected POInfo initPO (Properties ctx)
    {
      POInfo poi = POInfo.getPOInfo (ctx, Table_ID, get_TrxName());
      return poi;
    }

    public String toString()
    {
      StringBuffer sb = new StringBuffer ("X_LBR_NFDI[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Transaction Date.
		@param DateTrx 
		Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx)
	{
		set_Value (COLUMNNAME_DateTrx, DateTrx);
	}

	/** Get Transaction Date.
		@return Transaction Date
	  */
	public Timestamp getDateTrx () 
	{
		return (Timestamp)get_Value(COLUMNNAME_DateTrx);
	}

	/** Set AFRMM.
		@param lbr_AFRMM 
		Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
	  */
	public void setlbr_AFRMM (BigDecimal lbr_AFRMM)
	{
		set_Value (COLUMNNAME_lbr_AFRMM, lbr_AFRMM);
	}

	/** Get AFRMM.
		@return Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
	  */
	public BigDecimal getlbr_AFRMM () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_lbr_AFRMM);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set BP CNPJ.
		@param lbr_BPCNPJ 
		BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ)
	{
		set_Value (COLUMNNAME_lbr_BPCNPJ, lbr_BPCNPJ);
	}

	/** Get BP CNPJ.
		@return BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPCNPJ);
	}

	/** Set BP DeliveryRegion.
		@param lbr_BPDeliveryRegion 
		BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryRegion (String lbr_BPDeliveryRegion)
	{
		set_Value (COLUMNNAME_lbr_BPDeliveryRegion, lbr_BPDeliveryRegion);
	}

	/** Get BP DeliveryRegion.
		@return BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPDeliveryRegion);
	}

	/** Set BP Region.
		@param lbr_BPRegion 
		BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion)
	{
		set_Value (COLUMNNAME_lbr_BPRegion, lbr_BPRegion);
	}

	/** Get BP Region.
		@return BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion () 
	{
		return (String)get_Value(COLUMNNAME_lbr_BPRegion);
	}

	/** Set Código do exportador.
		@param lbr_CodExportador Código do exportador	  */
	public void setlbr_CodExportador (String lbr_CodExportador)
	{
		set_Value (COLUMNNAME_lbr_CodExportador, lbr_CodExportador);
	}

	/** Get Código do exportador.
		@return Código do exportador	  */
	public String getlbr_CodExportador () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CodExportador);
	}

	/** Set Data do Desembaraço.
		@param lbr_DataDesemb Data do Desembaraço	  */
	public void setlbr_DataDesemb (Timestamp lbr_DataDesemb)
	{
		set_Value (COLUMNNAME_lbr_DataDesemb, lbr_DataDesemb);
	}

	/** Get Data do Desembaraço.
		@return Data do Desembaraço	  */
	public Timestamp getlbr_DataDesemb () 
	{
		return (Timestamp)get_Value(COLUMNNAME_lbr_DataDesemb);
	}

	/** Set DI.
		@param lbr_DI 
		Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public void setlbr_DI (String lbr_DI)
	{
		set_Value (COLUMNNAME_lbr_DI, lbr_DI);
	}

	/** Get DI.
		@return Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public String getlbr_DI () 
	{
		return (String)get_Value(COLUMNNAME_lbr_DI);
	}

	/** Set Drawback No.
		@param lbr_Drawback 
		Identifies the Drawback No
	  */
	public void setlbr_Drawback (String lbr_Drawback)
	{
		set_Value (COLUMNNAME_lbr_Drawback, lbr_Drawback);
	}

	/** Get Drawback No.
		@return Identifies the Drawback No
	  */
	public String getlbr_Drawback () 
	{
		return (String)get_Value(COLUMNNAME_lbr_Drawback);
	}

	/** Set Local de Desembaraço.
		@param lbr_LocDesemb Local de Desembaraço	  */
	public void setlbr_LocDesemb (String lbr_LocDesemb)
	{
		set_Value (COLUMNNAME_lbr_LocDesemb, lbr_LocDesemb);
	}

	/** Get Local de Desembaraço.
		@return Local de Desembaraço	  */
	public String getlbr_LocDesemb () 
	{
		return (String)get_Value(COLUMNNAME_lbr_LocDesemb);
	}

	/** Set DI.
		@param LBR_NFDI_ID DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID)
	{
		if (LBR_NFDI_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NFDI_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NFDI_ID, Integer.valueOf(LBR_NFDI_ID));
	}

	/** Get DI.
		@return DI	  */
	public int getLBR_NFDI_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NFDI_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_NotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal.
		@param LBR_NotaFiscal_ID 
		Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID)
	{
		if (LBR_NotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_NotaFiscal_ID, Integer.valueOf(LBR_NotaFiscal_ID));
	}

	/** Get Nota Fiscal.
		@return Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_NotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_TpIntermedio AD_Reference_ID=1250003 */
	public static final int LBR_TPINTERMEDIO_AD_Reference_ID=1250003;
	/** 1 - Importação por conta própria = 1 */
	public static final String LBR_TPINTERMEDIO_1_ImportaçãoPorContaPrópria = "1";
	/** 2 - Importação por conta e ordem = 2 */
	public static final String LBR_TPINTERMEDIO_2_ImportaçãoPorContaEOrdem = "2";
	/** 3 - Importação por encomenda = 3 */
	public static final String LBR_TPINTERMEDIO_3_ImportaçãoPorEncomenda = "3";
	/** Set Tipo de Intermedio.
		@param lbr_TpIntermedio 
		Forma de importação quanto a intermediação
	  */
	public void setlbr_TpIntermedio (String lbr_TpIntermedio)
	{

		set_Value (COLUMNNAME_lbr_TpIntermedio, lbr_TpIntermedio);
	}

	/** Get Tipo de Intermedio.
		@return Forma de importação quanto a intermediação
	  */
	public String getlbr_TpIntermedio () 
	{
		return (String)get_Value(COLUMNNAME_lbr_TpIntermedio);
	}

	/** lbr_ViaTransp AD_Reference_ID=1250002 */
	public static final int LBR_VIATRANSP_AD_Reference_ID=1250002;
	/** 01 - Marítima = 01 */
	public static final String LBR_VIATRANSP_01_Marítima = "01";
	/** 02 - Fluvial = 02 */
	public static final String LBR_VIATRANSP_02_Fluvial = "02";
	/** 03 - Lacustre = 03 */
	public static final String LBR_VIATRANSP_03_Lacustre = "03";
	/** 04 - Aérea = 04 */
	public static final String LBR_VIATRANSP_04_Aérea = "04";
	/** 05 - Postal = 05 */
	public static final String LBR_VIATRANSP_05_Postal = "05";
	/** 06 - Ferroviária = 06 */
	public static final String LBR_VIATRANSP_06_Ferroviária = "06";
	/** 07 - Rodoviária = 07 */
	public static final String LBR_VIATRANSP_07_Rodoviária = "07";
	/** 08 - Conduto / Rede Transmissão = 08 */
	public static final String LBR_VIATRANSP_08_CondutoRedeTransmissão = "08";
	/** 09 - Meios Próprios = 09 */
	public static final String LBR_VIATRANSP_09_MeiosPróprios = "09";
	/** 10 - Entrada / Saída ficta = 10 */
	public static final String LBR_VIATRANSP_10_EntradaSaídaFicta = "10";
	/** Set Via de Transporte Internacional.
		@param lbr_ViaTransp 
		Via de transporte internacional informada na Declaração de Importação (DI)
	  */
	public void setlbr_ViaTransp (String lbr_ViaTransp)
	{

		set_Value (COLUMNNAME_lbr_ViaTransp, lbr_ViaTransp);
	}

	/** Get Via de Transporte Internacional.
		@return Via de transporte internacional informada na Declaração de Importação (DI)
	  */
	public String getlbr_ViaTransp () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ViaTransp);
	}

	/** Set Manufacturer.
		@param Manufacturer 
		Manufacturer of the Product
	  */
	public void setManufacturer (String Manufacturer)
	{
		set_Value (COLUMNNAME_Manufacturer, Manufacturer);
	}

	/** Get Manufacturer.
		@return Manufacturer of the Product
	  */
	public String getManufacturer () 
	{
		return (String)get_Value(COLUMNNAME_Manufacturer);
	}

	/** Type AD_Reference_ID=1120013 */
	public static final int TYPE_AD_Reference_ID=1120013;
	/** Declaração de Importação = 0 */
	public static final String TYPE_DeclaraçãoDeImportação = "0";
	/** Declaração Simplificada de Importação = 1 */
	public static final String TYPE_DeclaraçãoSimplificadaDeImportação = "1";
	/** Set Type.
		@param Type 
		Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type)
	{

		set_Value (COLUMNNAME_Type, Type);
	}

	/** Get Type.
		@return Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType () 
	{
		return (String)get_Value(COLUMNNAME_Type);
	}
}