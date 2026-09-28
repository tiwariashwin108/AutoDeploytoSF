@isTest
public class CreateContactUponAccCreationTest 
{
static testmethod void Meth()
{
   Account A = new Account();
    A.Name = 'Thrugh trigger';
    A.Phone = '9876543455';
    A.Share_this_Record_with__c = '0055j00000BgU0bAAF';
    A.NumberofLocations__c = 6;
    insert A;
}
}