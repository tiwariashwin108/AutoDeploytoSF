import { LightningElement,api } from 'lwc';

export default class ChildParent extends LightningElement
{


    @api userName ;
    age = 26;
    personDetails = {
        name: 'Ashwin',
        hobby: ['cricket', 'football']
    }

    renderedCallback()
    {
    console.log('Received:', this.userName);
    }

}