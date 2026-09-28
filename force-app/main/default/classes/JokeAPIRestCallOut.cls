public class JokeAPIRestCallOut 
{
 Public static void GetJokeMethod()
 {
     Http h = new Http();
     HttpRequest req = new HttpRequest();
     
     req.setEndPoint ('http://www.official-joke-api.appspot.com/random_joke');
     req.setMethod ('GET');
     req.setHeader ('Content-Type' , 'application/json;charset=UTF-8');
     
     HttpResponse res = new HttpResponse();
     res = h.send(req);
     
     system.debug (res.getbody());
     
 }
}

/* This can also be done using Named Creditanls
 * 
 * public class SecondHttpCalloutNamedCredentials 
{

    public static void HttpCalloutusingNamedCredentials()
    {
        Http ht = new Http();
        HttpRequest req = new HttpRequest();
        
        req.setEndPoint ('callout:JokeAPINamedCredential/random_joke');
        req.setMethod ('GET');
        req.setHeader ('Content-Type' , 'application/json');
            
        
        HttpResponse res = new HttpResponse();
        res = ht.send(req);
        
        System.debug(res.getBody());
    }
       
    
    
} */