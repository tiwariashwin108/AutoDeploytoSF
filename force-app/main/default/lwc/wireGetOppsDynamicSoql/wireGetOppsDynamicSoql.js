import { LightningElement,wire } from 'lwc';
import getOppWithSoql from '@salesforce/apex/getOppWithSoql.getOppWithSoql'

let columns=    [
                    { label: 'Opportunity Id', fieldName: 'Id' },
                    { label: 'Amount', fieldName: 'Amount', type: 'currency' },
                    { label: 'Opportunity Name', fieldName: 'Name' },
                    { label: 'Stage', fieldName: 'StageName', type: 'text' }
                ];


export default class WireGetOppsDynamicSoql extends LightningElement
{
   
    errorMessage;
    stageNam = 'Informal Assistance';
    OppList;
    columns = columns;

    

    @wire(getOppWithSoql, {NameOfStage: '$stageNam'}) 
    oppVar({ data, error })
    {
        if (data)
        {
            this.OppList = data;

        }
        else if (error)
        {
            this.errorMessage = error.body.message;

        }
    }



}