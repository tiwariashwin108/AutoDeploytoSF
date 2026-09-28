public with sharing class getOppWithSoql 
{
    @AuraEnabled(cacheable=true)
    public static List<Opportunity>getOppWithSoql (String NameOfStage) 
    {
        return[Select Id, Amount, Name,StageName from Opportunity where StageName =:NameOfStage limit 10];

    }
}