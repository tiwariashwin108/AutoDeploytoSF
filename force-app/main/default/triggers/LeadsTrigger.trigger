trigger LeadsTrigger on Lead (before insert, before update , after insert)
{
    switch on Trigger.operationType 
    {
        When BEFORE_INSERT 
        {
            for (Lead L: Trigger.new)
            {
                if (string.isblank(L.LeadSource))
                {
                    L.LeadSource = 'Other';
                }
                
                if(string.isblank(L.Industry ))
                {
                    L.Industry.addError('Industry cannot be blank , please select a industry - Error From a Trigger');
                }
            }
        }
        
        When BEFORE_UPDATE 
        {
            For(Lead L: Trigger.new)
            {
                If ((L.Status == 'Closed - Not Converted' || L.Status == 'Closed - Converted') && Trigger.oldMap.get(L.Id).status =='Open - Not Contacted')
                {
                    L.Status.addError ('Status cannot be updated directly from Working to Closed');
                }
            }
        }
        
        When AFTER_INSERT 
        {
            List<Task> L1 = new list<Task>();
            For(Lead L: Trigger.new)
            {
                Task T = new Task(Subject = 'Follow-up Task created via a Trigger' , Whoid = L.Id);
                L1.add(T);
                
            }
            Insert L1;
        }
    }
    
}