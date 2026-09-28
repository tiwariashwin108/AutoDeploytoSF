Global class BatchANDSchedule implements database.batchable<sobject>, Schedulable
{

    Global database.queryLocator start(database.batchableContext b)
    {
        return database.getQueryLocator ([Select AccountId, CaseNumber  from Case]);
    }
    
    Global void execute (database.batchableContext b , List<Case>L)
    {
        For (Case C: L)
        {
            C.Reason = 'Performance';
            
        }
        Update L;
    }
    
    Global void finish (database.batchableContext b)
    {
        messaging.singleEmailMessage M = new messaging.singleEmailMessage();
        
        string [] toAddress = new String[]{'ashwin.tiwari@salesforce.com', 'ashwin.tiwari0709@gmail.com'};
        M.settoAddresses(toAddress);
        M.setSubject('Batch completed');
        M.setPlainTextBody('The batch job is done');
        messaging.sendEmail(new messaging.singleEmailMessage [] {M});
        
        
    }
    
     Global void execute (SchedulableContext S)
     {
         Database.executeBatch(new BatchANDSchedule(), 200 );
     }
}