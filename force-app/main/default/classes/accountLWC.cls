public with sharing class accountLWC 
{

@AuraEnabled(cacheable = true)


    public static list<account> accountLWC() 
    {
        return [Select id, Name, AlreadyNameSpac__Active__c from Account where AlreadyNameSpac__Active__c = 'Yes' limit 8];

    }
}