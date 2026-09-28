public class caseCreationUpdate 
{
public static void method (List<Case>C)
{
    List<id> A= new list<id>();
     
    if(C!=Null)
    {
        
        For (Case C1:C)
        {
            if(C1.AccountId!=Null)
            {
                A.add(C1.AccountId);
                            }
        }      
    }
    List<Account> A1 = new list<account>();  // [Select id , Latest_Case_Number__c from account where id =:A];
    If(A!= Null)
    {
        A1 = [Select id , Latest_Case_Number__c from account where id =:A];
    }
    For (Case C2:C)
    {
        If(C2.AccountId!=Null)
        {
            For (Account A2:A1)
            {
                If(A2.id == C2.AccountId)
                {
                    A2.Latest_Case_Number__c = C2.CaseNumber;
                }
            }
        }
    }
    
    If(A1!=Null)
    {
        Update A1;
    }
}
}