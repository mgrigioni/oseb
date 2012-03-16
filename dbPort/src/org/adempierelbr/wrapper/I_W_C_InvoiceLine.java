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
package org.adempierelbr.wrapper;

import java.math.BigDecimal;

import org.compiere.model.I_C_InvoiceLine;

/** Generated Interface for C_InvoiceLine
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_W_C_InvoiceLine extends I_C_InvoiceLine 
{


    /** Column name LBR_CFOP_ID */
    public static final String COLUMNNAME_LBR_CFOP_ID = "LBR_CFOP_ID";

	/** Set CFOP.
	  * Primary key table LBR_CFOP
	  */
	public void setLBR_CFOP_ID (int LBR_CFOP_ID);

	/** Get CFOP.
	  * Primary key table LBR_CFOP
	  */
	public int getLBR_CFOP_ID();

    /** Column name LBR_LegalMessage_ID */
    public static final String COLUMNNAME_LBR_LegalMessage_ID = "LBR_LegalMessage_ID";

	/** Set Legal Message.
	  * Defines the Legal Message
	  */
	public void setLBR_LegalMessage_ID (int LBR_LegalMessage_ID);

	/** Get Legal Message.
	  * Defines the Legal Message
	  */
	public int getLBR_LegalMessage_ID();

    /** Column name lbr_PriceEnteredBR */
    public static final String COLUMNNAME_lbr_PriceEnteredBR = "lbr_PriceEnteredBR";

	/** Set Price Entered BR	  */
	public void setlbr_PriceEnteredBR (BigDecimal lbr_PriceEnteredBR);

	/** Get Price Entered BR	  */
	public BigDecimal getlbr_PriceEnteredBR();

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

    /** Column name lbr_TaxStatus */
    public static final String COLUMNNAME_lbr_TaxStatus = "lbr_TaxStatus";

	/** Set Tax Status.
	  * Defines the Tax Status
	  */
	public void setlbr_TaxStatus (String lbr_TaxStatus);

	/** Get Tax Status.
	  * Defines the Tax Status
	  */
	public String getlbr_TaxStatus();

    /** Column name lbr_TaxStatusCOFINS */
    public static final String COLUMNNAME_lbr_TaxStatusCOFINS = "lbr_TaxStatusCOFINS";

	/** Set Tax Status (COFINS).
	  * Defines the Tax Status (COFINS)
	  */
	public void setlbr_TaxStatusCOFINS (String lbr_TaxStatusCOFINS);

	/** Get Tax Status (COFINS).
	  * Defines the Tax Status (COFINS)
	  */
	public String getlbr_TaxStatusCOFINS();

    /** Column name lbr_TaxStatusIPI */
    public static final String COLUMNNAME_lbr_TaxStatusIPI = "lbr_TaxStatusIPI";

	/** Set Tax Status (IPI).
	  * Defines the Tax Status (IPI)
	  */
	public void setlbr_TaxStatusIPI (String lbr_TaxStatusIPI);

	/** Get Tax Status (IPI).
	  * Defines the Tax Status (IPI)
	  */
	public String getlbr_TaxStatusIPI();

    /** Column name lbr_TaxStatusPIS */
    public static final String COLUMNNAME_lbr_TaxStatusPIS = "lbr_TaxStatusPIS";

	/** Set Tax Status (PIS).
	  * Defines the Tax Status (PIS)
	  */
	public void setlbr_TaxStatusPIS (String lbr_TaxStatusPIS);

	/** Get Tax Status (PIS).
	  * Defines the Tax Status (PIS)
	  */
	public String getlbr_TaxStatusPIS();
}
