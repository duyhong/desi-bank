
package com.idea.store.sim;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "SimWebserviceService", targetNamespace = "http://www.store.idea.com/sim", wsdlLocation = "file:/C:/Users/VC1/workspace_multimodule/desibank-parent/desibank-web/src/main/webapp/WEB-INF/wsdl/sim-webservice.wsdl")
public class SimWebserviceService
    extends Service
{

    private final static URL SIMWEBSERVICESERVICE_WSDL_LOCATION;
    private final static WebServiceException SIMWEBSERVICESERVICE_EXCEPTION;
    private final static QName SIMWEBSERVICESERVICE_QNAME = new QName("http://www.store.idea.com/sim", "SimWebserviceService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("file:/C:/Users/VC1/workspace_multimodule/desibank-parent/desibank-web/src/main/webapp/WEB-INF/wsdl/sim-webservice.wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        SIMWEBSERVICESERVICE_WSDL_LOCATION = url;
        SIMWEBSERVICESERVICE_EXCEPTION = e;
    }

    public SimWebserviceService() {
        super(__getWsdlLocation(), SIMWEBSERVICESERVICE_QNAME);
    }

    public SimWebserviceService(WebServiceFeature... features) {
        super(__getWsdlLocation(), SIMWEBSERVICESERVICE_QNAME, features);
    }

    public SimWebserviceService(URL wsdlLocation) {
        super(wsdlLocation, SIMWEBSERVICESERVICE_QNAME);
    }

    public SimWebserviceService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, SIMWEBSERVICESERVICE_QNAME, features);
    }

    public SimWebserviceService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public SimWebserviceService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns SimWebservice
     */
    @WebEndpoint(name = "SimWebservicePort")
    public SimWebservice getSimWebservicePort() {
        return super.getPort(new QName("http://www.store.idea.com/sim", "SimWebservicePort"), SimWebservice.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns SimWebservice
     */
    @WebEndpoint(name = "SimWebservicePort")
    public SimWebservice getSimWebservicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://www.store.idea.com/sim", "SimWebservicePort"), SimWebservice.class, features);
    }

    private static URL __getWsdlLocation() {
        if (SIMWEBSERVICESERVICE_EXCEPTION!= null) {
            throw SIMWEBSERVICESERVICE_EXCEPTION;
        }
        return SIMWEBSERVICESERVICE_WSDL_LOCATION;
    }

}
