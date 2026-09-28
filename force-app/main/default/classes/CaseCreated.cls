public class CaseCreated 
{
Public static void method (List<case>L)
{
    If (L!=Null)
    {
        List<Case>C = new list<Case>();
        For (Case L1:L)
        {
            If(L1.Origin == 'email')
            {
                L1.Status = 'New';
                L1.Priority = 'Medium';
                
            }
        }
       
        
    }
}
}