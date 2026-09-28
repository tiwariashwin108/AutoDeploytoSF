public class SalesforceToSalesforce 
{
public static void sendcallmethod()
{
    HTTP http = new HTTP();
   HTTPRequest req = new HTTPRequest();
   
   
    
    req.setEndPoint ('callout:AlreadyNameSpac__SalesforcetoSalesforceNamed/services/data/v60.0/sobjects/Account/');
    req.setMethod('POST');
    req.setHeader ('content-type' , 'application/json');
     req.setBody( '{ "Name" : "Sent from external org" }');
    
     HTTPResponse res = new HTTPResponse();
    res = http.send(req);
    
    System.debug('response is ' +res.getbody());
}
}