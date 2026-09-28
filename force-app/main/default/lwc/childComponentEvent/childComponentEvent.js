import { LightningElement } from 'lwc';

export default class ChildComponentEvent extends LightningElement {

   

    handleChildClick() {
       
        const storedProducts = [
            {
                idn: 1, name: 'Ashwin', pin: 530044
            },
            {
                idn: 2, name: 'tiwari', pin: 530045
            }


        ]

      const event =   new CustomEvent('sendtoparent' ,{
            detail:storedProducts
      });
        this.dispatchEvent(event);
    }
    
    

}