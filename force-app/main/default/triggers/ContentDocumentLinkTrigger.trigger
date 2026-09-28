trigger ContentDocumentLinkTrigger on ContentDocumentLink (before insert, after delete) {
    if (Trigger.isBefore && Trigger.isInsert) {
        Map<Id, String> quoteFileMap = new Map<Id, String>(); // QuoteId -> Document Name
        List<Task> tasksToUpdate = new List<Task>();

        // Step 1: Fetch the document names and associated Quote Ids
        for (ContentDocumentLink cdl : Trigger.new) {
            if (cdl.LinkedEntityId != null && String.valueOf(cdl.LinkedEntityId).startsWith('0Q0')) {
                // Fetch the document name using ContentDocument
                ContentDocument doc = [SELECT Title FROM ContentDocument WHERE Id = :cdl.ContentDocumentId LIMIT 1];
                quoteFileMap.put(cdl.LinkedEntityId, doc.Title);
            }
        }

        // Step 2: Query existing tasks on those Quote records
        if (!quoteFileMap.isEmpty()) {
            List<Task> existingTasks = [SELECT Id, Subject, WhatId, Status 
                                        FROM Task 
                                        WHERE WhatId IN :quoteFileMap.keySet()
                                        AND Status != 'Completed'];

            for (Task t : existingTasks) {
                String uploadedFileName = quoteFileMap.get(t.WhatId); // Get document name for that Quote
                if (uploadedFileName != null && t.Subject.toLowerCase().contains(uploadedFileName.toLowerCase())) {
                    t.Status = 'Completed'; // Close the matched task
                    tasksToUpdate.add(t);
                }
            }

            // Update the matched tasks
            if (!tasksToUpdate.isEmpty()) {
                update tasksToUpdate;
            }
        }
    }
}