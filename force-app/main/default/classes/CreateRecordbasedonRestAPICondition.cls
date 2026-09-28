@Restresource(urlMapping = '/createAccORconApi')
Global class CreateRecordbasedonRestAPICondition 
{
   @httpPost
    Global Static string Method()
    {
        RestRequest req = RestContext.request;
        
        String Body = req.RequestBody.toString(); 
        StoreVARCreateRecordbasedonRestAPI Var = (StoreVARCreateRecordbasedonRestAPI)Json.deserialize(Body,StoreVARCreateRecordbasedonRestAPI.class);
        
     //   System.debug (Var.CustomerName);
        
      //    System.debug (Var.IsAcc);
        
        If (Var.IsAcc ==true)
        {
            Account A = new Account (name = Var.CustomerName);
            insert A;
            return a.id;
            
        }
        Else{
            Contact C = new Contact (Lastname = Var.CustomerName);
         insert C;
            return c.id;
           
        }
        
    }
}