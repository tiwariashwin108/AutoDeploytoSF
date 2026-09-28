trigger CopyShippingAddressTrigger on Account (before insert, before update) 
{
 if(trigger.isbefore && trigger.isInsert)
    {
        CopyShippingAddress.method(Trigger.new);
    }
    
    If (trigger.isbefore && trigger.isUpdate)
    {
        For (Account A: trigger.new)
        {
           if( A.ShippingStreet == Null && A.ShippingCity == Null && A.ShippingPostalCode == Null)
           {
               CopyShippingAddress.method(Trigger.new);
           }
        }
    }

}