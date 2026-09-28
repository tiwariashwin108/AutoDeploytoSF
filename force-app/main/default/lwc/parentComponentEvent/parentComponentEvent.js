import { LightningElement } from 'lwc';

export default class ParentComponentEvent extends LightningElement {
    
    storeChildValue;
    
    getChildInfo(event)
    {
        
        this.storeChildValue = event.detail;
    }
}