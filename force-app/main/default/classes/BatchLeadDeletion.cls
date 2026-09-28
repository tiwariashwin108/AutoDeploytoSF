public class BatchLeadDeletion implements Database.Batchable<sobject>
{
    List<id> Le = New List<id>();
public database.queryLocator start (database.batchableContext Bc)
{
    Return Database.getquerylocator ([Select id,name,Status  from lead where Status = 'Open - Not Contacted']);
    
}
    public Void execute (database.batchableContext Bc , List<lead> L)
    {
        For (Lead L1: L){
        Le.add (L1.id);
    }
        Delete L;
        
    }
    public Void Finish (database.batchableContext Bc)
    {
    if (!Le.isEmpty()) 
    {
            System.debug('Deleted Lead IDs: ' + Le);
        } 
        else 
        {
            System.debug('No Leads were deleted.');
        }
}
}