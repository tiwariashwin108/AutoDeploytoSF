trigger StopDeletingAccount on Account (before delete) {
    if (Trigger.isBefore && Trigger.isDelete) {
        StopDeletingAccount.preventAccountDeletion(Trigger.old);
    }
}