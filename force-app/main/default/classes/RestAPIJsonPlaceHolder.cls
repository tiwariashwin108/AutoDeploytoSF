public class RestAPIJsonPlaceHolder 
{
public static void method ()
{
    http h = new http();
    httpRequest req = new httpRequest();
    httpResponse res = new httpResponse();
    req.setMethod ('GET');
    req.setEndPoint('https://jsonplaceholder.typicode.com/posts');
     req.setHeader ('Content-Type' , 'application/json;charset=UTF-8');
    res =h.send(req);
    
    System.debug (res.getbody());
}
}