public class RestAPIFakeStore 
{
public static void method ()
{
    http h = new http();
    httpRequest req = new httpRequest();
    req.setMethod ('GET');
    req.setEndPoint('https://fakestoreapi.com/products');
    req.setHeader ('Content-Type' , 'application/json;charset=UTF-8');
    //req.setBody('');
 
    httpResponse res = h.send(req);
    
    system.debug(res.getbody());
 
}
}