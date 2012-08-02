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

import org.adempierelbr.util.RemoverAcentos;
import org.adempierelbr.util.TextUtil;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;

/**
 *  H - Detalhamento de Produtos e Serviços da NF-e
 *  
 *  @author Mario Grigioni
 *  @version $Id: DetalheProduto.java,v 2.0 02/08/2012 13:54:00 mgrigioni Exp $
 */
@XStreamAlias ("det")
public class DetalheProduto {

	@XStreamAsAttribute
	public int nItem;
	
	public ProdutoNFe prod;
	public ImpostoProduto imposto;
	public String infAdProd;
	
	/**
	 * Default Constructor
	 * @param nItem
	 * @param prod
	 * @param impostos
	 * @param infAdProd
	 */
	public DetalheProduto(int nItem, ProdutoNFe prod, ImpostoProduto imposto, String infAdProd) {
		setnItem(nItem);
		setProd(prod);
		setImposto(imposto);
		setInfAdProd(infAdProd);
	}

	public int getnItem() {
		return nItem;
	}
	public void setnItem(int nItem) {
		this.nItem = nItem;
	}

	public ProdutoNFe getProd() {
		return prod;
	}
	public void setProd(ProdutoNFe prod) {
		this.prod = prod;
	}

	public ImpostoProduto getImposto() {
		return imposto;
	}
	public void setImposto(ImpostoProduto imposto) {
		this.imposto = imposto;
	}

	public String getInfAdProd() {
		return infAdProd;
	}
	public void setInfAdProd(String infAdProd) {
		infAdProd = TextUtil.checkSize(RemoverAcentos.remover(infAdProd), 500);
		if (!infAdProd.isEmpty())
			this.infAdProd = infAdProd;
	}
	
}	// DetalheProduto