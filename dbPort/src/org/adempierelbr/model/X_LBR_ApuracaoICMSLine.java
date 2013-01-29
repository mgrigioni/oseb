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
import java.util.Properties;
import org.compiere.model.*;
import org.compiere.util.Env;

/** Generated Model for LBR_ApuracaoICMSLine
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LBR_ApuracaoICMSLine extends PO implements I_LBR_ApuracaoICMSLine, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20130107L;

    /** Standard Constructor */
    public X_LBR_ApuracaoICMSLine (Properties ctx, int LBR_ApuracaoICMSLine_ID, String trxName)
    {
      super (ctx, LBR_ApuracaoICMSLine_ID, trxName);
      /** if (LBR_ApuracaoICMSLine_ID == 0)
        {
			setAmt (Env.ZERO);
			setDescription (null);
			setLBR_ApuracaoICMS_ID (0);
			setLBR_ApuracaoICMSLine_ID (0);
			setLBR_ICMSBasis_ID (0);
			setType (null);
        } */
    }

    /** Load Constructor */
    public X_LBR_ApuracaoICMSLine (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_ApuracaoICMSLine[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Amount.
		@param Amt 
		Amount
	  */
	public void setAmt (BigDecimal Amt)
	{
		set_Value (COLUMNNAME_Amt, Amt);
	}

	/** Get Amount.
		@return Amount
	  */
	public BigDecimal getAmt () 
	{
		BigDecimal bd = (BigDecimal)get_Value(COLUMNNAME_Amt);
		if (bd == null)
			 return Env.ZERO;
		return bd;
	}

	/** Set Description.
		@param Description 
		Optional short description of the record
	  */
	public void setDescription (String Description)
	{
		set_Value (COLUMNNAME_Description, Description);
	}

	/** Get Description.
		@return Optional short description of the record
	  */
	public String getDescription () 
	{
		return (String)get_Value(COLUMNNAME_Description);
	}

	public org.adempierelbr.model.I_LBR_ApuracaoICMS getLBR_ApuracaoICMS() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ApuracaoICMS)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ApuracaoICMS.Table_Name)
			.getPO(getLBR_ApuracaoICMS_ID(), get_TrxName());	}

	/** Set Apuração do ICMS.
		@param LBR_ApuracaoICMS_ID Apuração do ICMS	  */
	public void setLBR_ApuracaoICMS_ID (int LBR_ApuracaoICMS_ID)
	{
		if (LBR_ApuracaoICMS_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoICMS_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoICMS_ID, Integer.valueOf(LBR_ApuracaoICMS_ID));
	}

	/** Get Apuração do ICMS.
		@return Apuração do ICMS	  */
	public int getLBR_ApuracaoICMS_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ApuracaoICMS_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Linha de Apuração do ICMS.
		@param LBR_ApuracaoICMSLine_ID Linha de Apuração do ICMS	  */
	public void setLBR_ApuracaoICMSLine_ID (int LBR_ApuracaoICMSLine_ID)
	{
		if (LBR_ApuracaoICMSLine_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoICMSLine_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_ApuracaoICMSLine_ID, Integer.valueOf(LBR_ApuracaoICMSLine_ID));
	}

	/** Get Linha de Apuração do ICMS.
		@return Linha de Apuração do ICMS	  */
	public int getLBR_ApuracaoICMSLine_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ApuracaoICMSLine_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	public org.adempierelbr.model.I_LBR_ICMSBasis getLBR_ICMSBasis() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_ICMSBasis)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_ICMSBasis.Table_Name)
			.getPO(getLBR_ICMSBasis_ID(), get_TrxName());	}

	/** Set ICMS Basis.
		@param LBR_ICMSBasis_ID 
		Describe ICMS Basis
	  */
	public void setLBR_ICMSBasis_ID (int LBR_ICMSBasis_ID)
	{
		if (LBR_ICMSBasis_ID < 1) 
			set_Value (COLUMNNAME_LBR_ICMSBasis_ID, null);
		else 
			set_Value (COLUMNNAME_LBR_ICMSBasis_ID, Integer.valueOf(LBR_ICMSBasis_ID));
	}

	/** Get ICMS Basis.
		@return Describe ICMS Basis
	  */
	public int getLBR_ICMSBasis_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_ICMSBasis_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Type AD_Reference_ID=1120012 */
	public static final int TYPE_AD_Reference_ID=1120012;
	/** Outros Débitos = 002 */
	public static final String TYPE_OutrosDébitos = "002";
	/** Estornos de Créditos = 003 */
	public static final String TYPE_EstornosDeCréditos = "003";
	/** Outros Créditos = 006 */
	public static final String TYPE_OutrosCréditos = "006";
	/** Estorno de Débitos = 007 */
	public static final String TYPE_EstornoDeDébitos = "007";
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