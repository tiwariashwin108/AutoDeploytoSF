@isTest
public class CalculateBMITest 
{
@isTest
    public static void BMITest()
    {
        CalculateBMI CB = new CalculateBMI();
        decimal D = CB.BMI (55,1.7);
        System.assertEquals(19.0311418685121107266435986159170 , D, 'Both values are not equal');
    }
    
    @isTest
    public static void PaceTest()
    {
        //CalculateBMI CB = new CalculateBMI();
        integer I = CalculateBMI.Pace(10, 60);
        System.assertEquals(10,I,'Both values are not equal');
    }
}