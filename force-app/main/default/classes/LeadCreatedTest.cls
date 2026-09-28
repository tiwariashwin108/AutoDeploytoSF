@isTest
public class LeadCreatedTest 
{
static Testmethod void testing()
{
    Lead Le = new lead();
    le.lastname= 'Test through triggers';
    le.LeadSource = 'Web';
    Insert le;
    
    
   Lead L = [select lastname , leadsource, rating,id from lead where id =:le.id];
   System.assertEquals('Web',l.LeadSource);
    System.assertEquals('Cold',l.Rating);
    
}
}