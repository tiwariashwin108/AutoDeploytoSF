trigger AccountRealtedCOntcta on Account (after update) 
{
if(trigger.isafter && trigger.isupdate)
{
    AccountRealtedContacts.method(trigger.new);
}
}