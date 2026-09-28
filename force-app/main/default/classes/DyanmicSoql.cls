public class DyanmicSoql 
{
Public static void method(String Searchtext)
{
    If (Searchtext!=Null && Searchtext!= '')
    {
        String s = 'select name , company, id,email from lead';
       if(pattern.matches ('^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$',Searchtext))
       {
           String s1 = s + ' where email  = :Searchtext';
           list<lead> L = database.query(s1);
           System.debug(L);
       }
        Else 
        {
            System.debug('No results found with this email');
        }
    }
}
    
    
}