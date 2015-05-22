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

/** Generated Model for LBR_FCIProcess
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.7.0LTS - $Id$ */
public class X_LBR_FCIProcess extends PO implements I_LBR_FCIProcess, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20150522L;

    /** Standard Constructor */
    public X_LBR_FCIProcess (Properties ctx, int LBR_FCIProcess_ID, String trxName)
    {
      super (ctx, LBR_FCIProcess_ID, trxName);
      /** if (LBR_FCIProcess_ID == 0)
        {
			setC_Period_ID (0);
			setLBR_FCIProcess_ID (0);
			setlbr_ProcCreateFCIFile (null);
// N
			setlbr_ProcCreateProductFCI (null);
// N
			setlbr_Step1 (false);
// N
			setlbr_Step2 (false);
// N
			setProcessed (false);
// N
			setProcessing (false);
        } */
    }

    /** Load Constructor */
    public X_LBR_FCIProcess (Properties ctx, ResultSet rs, String trxName)
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
      StringBuffer sb = new StringBuffer ("X_LBR_FCIProcess[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	public I_C_Period getC_Period() throws RuntimeException
    {
		return (I_C_Period)MTable.get(getCtx(), I_C_Period.Table_Name)
			.getPO(getC_Period_ID(), get_TrxName());	}

	/** Set Period.
		@param C_Period_ID 
		Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID)
	{
		if (C_Period_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_C_Period_ID, Integer.valueOf(C_Period_ID));
	}

	/** Get Period.
		@return Period of the Calendar
	  */
	public int getC_Period_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_C_Period_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Import Content Sheet - Process.
		@param LBR_FCIProcess_ID 
		Primary key table LBR_FCIProcess
	  */
	public void setLBR_FCIProcess_ID (int LBR_FCIProcess_ID)
	{
		if (LBR_FCIProcess_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_FCIProcess_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_FCIProcess_ID, Integer.valueOf(LBR_FCIProcess_ID));
	}

	/** Get Import Content Sheet - Process.
		@return Primary key table LBR_FCIProcess
	  */
	public int getLBR_FCIProcess_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_FCIProcess_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** Set Process to create FCI File.
		@param lbr_ProcCreateFCIFile Process to create FCI File	  */
	public void setlbr_ProcCreateFCIFile (String lbr_ProcCreateFCIFile)
	{
		set_Value (COLUMNNAME_lbr_ProcCreateFCIFile, lbr_ProcCreateFCIFile);
	}

	/** Get Process to create FCI File.
		@return Process to create FCI File	  */
	public String getlbr_ProcCreateFCIFile () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProcCreateFCIFile);
	}

	/** Set Process to create records for Import Content Sheet.
		@param lbr_ProcCreateProductFCI Process to create records for Import Content Sheet	  */
	public void setlbr_ProcCreateProductFCI (String lbr_ProcCreateProductFCI)
	{
		set_Value (COLUMNNAME_lbr_ProcCreateProductFCI, lbr_ProcCreateProductFCI);
	}

	/** Get Process to create records for Import Content Sheet.
		@return Process to create records for Import Content Sheet	  */
	public String getlbr_ProcCreateProductFCI () 
	{
		return (String)get_Value(COLUMNNAME_lbr_ProcCreateProductFCI);
	}

	/** Set Step 1.
		@param lbr_Step1 Step 1	  */
	public void setlbr_Step1 (boolean lbr_Step1)
	{
		set_Value (COLUMNNAME_lbr_Step1, Boolean.valueOf(lbr_Step1));
	}

	/** Get Step 1.
		@return Step 1	  */
	public boolean islbr_Step1 () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_Step1);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Step 2.
		@param lbr_Step2 Step 2	  */
	public void setlbr_Step2 (boolean lbr_Step2)
	{
		set_Value (COLUMNNAME_lbr_Step2, Boolean.valueOf(lbr_Step2));
	}

	/** Get Step 2.
		@return Step 2	  */
	public boolean islbr_Step2 () 
	{
		Object oo = get_Value(COLUMNNAME_lbr_Step2);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Processed.
		@param Processed 
		The document has been processed
	  */
	public void setProcessed (boolean Processed)
	{
		set_ValueNoCheck (COLUMNNAME_Processed, Boolean.valueOf(Processed));
	}

	/** Get Processed.
		@return The document has been processed
	  */
	public boolean isProcessed () 
	{
		Object oo = get_Value(COLUMNNAME_Processed);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}

	/** Set Process Now.
		@param Processing Process Now	  */
	public void setProcessing (boolean Processing)
	{
		set_Value (COLUMNNAME_Processing, Boolean.valueOf(Processing));
	}

	/** Get Process Now.
		@return Process Now	  */
	public boolean isProcessing () 
	{
		Object oo = get_Value(COLUMNNAME_Processing);
		if (oo != null) 
		{
			 if (oo instanceof Boolean) 
				 return ((Boolean)oo).booleanValue(); 
			return "Y".equals(oo);
		}
		return false;
	}
}