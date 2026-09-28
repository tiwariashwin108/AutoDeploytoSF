public class SharingCustomRecords 
{
Public static void ShareComputerRecords (List<Computer__c > C)
{
    If(C!=Null)
    {
        List<Computer__Share> ShareRecords = New  List<Computer__Share>();
        For(Computer__c Comp: C)
        {
            If(Comp.Share_this_Record_with__c!=Null)
            {
                Computer__Share Cs = new Computer__Share();
                Cs.ParentId = Comp.id;
                    cs.RowCause = 'manual';
                    Cs.AccessLevel= 'Edit';
                Cs.UserOrGroupId = Comp.Share_this_Record_with__c;
                ShareRecords.add(Cs);  
                
            }
        }
         If(ShareRecords!=Null)
       Insert ShareRecords;
    }
}
}