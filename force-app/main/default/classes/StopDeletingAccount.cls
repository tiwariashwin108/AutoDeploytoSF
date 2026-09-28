public class StopDeletingAccount {

    // Method to prevent the deletion of Accounts with related Contacts
    public static void preventAccountDeletion(List<Account> accountsToDelete) {
        if (accountsToDelete != null && !accountsToDelete.isEmpty()) {
            // Query to find Accounts that have related Contacts
            List<Account> accountsWithContacts = [
                SELECT Id
                FROM Account
                WHERE Id IN :accountsToDelete
                AND Id IN (SELECT AccountId FROM Contact)
            ];

            // Loop through the found Accounts and prevent deletion
            for (Account accountWithContact : accountsWithContacts) {
                // Loop through the accountsToDelete and apply error to matching ones
                for (Account accountToDelete : accountsToDelete) {
                    if (accountToDelete.Id == accountWithContact.Id) {
                        // Prevent deletion by adding error
                        accountToDelete.addError('Cannot delete account with related contacts.');
                    }
                }
            }
        }
    }
}