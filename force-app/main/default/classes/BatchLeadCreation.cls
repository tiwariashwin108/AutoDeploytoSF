global class BatchLeadCreation implements Database.Batchable<SObject>, database.stateful {

    // List to store inserted Lead IDs
     List<Id> lEa = new List<Id>();

    // Start method - return an empty query locator (since we're creating new records)
    global Database.QueryLocator start(Database.BatchableContext bContext) {
        return Database.getQueryLocator([SELECT Id FROM Lead Limit 1]);  // Dummy query, not used for processing records
    }

    // Execute method - Create new Lead records
    global void execute(Database.BatchableContext bContext, List<SObject> recordsToProcess) {

        // List to hold the new Lead records
        List<Lead> leadsToInsert = new List<Lead>();

        // Create 2000 Lead records (but in batches of 200 records per DML statement to avoid governor limits)
        for (Integer i = 1; i <= 10; i++) {
            Lead leadRecord = new Lead();
            leadRecord.FirstName = 'First name';
            leadRecord.LastName = 'Created through Batch Apex ' + i;
            leadRecord.Company = 'Company ' + i; // Avoid issues, dynamically assign company name
            
            leadsToInsert.add(leadRecord);  // Add Lead to list
            
           /* If(leadsToInsert.size()==2000)
            {
                Insert leadsToInsert;
                leadsToInsert.clear();
            }*/
        }

        // Insert records in batches (to avoid hitting governor limits)
        if (!leadsToInsert.isEmpty()) {
            insert leadsToInsert; 
            // Insert records in batch
             for (Lead lead : leadsToInsert) {
                 lEa.add(lead.Id); }
        }

        // Store the IDs of inserted records
       
    }

    // Finish method - Log the IDs of the inserted Lead records
    global void finish(Database.BatchableContext bContext) {
        // Log the IDs of all inserted records
        System.debug('Batch process finished. Inserted Lead IDs: ' + lEa);
    }
}