trigger TriggertoShareCustomRecords on Computer__c (After insert)
{
If (Trigger.isafter && Trigger.IsInsert)
{
    SharingCustomRecords.ShareComputerRecords(Trigger.new);
}
}