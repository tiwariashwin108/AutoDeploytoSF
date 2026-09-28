public class DataBaseUpdate 
{
Public static void method()
{
    List<Account> A = [Select name,id from account order by name limit 10];
    For (Account A1: A)
    {
        A1.name += 'Updated via Database';
        
    }
    
    Database.SaveResult [] Upd = Database.update(A,false);
    For (Database.SaveResult Ds: Upd)
    {
        if(Ds.IsSuccess())
        {
            System.debug(Ds.GetId());
        }
        Else
        {
            For (Database.error Dr: Ds.getErrors())
            {
                System.debug(Dr.getmessage()+ Dr.getstatuscode()+ Dr.Getfields());
            }

                }
    }
}
}