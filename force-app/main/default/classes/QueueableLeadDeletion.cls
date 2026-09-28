public class QueueableLeadDeletion implements Queueable {

    public void execute(QueueableContext qc) {

        List<Lead> leadsToDelete = [
            SELECT Id
            FROM Lead
            
        ];

        if (!leadsToDelete.isEmpty()) {

            List<Id> deletedIds = new List<Id>();

            for (Lead l : leadsToDelete) {
                deletedIds.add(l.Id);
            }

            delete leadsToDelete;

            System.debug('Deleted Lead IDs: ' + deletedIds);
        }
        else {
            System.debug('No Leads found.');
        }
    }
}