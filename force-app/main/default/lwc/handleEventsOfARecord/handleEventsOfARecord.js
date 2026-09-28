import { LightningElement } from 'lwc';

export default class HandleEventsOfARecord extends LightningElement {

    handleSuccess(event)
    {
        alert('Account is created' + JSON.stringify(event.detail))

    }

    handleSubmit(event)
    {
        console.log('Creation of Account is submitted' + JSON.stringify(event.detail))

    }

    handleError(event)
    {
        console.log('Error occured while creating account' + JSON.stringify(event.detail))

    }
}