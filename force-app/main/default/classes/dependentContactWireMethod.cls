public  class dependentContactWireMethod 
{
    @AuraEnabled (cacheable=true)
    
    public static List<Task> getContactTasks(String conRecordId)
    {
        return [Select Id, Who.Name,WhoId, TaskSubtype from Task Where WhoId=:conRecordId];

    }
}