import { LightningElement, wire } from 'lwc';
import getOpps from '@salesforce/apex/getOppsClassAura.getOpps';

let columns = [
    { label: 'Record Id', fieldName: 'Id' },
    { label: 'Opportunity Name', fieldName: 'Name' },
    { label: 'Stage Name', fieldName: 'StageName', type: 'text' },
    { label: 'Account Name', fieldName: 'AccountName', type: 'text' },
    { label: 'Amount', fieldName: 'Amount', type: 'currency' }
];


export default class ShowOppsUsingWireAndApex extends LightningElement
{
    oppsList;
    errorMessage;
    columns = columns;


    

    @wire(getOpps) fetchedOpps({ data, error })
    {
        if (data)
        {
            this.oppsList = data;   
        }

        if (error)
        {
            this.errorMessage = error.body.message;
        }

    }


}