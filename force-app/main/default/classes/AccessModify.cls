public class AccessModify 
{
    private string H = 'Outer Private Variable';
    
    private class innerClass
    {
        private string H1 = 'Inner Private Variable';
        
        private void Innermethod()
        {
            AccessModify A= new AccessModify();
            
            system.debug (A.H);
        }
    }
    
    Public static void OuterMethod()
    {
        innerClass Callinner = new innerClass();
        system.debug(Callinner.H1);
        Callinner.Innermethod();
        
    }

}