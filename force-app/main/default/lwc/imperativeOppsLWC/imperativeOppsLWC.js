import { LightningElement } from 'lwc';
import oppMethodForImperative from '@salesforce/apex/oppClassForImperative.oppMethodForImperative';

let columns = [
    { label: 'Opportunity Record Id ', fieldName: 'Id' },
    { label: 'Opportunity Amount', fieldName: 'Amount', type: 'currency' },
    { label: 'Opportunity Name', fieldName: 'Name' },
    { label: 'Opportunity StageName', fieldName: 'StageName', type: 'text' }
];

export default class ImperativeOppsLWC extends LightningElement
{
    stageValue;
    oppList;
    errorMesssage;
    showTable = false;
    columns = columns;

    handleStage(event)
    {
        this.stageValue = event.detail.value;

    }


    handleClick()
    {
        
        oppMethodForImperative({ NameOfStage: this.stageValue })
            .then(result => {
                this.oppList = result;
                this.showTable = true;
            })

            .catch(error => {
                this.errorMesssage = error.body.message;

            })
    }

    


}