@istest
public class OpportunityTriggerTests 
{
   
Static TestMethod Void Meth()
{
    //Account A = [Select name , id , LatestOppAmount__c  from account where id ='001J400000Ppa7cIAB'];
    
    
    opportunity o = new Opportunity();
    o.Amount = 10000;
    o.Name = 'tes';
    o.CloseDate= Date.today();
    o.Type = 'New logo';
    o.StageName ='Informal Assistance';
    o.AccountId = '001J400000Ppa7cIAB';
    insert o;
    
    Account A1 = [Select name , id , LatestOppAmount__c  from account where id =: o.AccountId];
   
    System.assertequals (A1.LatestOppAmount__c , o.amount);
    
}
}