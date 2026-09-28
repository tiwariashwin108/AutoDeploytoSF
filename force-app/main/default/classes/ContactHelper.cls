Public class ContactHelper 
{

Public void Method() //non-parameterized method
{
    Account A = new Account();
    A.name = 'Test for non-paramter';
    insert A;

    If (A.Id!=null)
    {
        System.debug(A.Id);
        
        Contact c = new contact();
        C.lastname= 'Inserted through Non-paramter';
        C.AccountId = A.Id;
        
        Insert c;
        
        If (C.Id!=null)
        {
             System.debug(C.Id);
        }
    }
    

} 
    
  
    
}