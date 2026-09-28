import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import OPP_OBJECT from '@salesforce/schema/Opportunity';
import NAME_FIELD from '@salesforce/schema/Opportunity.Name';
import DATE_FIELD from '@salesforce/schema/Opportunity.CloseDate';
import STAGE_FIELD from '@salesforce/schema/Opportunity.StageName';


export default class CreateOppRecordCustom extends LightningElement {
    
    name;
    date;
    stage;
    
    
    get options()
    {
     return [
                {label:"Proposal/Price Quote", value:"Proposal/Price Quote"},
                {label:"Informal Assistance", value:"Informal Assistance"},
                {label:"Proposal Development", value:"Proposal Development"},
                {label:"Assessment", value:"Assessment"},
                {label:"Testing the value", value:"Testing the value"}
            

            ];
    }


    handleName(event)
    {
        this.name = event.detail.value;

    }

    handleDate(event)
    {
        this.date = event.detail.value;

    }

    handleStage(event)
    {
        this.stage = event.detail.value;

    }

    async handleClick()
    {

        const fields = {};
        fields[NAME_FIELD.fieldApiName] = this.name;
        fields[DATE_FIELD.fieldApiName] = this.date;
        fields[STAGE_FIELD.fieldApiName] = this.stage;

        try
        {
            let CreateOpp = await createRecord ({apiName: OPP_OBJECT.objectApiName, fields});
            alert('Opportunity record is created succesfully ' + CreateOpp.id);
            
            const elements = this.template.querySelectorAll('lightning-input, lightning-combobox');

            for (let i = 0; i < elements.length; i++) {
                elements[i].value = '';
}


            
        }

        catch (error)
        {
            alert('Opportunity record is not created  ' +error.body.message);
        }

    }
}