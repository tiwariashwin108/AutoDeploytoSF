Public class outerrr
{
Private String Greet = 'Hello';
Private void method()
{
System.debug (Greet);
}
 Private class Innerr
{
Private String Greeting ='Hi';
Private integer method1(integer a, integer b)
{
    outerrr o = new outerrr();
System.debug (o.Greet);
System.debug (Greeting);
    integer c = a+b;
    return c;

}
}
Public static void method2 (integer a, integer b)
{
Innerr I = new Innerr();
    System.debug (I.Greeting);
system.debug(I.method1(a,b));
}
}