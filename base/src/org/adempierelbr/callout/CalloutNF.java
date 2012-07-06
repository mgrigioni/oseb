/******************************************************************************
 * Product: ADempiereLBR - ADempiere Localization Brazil                      *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempierelbr.callout;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.model.MLBRCFOP;
import org.adempierelbr.model.MLBRNCM;
import org.adempierelbr.util.AdempiereLBR;
import org.adempierelbr.util.BPartnerUtil;
import org.compiere.model.CalloutEngine;
import org.compiere.model.GridField;
import org.compiere.model.GridTab;
import org.compiere.model.I_C_Country;
import org.compiere.model.MBPartner;
import org.compiere.model.MBPartnerLocation;
import org.compiere.model.MLocation;
import org.compiere.model.MSequence;
import org.compiere.model.MShipper;
import org.compiere.util.DB;
import org.compiere.util.Env;
import org.compiere.util.Ini;

/**
 * CalloutNF
 * 
 * Callout for Table LBR_NotaFiscal and LBR_NotaFiscalLine
 * 
 * @author Mario Grigioni, mgrigioni
 * @version $Id: CalloutNF.java, 22/02/2011 14:37:00 mgrigioni
 */
public class CalloutNF extends CalloutEngine
{
	
	/**	Debug Steps			*/
	//private boolean steps = false;

	/**
	 *  setCFOP
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_NotaFiscalLine / Column LBR_CFOP_ID
	 * 
	 */
	public String setCFOP (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_CFOP_ID = (Integer)mField.getValue();
		if (LBR_CFOP_ID == null || LBR_CFOP_ID.intValue() == 0)
			return "";
		
		MLBRCFOP cfop = new MLBRCFOP(ctx,LBR_CFOP_ID,null);
		mTab.setValue("lbr_CFOPName", cfop.getValue());
		
		return "";
	}	// setCFOP
	
	/**
	 *  setNCM
	 *
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 *  
	 *  Table - LBR_NotaFiscalLine / Column LBR_NCM_ID
	 * 
	 */
	public String setNCM (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer LBR_NCM_ID = (Integer)mField.getValue();
		if (LBR_NCM_ID == null || LBR_NCM_ID.intValue() == 0)
			return "";
		
		MLBRNCM ncm = new MLBRNCM(ctx,LBR_NCM_ID,null);
		mTab.setValue("lbr_NCMName", ncm.getValue());
		
		return "";
	}	// setNCM
	
