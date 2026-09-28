import { LightningElement } from 'lwc';
import { NavigationMixin } from "lightning/navigation";

export default class NavigationSecondLWC extends NavigationMixin(LightningElement)
{ 


    handleNavigateToAccount()
    {
       this[NavigationMixin.Navigate]({
            type: "standard__recordPage",
           attributes:
           {
               recordId: "001J400000cdTJfIAM",
               objectApiName: "Account",
               actionName: "view"
           }
    });

    }


    handleNavigateToYoutube()
    {
        this[NavigationMixin.Navigate]
            ({
                type: "standard__webPage",
                attributes: {
                    url: "https://developer.salesforce.com/docs/platform/lwc/guide/use-navigate-page-types.html"
                            }
            });

    }

    handleNavigateToTabPage()
    {
        
        this[NavigationMixin.Navigate]({
                        type: "standard__navItemPage",
                        attributes: {
                                    apiName: "AlreadyNameSpac__Verticals"
                                    }
                                        });
    }

    handleNavigateToListView()
    {
        this[NavigationMixin.Navigate]
            ({
                    type: "standard__objectPage",
                    attributes: {
                        objectApiName: "Lead",
                        actionName: "list",
                                },
                        state: {
                            filterName: "AlreadyNameSpac__AllOpenLeads"
                                }
            });

    }
}