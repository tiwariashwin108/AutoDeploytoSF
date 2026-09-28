import { LightningElement } from 'lwc';
import toastAccountMethod from '@salesforce/apex/toastAccountCreateClass.toastAccount';
import { ShowToastEvent } from "lightning/platformShowToastEvent";

export default class ToastNotifcationLwc extends LightningElement
{ 
    storeName;

    handleAccountName(event)
    {
        this.storeName = event.detail.value;

    }

    handleCreate()
    {

        toastAccountMethod({ AccName: this.storeName })
            
            .then(() => {
                this.showToast();

            
            })
            .catch((error) => {
                this.showToastError();

            })

    }



    showToast()
    {
    const event = new ShowToastEvent({
        title: "Account Created",
        message: "Account Created Successfully and this notification is through custom Toast.",
        variant: "success"
      
    });
    this.dispatchEvent(event);
    }

    showToastError()
    {
    const event = new ShowToastEvent({
        title: "Account not Created",
        message: "Account not Created Successfully and this notification is through custom Toast.",
        variant: "error"
      
    });
    this.dispatchEvent(event);
    }


}