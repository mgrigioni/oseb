package org.adempierelbr.sped.ecd;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.logging.Level;

import org.adempierelbr.util.TextUtil;
import org.compiere.model.MElementValue;
import org.compiere.util.CLogger;
import org.compiere.util.DB;
import org.compiere.util.Env;

/**
 * 	Account Balances
 * 
 * @author Ricardo Santana (Kenos, www.kenos.com.br)
 * @contributor Mario Grigioni, mgrigioni
 * @version $Id: ECDBalance.java, 17/11/2010, 09:42:00, mgrigioni
 */
public class ECDBalance implements Comparable<Object>
{
	private static CLogger log = CLogger.getCLogger(ECDBalance.class);
	
	private BigDecimal 		beginBalance 	= Env.ZERO;
	private String 			indicator		= "";
	private MElementValue 	ev 				= null;
	private Timestamp 		dateAcct 		= null;
	
	private static Map<String, BigDecimal[]> _balance = new HashMap<String, BigDecimal[]>();
	
	public static BigDecimal[] getBalance (String accountName)
	{
		if (_balance.containsKey(accountName))
			return _balance.get(accountName);
		return null;
	}	//	getBalance
	
	/**
	 * 	Get balances for period
	 * @return
	 */
	public static ECDBalance[] getBalances(Timestamp dateFrom, Timestamp dateTo, ArrayList<Integer> accts) {
		
		ArrayList<ECDBalance> list = new ArrayList<ECDBalance> ();
		ArrayList<Integer> found = new ArrayList<Integer>();
		Properties ctx = Env.getCtx();
		int AD_Client_ID = Env.getAD_Client_ID(ctx);
		
		boolean hasSummary = false;

		String sql = "SELECT '1' AS Type, FABR.Account_ID AS C_ElementValue_ID, " +
				     " NVL(SUM(FABR.AmtAcctDr-FABR.AmtAcctCr), 0) AS Balance " +
		             " FROM LBR_Fact_Acct FABR " +
		             " WHERE FABR.AD_Client_ID=? " +
		             " AND FABR.DocStatus='CO'" +
		             " AND FABR.DateAcct < ? " +
		             " GROUP BY FABR.Account_ID ";
		
		if (TextUtil.timeToString(dateTo, "dd/MM").equals("31/12")){
			  hasSummary = true;
		      sql += " UNION ALL " +
		             "SELECT '2' AS Type, EV.C_ElementValue_ID, " +		             
		             " (NVL(SUM((CASE WHEN FABR.DateAcct >= ? THEN FABR.AmtAcctDr-FABR.AmtAcctCr ELSE 0 END)), 0)) + " +
		             " (NVL(SUM((CASE WHEN FABR.DateAcct < ? THEN FABR.AmtAcctDr-FABR.AmtAcctCr ELSE 0 END)), 0)) AS Balance " +
		             " FROM C_ElementValue EV" +
		             " INNER JOIN LBR_Fact_Acct FABR ON (FABR.DateAcct <= ? AND FABR.ElementValue_Value LIKE EV.Value || '.%')" +
		             " WHERE EV.AD_Client_ID = ? AND EV.IsSummary = 'Y' AND FABR.DocStatus='CO'" +
		             " AND EV.C_ElementValue_ID NOT IN (SELECT DISTINCT C_ElementValue_ID FROM LBR_Fact_Acct WHERE AD_Client_ID = ?)" +
		             " AND EV.C_Element_ID NOT IN (SELECT C_Element_ID FROM C_Element WHERE ElementType = 'U')" +
		             " GROUP BY EV.C_ElementValue_ID";
		}

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try
		{
			pstmt = DB.prepareStatement(sql, null);
			pstmt.setInt(1, AD_Client_ID);
			pstmt.setTimestamp(2, dateFrom);
			if (hasSummary){
				pstmt.setTimestamp(3, dateFrom);
				pstmt.setTimestamp(4, dateFrom);
				pstmt.setTimestamp(5, dateTo);
				pstmt.setInt(6, AD_Client_ID);
				pstmt.setInt(7, AD_Client_ID);
			}
			rs = pstmt.executeQuery();
			while (rs.next())
			{
				MElementValue ev = new MElementValue (ctx, rs.getInt("C_ElementValue_ID"), null);
				ECDBalance bal = new ECDBalance (rs.getBigDecimal("Balance"), ev, dateFrom);
				list.add(bal);
				found.add(rs.getInt("C_ElementValue_ID"));
			}
		}
		catch (Exception e)
		{
			log.log(Level.SEVERE, "", e);
		}
		finally
		{
			DB.close(rs, pstmt);
		}

		for (Integer acct : accts)
		{
			if (!found.contains(acct))
			{
				MElementValue ev = new MElementValue (ctx, acct, null);
				ECDBalance bal = new ECDBalance (Env.ZERO, ev, dateFrom);
				list.add(bal);
			}
		}

		ECDBalance[] balances = new ECDBalance[list.size ()];
		list.toArray (balances);

		return balances;
	}//getBalances

