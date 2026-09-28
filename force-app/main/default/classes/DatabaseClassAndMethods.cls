public class DatabaseClassAndMethods 
{
Public static void method()
{
    list<account> a = new list<account>();
    For (Integer i = 1; i<= 200; i++)
    {
        Account A1= New account();
        A1.name= 'DMl' +i;
        a.add(A1);
    }
    database.SaveResult [] SR = database.insert(a, false);
    
    For (database.SaveResult Dr : SR)
    {
        For (Database.error ER: Dr.geterrors())
            {
                System.debug(Er.getmessage() + Er.getfields()+ Er.getstatusCode());
            }
        IF(Dr.isSuccess())
        {
            System.debug('I was succesful' +Dr.getid());
        }
        Else
        {
            System.debug('I failed to insert');
            
            
        }
    }    
}}