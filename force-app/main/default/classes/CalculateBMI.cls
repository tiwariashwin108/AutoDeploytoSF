public class CalculateBMI 
{
public decimal BMI(decimal weight ,decimal height)
{
    decimal BodyMass = (weight)/(height*height);
    return BodyMass;
}
    public static integer Pace(integer Km, integer minutes)
    {
        integer Hr = minutes/60;
        integer Pacecal = (Km)/(Hr);
        return Pacecal;
    }
}