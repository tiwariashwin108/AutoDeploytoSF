import { LightningElement,wire } from 'lwc';
import caseListMethod from '@salesforce/apex/independentWireMethodClass.caseListMethod';
import taskListMethod from '@salesforce/apex/independentWireMethodClass.taskListMethod';



export default class IndependentWireLWC extends LightningElement {

    caseList;
    taskList;
    errorTaskMessage;
    errorCaseMessage;

    @wire(caseListMethod) caseVar({ data, error })
    {
                if(data)
                {
                    this.caseList = data;

                }
                else if (error)
                {
                    this.errorCaseMessage = error.body.message;

                }

    }

    @wire(taskListMethod) taskVar({ data, error })
    {
                if(data)
                {
                    this.taskList = data;

                }
        
                else if (error)
                {
                    this.errorTaskMessage = error.body.message;

                }

    }       
    
}