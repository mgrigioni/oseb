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
package org.adempierelbr.model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;
import java.util.logging.Level;

import org.adempiere.model.POWrapper;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.wrapper.I_W_AD_OrgInfo;
import org.compiere.model.MOrgInfo;
import org.compiere.model.MTable;
import org.compiere.model.Query;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 *	Model for LBR_NFeWebService
 *
 *	@author Mario Grigioni
 *	@version $Id: MNFeWebService.java,27/08/2010 17:10:00 mgrigioni Exp $
 */
public class MLBRNFeWebService extends X_LBR_NFeWebService
{
	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	
	/**	Logger			*/
	private static CLogger log = CLogger.getCLogger(MLBRNFeWebService.class);
	
	private static final String URLNFEAN           = "www.nfe.fazenda.gov.br";
	
	public static final String CADCONSULTACADASTRO = "NfeConsultaCadastro";
	public static final String STATUSSERVICO       = "NfeStatusServico";
	public static final String CONSULTA            = "NfeConsultaProtocolo";
	public static final String INUTILIZACAO        = "NfeInutilizacao";
	public static final String CANCELAMENTO        = "NfeCancelamento";
	public static final String RETRECEPCAO         = "NfeRetRecepcao";
	public static final String RECEPCAO            = "NfeRecepcao";
	public static final String RECEPCAOEVENTO	   = "RecepcaoEvento";
	public static final String AUTORIZACAO         = "NFeAutorizacao";
	public static final String RETAUTORIZACAO      = "NFeRetAutorizacao";
	
	/**************************************************************************
	 *  Default Constructor
	 *  @param Properties ctx
	 *  @param int ID (0 create new)
	 *  @param String trx
	 */
	public MLBRNFeWebService(Properties ctx, int ID, String trx){
		super(ctx,ID,trx);
	}

	/**
	 *  Load Constructor
	 *  @param ctx context
	 *  @param rs result set record
	 *  @param trxName transaction
	 */
	public MLBRNFeWebService (Properties ctx, ResultSet rs, String trxName)
	{
		super(ctx, rs, trxName);
	}
	
	/**
	 * Return MLBRWebService based on Record OrgInfo and name of service
	 * @param record OrgInfo
	 * @param name of service
	 * @return MLBRNFeWebService ws
	 */
	public static MLBRNFeWebService get(MOrgInfo oi, String name){
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class); 
		return get(name,oiW.getlbr_NFeEnv(),NFeUtil.VERSAO,oi.getC_Location().getC_Region_ID(),oiW.islbr_IsScan());
	}

	/**
	 * Return MLBRWebService based on Record OrgInfo, name of service and partner address
	 * @param record OrgInfo
	 * @param name of service
	 * @param C_Region_ID (BPartner Location)
	 * @return MLBRNFeWebService ws
	 */
	public static MLBRNFeWebService get(MOrgInfo oi, String name, int C_Region_ID){
		I_W_AD_OrgInfo oiW = POWrapper.create (oi, I_W_AD_OrgInfo.class); 
		return get(name,oiW.getlbr_NFeEnv(),NFeUtil.VERSAO,C_Region_ID,oiW.islbr_IsScan());
	}

	private static MLBRNFeWebService get(String name, String envType, String versionNo, int C_Region_ID, boolean isSCAN){
		
		StringBuilder whereClause = new StringBuilder("UPPER(Name) LIKE ? AND lbr_NFeEnv = ? AND VersionNo = ? ");
		if (isSCAN) //SCAN Region=NULL
			whereClause.append("AND " + C_Region_ID + "=? AND C_Region_ID IS NULL");
		else
			whereClause.append("AND C_Region_ID=?");
		
		MTable table = MTable.get(Env.getCtx(), MLBRNFeWebService.Table_Name);
		Query query =  new Query(Env.getCtx(), table, whereClause.toString(), null);
	 		  query.setParameters(new Object[]{name.toUpperCase(),envType,versionNo,C_Region_ID});
		
		MLBRNFeWebService webService = query.firstOnly();
		if (webService == null) {
			log.log(Level.SEVERE, "Webservice not found for " + name + 
					" region " + Integer.toString(C_Region_ID)  + " environment " + envType  );
		}
		
		return webService;
	}
	
	public static String[] getURL (String envType){
		
		String sql = "SELECT URL FROM LBR_NFeWebService " +
		             "WHERE lbr_NFeEnv = ?";
		
		ArrayList<String> list = new ArrayList<String>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement (sql, null);
			pstmt.setString(1, envType);
			rs = pstmt.executeQuery ();
			while (rs.next ())
			{
				String url = rs.getString("URL");
				       url = url.substring(url.indexOf("//") + 2);
			           url = url.substring(0, url.indexOf("/"));
			    
			   if (!list.contains(url))
				   list.add(url);
			}
			
			//SERVICOS AMBIENTE NACIONAL
			if (envType.equals(MLBRNFeWebService.LBR_NFEENV_Production)){
				if (!list.contains(URLNFEAN))
					list.add(URLNFEAN);
			}
			
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally{
		       DB.close(rs, pstmt);
		}

		String[] retValue = new String[list.size()];
		list.toArray(retValue);
		return retValue;
	}

}	//	MNFeWebService