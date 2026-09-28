public class DatabaseUndelete 
{
public static void Method()
{
    List<Account> A = [Select name,id, isdeleted from account where isdeleted= True ALL rows ];
    
    Database.UndeleteResult [] UD= Database.undelete(A,false);
    For (Database.UndeleteResult A1: UD)
    {
        If(A1.IsSuccess())
        {
            System.debug(A1.getid());
        }
        else
        {
            For (Database.error DR: A1.geterrors())
            {
                System.debug(DR.getMessage() );
            }
        }
    }
        
}
}