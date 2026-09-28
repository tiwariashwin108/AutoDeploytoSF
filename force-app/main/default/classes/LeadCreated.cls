public class LeadCreated 
{
Public static void method (List<Lead>l)
{
    If(L!=Null)
    {
        for (Lead L1:L)
        {
           If( L1.LeadSource == 'Web')
           {
               L1.Rating = 'Cold';
           }
            Else
            {
               L1.Rating = 'Hot'; 
            }
        }
    }
}
}