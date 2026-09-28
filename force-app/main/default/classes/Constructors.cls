public class Constructors 
{
public Constructors()
{
    System.debug('Constructors Called');
}
    public Constructors (String s)
    {
        this();
        System.debug(s);
    }
    public Constructors (integer i)
    {
        this('string called from integer construtor');
        
        System.debug(i);
    }
}