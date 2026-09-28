import { LightningElement } from 'lwc';

export default class ParentCallChild extends LightningElement {
    name = 'Tiwari';

    connectedCallback() {
        console.log('Parent value:', this.name);
    }
}