trigger AccountCreationTrigger on Account (before insert)
{
If(Trigger.isBefore & Trigger.isInsert)
{
    AccountCreatin.method(Trigger.new);
}
}