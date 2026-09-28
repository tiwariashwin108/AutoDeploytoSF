public class SOQLQueries 
{
    Public Static void method()
    {
        //Standard Objects

/*List<Account> A =[select name , CHekcing__c,(Select name from Contacts ) from Account];

For(Account A1: A)
{
    System.debug('Account name is ' +A1.name);
    
    For (Contact C: A1.Contacts)
    {
        System.debug('Contact name is ' +C.name);
    }
        
}

List<Contact> ConList = [Select name, Account.name from Contact];

 For (Contact C1: ConList)
 {
      System.debug('Contact name is ' +C1.name+ ' its Account is ' +C1.Account.name);
     
 }

// Custom Objects & Standard Objects

List < Computer__c > C = [Select name, Brand__c,Accountss__r.name from Computer__c];

For (Computer__c C1: C)
{
    System.debug('Computer name is '+C1.name+ ' and its related Account is '+C1.Accountss__r.name);
}

List <Account> A =[Select name,CHekcing__c, (Select name,Brand__c from Computers__r) from Account];

For(Account A1: A)
{
    System.debug('Account name is ' +A1.name);
    For (Computer__c Com: A1.Computers__r)
    {
        System.debug ('Related Computers are ' +Com.name);
    }
}

// Custom-Custom Object

List<Verticals__c > V = [Select name, Vertical__r.name from Verticals__c];

For(Verticals__c V1: V)
{
    System.debug(V1.name + ' ' +V1.Vertical__r.name);
}

List <Vertical__c > V2 = [Select name, Opportunity__c,(Select name from Verticalss__r) from Vertical__c ];

For (Vertical__c V3: V2)
{
    System.debug(V3.name + ' ' + V3.Opportunity__c);
    For(Verticals__c V4:V3.Verticalss__r)
    {
         System.debug(V4.name);
    }
}



List<Account> accts = 
[SELECT Name,
    (SELECT LastName,
        (SELECT AssetLevel,
            (SELECT Description,
                (SELECT LineItemNumber FROM WorkOrderLineItems)    
            FROM WorkOrders)    
        FROM Assets)    
    FROM Contacts)    
FROM Account];


List<WorkOrderLineItem > WOLI = [Select Status, WorkOrder.Priority , WorkOrder.Asset.Name ,WorkOrder.Asset.Contact.name,WorkOrder.Asset.Contact.Account.name from WorkOrderLineItem ];

For (WorkOrderLineItem  W:WOLI )
{
    System.debug(W);
}

List<Account> Acc = [Select name , Number_of_opp_won__c  from Account order by Number_of_opp_won__c  Nulls last];

For (Account A:Acc)
{
    System.debug(A.name+ ' '+A.Number_of_opp_won__c );
}*/


List<Account> Acc = [
    SELECT Name, Number_of_opp_won__c
    FROM Account
    ORDER BY Number_of_opp_won__c NULLS LAST
];

for (Account A : Acc) {
    System.debug(A.Name + ' ' + A.Number_of_opp_won__c);
}

List <Opportunity> opp = [Select name , Amount from Opportunity order by Amount Nulls Last ];
    
for (Opportunity A : opp)  
{
    System.debug(A.Name + ' ' + A.Amount);
}


AggregateResult A = [Select count(Amount) from Opportunity];
System.debug(A);

AggregateResult A1 = [Select count_distinct(Amount) from Opportunity];
System.debug(A1);

AggregateResult A2 = [Select count(Amount) , max(Amount), min (Amount), sum(Amount) ,count_distinct(Amount) from Opportunity];
System.debug((decimal)A2.get('expr1'));

AggregateResult A3 = [Select count(id) from Opportunity];
System.debug(A3);

integer A4 = [Select count() from Opportunity];
System.debug(A4);




    }

}