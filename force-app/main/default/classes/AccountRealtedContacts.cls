public class AccountRealtedContacts {
    public static void method(List<Account> A) {
        // Ensure the list of Accounts is not empty
        if (!A.isEmpty()) {
            // Query Accounts and their related Contacts (Bulk query)
            List<Account> A1 = [SELECT Name, Phone, Id, 
                                        (SELECT LastName, HomePhone, AccountId FROM Contacts) 
                                 FROM Account 
                                 WHERE Id IN :A];  // Use IN for multiple Accounts

            // List to hold the Contact records that need to be updated
            List<Contact> contactsToUpdate = new List<Contact>();

            // Iterate over each Account in the list A1
            for (Account A2 : A1) {
                // Ensure the Account has related Contacts
                if (!A2.Contacts.isEmpty()) {
                    // Iterate through each related Contact
                    for (Contact c1 : A2.Contacts) {
                        // Set the Contact's HomePhone to the Account's Phone
                        c1.HomePhone = A2.Phone;
                        // Add the Contact to the update list
                        contactsToUpdate.add(c1);
                    }
                }
            }

            // Update all the modified Contact records if there are any
            if (!contactsToUpdate.isEmpty()) {
                update contactsToUpdate;
            }
        }
    }
}