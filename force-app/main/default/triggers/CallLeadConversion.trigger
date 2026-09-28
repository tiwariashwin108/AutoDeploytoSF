trigger CallLeadConversion on Lead (After Update) 
{
If (Trigger.isAfter && Trigger.isUpdate)
{
    LeadConversion.method(trigger.new);
}
}