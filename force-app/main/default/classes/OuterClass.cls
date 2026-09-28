public class OuterClass 
{
    public OuterClass ()
    {
        System.debug('Blank');
    }
     public OuterClass (Integer i)
     { this();
          System.debug('integer' +i);
        
     }
    public OuterClass (String s)
     { This(2);
          System.debug('String' +s);
        
     }
}