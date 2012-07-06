/**
 * NfeRetRecepcao2CallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.5.1  Built on : Oct 19, 2009 (10:59:00 EDT)
 */

package br.inf.portalfiscal.www.nfe.wsdl.nferetrecepcao2;

/**
 * NfeRetRecepcao2CallbackHandler Callback class, Users can extend this class
 * and implement their own receiveResult and receiveError methods.
 */
public abstract class NfeRetRecepcao2CallbackHandler {

	protected Object clientData;

	/**
	 * User can pass in any object that needs to be accessed once the
	 * NonBlocking Web service call is finished and appropriate method of this
	 * CallBack is called.
	 * 
	 * @param clientData
	 *            Object mechanism by which the user can pass in user data that
	 *            will be avilable at the time this callback is called.
	 */
	public NfeRetRecepcao2CallbackHandler(Object clientData) {
		this.clientData = clientData;
	}

	/**
	 * Please use this constructor if you don't want to set any clientData
	 */
	public NfeRetRecepcao2CallbackHandler() {
		this.clientData = null;
	}

	/**
	 * Get the client data
	 */

	public Object getClientData() {
		return clientData;
	}

	/**
	 * auto generated Axis2 call back method for nfeRetRecepcao2 method override
	 * this method for handling normal response from nfeRetRecepcao2 operation
	 */
	public void receiveResultnfeRetRecepcao2(
			br.inf.portalfiscal.www.nfe.wsdl.nferetrecepcao2.NfeRetRecepcao2Stub.NfeRetRecepcao2Result result) {
	}

	/**
	 * auto generated Axis2 Error handler override this method for handling
	 * error response from nfeRetRecepcao2 operation
	 */
	public void receiveErrornfeRetRecepcao2(java.lang.Exception e) {
	}

}
