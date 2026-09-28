trigger UpdateLeadRating on Lead (before insert) 
{
if(Trigger.isBefore && Trigger.IsInsert)
{
    LeadCreated.method(Trigger.new);
}
}