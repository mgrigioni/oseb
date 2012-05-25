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
package org.adempierelbr.model;

import java.math.BigDecimal;
import java.sql.Timestamp;
import org.compiere.model.*;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_TaxLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_LBR_TaxLine 
{

    /** TableName=LBR_TaxLine */
    public static final String Table_Name = "LBR_TaxLine";

    /** AD_Table_ID=1000007 */
    public static final int Table_ID = MTable.getTable_ID(Table_Name);

    KeyNamePair Model = new KeyNamePair(Table_ID, Table_Name);

    /** AccessLevel = 3 - Client - Org 
     */
    BigDecimal accessLevel = BigDecimal.valueOf(3);

    /** Load Meta Data */

    /** Column name AD_Client_ID */
    public static final String COLUMNNAME_AD_Client_ID = "AD_Client_ID";

	/** Get Client.
	  * Client/Tenant for this installation.
	  */
	public int getAD_Client_ID();

    /** Column name AD_Org_ID */
    public static final String COLUMNNAME_AD_Org_ID = "AD_Org_ID";

	/** Set Organization.
	  * Organizational entity within client
	  */
	public void setAD_Org_ID (int AD_Org_ID);

	/** Get Organization.
	  * Organizational entity within client
	  */
	public int getAD_Org_ID();

    /** Column name Created */
    public static final String COLUMNNAME_Created = "Created";

	/** Get Created.
	  * Date this record was created
	  */
	public Timestamp getCreated();

    /** Column name CreatedBy */
    public static final String COLUMNNAME_CreatedBy = "CreatedBy";

	/** Get Created By.
	  * User who created this records
	  */
	public int getCreatedBy();

    /** Column name IsActive */
    public static final String COLUMNNAME_IsActive = "IsActive";

	/** Set Active.
	  * The record is active in the system
	  */
	public void setIsActive (boolean IsActive);

	/** Get Active.
	  * The record is active in the system
	  */
	public boolean isActive();

    /** Column name lbr_PostTax */
    public static final String COLUMNNAME_lbr_PostTax = "lbr_PostTax";

	/** Set Post Tax.
	  * Indicates if the Tax should be Posted
	  */
	public void setlbr_PostTax (boolean lbr_PostTax);

	/** Get Post Tax.
	  * Indicates if the Tax should be Posted
	  */
	public boolean islbr_PostTax();

    /** Column name lbr_TaxAmt */
    public static final String COLUMNNAME_lbr_TaxAmt = "lbr_TaxAmt";

	/** Set Tax Amount.
	  * Defines the Tax Amount
	  */
	public void setlbr_TaxAmt (BigDecimal lbr_TaxAmt);

	/** Get Tax Amount.
	  * Defines the Tax Amount
	  */
	public BigDecimal getlbr_TaxAmt();

    /** Column name lbr_TaxBase */
    public static final String COLUMNNAME_lbr_TaxBase = "lbr_TaxBase";

	/** Set Tax Base.
	  * Indicates the Tax Base
	  */
	public void setlbr_TaxBase (BigDecimal lbr_TaxBase);

	/** Get Tax Base.
	  * Indicates the Tax Base
	  */
	public BigDecimal getlbr_TaxBase();

    /** Column name lbr_TaxBaseAmt */
    public static final String COLUMNNAME_lbr_TaxBaseAmt = "lbr_TaxBaseAmt";

	/** Set Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public void setlbr_TaxBaseAmt (BigDecimal lbr_TaxBaseAmt);

	/** Get Tax Base Amount.
	  * Defines the Tax Base Amount
	  */
	public BigDecimal getlbr_TaxBaseAmt();

    /** Column name LBR_Tax_ID */
    public static final String COLUMNNAME_LBR_Tax_ID = "LBR_Tax_ID";

	/** Set Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public void setLBR_Tax_ID (int LBR_Tax_ID);

	/** Get Brazilian Tax.
	  * Primary key table LBR_Tax
	  */
	public int getLBR_Tax_ID();

	public org.adempierelbr.model.I_LBR_Tax getLBR_Tax() throws RuntimeException;

    /** Column name LBR_TaxLine_ID */
    public static final String COLUMNNAME_LBR_TaxLine_ID = "LBR_TaxLine_ID";

	/** Set Tax Line.
	  * Primary key table LBR_TaxLine
	  */
	public void setLBR_TaxLine_ID (int LBR_TaxLine_ID);

	/** Get Tax Line.
	  * Primary key table LBR_TaxLine
	  */
	public int getLBR_TaxLine_ID();

    /** Column name LBR_TaxName_ID */
    public static final String COLUMNNAME_LBR_TaxName_ID = "LBR_TaxName_ID";

	/** Set Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public void setLBR_TaxName_ID (int LBR_TaxName_ID);

	/** Get Tax Name.
	  * Primary key table LBR_TaxName
	  */
	public int getLBR_TaxName_ID();

	public org.adempierelbr.model.I_LBR_TaxName getLBR_TaxName() throws RuntimeException;

    /** Column name lbr_TaxRate */
    public static final String COLUMNNAME_lbr_TaxRate = "lbr_TaxRate";

	/** Set Tax Rate.
	  * Indicates the Tax Rate
	  */
	public void setlbr_TaxRate (BigDecimal lbr_TaxRate);

	/** Get Tax Rate.
	  * Indicates the Tax Rate
	  */
	public BigDecimal getlbr_TaxRate();

    /** Column name Updated */
    public static final String COLUMNNAME_Updated = "Updated";

	/** Get Updated.
	  * Date this record was updated
	  */
	public Timestamp getUpdated();

    /** Column name UpdatedBy */
    public static final String COLUMNNAME_UpdatedBy = "UpdatedBy";

	/** Get Updated By.
	  * User who updated this records
	  */
	public int getUpdatedBy();
}
