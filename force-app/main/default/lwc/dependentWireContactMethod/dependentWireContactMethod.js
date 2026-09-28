import { LightningElement,api,wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';
import CONTACT_NAME from '@salesforce/schema/Contact.Name';
import getAllContactTasks from '@salesforce/apex/dependentContactWireMethod.getContactTasks';

export default class DependentWireContactMethod extends LightningElement
{
    @api recordId;
    conName;
    conErrorMessage;
    fields = [CONTACT_NAME];
    taskList;
    taskErrorMessage;



    @wire(getRecord, {recordId: '$recordId', fields:'$fields'}) 
    conVar({ data, error })
    {
        if (data)
        {
            console.log('Ashwin' +data);
            this.conName = data.fields.Name.value;

        }
        else if (error)
        {
            this.conErrorMessage = error.body.message;
        }
    }

    @wire(getAllContactTasks, { conRecordId : '$recordId' }) 
    taskVar({ data, error })
    {
        if (data)
        {
            this.taskList = data;

        }
        else if (error)
        {
             this.taskErrorMessage = error.body.message;
        }
    }
}