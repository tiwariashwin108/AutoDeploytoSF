import { LightningElement } from 'lwc';

export default class GetterAndSetter extends LightningElement {

    _valuevar;
    
    changeEvent (event)
    {
      this.valuevar = event.target.value;
    }


    get valuevar() {
        return this._valuevar;
    }

    set valuevar(value) {
        this._valuevar = value.toUpperCase();
    }
    

}