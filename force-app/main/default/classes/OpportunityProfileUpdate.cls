public class OpportunityProfileUpdate 
{
public static void updateProfileMethod(List<Opportunity>Opps)
{
    List<Opportunity> Op = new list<Opportunity>();
    For (Opportunity opp: Opps)
    {
        If(opp.amount== Null)
        {
            opp.Profile__c = 'Low';
        }
        else if (opp.amount<1000)
        {
            opp.Profile__c = 'Medium';
        }
         else if (opp.amount>=1000)
         {
             opp.Profile__c = 'High';
         }
        Op.add(opp);
    }
    
    update op;
}
}