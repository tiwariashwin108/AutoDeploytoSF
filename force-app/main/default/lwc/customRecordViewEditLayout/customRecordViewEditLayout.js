import { LightningElement,api } from 'lwc';

export default class CustomRecordViewEditLayout extends LightningElement {
    @api recordId;
    objectApiName = 'Account';
}