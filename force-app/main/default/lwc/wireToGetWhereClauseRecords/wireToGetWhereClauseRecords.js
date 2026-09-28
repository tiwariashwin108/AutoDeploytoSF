import { LightningElement, wire } from 'lwc';
import getTaskWithCall from '@salesforce/apex/getTaskWithSubject.getTaskWithCall'

export default class WireToGetWhereClauseRecords extends LightningElement {
    taskList;
    errorMessage;
    subject = 'Call';

    @wire(getTaskWithCall , {TaskSub : '$subject'})  // key:value pair, use $ sign for reactivity.
    fetchTaskWithCallSub({ data, error })
    {
        if (data)
        {
            console.log('Data Reached');
            this.taskList = data;
        }

        else if (error)
        {
            this.errorMessage = error.body.message;
        }
    }
}