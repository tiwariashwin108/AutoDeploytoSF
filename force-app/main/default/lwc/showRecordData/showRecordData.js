import { LightningElement,api } from 'lwc';

export default class ShowRecordData extends LightningElement {
    @api recordId
    objectApiName = 'Account';
    fields = ['Name', 'AlreadyNameSpac__Chekinggg__c', 'AlreadyNameSpac__Custom_Email__c'];
    
}