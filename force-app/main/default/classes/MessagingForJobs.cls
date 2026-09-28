Public class MessagingForJobs 
{
Public static void SendBatchDetails (AsyncApexJob JobInfo , String JobName)
{
    If(JobInfo != Null)
    {
         List<Messaging.SingleEmailMessage> SM = new List<Messaging.SingleEmailMessage>(); 
        Messaging.SingleEmailMessage SEM = new Messaging.SingleEmailMessage();
            String[] toAddress = new string[]{JobInfo.createdby.email , 'Ashwin.tiwari0709@gmail.com'};
                SEM.SettoAddresses (toAddress);
        SEM.SetSenderDisplayName('Schedule Job');
        SEM.SetSubject(JobInfo.JobItemsProcessed + JobInfo.Status);
        String Body = 'Dear customer please find the below details for the scheduled jobs' +
            'Batch Job Id ....... '+ JobInfo.Id +
            '‹br/> Batch Job Name......: '+ JobName +
            '‹br/> Batch Job Status ..'+ jobInfo.Status +
            '‹br/> Total Number of Batches'+ jobInfo.TotalJobItems +
            '‹br/> Number of Batches Processed.: '+ jobInfo.jobItemsProcessed+
            '‹br/> Number of Batches Failed.........: '+ jobInfo.NumberOfErrors ;
            
            SEM.SetHTMLBody(Body);
        
       SM.add(SEM);
            
            If(SM!=Null)
            {
                Messaging.SendEmailResult[] Result = Messaging.SendEmail(SM);
            }
               
    }
}
}