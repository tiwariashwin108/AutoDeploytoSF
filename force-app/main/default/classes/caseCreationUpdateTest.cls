@istest
public class caseCreationUpdateTest 
{
Static Testmethod Void meth()
{
    Case c = new case();
    C.AccountId = '001J400000PpM3UIAV';
    C.Origin ='Phone';
    Insert c;
    
    Account A= [Select name,id ,Latest_Case_Number__c from account where id =:C.AccountId];
    
    System.assertequals(C.CaseNumber, 'A.Latest_Case_Number__c');
}
}