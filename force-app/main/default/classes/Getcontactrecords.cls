public class Getcontactrecords
{
Public  void Getacc()
{
    list<Account> Acc = [Select id , name , industry from account where industry = 'Banking' ];
    system.debug(Acc);
  If (Acc!=Null)
    {
         Set<id> S = new set<id>();
        For (Account A : acc)
        {

        S.add (A.id);
        }
        
        List<Contact> Con = new list<contact>();
        Con = [Select id, lastname, firstname, accountid from contact where accountid Not IN :S];
        For (Contact C:Con){
            system.debug(c);}
       // for (Contact C: [Select id, lastname, firstname, accountid from contact where accountid IN Acc])
        
     //  List<Contact> Con = new list<contact>();
     //  Con = [Select id, lastname, firstname, accountid from contact where accountid = :A.id];
            
           
        } } 
}