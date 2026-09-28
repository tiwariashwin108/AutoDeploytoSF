trigger leading on Lead (before insert) 
{
if(Trigger.isbefore && Trigger.isInsert)
{
    for(Lead L: Trigger.new)
    {
        if(L.Industry == Null)
        {
            L.Industry.addError('Please select industry , error from trigger');
        }
    }
}
}