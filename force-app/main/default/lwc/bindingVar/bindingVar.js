import { LightningElement } from 'lwc';

export default class BindingVar extends LightningElement {
    storeValue;

    callChangeEvent(event)
    {
        this.storeValue = event.target.value;
    }
}