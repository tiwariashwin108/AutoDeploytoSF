@IsTest
public class AccountCreatinTest
{
Static TestMethod Void Meth()
{
    Account A = New Account();
    A.Name = 'Testing';
    A.Industry = 'Media';
    A.Share_this_Record_with__c = '0055j00000BgU0bAAF';
    Insert A;
    
    Account A1 = [Select id , name , Industry, Rating from Account where id =:A.id];
    System.assertequals ('Hot' , A1.Rating);
}
}