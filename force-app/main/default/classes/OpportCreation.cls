public class OpportCreation 
{
Public static void method(List<Opportunity>opp)
{
    List<Id> A = new List<Id>();
    If (Opp!=Null)
    {
        For (Opportunity Op : opp)
        {
            If(Op.AccountId != NUll)   
            {
                A.add(Op.AccountId);
            }
        }
    }
    List<Account> A1 = new list<Account>();
    if(A!=Null)
    {
        A1 = [Select name, LatestOppAmount__c ,id from account where id IN :A];
    }
        For (Account A3:A1)
        {
            For (Opportunity Op1 : opp)
            If(op1.AccountId!=Null && op1.AccountId == A3.id)
            {
               A3.LatestOppAmount__c  = Op1.Amount; 
            }
        }
    Update A1;
    }
    
}