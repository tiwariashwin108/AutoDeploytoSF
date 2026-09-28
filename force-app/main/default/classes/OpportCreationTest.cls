@istest
public class OpportCreationTest 
{
   
Static TestMethod Void Meth()
{
    Account A = [Select name , id , LatestOppAmount__c  from account where id ='001J400000PpM3UIAV' limit 1];
    System.assertequals (Null , A.LatestOppAmount__c );
    
    opportunity o = new Opportunity();
    o.Amount = 10000;
    o.Name = 'tes';
    o.CloseDate= Date.today();
     o.Type = 'New logo';
    o.StageName ='Informal Assistance';
    o.AccountId = '001J400000PpM3UIAV';
    insert o;
    
   
    System.assertequals (A.LatestOppAmount__c , o.amount);
    
}
}