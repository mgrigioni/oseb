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

import java.sql.ResultSet;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_RefNotaFiscal
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LBR_RefNotaFiscal extends PO implements I_LBR_RefNotaFiscal, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150522L;

    /** Standard Constructor */
    public X_LBR_RefNotaFiscal (Properties ctx, int LBR_RefNotaFiscal_ID, String trxName)
    {
      super (ctx, LBR_RefNotaFiscal_ID, trxName);
      /** if (LBR_RefNotaFiscal_ID == 0)
        {
			setLBR_NotaFiscal_ID (0);
			setLBR_RefNotaFiscal_ID (0);
        } */
    }

    /** Load Constructor */
    public X_LBR_RefNotaFiscal (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_RefNotaFiscal[")
        .append(get_ID()).append("]");
      return sb.toString();
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

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_RefNotaFiscal() throws RuntimeException
    {
		return (org.adempierelbr.model.I_LBR_NotaFiscal)MTable.get(getCtx(), org.adempierelbr.model.I_LBR_NotaFiscal.Table_Name)
			.getPO(getLBR_RefNotaFiscal_ID(), get_TrxName());	}

	/** Set Nota Fiscal Referenciada.
		@param LBR_RefNotaFiscal_ID Nota Fiscal Referenciada	  */
	public void setLBR_RefNotaFiscal_ID (int LBR_RefNotaFiscal_ID)
	{
		if (LBR_RefNotaFiscal_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_RefNotaFiscal_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_RefNotaFiscal_ID, Integer.valueOf(LBR_RefNotaFiscal_ID));
	}

	/** Get Nota Fiscal Referenciada.
		@return Nota Fiscal Referenciada	  */
	public int getLBR_RefNotaFiscal_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_RefNotaFiscal_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}
}