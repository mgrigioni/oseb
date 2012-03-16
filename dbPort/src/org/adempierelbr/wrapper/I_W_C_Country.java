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

import org.compiere.model.I_C_Country;

/** Generated Interface for C_Country
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_W_C_Country extends I_C_Country 
{


    /** Column name lbr_CountryCode */
    public static final String COLUMNNAME_lbr_CountryCode = "lbr_CountryCode";

	/** Set Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public void setlbr_CountryCode (String lbr_CountryCode);

	/** Get Country Code.
	  * Country Code used for issue Nota Fiscal
	  */
	public String getlbr_CountryCode();
}
