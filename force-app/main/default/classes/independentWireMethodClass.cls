public with sharing class independentWireMethodClass
 {
    @AuraEnabled(cacheable = true)

    public static list<Case> caseListMethod()
    {
        return[Select Id,Origin,CaseNumber,ClosedDate from Case limit 10];

    }

     @AuraEnabled(Cacheable = true)

      public static list<Task> taskListMethod()
    {
        return[Select Id,Subject from Task limit 10];

    }

    
    
 }