public class queueableApexClass implements Queueable
{
    public list<Case> A;
    
    Public  queueableApexClass (list<Case>A1) //use a constructor
    {
        this.A = A1;
        
    }

    public void execute (QueueableContext C)
    {
        for(Case A2 : A)
        {
            A2.Origin = 'Web'; 
        }
        update A;
        
    }
    
}