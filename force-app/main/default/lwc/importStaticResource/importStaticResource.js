import { LightningElement } from 'lwc';
import varName from "@salesforce/resourceUrl/myStaticLwc"
import VarCustomLabel from "@salesforce/label/c.lwcCustomLabel"

export default class ImportStaticResource extends LightningElement {
    showSvg = varName;
    

    get valueOfCustomLabel()
    {
        return VarCustomLabel == "True"? true: false
    }
}