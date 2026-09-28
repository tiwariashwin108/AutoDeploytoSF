Global class ScheduleTheBatchApex Implements System.schedulable 
{
Global void Execute (System.schedulableContext S)
{
    ScheduleApexBatch S1 = new ScheduleApexBatch();
    Database.executeBatch(S1 ,15);
}
}