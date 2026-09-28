import { LightningElement,api } from 'lwc';

export default class ChildComponent extends LightningElement {
    childVar = 'this message is from Child Component Variable defined in JS and then refered in Html';
    @api message;
    @api obj;
    @api objArray;
    childMethodVar = 'I am child method Variable';
    showChildMethodVar;
     
    get hasData()
    {
    return this.objArray && this.objArray.length > 0;
    }


    @api childMethod()
    {
        this.showChildMethodVar= this.childMethodVar;
    }

}