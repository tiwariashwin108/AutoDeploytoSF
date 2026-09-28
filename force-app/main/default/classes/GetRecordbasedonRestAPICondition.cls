@restresource (urlMapping ='/GetAccORconApi')
Global class GetRecordbasedonRestAPICondition
{
    @httpGet
    Global static Sobject method()
    {
        
        Restrequest req = RestContext.request;
        String body = req.Params.get('id');
        
        If (body.startswith ('001'))
        {
            Account A = [Select name , id from Account where id =:body];
            Return A;
        }
        
        else 
        {
            Contact C = [Select lastname , id from contact where id =:body];
            return c;
        }
        
        
    }

}