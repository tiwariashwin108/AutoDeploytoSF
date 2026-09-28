trigger OpportCreationTrigger on Opportunity (After insert) 
{
if(Trigger.isAfter && Trigger.isInsert)
{
    OpportCreation.method(trigger.new);
}
}