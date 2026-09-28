Global class ScheduleApexBatch implements Database.batchable <SObject>
{
Global database.QueryLocator Start (Database.batchableContext S)
{
    String S1 = 'Select name, id,createdDate from lead where createdDate <Today';
    Return Database.getQueryLocator (S1);
}
   Global Void execute(Database.batchableContext S, List<Sobject> L)
   {
       If(L!=Null)
       {
           delete L;
       }
       
   }
    Global Void Finish (Database.batchableContext S)
    {
        System.debug (S.getjobId());
        AsyncApexJob J = [Select id, status, TotalJobItems, JobitemsProcessed , numberoferrors , createdby.email from AsyncApexJob where id =:S.getjobId() ];
        MessagingForJobs.SendBatchDetails(J,'ScheduleApexBatch');
    }
    
}