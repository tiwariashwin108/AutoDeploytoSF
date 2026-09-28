@istest
public class CaseCreatedTest 
{
static testmethod void TestcaseCreated()
{
    Case c = new case ();
    C.origin = 'Email';
    Insert c;
    
    System.assertequals ('New', C.Status);
     System.assertequals ('Medium', C.priority);
}
}