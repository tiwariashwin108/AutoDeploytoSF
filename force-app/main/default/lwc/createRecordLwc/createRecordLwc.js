import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import ACC_OBJ from '@salesforce/schema/Account';
import ACCOUNT_NAME from '@salesforce/schema/Account.Name';
import ACCOUNT_INDUSTRY from '@salesforce/schema/Account.Industry';
import ACCOUNT_ACCNUMBER from '@salesforce/schema/Account.AccountNumber';


export default class CreateRecordLwc extends LightningElement {
    accName;
    accindustry;
    accNum;

    get options() {
        return [

            { label: 'Agriculture', value: 'agriculture' },
            { label: 'Apparel', value: 'apparel' },
            { label: 'Banking', value: 'banking' },
            { label: 'Biotechnology', value: 'biotechnology' }

        ];
    }

    handleAccountName(event) {
        this.accName = event.detail.value;
    }

    handleIndustry(event) {
        this.accindustry = event.detail.value;
        
    }

    handleCheckbox(event) {
        this.accCheck = event.detail.value;
        
    }

    async handleClick()
    {
        const fields = {};
        fields[ACCOUNT_NAME.fieldApiName] = this.accName;
        fields[ACCOUNT_INDUSTRY.fieldApiName] = this.accindustry;
        fields[ACCOUNT_ACCNUMBER.fieldApiName] = this.accNum;

        let recordInput = { apiName: ACC_OBJ.objectApiName, fields };

        try {
      
            const account = await createRecord(recordInput);
            alert('Account record has been created successfully' + account.id);
             
        }
        catch (error)
        {
            alert('Account record was not created successfully' + error.body.message);

        }

      
    }

        
}