	/**
	 *	Nota Fiscal Header Change - DocType.
	 *  @param ctx      Context
	 *  @param WindowNo current Window No
	 *  @param mTab     Model Tab
	 *  @param mField   Model Field
	 *  @param value    The new value
	 *  @return Error message or ""
	 */
	public String docType (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		Integer C_DocType_ID = (Integer)value;		//	Actually C_DocTypeTarget_ID
		if (C_DocType_ID == null || C_DocType_ID.intValue() == 0)
			return "";

		//	Re-Create new DocNo, if there is a doc number already
		//	and the existing source used a different Sequence number
		String oldDocNo = (String)mTab.getValue("DocumentNo");
		boolean newDocNo = (oldDocNo == null);
		if (!newDocNo && oldDocNo.startsWith("<") && oldDocNo.endsWith(">"))
			newDocNo = true;
		Integer oldC_DocType_ID = (Integer)mTab.getValue("C_DocType_ID");
		if (oldC_DocType_ID == null)
			oldC_DocType_ID = 0;

		String sql = "SELECT d.IsDocNoControlled,s.CurrentNext," //1..2
			+ "s.CurrentNextSys,s.AD_Sequence_ID,d.IsSOTrx, "    //3..5
			+ "s.StartNewYear, s.DateColumn "					 //6..7
			+ "FROM C_DocType d, AD_Sequence s "
			+ "WHERE C_DocType_ID=?"	//	#1
			+ " AND d.DocNoSequence_ID=s.AD_Sequence_ID(+)";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			int AD_Sequence_ID = 0;

			//	Get old AD_SeqNo for comparison
			if (!newDocNo && oldC_DocType_ID.intValue() != 0)
			{
				pstmt = DB.prepareStatement(sql, null);
				pstmt.setInt(1, oldC_DocType_ID.intValue());
				rs = pstmt.executeQuery();
				if (rs.next())
					AD_Sequence_ID = rs.getInt(7);
				DB.close(rs, pstmt);
				rs = null;
				pstmt = null;
			}
			
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, C_DocType_ID.intValue());
			rs = pstmt.executeQuery();
			if (rs.next())		//	we found document type
			{
			
				//	DocumentNo
				if (rs.getString(1).equals("Y"))			//	IsDocNoControlled
				{
					if (!newDocNo && AD_Sequence_ID != rs.getInt(7))
						newDocNo = true;
					if (newDocNo)
						if (Ini.isPropertyBool(Ini.P_ADEMPIERESYS) && Env.getAD_Client_ID(Env.getCtx()) < 1000000)
							mTab.setValue("DocumentNo", "<" + rs.getString(3) + ">");
						else
						{
							if ("Y".equals(rs.getString(6)))
							{
								String dateColumn = rs.getString(7);
								mTab.setValue("DocumentNo", 
										"<" 
										+ MSequence.getPreliminaryNoByYear(mTab, rs.getInt(4), dateColumn, null) 
										+ ">");
							}
							else
							{
								mTab.setValue("DocumentNo", "<" + rs.getString(2) + ">");
							}
						}
				}
			}
		}
		catch (SQLException e)
		{
			log.log(Level.SEVERE, sql, e);
			return e.getLocalizedMessage();
		}
		finally
		{
			DB.close(rs, pstmt);
			rs = null; pstmt = null;
		}
		return "";
		
	}	//	docType
	
	/**
	 * 	Set the Shipper Address Info
	 *
	 *	@param ctx
	 *	@param WindowNo
	 *	@param mTab
	 *	@param mField
	 *	@param value
	 *	@return error message or ""
	 */
	public String shipperLocation (Properties ctx, int WindowNo, GridTab mTab, GridField mField, Object value)
	{
		
		Integer M_Shipper_ID = (Integer)mTab.getValue("M_Shipper_ID");
		if (M_Shipper_ID == null || M_Shipper_ID.intValue() == 0)
			return "";
		
		Integer lbr_Ship_Location_ID = null;
		if (mField.getColumnName().equals("lbr_Ship_Location_ID")){
			lbr_Ship_Location_ID = (Integer)value;
		}

		MShipper shipper = new MShipper(ctx,M_Shipper_ID,null);
		mTab.setValue("lbr_BPShipperName", shipper.getName());

		MBPartner transp = new MBPartner(ctx,shipper.getC_BPartner_ID(),null);

		//Localização Transportadora
		MBPartnerLocation transpLocation = null;
		
		if (lbr_Ship_Location_ID != null && lbr_Ship_Location_ID.intValue() > 0){
			transpLocation = new MBPartnerLocation(ctx,lbr_Ship_Location_ID,null);
		}
		else{
			transpLocation = transp.getPrimaryC_BPartner_Location();
		}
		
		if (transpLocation != null){
			
			MLocation location = new MLocation(ctx,transpLocation.getC_Location_ID(),null);
			I_C_Country country = location.getC_Country();
			//
			mTab.setValue("lbr_BPShipperCNPJ",BPartnerUtil.getCNPJ(transp,transpLocation));
			mTab.setValue("lbr_BPShipperIE",BPartnerUtil.getIE(transp,transpLocation));
			//
			mTab.setValue("lbr_BPShipperAddress1", location.getAddress1());
			mTab.setValue("lbr_BPShipperAddress2", location.getAddress2());
			mTab.setValue("lbr_BPShipperAddress3", location.getAddress3());
			mTab.setValue("lbr_BPShipperAddress4", location.getAddress4());
			mTab.setValue("lbr_BPShipperCity", location.getCity());
			mTab.setValue("lbr_BPShipperPostal",location.getPostal());
			mTab.setValue("lbr_BPShipperCountry", country.getCountryCode());
			
			if (location.get_ID() == 0){
				mTab.setValue("lbr_BPShipperRegion","");
				mTab.setValue("lbr_BPShipperCountry","");
			}
			else{
				mTab.setValue("lbr_BPShipperRegion",location.getRegionName(true)); 
				if (country.getC_Country_ID() != AdempiereLBR.BRASIL)
					mTab.setValue("lbr_BPShipperRegion",BPartnerUtil.EXTREG);
			}
		}
		else {
			mTab.setValue("lbr_BPShipperCNPJ",BPartnerUtil.getCNPJ(transp,null));
			mTab.setValue("lbr_BPShipperIE",BPartnerUtil.getIE(transp,null));
		}
		
		return "";
	}	//	shipperLocation
	
} //CalloutNF