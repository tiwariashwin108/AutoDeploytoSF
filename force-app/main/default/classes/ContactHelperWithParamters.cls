public class ContactHelperWithParamters 
{
Public void method(String Name, string last )
{
    Account A = new Account();
    A.Name = name;
    insert A;
    
    If(A.Id!= null)
        {
            System.debug(A.Id);
            
          
           /* Contact C= new contact();
            C.LastName = lastname;
            C.AccountId = A.Id;
            insert C;
            
             If(C.Id!= null)
             {
                 System.debug(C.Id);
             }*/
            Method1(A, last);
        }
}
Public Void Method1(Account A1,string lastname)   // or (Account A ,String last )
{
    Contact C= new contact();
            C.LastName = lastname; // or last if used above
            C.AccountId = A1.Id;
            insert C;
            
             If(C.Id!= null)
             {
                 System.debug(C.Id);
}
    
}
}