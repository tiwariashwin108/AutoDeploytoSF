trigger AccountTrigger on Account (before insert, before update)
{
If(Trigger.isbefore && (Trigger.isInsert || Trigger.isUpdate ))
{
    For (Account A : Trigger.new)
    {
        If(A.Industry =='' || A.Industry == Null )
        {
            A.Industry.addError(' Please enter Industry value');
        }
        /* Else If(A.PersonEmail  =='' || A.PersonEmail == Null )
         {
              A.PersonEmail.addError(' Please enter PersonEmail value');
         }*/
        Else If(A.Active__c   =='' || A.Active__c   == Null )
         {
              A.Active__c .addError(' Please enter Active  value');
         }
        Else if (A.AccountNumber !='' || A.AccountNumber != Null )
         {
              A.Site = A.AccountNumber;
         }
    }
}
    
    
    
}