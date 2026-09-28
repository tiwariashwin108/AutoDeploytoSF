public with sharing class dependentWireApexClass 
{
    @AuraEnabled (cacheable=true)
    
    public static List<Task> getTasks(String AccName)
    {
        return [Select Id, What.Name, Description, TaskSubtype from Task Where What.Name=:AccName];
    }
}