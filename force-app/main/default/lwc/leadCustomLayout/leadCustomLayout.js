import { LightningElement } from 'lwc';
import { createRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import LEADOBJ from '@salesforce/schema/Lead';
import FIRSTNAME from '@salesforce/schema/Lead.FirstName';
import LASTNAME from '@salesforce/schema/Lead.LastName';
import STATUS from '@salesforce/schema/Lead.Status';
import COMPANY from '@salesforce/schema/Lead.Company';
import INDUSTRY from '@salesforce/schema/Lead.Industry'

export default class LeadCustomLayout extends LightningElement
{
    firstName;
    lastName;
    status;
    CompanyName;
    Industry;

    get Industries()
    {
        return [
            { label: "Agriculture", value: "Agriculture" },
            { label:"Apparel", value: "Apparel" },
            { label: "Banking", value: "Banking" },
            { label: "Biotechnology", value: "Biotechnology" }
        ];
    }

    get options()
    {
        return [
        
            { label: "Open - Not Contacted", value: "Open - Not Contacted" },
            { label: "Closed - Converted", value: "Closed - Converted" },
            { label: "Closed - Not Converted", value: "Closed - Not Converted" },
            { label: "Working - Contacted", value: "Working - Contacted" }

        ];
    }

    handleFirstName(event)
    {
        this.firstName =  event.detail.value;
    }

    handleLastName(event)
    {
        this.lastName =  event.detail.value;
    }   

    handleCompanyName(event)
    {
        this.CompanyName = event.detail.value;

    }


    handleStatus(event)
    {
        this.status = event.detail.value;
    }

    handleIndustries(event)
    {
        this.Industry = event.detail.value;

    }

   async handleClick()
   {
       const fields = {};
       fields[FIRSTNAME.fieldApiName] = this.firstName;
       fields[LASTNAME.fieldApiName] = this.lastName;
       fields[STATUS.fieldApiName] = this.status;
       fields[COMPANY.fieldApiName] = this.CompanyName;
       fields[INDUSTRY.fieldApiName] = this.Industry;

       
       try 
       {    
           let leadrec = await createRecord ({ apiName: LEADOBJ.objectApiName, fields });
           alert('Lead record has being created ' + leadrec.id);
           
        

           const elements = this.template.querySelectorAll('lightning-input, lightning-combobox');

           for (let i = 0; i < elements.length; i++)
           {
                elements[i].value = '';
            }
       }
       catch (error)
       {
           alert('Lead record has not being created ' + error.body.message);
           const elements = this.template.querySelectorAll('lightning-input, lightning-combobox');

           for (let i = 0; i < elements.length; i++)
           {
                elements[i].value = '';
            }
      
        }
    }


    
}