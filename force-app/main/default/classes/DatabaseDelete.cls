public class DatabaseDelete
{
Public static void method()
{
    List<Lead> A = [Select id, name from Lead where name like :'First name Created through Batch Apex %'];
    Database.deleteResult [] Dr = Database.delete (A, false);
    For (Database.deleteResult D : Dr)
    {
        If(D.IsSuccess())
        {
System.debug(D.getId());
        }
        Else
        {
            For(Database.Error D1 : D.GetErrors())
            {
                System.debug(D1.getmessage() + D1.getstatuscode() + D1.getfields());
            }
        }
    }
}
}