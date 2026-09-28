trigger ContentDocumentTrigger on ContentDocument (after insert) {
    List<Task> taskList = new List<Task>();

    for (ContentDocument doc : Trigger.new) {
        Task newTask = new Task(
            Subject = 'Review New Document',
            Description = 'A new document has been uploaded. Please review it.',
            Status = 'Not Started',
            Priority = 'Normal',
            //WhatId = doc.Id, // Optional: Associate it with the document
            OwnerId = '0055j0000011LwtAAE' // Assign to the current user
        );
        taskList.add(newTask);
    }

    if (!taskList.isEmpty()) {
        insert taskList;
    }
}