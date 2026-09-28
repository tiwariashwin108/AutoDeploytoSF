public class AvoidMixedDML implements Database.Batchable<SObject> 
{
    List<Account> L = new list<Account>();
    public Database.QueryLocator start(Database.BatchableContext BC) 
    {
        System.debug('Start method: Fetching records for batch processing...');
        return Database.getQueryLocator([SELECT Name FROM Account limit 1]); // Non-setup object
    }

    public void execute(Database.BatchableContext BC, List<Account> scope) 
    {
        System.debug('Executing batch job: Processing ' + scope.size() + ' records.');
        // DML for non-setup objects (Account)
       
        // Log success or failure for each record
        for (Integer I =1 ; I<=1 ; I++) 
        {
            Account A = new Account();
             A.Name = ' I';
            L.add(A);
        }
        Insert L;

        // Separate DML for setup objects in the finish method
    }

    public void finish(Database.BatchableContext BC) 
    {
        System.debug('Finish method: Starting setup object DML...');
        
        // DML for setup objects (e.g., User)
        User newUser = [Select Name, Lastname, ISactive from User where Lastname ='Sharma' Limit 1];
        newUser.ISactive = false;
        Update newUser;
        
        System.debug('Finish method: Setup object inserted. User ID: ' + newUser.Id);
    }
}