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
import java.sql.Timestamp;
import org.compiere.model.*;

/** Generated Interface for AD_OrgInfo
 *  @author Adempiere (generated) 
 *  @version Release 3.7.0LTS
 */
public interface I_W_AD_OrgInfo extends I_AD_OrgInfo 
{


    /** Column name AD_Language */
    public static final String COLUMNNAME_AD_Language = "AD_Language";

	/** Set Language.
	  * Language for this entity
	  */
	public void setAD_Language (String AD_Language);

	/** Get Language.
	  * Language for this entity
	  */
	public String getAD_Language();

    /** Column name ContactName */
    public static final String COLUMNNAME_ContactName = "ContactName";

	/** Set Contact Name.
	  * Business Partner Contact Name
	  */
	public void setContactName (String ContactName);

	/** Get Contact Name.
	  * Business Partner Contact Name
	  */
	public String getContactName();

    /** Column name Fax */
    public static final String COLUMNNAME_Fax = "Fax";

	/** Set Fax.
	  * Facsimile number
	  */
	public void setFax (String Fax);

	/** Get Fax.
	  * Facsimile number
	  */
	public String getFax();

    /** Column name LBR_BP_Accountant_ID */
    public static final String COLUMNNAME_LBR_BP_Accountant_ID = "LBR_BP_Accountant_ID";

	/** Set Accountant	  */
	public void setLBR_BP_Accountant_ID (int LBR_BP_Accountant_ID);

	/** Get Accountant	  */
	public int getLBR_BP_Accountant_ID();

	public I_C_BPartner getLBR_BP_Accountant() throws RuntimeException;

    /** Column name lbr_CCM */
    public static final String COLUMNNAME_lbr_CCM = "lbr_CCM";

	/** Set CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public void setlbr_CCM (String lbr_CCM);

	/** Get CCM.
	  * City Identification Code used in Brazil (City Tax ID)
	  */
	public String getlbr_CCM();

    /** Column name lbr_CNAE */
    public static final String COLUMNNAME_lbr_CNAE = "lbr_CNAE";

	/** Set CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public void setlbr_CNAE (String lbr_CNAE);

	/** Get CNAE.
	  * Classificação Nacional de Atividades Econômicas
	  */
	public String getlbr_CNAE();

    /** Column name lbr_CNPJ */
    public static final String COLUMNNAME_lbr_CNPJ = "lbr_CNPJ";

	/** Set CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public void setlbr_CNPJ (String lbr_CNPJ);

	/** Get CNPJ.
	  * Used to identify Legal Entities in Brazil
	  */
	public String getlbr_CNPJ();

    /** Column name lbr_ContatoNFe_ID */
    public static final String COLUMNNAME_lbr_ContatoNFe_ID = "lbr_ContatoNFe_ID";

	/** Set Contato NFe.
	  * Email do Usuario/Contato que servirÃ¡ como remetente do XML da NFe enviado automÃ¡ticamente aos UsuÃ¡rios/Contatos do Parceiro de NegÃ³cio.
	  */
	public void setlbr_ContatoNFe_ID (int lbr_ContatoNFe_ID);

	/** Get Contato NFe.
	  * Email do Usuario/Contato que servirÃ¡ como remetente do XML da NFe enviado automÃ¡ticamente aos UsuÃ¡rios/Contatos do Parceiro de NegÃ³cio.
	  */
	public int getlbr_ContatoNFe_ID();

	public I_AD_User getlbr_ContatoNFe() throws RuntimeException;

    /** Column name LBR_DC_Org_ID */
    public static final String COLUMNNAME_LBR_DC_Org_ID = "LBR_DC_Org_ID";

	/** Set Certificate of Organization	  */
	public void setLBR_DC_Org_ID (int LBR_DC_Org_ID);

	/** Get Certificate of Organization	  */
	public int getLBR_DC_Org_ID();

    /** Column name LBR_DC_WS_ID */
    public static final String COLUMNNAME_LBR_DC_WS_ID = "LBR_DC_WS_ID";

	/** Set Certificado of Transmission	  */
	public void setLBR_DC_WS_ID (int LBR_DC_WS_ID);

	/** Get Certificado of Transmission	  */
	public int getLBR_DC_WS_ID();

    /** Column name LBR_DocPrint_ID */
    public static final String COLUMNNAME_LBR_DocPrint_ID = "LBR_DocPrint_ID";

	/** Set DocPrint.
	  * Primary key table LBR_DocPrint
	  */
	public void setLBR_DocPrint_ID (int LBR_DocPrint_ID);

