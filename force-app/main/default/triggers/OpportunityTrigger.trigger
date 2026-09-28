Trigger OpportunityTrigger on Opportunity (after insert, after update)
{

Map<Id,Decimal> accountToLatestOpportunityAmountMap = new Map<Id, Decimal> ();

for (Opportunity opp : Trigger.new)
{
    
if (opp.AccountId != null && Opp.IsDeleted == false) 
{
accountToLatestOpportunityAmountMap.put(opp.AccountId, opp.Amount);
    
}
}
    
List<account> accountsToUpdate = [Select id, LatestOppAmount__c,(SELECT Id, Amount,CreatedDate FROM Opportunities ORDER BY CreatedDate DESC LIMIT 1)from account];

for (Account acc : accountsToUpdate) 
{
    if(!acc.Opportunities.isempty())
    {
        
    acc.LatestOppAmount__c = acc.Opportunities[0].Amount;
    }
}
    
// Perform the update operation for all affected Accounts
if (!accountstoUpdate.isEmpty ())
{
update accountsToUpdate;
}
    }