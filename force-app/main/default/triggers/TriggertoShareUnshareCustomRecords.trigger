trigger TriggertoShareUnshareCustomRecords on Computer__c (After insert, After update) 
{
If(Trigger.isafter && Trigger.isinsert)
{
    List<Computer__C> C = trigger.new;
        If(C!=Null)
        {
            List<Computer__Share> L = new List<Computer__Share>();
            For (Computer__C C1: C)
            {
                If(C1.Share_this_Record_with__c!=Null)
                {
                    Computer__Share Csr = new Computer__Share();
                    Csr.ParentId = C1.id;
                        Csr.AccessLevel = 'Edit';
                        Csr.UserOrGroupId = C1.Share_this_Record_with__c;
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
   If(Trigger.isafter && Trigger.isupdate)
     {
         List<Computer__C> C2 = trigger.new;
         If(C2!=Null)
        {
            List<Computer__Share> L2 = new List<Computer__Share>();
            Set<Id> S = new Set<Id>();
            For (Computer__C C3: C2)
            {
                If(C3.Share_this_Record_with__c!=Null && Trigger.oldMap.get(C3.id).Share_this_Record_with__c != Trigger.newMap.get(C3.id).Share_this_Record_with__c )
                {
                    S.add(Trigger.oldMap.get(C3.id).Share_this_Record_with__c);
                    Computer__Share Csr1 = new Computer__Share();
                     Csr1.ParentId = C3.id;
                        Csr1.AccessLevel = 'Edit';
                        Csr1.UserOrGroupId = C3.Share_this_Record_with__c;
                        Csr1.RowCause = 'Manual';
                    L2.add(Csr1);   
     }
    }
            If(S!=Null)
            {
                delete[SELECT Id, ParentId, UserOrGroupId FROM Computer__Share where UserOrGroupId IN : S and ParentId IN : Trigger.newMap.keyset() ];
            }
            If(L2!=Null)
            {
                Insert L2; 
            }       
        }
     }
    
}