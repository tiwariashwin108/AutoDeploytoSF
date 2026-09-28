import { LightningElement, wire,api } from 'lwc';
import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import { getRecord } from 'lightning/uiRecordApi';
import getTasks from '@salesforce/apex/dependentWireApexClass.getTasks';
 

export default class DependentMultipleWireMethods extends LightningElement
{

    @api recordId;
    accountName;
    accError;
    fields = [ACCOUNT_NAME];
    taskList;
    taskError;

    @wire(getRecord, { recordId: '$recordId', fields: '$fields' })
    fetchedAccountName({ data, error})
    {
        if (data)
        {
            //console.log('Ashwin' +JSON.stringify(data));
            this.accountName = data.fields.Name.value;

        }
        else if (error)
        {
            this.accError= error.body.message;
        }
    }
        
    @wire(getTasks, { AccName: '$accountName' })
    fetchedTaskRecords({ data, error })
    {
        if (data)
        {
            this.taskList = data;
        }

        else if (error)
        {
            this.taskError = error.body.message;
        }
    }
        
}