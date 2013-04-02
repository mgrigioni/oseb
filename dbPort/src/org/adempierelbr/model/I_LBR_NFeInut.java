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

import org.compiere.model.I_C_Period;
import org.compiere.model.MTable;
import org.compiere.util.KeyNamePair;

/** Generated Interface for LBR_NFeInut
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_LBR_NFeInut 
{

    /** TableName=LBR_NFeInut */
    public static final String Table_Name = "LBR_NFeInut";

    /** AD_Table_ID=1250000 */
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

    /** Column name C_Period_ID */
    public static final String COLUMNNAME_C_Period_ID = "C_Period_ID";

	/** Set Period.
	  * Period of the Calendar
	  */
	public void setC_Period_ID (int C_Period_ID);

	/** Get Period.
	  * Period of the Calendar
	  */
	public int getC_Period_ID();

	public I_C_Period getC_Period() throws RuntimeException;

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

    /** Column name lbr_DocumentNo */
    public static final String COLUMNNAME_lbr_DocumentNo = "lbr_DocumentNo";

	/** Set DocumentNo	  */
	public void setlbr_DocumentNo (int lbr_DocumentNo);

	/** Get DocumentNo	  */
	public int getlbr_DocumentNo();

    /** Column name lbr_DocumentNo_To */
    public static final String COLUMNNAME_lbr_DocumentNo_To = "lbr_DocumentNo_To";

	/** Set DocumentNo To	  */
	public void setlbr_DocumentNo_To (int lbr_DocumentNo_To);

	/** Get DocumentNo To	  */
	public int getlbr_DocumentNo_To();

    /** Column name lbr_MotivoCancel */
    public static final String COLUMNNAME_lbr_MotivoCancel = "lbr_MotivoCancel";

	/** Set Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public void setlbr_MotivoCancel (String lbr_MotivoCancel);

	/** Get Motivo do Cancelamento.
	  * Motivo do Cancelamento (Entre 15 e 255 caracteres)
	  */
	public String getlbr_MotivoCancel();

    /** Column name LBR_NFeInut_ID */
    public static final String COLUMNNAME_LBR_NFeInut_ID = "LBR_NFeInut_ID";

	/** Set Inutilização NFe.
	  * Inutilização Intervalo NFe
	  */
	public void setLBR_NFeInut_ID (int LBR_NFeInut_ID);

	/** Get Inutilização NFe.
	  * Inutilização Intervalo NFe
	  */
	public int getLBR_NFeInut_ID();

    /** Column name lbr_NFeStatus */
    public static final String COLUMNNAME_lbr_NFeStatus = "lbr_NFeStatus";

	/** Set NFe Status.
	  * Status of NFe
	  */
	public void setlbr_NFeStatus (String lbr_NFeStatus);

	/** Get NFe Status.
	  * Status of NFe
	  */
	public String getlbr_NFeStatus();

    /** Column name lbr_NFModel */
    public static final String COLUMNNAME_lbr_NFModel = "lbr_NFModel";

	/** Set NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public void setlbr_NFModel (String lbr_NFModel);

	/** Get NF Model.
	  * Identifies the model of Nota Fiscal
	  */
	public String getlbr_NFModel();

    /** Column name lbr_NFSerie */
    public static final String COLUMNNAME_lbr_NFSerie = "lbr_NFSerie";

	/** Set NF Serie	  */
	public void setlbr_NFSerie (String lbr_NFSerie);

	/** Get NF Serie	  */
	public String getlbr_NFSerie();

    /** Column name Processed */
    public static final String COLUMNNAME_Processed = "Processed";

	/** Set Processed.
	  * The document has been processed
	  */
	public void setProcessed (boolean Processed);

	/** Get Processed.
	  * The document has been processed
	  */
	public boolean isProcessed();

    /** Column name Processing */
    public static final String COLUMNNAME_Processing = "Processing";

	/** Set Process Now	  */
	public void setProcessing (boolean Processing);

	/** Get Process Now	  */
	public boolean isProcessing();

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