	/** Get DocPrint.
	  * Primary key table LBR_DocPrint
	  */
	public int getLBR_DocPrint_ID();

    /** Column name lbr_DtArq */
    public static final String COLUMNNAME_lbr_DtArq = "lbr_DtArq";

	/** Set Data do Arquivamento.
	  * Data do arquivamento dos atos constitutivos.
	  */
	public void setlbr_DtArq (Timestamp lbr_DtArq);

	/** Get Data do Arquivamento.
	  * Data do arquivamento dos atos constitutivos.
	  */
	public Timestamp getlbr_DtArq();

    /** Column name lbr_Fantasia */
    public static final String COLUMNNAME_lbr_Fantasia = "lbr_Fantasia";

	/** Set Fantasia	  */
	public void setlbr_Fantasia (String lbr_Fantasia);

	/** Get Fantasia	  */
	public String getlbr_Fantasia();

    /** Column name lbr_IE */
    public static final String COLUMNNAME_lbr_IE = "lbr_IE";

	/** Set IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public void setlbr_IE (String lbr_IE);

	/** Get IE.
	  * Used to Identify the IE (State Tax ID)
	  */
	public String getlbr_IE();

    /** Column name lbr_IndAtividade */
    public static final String COLUMNNAME_lbr_IndAtividade = "lbr_IndAtividade";

	/** Set Tipo de atividade.
	  * Tipo de atividade
	  */
	public void setlbr_IndAtividade (String lbr_IndAtividade);

	/** Get Tipo de atividade.
	  * Tipo de atividade
	  */
	public String getlbr_IndAtividade();

    /** Column name lbr_IndPerfil */
    public static final String COLUMNNAME_lbr_IndPerfil = "lbr_IndPerfil";

	/** Set Perfil de Apresentacao.
	  * Perfil de Apresentacao do arquivo fiscal
	  */
	public void setlbr_IndPerfil (String lbr_IndPerfil);

	/** Get Perfil de Apresentacao.
	  * Perfil de Apresentacao do arquivo fiscal
	  */
	public String getlbr_IndPerfil();

    /** Column name lbr_Interest */
    public static final String COLUMNNAME_lbr_Interest = "lbr_Interest";

	/** Set Interest.
	  * Defines the Interest
	  */
	public void setlbr_Interest (BigDecimal lbr_Interest);

	/** Get Interest.
	  * Defines the Interest
	  */
	public BigDecimal getlbr_Interest();

    /** Column name lbr_IsScan */
    public static final String COLUMNNAME_lbr_IsScan = "lbr_IsScan";

	/** Set Enable Scan	  */
	public void setlbr_IsScan (boolean lbr_IsScan);

	/** Get Enable Scan	  */
	public boolean islbr_IsScan();

    /** Column name lbr_LegalEntity */
    public static final String COLUMNNAME_lbr_LegalEntity = "lbr_LegalEntity";

	/** Set Legal Entity	  */
	public void setlbr_LegalEntity (String lbr_LegalEntity);

	/** Get Legal Entity	  */
	public String getlbr_LegalEntity();

    /** Column name lbr_NFeEnv */
    public static final String COLUMNNAME_lbr_NFeEnv = "lbr_NFeEnv";

	/** Set NFe Environment	  */
	public void setlbr_NFeEnv (String lbr_NFeEnv);

	/** Get NFe Environment	  */
	public String getlbr_NFeEnv();

    /** Column name lbr_NIRE */
    public static final String COLUMNNAME_lbr_NIRE = "lbr_NIRE";

	/** Set NIRE.
	  * Número de Identificação do Registro de Empresas da Junta Comercial
	  */
	public void setlbr_NIRE (String lbr_NIRE);

	/** Get NIRE.
	  * Número de Identificação do Registro de Empresas da Junta Comercial
	  */
	public String getlbr_NIRE();

    /** Column name lbr_Suframa */
    public static final String COLUMNNAME_lbr_Suframa = "lbr_Suframa";

	/** Set Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public void setlbr_Suframa (String lbr_Suframa);

	/** Get Suframa.
	  * Brazilian SUFRAMA Identification Number
	  */
	public String getlbr_Suframa();

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

    /** Column name Phone */
    public static final String COLUMNNAME_Phone = "Phone";

	/** Set Phone.
	  * Identifies a telephone number
	  */
	public void setPhone (String Phone);

	/** Get Phone.
	  * Identifies a telephone number
	  */
	public String getPhone();
}
