public class AccountTrigger 
{
Public static void method (List<Account>A)
{
    if(A!=Null)
    {
        for(Account A1:A)
        {
            If(A1.Con__c == True)
            {
                Contact C = new contact();
                C.lastname = 'Checkbox';
                C.AccountId = A1.Id;
                Insert c;
            }
            If(A1.opp__c == True && A1.Active__c == 'Yes' )
            {
                Opportunity op = new Opportunity ();
                Op.name = 'Checkbox';
                Op.AccountId = A1.Id;
                Op.Amount = 123;
                op.CloseDate = date.today().addmonths(1);
                Op.StageName = 'Informal Assistance';
                Insert Op;
            }
        }
    }
}
}