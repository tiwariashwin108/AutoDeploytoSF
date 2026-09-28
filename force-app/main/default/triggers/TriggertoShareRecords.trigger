trigger TriggertoShareRecords on Account (After insert) 
{
If(trigger.isAfter && Trigger.isInsert)
{
    SharingOfAccountRecords.SharingAccountRecords(Trigger.new);
}
    
}