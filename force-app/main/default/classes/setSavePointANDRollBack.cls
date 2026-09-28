public class setSavePointANDRollBack 
{

    public static void method()
    {
       SavePoint sp = Database.setSavePoint();
        
        try
        {
            
            Account a = new Account (name = 'Ashwin');
            insert a;
            System.debug(' Account inserted ✅  ' +a.id);
        
        contact c = new contact();
        c.accountId = a.id;
        insert c;
            
        }
        
        Catch (exception e)
        {
            database.rollBack(sp);
        }
        
     }
    
}