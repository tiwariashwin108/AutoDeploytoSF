trigger AfterTrigger on Account (after insert) {
    for (Account acc : Trigger.new) 
    {
        //acc.Name = 'New Name';  // ❌ ERROR: Record is read-only in 'after' triggers
      //  update acc;
    }
}