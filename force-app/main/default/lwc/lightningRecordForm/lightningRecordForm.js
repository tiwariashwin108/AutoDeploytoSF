import { LightningElement, api } from 'lwc';
import ACC_NAME from '@salesforce/schema/Account.Name'
import ACTIVENESS from '@salesforce/schema/Account.Industry'

export default class LightningRecordForm extends LightningElement {
    @api recordId;
    objectApiName = 'Account';
    fields = [ACC_NAME, ACTIVENESS];
}