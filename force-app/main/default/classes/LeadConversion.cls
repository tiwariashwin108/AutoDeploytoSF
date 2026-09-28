public class LeadConversion 
{
Public Static Void method (List<Lead>L)
{
    LeadStatus Ls = [SELECT Id, MasterLabel, ApiName, SortOrder, IsDefault, IsConverted FROM LeadStatus where IsConverted= True];
    List<Database.Leadconvert> Dl = new List<Database.Leadconvert>();
    
    For(Lead L2: L)
    {
        If (L2.Status == 'Closed - Converted' && L2.IsConverted == False)
        {
         Database.Leadconvert D = new Database.Leadconvert();
            D.SetLeadId(L2.id);
            D.setSendNotificationEmail(True);
            D.SetDonotCreateopportunity(False);
            D.setconvertedStatus(Ls.MasterLabel);
            Dl.add(D);
            
        }
        If(!Dl.isEmpty())
        {
            Database.LeadConvertResult [] DlC = Database.ConvertLead (Dl, false);
        }
    }
}
}