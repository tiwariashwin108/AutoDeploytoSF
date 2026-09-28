import { LightningElement, api, wire } from 'lwc';
import { getRecord, getFieldValue } from 'lightning/uiRecordApi';
import NAME_FIELD from '@salesforce/schema/Account.Name'

export default class GetRecordAndgetField extends LightningElement {
    @api recordId;
    fields = [NAME_FIELD];

    @wire(getRecord, { recordId: '$recordId', fields: '$fields' }) accVar;
    
    get accountName()
    {
        return getFieldValue(this.accVar.data, NAME_FIELD);
    }


}