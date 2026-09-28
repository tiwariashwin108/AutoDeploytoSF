import { LightningElement,api } from 'lwc';

export default class TuningLwc extends LightningElement {
    @api recordId;
    objectApiName = "Account"
}