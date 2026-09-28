@isTest
public class SharingOfAccountRecordsTest 
{

    @isTest
    static void testSharingAccountRecordsWithExistingUser() 
    {
        // Query for an existing user (You can query based on criteria that fit your org)
        User existingUser = [SELECT Id FROM User WHERE username = 'varsha.sharma@salesforce.coom'];
        
        // Create a test Account record and set the Share_this_Record_with__c field to the existing user's ID
        Account testAccount = new Account(
            Name = 'Test Account', 
            Share_this_Record_with__c = existingUser.Id );// Use existing user's Id

        insert testAccount;
        
        // Now, check the AccountShare records that should have been created by the trigger
        List<AccountShare> accountShares = [SELECT AccountId, UserOrGroupId, OpportunityAccessLevel, AccountAccessLevel, CaseAccessLevel, RowCause 
                                            FROM AccountShare WHERE AccountId = :testAccount.Id and UserOrGroupId = '0055j00000BgU0bAAF'];
        
        // Assert that an AccountShare record was created
        System.assertEquals(1, accountShares.size(), 'Expected one AccountShare record to be created.');
        
        // Assert the details of the AccountShare record
        AccountShare accShare = accountShares[0]; // AccountShare accShare = new AccountShare(); <br/ accShare.Parentid = testAccount.id;
        System.assertEquals(testAccount.Id, accShare.AccountId, 'Account ID in AccountShare should match.');
        System.assertEquals(existingUser.Id, accShare.UserOrGroupId, 'UserOrGroupId in AccountShare should match the existing user.');
        System.assertEquals('Read', accShare.AccountAccessLevel, 'AccountAccessLevel should be "Read".');
        System.assertEquals('Read', accShare.OpportunityAccessLevel, 'OpportunityAccessLevel should be "Read".');
        System.assertEquals('Read', accShare.CaseAccessLevel, 'CaseAccessLevel should be "Read".');
        System.assertEquals('Manual', accShare.RowCause, 'RowCause should be "Manual".');
    }
}