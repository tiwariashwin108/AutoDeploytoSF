trigger UpdateCaseStatus on Case (before insert) 
{
    if(trigger.isbefore && trigger.isInsert)
    {
        CaseCreated.method(Trigger.new);
    }

}