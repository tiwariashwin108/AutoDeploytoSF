public class SharingOfAccountRecords 
{
Public Static Void SharingAccountRecords(List<Account>L)
{
    
    If(L!=NUll)
    {
        List<AccountShare> sharesToInsert = new List<AccountShare>();
        
        For (Account A : L)
        {
            AccountShare AccShare = new AccountShare();
            
            AccShare.OpportunityAccessLevel ='Read';
                AccShare.AccountAccessLevel  ='Read';
               // AccShare.ContactAccessLevel  ='Read';
                AccShare.CaseAccessLevel  ='Read';
                AccShare.RowCause = 'Manual';
                AccShare.UserOrGroupId =A.Share_this_Record_with__c;
                AccShare.AccountId = A.id;
                
            sharesToInsert.Add(AccShare);
        }
        If(sharesToInsert!=Null)
        {
            Insert sharesToInsert;
        }
        
    }
}
}