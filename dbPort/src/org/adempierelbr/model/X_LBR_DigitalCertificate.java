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
import java.sql.Timestamp;
import java.util.Properties;
import org.compiere.model.*;

/** Generated Model for LBR_DigitalCertificate
 *  @author ADempiereLBR (generated) 
 *  @version Release 3.6.0LTS - $Id$ */
public class X_LBR_DigitalCertificate extends PO implements I_LBR_DigitalCertificate, I_Persistent 
{

	/**
	 *
	 */
	private static final long serialVersionUID = 20110202L;

    /** Standard Constructor */
    public X_LBR_DigitalCertificate (Properties ctx, int LBR_DigitalCertificate_ID, String trxName)
    {
      super (ctx, LBR_DigitalCertificate_ID, trxName);
      /** if (LBR_DigitalCertificate_ID == 0)
        {
			setLBR_DigitalCertificate_ID (0);
			setlbr_NFeEnv (null);
// 1
			setName (null);
			setValidFrom (new Timestamp( System.currentTimeMillis() ));
// @#Date@
        } */
    }

    /** Load Constructor */
    public X_LBR_DigitalCertificate (Properties ctx, ResultSet rs, String trxName)
    {
      super (ctx, rs, trxName);
    }

    /** AccessLevel
      * @return 6 - System - Client 
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
      StringBuffer sb = new StringBuffer ("X_LBR_DigitalCertificate[")
        .append(get_ID()).append("]");
      return sb.toString();
    }

	/** Set Alias.
		@param Alias 
		Defines an alternate method of indicating an account combination.
	  */
	public void setAlias (String Alias)
	{
		set_Value (COLUMNNAME_Alias, Alias);
	}

	/** Get Alias.
		@return Defines an alternate method of indicating an account combination.
	  */
	public String getAlias () 
	{
		return (String)get_Value(COLUMNNAME_Alias);
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

	/** lbr_CertType AD_Reference_ID=1100000 */
	public static final int LBR_CERTTYPE_AD_Reference_ID=1100000;
	/** Java Key Store = JKS */
	public static final String LBR_CERTTYPE_JavaKeyStore = "JKS";
	/** PKCS#12 = P12 */
	public static final String LBR_CERTTYPE_PKCS12 = "P12";
	/** Set Certificate Type.
		@param lbr_CertType 
		Define the type of Digital Certificate
	  */
	public void setlbr_CertType (String lbr_CertType)
	{

		set_Value (COLUMNNAME_lbr_CertType, lbr_CertType);
	}

	/** Get Certificate Type.
		@return Define the type of Digital Certificate
	  */
	public String getlbr_CertType () 
	{
		return (String)get_Value(COLUMNNAME_lbr_CertType);
	}

	/** Set Digital Certificate.
		@param LBR_DigitalCertificate_ID Digital Certificate	  */
	public void setLBR_DigitalCertificate_ID (int LBR_DigitalCertificate_ID)
	{
		if (LBR_DigitalCertificate_ID < 1) 
			set_ValueNoCheck (COLUMNNAME_LBR_DigitalCertificate_ID, null);
		else 
			set_ValueNoCheck (COLUMNNAME_LBR_DigitalCertificate_ID, Integer.valueOf(LBR_DigitalCertificate_ID));
	}

	/** Get Digital Certificate.
		@return Digital Certificate	  */
	public int getLBR_DigitalCertificate_ID () 
	{
		Integer ii = (Integer)get_Value(COLUMNNAME_LBR_DigitalCertificate_ID);
		if (ii == null)
			 return 0;
		return ii.intValue();
	}

	/** lbr_NFeEnv AD_Reference_ID=1100001 */
	public static final int LBR_NFEENV_AD_Reference_ID=1100001;
	/** Production = 1 */
	public static final String LBR_NFEENV_Production = "1";
	/** Homologation = 2 */
	public static final String LBR_NFEENV_Homologation = "2";
	/** Set NFe Environment.
		@param lbr_NFeEnv NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv)
	{

		set_Value (COLUMNNAME_lbr_NFeEnv, lbr_NFeEnv);
	}

	/** Get NFe Environment.
		@return NFe Environment	  */
	public String getlbr_NFeEnv () 
	{
		return (String)get_Value(COLUMNNAME_lbr_NFeEnv);
	}

	/** Set Name.
		@param Name 
		Alphanumeric identifier of the entity
	  */
	public void setName (String Name)
	{
		set_Value (COLUMNNAME_Name, Name);
	}

	/** Get Name.
		@return Alphanumeric identifier of the entity
	  */
	public String getName () 
	{
		return (String)get_Value(COLUMNNAME_Name);
	}

	/** Set Password.
		@param Password 
		Password of any length (case sensitive)
	  */
	public void setPassword (String Password)
	{
		set_Value (COLUMNNAME_Password, Password);
	}

	/** Get Password.
		@return Password of any length (case sensitive)
	  */
	public String getPassword () 
	{
		return (String)get_Value(COLUMNNAME_Password);
	}

	/** Set Valid from.
		@param ValidFrom 
		Valid from including this date (first day)
	  */
	public void setValidFrom (Timestamp ValidFrom)
	{
		set_Value (COLUMNNAME_ValidFrom, ValidFrom);
	}

	/** Get Valid from.
		@return Valid from including this date (first day)
	  */
	public Timestamp getValidFrom () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidFrom);
	}

	/** Set Valid to.
		@param ValidTo 
		Valid to including this date (last day)
	  */
	public void setValidTo (Timestamp ValidTo)
	{
		set_Value (COLUMNNAME_ValidTo, ValidTo);
	}

	/** Get Valid to.
		@return Valid to including this date (last day)
	  */
	public Timestamp getValidTo () 
	{
		return (Timestamp)get_Value(COLUMNNAME_ValidTo);
	}
}