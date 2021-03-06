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

/** Generated Interface for LBR_NFDI
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_LBR_NFDI 
{

    /** TableName=LBR_NFDI */
    public static final String Table_Name = "LBR_NFDI";

    /** AD_Table_ID=1100002 */
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

    /** Column name DateTrx */
    public static final String COLUMNNAME_DateTrx = "DateTrx";

	/** Set Transaction Date.
	  * Transaction Date
	  */
	public void setDateTrx (Timestamp DateTrx);

	/** Get Transaction Date.
	  * Transaction Date
	  */
	public Timestamp getDateTrx();

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

    /** Column name lbr_AFRMM */
    public static final String COLUMNNAME_lbr_AFRMM = "lbr_AFRMM";

	/** Set AFRMM.
	  * Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
	  */
	public void setlbr_AFRMM (BigDecimal lbr_AFRMM);

	/** Get AFRMM.
	  * Valor da AFRMM - Adicional ao Frete para Renovação da Marinha Mercante
	  */
	public BigDecimal getlbr_AFRMM();

    /** Column name lbr_BPCNPJ */
    public static final String COLUMNNAME_lbr_BPCNPJ = "lbr_BPCNPJ";

	/** Set BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPCNPJ (String lbr_BPCNPJ);

	/** Get BP CNPJ.
	  * BP CNPJ - Copied from the BP into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPCNPJ();

    /** Column name lbr_BPDeliveryRegion */
    public static final String COLUMNNAME_lbr_BPDeliveryRegion = "lbr_BPDeliveryRegion";

	/** Set BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPDeliveryRegion (String lbr_BPDeliveryRegion);

	/** Get BP DeliveryRegion.
	  * BP DeliveryRegion - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPDeliveryRegion();

    /** Column name lbr_BPRegion */
    public static final String COLUMNNAME_lbr_BPRegion = "lbr_BPRegion";

	/** Set BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public void setlbr_BPRegion (String lbr_BPRegion);

	/** Get BP Region.
	  * BP Region - Copied from the BP Location into Brazilan Legal and Tax Books
	  */
	public String getlbr_BPRegion();

    /** Column name lbr_CodExportador */
    public static final String COLUMNNAME_lbr_CodExportador = "lbr_CodExportador";

	/** Set Código do exportador	  */
	public void setlbr_CodExportador (String lbr_CodExportador);

	/** Get Código do exportador	  */
	public String getlbr_CodExportador();

    /** Column name lbr_DataDesemb */
    public static final String COLUMNNAME_lbr_DataDesemb = "lbr_DataDesemb";

	/** Set Data do Desembaraço	  */
	public void setlbr_DataDesemb (Timestamp lbr_DataDesemb);

	/** Get Data do Desembaraço	  */
	public Timestamp getlbr_DataDesemb();

    /** Column name lbr_DI */
    public static final String COLUMNNAME_lbr_DI = "lbr_DI";

	/** Set DI.
	  * Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public void setlbr_DI (String lbr_DI);

	/** Get DI.
	  * Número do Documento de Importação DI/DSI/DA (DI/DSI/DA)
	  */
	public String getlbr_DI();

    /** Column name lbr_Drawback */
    public static final String COLUMNNAME_lbr_Drawback = "lbr_Drawback";

	/** Set Drawback No.
	  * Identifies the Drawback No
	  */
	public void setlbr_Drawback (String lbr_Drawback);

	/** Get Drawback No.
	  * Identifies the Drawback No
	  */
	public String getlbr_Drawback();

    /** Column name lbr_LocDesemb */
    public static final String COLUMNNAME_lbr_LocDesemb = "lbr_LocDesemb";

	/** Set Local de Desembaraço	  */
	public void setlbr_LocDesemb (String lbr_LocDesemb);

	/** Get Local de Desembaraço	  */
	public String getlbr_LocDesemb();

    /** Column name LBR_NFDI_ID */
    public static final String COLUMNNAME_LBR_NFDI_ID = "LBR_NFDI_ID";

	/** Set DI	  */
	public void setLBR_NFDI_ID (int LBR_NFDI_ID);

	/** Get DI	  */
	public int getLBR_NFDI_ID();

    /** Column name LBR_NotaFiscal_ID */
    public static final String COLUMNNAME_LBR_NotaFiscal_ID = "LBR_NotaFiscal_ID";

	/** Set Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public void setLBR_NotaFiscal_ID (int LBR_NotaFiscal_ID);

	/** Get Nota Fiscal.
	  * Primary key table LBR_NotaFiscal
	  */
	public int getLBR_NotaFiscal_ID();

	public org.adempierelbr.model.I_LBR_NotaFiscal getLBR_NotaFiscal() throws RuntimeException;

    /** Column name lbr_TpIntermedio */
    public static final String COLUMNNAME_lbr_TpIntermedio = "lbr_TpIntermedio";

	/** Set Tipo de Intermedio.
	  * Forma de importação quanto a intermediação
	  */
	public void setlbr_TpIntermedio (String lbr_TpIntermedio);

	/** Get Tipo de Intermedio.
	  * Forma de importação quanto a intermediação
	  */
	public String getlbr_TpIntermedio();

    /** Column name lbr_ViaTransp */
    public static final String COLUMNNAME_lbr_ViaTransp = "lbr_ViaTransp";

	/** Set Via de Transporte Internacional.
	  * Via de transporte internacional informada na Declaração de Importação (DI)
	  */
	public void setlbr_ViaTransp (String lbr_ViaTransp);

	/** Get Via de Transporte Internacional.
	  * Via de transporte internacional informada na Declaração de Importação (DI)
	  */
	public String getlbr_ViaTransp();

    /** Column name Manufacturer */
    public static final String COLUMNNAME_Manufacturer = "Manufacturer";

	/** Set Manufacturer.
	  * Manufacturer of the Product
	  */
	public void setManufacturer (String Manufacturer);

	/** Get Manufacturer.
	  * Manufacturer of the Product
	  */
	public String getManufacturer();

    /** Column name Type */
    public static final String COLUMNNAME_Type = "Type";

	/** Set Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public void setType (String Type);

	/** Get Type.
	  * Type of Validation (SQL, Java Script, Java Language)
	  */
	public String getType();

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
