trigger AccountTriggerT on Account (After insert, after update) 
{
if(Trigger.isAfter && (Trigger.isinsert || Trigger.isupdate))
{
    AccountTrigger.method(Trigger.new);
}
}