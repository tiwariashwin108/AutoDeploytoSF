trigger caseCreationUpdateTrigger on Case (After insert) 
{
If(Trigger.IsAfter && Trigger.IsInsert)
{
    caseCreationUpdate.method(Trigger.new);
}
}