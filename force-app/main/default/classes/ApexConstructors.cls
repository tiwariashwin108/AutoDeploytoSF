public class ApexConstructors 
{
    String Acc;
    Static Integer I;
    Public ApexConstructors(String S)
    {
        This.Acc = S;
    }
    
    Public ApexConstructors(Integer Name)
    {
       I = Name; // Integer I is a static global var and cannot be accessed from constructor using "THIS" hence assign it normally.
    }
    
    Public ApexConstructors(String S, Integer Name)
    {
        This.Acc = S; // ACC is Non-static global var and can be assigned using "THIS" keyword since Constructors are instance related and non-static are also instance related.
       I = Name;
    }
   

    Public ApexConstructors (Integer i1, String S )
    {
        This.Acc = S;
        I= i1;
    }
    Public Static void method1(Integer I2,string s2) //Static method to access Non-static global var & static global var
    {
         I = I2;
        ApexConstructors Aj = new ApexConstructors(s2, I2);
        System.debug (I + S2);
        
    }
    Public void method2(Integer I2,string s2) // Non-Static method to access Non-static global var & static global var
    {
        Acc = s2;
        ApexConstructors Aj1 = new ApexConstructors(s2, I2);
        System.debug (I + S2);
    }
    
}