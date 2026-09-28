@istest
public class FitnessTest 
{
    @istest
Public static Void BMI ()
{
    Fitness F = new Fitness();
    F.BMI (112.5,1.2);
    System.assertequals (78.125, F.BMI(112.5,1.2));
}
}