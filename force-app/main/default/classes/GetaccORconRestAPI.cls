@RestResource(urlMapping = '/AccountContactAPI')

Global class GetaccORconRestAPI 
{

    @HttpGet
    Global static Sobject GetaccORcon()
    {
        RestRequest req = RestContext.request;
        string recordID = req.Params.get('id');
        
        if (recordID.startsWith('001')) 
        {
            Account A= [Select id, name from account where id =:recordID limit 1];
            Return A;
        }
        else
        {
            contact C= [Select id, lastname from contact where id =:recordID limit 1];
            Return C;
        }
               
    }
    
    //Insert Method
    
    @HttpPost
    Global static void InsertaccORcon()
    {
        RestRequest req = RestContext.request;
        
        String body = req.requestbody.toString();
        MyJsonCls Convert = (MyJsonCls) Json.deserialize(body , MyJsonCls.class);
        
        If(Convert.isAccount==true)
        {
            Account A = new Account();
            A.name= Convert.customerName;
            insert A;
        }
        else
        {
            Contact C = new Contact();
            C.lastname = Convert.customerName;
            insert C;
        }
        
    }
    
    // Delete Acc or Con 
    
    @HttpDelete 
    Global Static void DeleteaccORcon()
    {
        Restrequest req = RestContext.request;
        String DeleteRecords = req.params.get('id');
        
       If (DeleteRecords.startsWith('001'))
       {
           Account A = [Select id from account where id =:DeleteRecords];
           delete A;
       }
        else
        {
            Contact c = [Select id from Contact where id=:DeleteRecords ];
            delete c;
        }
    }
}