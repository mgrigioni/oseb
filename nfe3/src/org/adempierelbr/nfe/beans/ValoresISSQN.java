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
package org.adempierelbr.nfe.beans;

import java.math.BigDecimal;
import java.sql.Timestamp;

import org.adempierelbr.util.TextUtil;

public class ValoresISSQN {

	private String vServ;
	private String vBC;
	private String vISS;
	private String vPIS;
	private String vCOFINS;
	private String dCompet;
	private String vDeducao;
	private String vOutro;
	private String vDescIncond;
	private String vDescCond;
	private String vISSRet;
	private String cRegTrib;
	
	public String getvServ() {
		return vServ;
	}
	public void setvServ(String vServ) {
		if (vServ != null)
			vServ = vServ.trim();
	
		this.vServ = vServ;
	}
	public String getvBC() {
		return vBC;
	}
	public void setvBC(String vBC) {
		if (vBC != null)
			vBC = vBC.trim();
	
		this.vBC = vBC;
	}
	public String getvISS() {
		return vISS;
	}
	public void setvISS(String vISS) {
		if (vISS != null)
			vISS = vISS.trim();
	
		this.vISS = vISS;
	}
	public String getvPIS() {
		return vPIS;
	}
	public void setvPIS(BigDecimal vPIS) {
		this.vPIS = TextUtil.bigdecimalToString(vPIS);;
	}
	public String getvCOFINS() {
		return vCOFINS;
	}
	public void setvCOFINS(BigDecimal vCOFINS) {
		this.vCOFINS = TextUtil.bigdecimalToString(vCOFINS);
	}
	public String getdCompet() {
		return dCompet;
	}
	public void setdCompet(Timestamp dCompet) {
		this.dCompet = TextUtil.timeToString(dCompet, "yyyy-MM-dd");
	}
	public String getvDeducao() {
		return vDeducao;
	}
	public void setvDeducao(BigDecimal vDeducao) {
		this.vDeducao = TextUtil.bigdecimalToString(vDeducao);
	}
	public String getvOutro() {
		return vOutro;
	}
	public void setvOutro(BigDecimal vOutro) {
		this.vOutro = TextUtil.bigdecimalToString(vOutro);
	}
	public String getvDescIncond() {
		return vDescIncond;
	}
	public void setvDescIncond(BigDecimal vDescIncond) {
		this.vDescIncond = TextUtil.bigdecimalToString(vDescIncond);
	}
	public String getvDescCond() {
		return vDescCond;
	}
	public void setvDescCond(BigDecimal vDescCond) {
		this.vDescCond = TextUtil.bigdecimalToString(vDescCond);
	}
	public String getvISSRet() {
		return vISSRet;
	}
	public void setvISSRet(BigDecimal vISSRet) {
		this.vISSRet = TextUtil.bigdecimalToString(vISSRet);
	}
	public String getcRegTrib() {
		return cRegTrib;
	}
	public void setcRegTrib(String cRegTrib) {
		if (cRegTrib != null)
			cRegTrib = cRegTrib.trim();
		
		this.cRegTrib = cRegTrib;
	}
}