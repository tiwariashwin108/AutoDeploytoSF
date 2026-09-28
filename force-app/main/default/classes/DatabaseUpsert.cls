public class DatabaseUpsert 
{
Public static void method()
{
    List<Case> Upserting = new List<Case>();
    List<Case> C = [Select CaseNumber ,id , status from case where status ='New'];
    For(Case Cs: c )
    {
        Cs.status = 'Working';
        Upserting.add(Cs);
    }
    For (integer i = 1 ; I<10; I ++)
    {
        Case Cas = new case();
        Cas.Status = 'New';
        Cas.Origin ='Phone';
        Upserting.add(Cas);
    }
    Database.UpsertResult [] Dup = Database.Upsert (Upserting, false);
    For (Database.UpsertResult D:Dup )
    {
        If(D.IsSuccess())
        {
            System.debug(D.GetId());
        }
        Else
        {
            For(Database.Error D1 : D.getErrors())
            {
                 System.debug(D1.Getmessage());
            }
        }
    }
    
    
}
}