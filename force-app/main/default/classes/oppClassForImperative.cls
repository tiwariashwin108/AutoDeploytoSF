public with sharing class oppClassForImperative 
{
    @AuraEnabled (cacheable=true)
    
    public static List<Opportunity> oppMethodForImperative(String NameOfStage) 
    {
        return[Select Id, Amount, Name,StageName from Opportunity where StageName =:NameOfStage limit 10];
    }
}