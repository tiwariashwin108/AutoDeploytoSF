import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {
    parentVar = 'This message is from Parent component Variable defined in JS and then refered in Html';

    parentObj = {
        name: 'Ashwin',
        age: 26
    };

    parentArrayOfObj = [
        { id: 1, name: 'Tiwari', age: 26 },
        { id: 2, name: 'Tiwari22', age: 27 },
        { id: 3, name: 'Tiwari33', age: 28 }
    ];

    handleClicks()
    {
        this.template.querySelector('c-child-component').childMethod();
        
    }
    
    

}