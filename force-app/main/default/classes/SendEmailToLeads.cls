public class SendEmailToLeads 
{
Public static void Method()
{
    List<Lead> L = new list<Lead>();
    
    Lead L1 = new Lead();
    L1.LastName  = 'Tiwari Lead';
    L1.FirstName = 'Ashwin Lead';
    L1.Company = 'Sent Through Apex Programing';
    L1.Email = 'manthan.godha@salesforce.com';
    L1.industry = 'Agriculture ';
    
    L.add (L1);
    
     Lead L2 = new Lead();
    L2.LastName  = 'Tiwari Lead';
    L2.FirstName = 'Ashwin Lead';
    L2.Company = 'Sent Through Apex Programing';
    L2.Email = 'tiwariashwin108@gmail.com';
     L2.industry = 'Agriculture ';
    
     L.add (L2);
    
    If(L!=Null)
    {
        Insert L;
        MessageLeads.MessageToLeads (L);
    }
    
}
}