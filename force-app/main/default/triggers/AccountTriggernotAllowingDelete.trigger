trigger AccountTriggernotAllowingDelete on Account (before delete) 
{
if(trigger.isbefore && Trigger.isdelete)
    
{
    For (Account A: Trigger.old)
    {
        If(A.Active__c == 'Yes')
        {
         A.Active__c.adderror('Active account cannot be deleted');
           
        }
        
    }
}
}