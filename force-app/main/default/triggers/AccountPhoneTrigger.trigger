trigger AccountPhoneTrigger on Account (before insert, before update) 
{
If (Trigger.isBefore && Trigger.IsInsert)
{
    AccountPhone.method(trigger.new);
}
    If(Trigger.isBefore && Trigger.IsUpdate)
    {
         for (Integer i = 0; i < Trigger.new.size(); i++) {
            Account newAccount = Trigger.new[i];    // New value for Account in the trigger
            Account oldAccount = Trigger.old[i];    // Old value for Account in the trigger
            
        if (newAccount.Phone != oldAccount.Phone) {
                // If Phone field has changed, call the method
                AccountPhone.method(Trigger.new);
         
            
    }
}
    }
}