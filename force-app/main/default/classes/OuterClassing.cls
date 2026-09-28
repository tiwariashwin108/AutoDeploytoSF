public class OuterClassing
{
    Private string S = 'Hi';
    private void method()
    {
        system.debug(S);
    }
    Public void method1()
    {
        method();
    }

    
private Class InnerClassing
{
    Private string s1 = 'Hello';
    private void method()
    {
        OuterClassing o = new OuterClassing();
        system.debug(s1);
        system.debug(o.S);
    }
}    
   Public void method2()
   {
       InnerClassing Inn = new InnerClassing();
       Inn.method();
   }
    
}