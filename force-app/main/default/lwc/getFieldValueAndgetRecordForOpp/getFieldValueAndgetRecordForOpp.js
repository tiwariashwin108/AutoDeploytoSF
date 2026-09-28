import { LightningElement, api,wire } from 'lwc';
import { getFieldValue, getRecord } from 'lightning/uiRecordApi'
import Opp_name from '@salesforce/schema/Opportunity.Name'
import Opp_Acc_name from '@salesforce/schema/Opportunity.Account.Name'

export default class GetFieldValueAndgetRecordForOpp extends LightningElement {
    @api recordId;
    fields = [Opp_name];

    @wire(getRecord, { recordId: '$recordId', fields: '$fields' }) oppVar;

    get OppName()
    {
        return getFieldValue(this.oppVar.data,Opp_name);
    }

    get AccName()
    {
        return getFieldValue(this.oppVar.data, Opp_Acc_name);
    }

    get errorIfAny() {
        return this.oppVar.error 
            ? JSON.stringify(this.oppVar.error) 
            : '';
    }



}