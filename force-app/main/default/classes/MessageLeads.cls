public class MessageLeads 
{
Public static void MessageToLeads(List<Lead> LRecords)
{
    If(LRecords!=Null)
    {
        List<Messaging.SingleEmailMessage> SM = new List<Messaging.SingleEmailMessage>();
        
        For (Lead L:LRecords)
        {
            Messaging.SingleEmailMessage SEM = new Messaging.SingleEmailMessage();
            String[] toAddress = new string[]{L.email , 'hojha@salesforce.com'};
                SEM.SettoAddresses (toAddress);
            String[] CCAddress = new string[]{ 'Ashwin.tiwari@salesforce.com'};
                 SEM.SetCCAddresses (CCAddress);
                String[] bccAddress = new string[]{ 'manthan.godha@salesforce.com'};
                     SEM.SetBCCAddresses (bccAddress);
            
            SEM.SetReplyTo ('Ashwin.tiwari0709@gmail.com');
            SEM.SetSenderDisplayName('Apple Microsoft Company');
            SEM.SetSubject(L.Company);
            
            //SEM.SetHTMLBody
                
                String Content = 'Hi ' +L.FirstName + +L.LastName + ', I hope you are doing good , Your lead has been created successfully with the following details: <br/><br/>' +                       
                            ' First Name: '  + L.FirstName +
                            '<br/> Last Name: '  +L.LastName + 
                            '<br/> Company: '  +L.Company+
                            '<br/> Email: '  +L.Email ; 
                    
                           SEM.SetHTMLBody (Content);
                           
                  List<Messaging.EmailFileAttachment> Attching = new List<Messaging.EmailFileAttachment> ();
                           Messaging.EmailFileAttachment Att= New Messaging.EmailFileAttachment();
                           Att.SetContentType ('Application/ PDF');
                           Att.Setfilename (L.FirstName + ' ' +L.LastName);
                           Att.body = Blob.topdf  (Content);                          

    
                           
                        Attching.add(Att);
            SEM.SetFileAttachments(Attching);
                           
SM.add(SEM);
            
            If(SM!=Null)
            {
                Messaging.SendEmailResult[] Result = Messaging.SendEmail(SM);
            }
               
            
        }
    }
}
    
}