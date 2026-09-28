public class ShareandUnshareCustomRecords 
{
    Public Static Void ShareAndUnshare (List<Computer__C>Co)
    {
        If(Co!=Null)
        {
            List<Computer__Share> L = new List<Computer__Share>();
            For (Computer__C C: Co)
            {
                If(C.Share_this_Record_with__c!=Null)
                {
                    Computer__Share Csr = new Computer__Share();
                    Csr.ParentId = C.id;
                        Csr.AccessLevel = 'Edit';
                        Csr.UserOrGroupId = C.Share_this_Record_with__c;
                        Csr.RowCause = 'Manual';
                    L.add(Csr);
                        
                }
            }
            If(L!=Null)
            {
                Insert L;
            }
            
            
        }
    }
     Public Static Void SharingAndUnsharing (List<Computer__C>Com)
     {
         If(Com!=Null)
        {
            List<Computer__Share> L1 = new List<Computer__Share>();
            For (Computer__C C1: Com)
            {
                If(C1.Share_this_Record_with__c!=Null)
                {
     }
            }
        }
     }
    
}