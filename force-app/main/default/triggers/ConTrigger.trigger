trigger ConTrigger on Contact (after insert, after update) 
{
    switch on Trigger.operationType {
        
        When AFTER_INSERT {
      List<id> AccIds = new list<id>();
for (Contact C: Trigger.new)
{
    if (C.Active__c == true && C.AccountId != Null)
    {
        AccIds.add (C.accountid);
    }
}
            list<AggregateResult> Agg = [Select Accountid, count(id) from contact where Accountid IN : AccIds group by Accountid];
        }
}
}