	/**
	 * 	Adiciona valores para compor os saldos
	 */
	public static void addBalance (String accountName, BigDecimal amount)
	{
		if (amount == null)
			return;

		/**
		 * 	Array 0 = D, 1 = C.
		 */
		BigDecimal[] amt = new BigDecimal[2];
		if (!_balance.containsKey(accountName))
		{
			//	Debit
			if (amount.signum() == 1)
			{
				amt[0] = amount.abs();
				amt[1] = Env.ZERO;
			}
			//	Credit
			else
			{
				amt[0] = Env.ZERO;
				amt[1] = amount.abs();
			}
			_balance.remove(accountName);
		}
		else
		{
			amt = _balance.get(accountName);
			//	Debit
			if (amount.signum() == 1)
				amt[0] = amt[0].add(amount.abs());

			//	Credit
			else
				amt[1] = amt[1].add(amount.abs());
		}
		_balance.put(accountName, amt);
	}	//	addBalance
	
	public static void clear(){
		_balance.clear();
	} //clear
	
	/**
	 * 	Constructor
	 * 
	 * @param beginBalance
	 * @param ev
	 * @param dateAcct
	 */
	public ECDBalance (BigDecimal beginBalance, MElementValue ev, Timestamp dateAcct)
	{
		setBeginBalance (beginBalance);
		setAccount (ev);
		setDateAcct (dateAcct);
	}	//	SPEDBalance
	
	/**
	 * 	Get Begin Balance
	 * @return
	 */
	public BigDecimal getBeginBalance ()
	{
		return beginBalance;
	}	//	getBeginBalance
	
	/**
	 * 	Set Begin Balance
	 * @param beginBalance
	 */
	public void setBeginBalance (BigDecimal beginBalance)
	{
		this.beginBalance = beginBalance;
	}	//	setBeginBalance
	
	/**
	 * 	Get Account
	 * @return
	 */
	public MElementValue getAccount ()
	{
		return ev;
	}	//	getAccount
	
	/**
	 * 	Set Account
	 * @param ev
	 */
	public void setAccount (MElementValue ev)
	{
		this.ev = ev;
	}	//	setAccount
	
	/**
	 * 	Get Account Date
	 * @return
	 */
	public Timestamp getDateAcct ()
	{
		return dateAcct;
	}	//	getDateAcct
	
	/**
	 * 	Set Account Date
	 * @param dateAcct
	 */
	public void setDateAcct (Timestamp dateAcct)
	{
		this.dateAcct = dateAcct;
	}	//	setDateAcct
	
	/**
	 * 	Get Indicator (Debit or Credit)
	 * @return
	 */
	public String getIndicator ()
	{
		return indicator;
	}	//	getIndicator

	/**
	 * 	Set Indicator of Debit or Credit
	 * @param indicator
	 */
	public void setIndicator (String indicator)
	{
		this.indicator = indicator;
	}	//	setIndicator
	
	/**
	 * 	Comparador para Collection
	 * 
	 * @see java.util.Comparator#compare(java.lang.Object, java.lang.Object)
	 */
	public int compare (Object o1, Object o2) {
		if (o1 == null)									//	Depois
			return 1;
		else if (o2 == null)
			return -1;									//	Antes
		else if (o1 instanceof ECDBalance && o2 instanceof ECDBalance)
		{
			ECDBalance b1 = (ECDBalance) o1;
			ECDBalance b2 = (ECDBalance) o2;
			//
			String s1 = b1.getAccount().getValue();
			String s2 = b2.getAccount().getValue();
			
			return s1.compareTo(s2);
		}
		
		return 0;
	}

	/**
	 * 	Comparador para Collection
	 */
	public int compareTo (Object o) {
		return compare (this, o);
	}
	
}	//	ECDBalance