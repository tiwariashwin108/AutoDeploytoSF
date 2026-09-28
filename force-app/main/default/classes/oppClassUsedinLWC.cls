public with sharing class oppClassUsedinLWC 
{
    public static List<Opportunity> oppClassUsedinLWC() 
    {
        return [SELECT Id,Name,StageName FROM Opportunity limit 10];

    }
}