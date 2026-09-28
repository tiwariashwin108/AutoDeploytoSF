public class AccountMethodsController 
{
    string s = 'hello';
public static list<Account> Acc(List<Account>accToInsert)
{
    insert accToInsert;
    Return accToInsert;
}
    public static Account SingleAcc(Account SingleAccToInsert)
    {
        insert SingleAccToInsert;
        Return SingleAccToInsert;
    }
    public static list<Account> GetAcc()
    {
        List<Account> GetAccounts = [Select name from account];
        Return GetAccounts;
    }
    public static void PrintAllAccount()
    {
        list<Account> PrintAccounts = GetAcc();
        For (Account A: PrintAccounts)
        {
            System.debug('Account Name :' + A.name );
        }
    }
    public static integer sizeofAccountList()
    {
        Return GetAcc().size();
        
    }
}