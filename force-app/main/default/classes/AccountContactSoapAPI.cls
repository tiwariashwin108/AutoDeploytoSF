global class AccountContactSoapAPI 
{
   webservice static string createaccORcon (String CustomerName, Boolean IsAccount) // once we mention webservice it is Soap Apex class and will have option to download this class as WSDL file
   {
       if(IsAccount == true)
       {
           Account A = new Account();
           A.Name = CustomerName;
           A.AlreadyNameSpac__Begins_Fucnction__c = 'Hello';
           insert A;
           return A.Id;
       }
       else
       {
           Contact c = new contact();
           c.lastname = CustomerName;
           insert c;
           return c.Id;
       }
   }
}