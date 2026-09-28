trigger StopDeletingAccountTrig on Account (before delete) {
//Prevent the deletion of accounts if they have related opportunity.
for (Account a : [SELECT Id FROM Account
                 WHERE Id IN (SELECT AccountId FROM Opportunity) AND
                 Id IN :Trigger.old]){
    //Error
    Trigger.oldMap.get(a.Id).addError(
        'Cannot delete account with related opportunities.');
}
}