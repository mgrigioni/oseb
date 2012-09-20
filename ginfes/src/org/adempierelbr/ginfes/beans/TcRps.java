/******************************************************************************
 * Product: OSeB http://code.google.com/p/oseb                                *
 * Copyright (C) 2012 Mario Grigioni                                          *
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
package org.adempierelbr.ginfes.beans;

import java.io.File;
import java.io.StringWriter;

import org.adempiere.exceptions.AdempiereException;
import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MAttachment;
import org.compiere.model.MOrgInfo;
import org.compiere.util.CLogger;
import org.compiere.util.Trx;

import com.thoughtworks.xstream.XStream;
import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamOmitField;
import com.thoughtworks.xstream.io.xml.CompactWriter;
import com.thoughtworks.xstream.io.xml.DomDriver;

/**
 *  TcRps
 *  @author Mario Grigioni
 *  @version $Id: TcRps.java,v 1.0 06/06/2012 09:54:00 mgrigioni Exp $
 */
@XStreamAlias ("Rps")
public class TcRps {
	
	@XStreamOmitField
	private CLogger log = CLogger.getCLogger(TcRps.class);
	@XStreamOmitField
	private MLBRNotaFiscal NotaFiscal;
	@XStreamOmitField
	private MOrgInfo OrgInfo;
	
	private TcInfRps InfRps;

	/**
	 * Constructor
	 * @param infRps
	 */
	public TcRps(MOrgInfo orgInfo, MLBRNotaFiscal notaFiscal, TcInfRps infRps) {
		super();
		setOrgInfo(orgInfo);
		setNotaFiscal(notaFiscal);
		setInfRps(infRps);
	}
	
	/**
	 * Create XML File and attach to MLBRNotaFiscal
	 * @param orgInfo
	 * @param nf
	 * @return boolean success
	 * @throws Exception
	 */
	public boolean toXML() throws AdempiereException{
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (getInfRps(),  new CompactWriter (sw));
		//
		StringBuilder rps = new StringBuilder("<Rps>").append(sw.toString()).append("</Rps>");
		//
		String attachFile = TextUtil.generateTmpFile(rps.toString(), getInfRps().getId()+NFeUtil.EXT_RPS);
		try {
			AssinaturaDigital.Assinar(attachFile, OrgInfo, AssinaturaDigital.DOCTYPE_GINFES_RPS);
		} catch (Exception e) {
			log.severe(e.getLocalizedMessage());
		}
		
		//	Anexa o XML na NF
		MAttachment attachRps = NotaFiscal.getAttachment(true);
		if (attachRps != null){
			Trx localTrx = Trx.get("RpsDel", true);
			attachRps.delete(true,localTrx.getTrxName()); //APAGA ANEXO ANTERIOR
			localTrx.commit();
		}

		attachRps = NotaFiscal.createAttachment(true);
		attachRps.addEntry(new File(attachFile));
		return attachRps.save(NotaFiscal.get_TrxName());
	} //toXML
	
	public TcInfRps getInfRps() {
		return InfRps;
	}
	private void setInfRps(TcInfRps infRps) {
		InfRps = infRps;
	}

	public MLBRNotaFiscal getNotaFiscal() {
		return NotaFiscal;
	}
	private void setNotaFiscal(MLBRNotaFiscal notaFiscal) {
		NotaFiscal = notaFiscal;
	}

	public MOrgInfo getOrgInfo() {
		return OrgInfo;
	}
	private void setOrgInfo(MOrgInfo orgInfo) {
		OrgInfo = orgInfo;
	}
	
}	// TcRps