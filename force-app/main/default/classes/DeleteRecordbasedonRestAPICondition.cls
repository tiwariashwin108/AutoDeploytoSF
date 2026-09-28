@restresource(urlMapping = '/DeleteAccORconApi')
global class DeleteRecordbasedonRestAPICondition 
{
 
    @httpdelete
    Global static void method()
    {
        restRequest req = restcontext.request;
        
        string body = req.params.get('id');
        
        // delete (SObject) new SObject(Id = body);
        
        if(body.startswith('001'))
        {
            Account A = [Select id from account where id =:body];
            delete A;
        }
        else
        {
            Contact C = [Select id from contact where id =:body];
            delete c;
        }
    }
    
}