public class Twilio 
{
  public  String V1 = 'Ashwni';
    public static String V = 'Ashwn';  ///////  public  String V = 'Ashwn'; No static 
   public static Void Method () ////////////  public static Void Method ()
    {                           /////////// {       Twilio Tw= new Twilio(); => Create a obj     System.debug(Tw.V);       }
        System.debug(V);
    }
    public static Void method1()
        
    {
        Method ();
    }
   Class Twilio1 
    {
       public Void Method2 ()
         {
           //  Twilio T = new Twilio(); ==> The variable V is already decalred as static
             system.debug (Twilio.V);
             Twilio T = new Twilio();
              system.debug (T.V1);
         }
        
    } 
    
}