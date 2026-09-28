Global class TotalAnnualRevenueBatch implements Database.Batchable <SObject>, Database.Stateful
{   
Global Decimal totalAnnualRevenue = 0.0;
Global Database.QueryLocator Start(Database.BatchableContext bContext)
{    
string accountsQuery = 'Select id, name, annualrevenue from Account where annualrevenue != null';
return Database.getQueryLocator(accountsQuery);
}
Global void Execute(Database.BatchableContext bContext, List<Account> accountsToProcess)
{
if(! accountsToProcess.isEmpty())
{
for (Account obj : accountsToProcess)
{
totalAnnualRevenue += obj.AnnualRevenue;
}
}
}
Global void finish(Database.BatchableContext bContext)
{
    
    System.debug (totalAnnualRevenue);
    System.debug(bContext.getJobId());
}
}