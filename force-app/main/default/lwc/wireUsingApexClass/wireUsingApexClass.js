import { LightningElement,wire } from 'lwc';
import accountLWC from '@salesforce/apex/accountLWC.accountLWC'

export default class WireUsingApexClass extends LightningElement {


    caseList;
    errorMessage;

    @wire(accountLWC) fetchedCases({ data, error })
    {
        if (data)
        {
            this.caseList = data;
            this.errorMessage = ' ';
        }
        if (error)
        {
            this.caseList = ' ';
            this.errorMessage = error.body.message;
        }
    }

}