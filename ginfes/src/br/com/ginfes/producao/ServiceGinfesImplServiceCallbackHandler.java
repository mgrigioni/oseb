
/**
 * ServiceGinfesImplServiceCallbackHandler.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis2 version: 1.5.6  Built on : Aug 30, 2011 (10:00:16 CEST)
 */

    package br.com.ginfes.producao;

    /**
     *  ServiceGinfesImplServiceCallbackHandler Callback class, Users can extend this class and implement
     *  their own receiveResult and receiveError methods.
     */
    public abstract class ServiceGinfesImplServiceCallbackHandler{



    protected Object clientData;

    /**
    * User can pass in any object that needs to be accessed once the NonBlocking
    * Web service call is finished and appropriate method of this CallBack is called.
    * @param clientData Object mechanism by which the user can pass in user data
    * that will be avilable at the time this callback is called.
    */
    public ServiceGinfesImplServiceCallbackHandler(Object clientData){
        this.clientData = clientData;
    }

    /**
    * Please use this constructor if you don't want to set any clientData
    */
    public ServiceGinfesImplServiceCallbackHandler(){
        this.clientData = null;
    }

    /**
     * Get the client data
     */

     public Object getClientData() {
        return clientData;
     }

        
           /**
            * auto generated Axis2 call back method for recepcionarLoteRps method
            * override this method for handling normal response from recepcionarLoteRps operation
            */
           public void receiveResultrecepcionarLoteRps(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.RecepcionarLoteRpsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from recepcionarLoteRps operation
           */
            public void receiveErrorrecepcionarLoteRps(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarNfsePorRps method
            * override this method for handling normal response from consultarNfsePorRps operation
            */
           public void receiveResultconsultarNfsePorRps(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarNfsePorRpsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarNfsePorRps operation
           */
            public void receiveErrorconsultarNfsePorRps(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for cancelarNfseV3 method
            * override this method for handling normal response from cancelarNfseV3 operation
            */
           public void receiveResultcancelarNfseV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.CancelarNfseV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from cancelarNfseV3 operation
           */
            public void receiveErrorcancelarNfseV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarNfsePorRpsV3 method
            * override this method for handling normal response from consultarNfsePorRpsV3 operation
            */
           public void receiveResultconsultarNfsePorRpsV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarNfsePorRpsV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarNfsePorRpsV3 operation
           */
            public void receiveErrorconsultarNfsePorRpsV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for recepcionarLoteRpsV3 method
            * override this method for handling normal response from recepcionarLoteRpsV3 operation
            */
           public void receiveResultrecepcionarLoteRpsV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.RecepcionarLoteRpsV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from recepcionarLoteRpsV3 operation
           */
            public void receiveErrorrecepcionarLoteRpsV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarNfse method
            * override this method for handling normal response from consultarNfse operation
            */
           public void receiveResultconsultarNfse(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarNfseResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarNfse operation
           */
            public void receiveErrorconsultarNfse(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarLoteRpsV3 method
            * override this method for handling normal response from consultarLoteRpsV3 operation
            */
           public void receiveResultconsultarLoteRpsV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarLoteRpsV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarLoteRpsV3 operation
           */
            public void receiveErrorconsultarLoteRpsV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarSituacaoLoteRpsV3 method
            * override this method for handling normal response from consultarSituacaoLoteRpsV3 operation
            */
           public void receiveResultconsultarSituacaoLoteRpsV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarSituacaoLoteRpsV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarSituacaoLoteRpsV3 operation
           */
            public void receiveErrorconsultarSituacaoLoteRpsV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for cancelarNfse method
            * override this method for handling normal response from cancelarNfse operation
            */
           public void receiveResultcancelarNfse(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.CancelarNfseResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from cancelarNfse operation
           */
            public void receiveErrorcancelarNfse(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarNfseV3 method
            * override this method for handling normal response from consultarNfseV3 operation
            */
           public void receiveResultconsultarNfseV3(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarNfseV3Response result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarNfseV3 operation
           */
            public void receiveErrorconsultarNfseV3(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarLoteRps method
            * override this method for handling normal response from consultarLoteRps operation
            */
           public void receiveResultconsultarLoteRps(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarLoteRpsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarLoteRps operation
           */
            public void receiveErrorconsultarLoteRps(java.lang.Exception e) {
            }
                
           /**
            * auto generated Axis2 call back method for consultarSituacaoLoteRps method
            * override this method for handling normal response from consultarSituacaoLoteRps operation
            */
           public void receiveResultconsultarSituacaoLoteRps(
                    br.com.ginfes.producao.ServiceGinfesImplServiceStub.ConsultarSituacaoLoteRpsResponse result
                        ) {
           }

          /**
           * auto generated Axis2 Error handler
           * override this method for handling error response from consultarSituacaoLoteRps operation
           */
            public void receiveErrorconsultarSituacaoLoteRps(java.lang.Exception e) {
            }
                


    }
    