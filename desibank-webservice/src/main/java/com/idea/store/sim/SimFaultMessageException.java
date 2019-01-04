
package com.idea.store.sim;

import javax.xml.ws.WebFault;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebFault(name = "sfault", targetNamespace = "http://www.store.idea.com/sim")
public class SimFaultMessageException
    extends Exception
{

    /**
     * Java type that goes as soapenv:Fault detail element.
     * 
     */
    private DetailMessage faultInfo;

    /**
     * 
     * @param message
     * @param faultInfo
     */
    public SimFaultMessageException(String message, DetailMessage faultInfo) {
        super(message);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @param message
     * @param faultInfo
     * @param cause
     */
    public SimFaultMessageException(String message, DetailMessage faultInfo, Throwable cause) {
        super(message, cause);
        this.faultInfo = faultInfo;
    }

    /**
     * 
     * @return
     *     returns fault bean: com.idea.store.sim.DetailMessage
     */
    public DetailMessage getFaultInfo() {
        return faultInfo;
    }

}
