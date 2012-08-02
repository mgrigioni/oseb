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

import org.adempierelbr.model.MLBRNotaFiscal;
import org.adempierelbr.util.AssinaturaDigital;
import org.adempierelbr.util.NFeUtil;
import org.adempierelbr.util.TextUtil;
import org.compiere.model.MOrgInfo;

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
	public boolean toXML() throws Exception{
		XStream xstream = new XStream (new DomDriver(TextUtil.UTF8));
		xstream.autodetectAnnotations(true);
		// 
		StringWriter sw = new StringWriter ();
		xstream.marshal (getInfRps(),  new CompactWriter (sw));
		//
		StringBuilder rps = new StringBuilder("<Rps>").append(sw.toString()).append("</Rps>");
		//
		File attachFile = new File(TextUtil.generateTmpFile(rps.toString(), getInfRps().getId()+NFeUtil.EXT_RPS));
		AssinaturaDigital.Assinar(attachFile.toString(), OrgInfo, AssinaturaDigital.DOCTYPE_GINFES_RPS);
		//	Anexa o XML na NF
		/*
		MAttachment attachRps = NotaFiscal.getAttachment(true);
		if (attachRps != null)
			attachRps.delete(true, NotaFiscal.get_TrxName()); //APAGA ANEXO ANTERIOR
		
		attachRps = NotaFiscal.createAttachment(true);
		attachRps.addEntry(attachFile);
		return attachRps.save(NotaFiscal.get_TrxName());
		*/
		return true;
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