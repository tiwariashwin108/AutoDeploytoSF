public with sharing class getOppsClassAura 
{
    @AuraEnabled (cacheable= true)
    
    public static List<Opportunity> getOpps() 
    {
        return [SELECT Id,Name,StageName,Account.Name,Amount FROM Opportunity limit 10];


    }
}