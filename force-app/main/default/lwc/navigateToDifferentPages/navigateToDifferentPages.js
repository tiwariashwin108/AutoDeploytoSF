import { LightningElement } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class NavigateToDifferentPages extends NavigationMixin(LightningElement)
{

    handleNavigateToAccount()
    {
        this[NavigationMixin.Navigate]
            ({
                type: "standard__recordPage",
                attributes: {
                                recordId: "0015j00000wetQqAAI",
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
                               url: "https://www.youtube.com/"
                            }
            });
    }

    handleNavigateToTabPage()
    {
        this[NavigationMixin.Navigate]
            ({
                type: "standard__navItemPage",
                attributes: {
                                apiName: "Computers"
                            }
            });
    }


    handleNavigateToListView()
    {
        this[NavigationMixin.Navigate]
            ({
                type: "standard__objectPage",
                attributes: {
                                objectApiName: "Contact",
                                actionName: "list"
                            },
                    state: {
                                filterName: "Recent"
                            }
            });
    }
}