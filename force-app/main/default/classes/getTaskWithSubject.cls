public with sharing class getTaskWithSubject 
{
    @AuraEnabled(cacheable=true)
    public static list<Task> getTaskWithCall(string TaskSub) 
    {
        return [Select Id,Subject from Task where Subject = :TaskSub limit 10 ];

    }
}