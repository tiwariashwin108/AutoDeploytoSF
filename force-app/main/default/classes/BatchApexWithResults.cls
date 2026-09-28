global class BatchApexWithResults
    implements Database.Batchable<SObject>, Database.Stateful {

    // Store successful Case records
    global List<Id> successRecords = new List<Id>();

    // Store failed Case records and error messages
    global List<String> failedRecords = new List<String>();


    // START
    global Database.QueryLocator start(Database.BatchableContext bc) {

        return Database.getQueryLocator(
            'SELECT Id, CaseNumber, Status ' +
            'FROM Case ' +
            'WHERE Status = \'Working\''
        );
    }


    // EXECUTE
    global void execute(
        Database.BatchableContext bc,
        List<Case> cases
    ) {

        // Update Case status
        for (Case c : cases) {
            c.Status = 'New';
        }

        // Allow partial success
        Database.SaveResult[] results =
            Database.update(cases, false);


        // Check success and failure
        for (Database.SaveResult sr : results) {

            if (sr.isSuccess()) {

                // Store successful Case Id
                successRecords.add(sr.getId());

            } else {

                // Store failed Case Id and error
                for (Database.Error error : sr.getErrors()) {

                    failedRecords.add(
                        'Case Id: ' + sr.getId() +
                        ' | Error: ' + error.getMessage()
                    );
                }
            }
        }
    }


    // FINISH
    global void finish(Database.BatchableContext bc) {

        String emailBody = '';

        // SUCCESS RECORDS
        emailBody += 'SUCCESSFUL CASES: '
            + successRecords.size() + '\n\n';

        for (Id caseId : successRecords) {
            emailBody += 'Case Id: ' + caseId + '\n';
        }


        // FAILED RECORDS
        emailBody += '\n\nFAILED CASES: '
            + failedRecords.size() + '\n\n';

        for (String failure : failedRecords) {
            emailBody += failure + '\n';
        }


        // Send email
        Messaging.SingleEmailMessage email =
            new Messaging.SingleEmailMessage();

        email.setToAddresses(
            new String[] {'ashwin.tiwari@salesforce.com', 'ashwin.tiwari0709@gmail.com'}
        );

        email.setSubject(
            'Case Batch Processing Result'
        );

        email.setPlainTextBody(emailBody);

        Messaging.sendEmail(
            new Messaging.SingleEmailMessage[] { email }
        );
    }
}