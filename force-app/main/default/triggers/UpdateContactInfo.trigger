trigger UpdateContactInfo on Account (After Update) 
{
   
    
    List<contact> L = [Select name , MailingStreet,MailingCity, MailingCountry,accountid from contact where accountid = :Trigger.newmap.keyset() ];
    
    If(L!=Null)
    {
        For (contact C:L)
        {
            C.MailingStreet = Trigger.newmap.get(C.accountid).BillingStreet; // 
                c.MailingCity = Trigger.newmap.get(C.accountid).BillingCity;
                c.MailingCountry = Trigger.newmap.get(C.accountid).BillingCountry;
        }
        Update L;
    }
    
}