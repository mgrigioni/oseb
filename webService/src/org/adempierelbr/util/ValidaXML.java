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
package org.adempierelbr.util;

import java.io.StringReader;
import java.net.URL;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.stream.StreamSource;
import javax.xml.validation.Schema;
import javax.xml.validation.SchemaFactory;
import javax.xml.validation.Validator;

import org.compiere.util.CLogger;
import org.xml.sax.InputSource;
import org.xml.sax.SAXParseException;

public abstract class ValidaXML {

	/**	Logger				*/
	private static CLogger log = CLogger.getCLogger(ValidaXML.class);
	
	/**
	 * Validate xml file against xsd schema
	 * @param XML File
	 * @param XSD Schema File
	 * @return validation result
	 */
	private static String ValidaDoc(String stringXml, String xsdFileName) {
		//Define the type of schema - we use W3C
		String schemaLang = "http://www.w3.org/2001/XMLSchema";
		//Get validation driver
		SchemaFactory factory = SchemaFactory.newInstance(schemaLang);
		//Create schema by reading it from an XSD file
		try 
		{
			//	Grava o arquivo no tmp
			URL xsdPath = org.adempierelbr.util.ValidaXML.class.getResource("/org/adempierelbr/xsd/" + xsdFileName);
          //File xsdFile = new File(xsdPath.getPath());
			//
			Schema schema = factory.newSchema(new StreamSource(xsdPath.toURI().toString()));
			Validator validator = schema.newValidator();
			//Perform the validation:
			validator.validate(new StreamSource(new StringReader(stringXml)));
			DocumentBuilderFactory fact = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = fact.newDocumentBuilder();
			builder.parse(new InputSource(new StringReader(stringXml)));
		} catch (Exception e) {
			if (e instanceof SAXParseException)
				return "XML Parse Error on Col: "
						+ ((SAXParseException) e).getColumnNumber()
						+ " | Lin: " + ((SAXParseException) e).getLineNumber()
						+ " - " + ((SAXParseException) e).getLocalizedMessage();
			else
				return "Unknow error attemping to validate XML.";
		}
		return "";
	}

	/**
	 * Validate xml file against xsd schema (nfe2/enviNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaEnviNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/enviNFe_v2.00.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/nfe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaNFe(String stringXml) {
		log.info("Validando NFe");
		return ValidaDoc(stringXml, "nfe2/nfe_v2.00.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/retEnviNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetEnviNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retEnviNFe_v2.00.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/consReciNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaConsReciNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/consReciNFe_v2.00.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/retConsReciNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetConsReciNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retConsReciNFe_v2.00.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/consSitNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaConsSitNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/consSitNFe_v2.01.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/retConsSitNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetConsSitNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retConsSitNFe_v2.01.xsd");
	}

	/**
	 * Validate xml file against xsd schema (nfe2/procNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaProcNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/procNFe_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/cancNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaCancNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/cancNFe_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/retCancNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetCancNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retCancNFe_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/inutNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaInutNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/inutNFe_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/retInutNFe_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetInutNFe(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retInutNFe_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/consCad_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaConsCad(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/consCad_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (nfe2/retConsCad_v2.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaRetConsCad(String stringXml) {
		return ValidaDoc(stringXml, "nfe2/retConsCad_v2.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (cce/envCCe_v1.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaEnvCCe(String stringXml) {
		return ValidaDoc(stringXml, "cce/envCCe_v1.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (cce/procCCeNFe_v1.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaProcCCeNFe(String stringXml) {
		return ValidaDoc(stringXml, "cce/procCCeNFe_v1.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (eventoCanc/envEventoCancNFe_v1.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaEnvCanc(String stringXml) {
		return ValidaDoc(stringXml, "eventoCanc/envEventoCancNFe_v1.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (eventoCanc/procEventoCancNFe_v1.00.xsd)
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaProcEventoCancNFe(String stringXml) {
		return ValidaDoc(stringXml, "eventoCanc/procEventoCancNFe_v1.00.xsd");
	}
	
	/**
	 * Validate xml file against xsd schema (ginfes/servico_enviar_lote_rps_envio_v03.xsd")
	 * @param stringXml
	 * @return validation result
	 */
	public static String validaServicoEnviarLoteRpsEnvio(String stringXML) {
		return ValidaDoc(stringXML, "ginfes/servico_enviar_lote_rps_envio_v03.xsd");
	}
	
} //ValidaXML