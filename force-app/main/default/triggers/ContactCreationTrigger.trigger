trigger ContactCreationTrigger on Account (after insert) 
{
If (trigger.isafter & trigger.isinsert)
{
    CreateContactUponAccCreation.method(Trigger.new);
}
}