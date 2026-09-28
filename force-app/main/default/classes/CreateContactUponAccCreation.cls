public class CreateContactUponAccCreation 
{
Public static void method(List<account> a)
{
    if(A!=Null)
    {
        For(Account A1:A)
        {
            If (A1.NumberofLocations__c != Null)
            {
                List<Contact> C1 = New List<Contact> ();
                For (Integer i =1 ; i<=A1.NumberofLocations__c ; I++)
                {
             Contact c = new contact();
            C.lastname = A1.name +I;
            C.AccountId = A1.Id;
                c.Phone = A1.Phone;
            C1.add(c);
                }
                Insert C1;
           
            }
            
        }
    }
}
}