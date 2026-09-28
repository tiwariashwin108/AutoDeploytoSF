@isTEst
public class CopySHippingAddressTest 
{
Static testMethod void Method()
{
    Account A = new Account ();
    A.Name = 'Tst';
        A.Share_this_Record_with__c = '0055j00000BgU0bAAF';
        A.BillingCity = 'Vizag';
        A.BillingStreet = 'Colony';
        A.BillingPostalCode ='530044';
    
    Insert A;
    
    Account A1= [Select ShippingStreet,ShippingCity,ShippingPostalCode from account where id = :A.id];
    
    System.assertEquals('Colony' , A1.ShippingStreet);
     System.assertEquals('Vizag' , A1.ShippingCity);
     System.assertEquals('530044' , A1.ShippingPostalCode);
    List<Account> A2 =[Select ShippingStreet,ShippingCity,ShippingPostalCode,BillingCity,BillingStreet,BillingPostalCode,Share_this_Record_with__c from account where id = '001J400000PpM3UIAV'];
    For (Account A3:A2)
    {
        A3.Share_this_Record_with__c = '0055j00000BgU0bAAF';
        A3.BillingCity = 'Vizag';
        A3.BillingStreet = 'Colony';
        A3.BillingPostalCode ='530044';
     System.assertEquals('Colony' , A3.ShippingStreet);
     System.assertEquals('Vizag' , A3.ShippingCity);
     System.assertEquals('530044' , A3.ShippingPostalCode);
    }
     
        
  
}
}