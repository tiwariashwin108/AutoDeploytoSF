@RESTResource (UrlMapping= '/createLeadsss/')
Global class LeadCreationViaAPI 
{
@HTTPPost
global static String creatingLeadRecord()
{
    String fName, LName, comp;
    string fieldName, fieldvalue;
    
    RestRequest req = RestContext.request;
    RestResponse res = RestContext.response;
    String jsonBody = req.requestBody.tostring();
    
    JSONParser parser = JSON.createParser(jsonBody);
    
while(parser.nextToken()!=null)
{
    if(parser.getCurrentToken() != JSONToken.END_OBJECT)
    {
        fieldName = parser.getCurrentName();
        fieldvalue = parser.getText();
        
        if(fieldName == 'FirstName')
        {
            fName = fieldvalue;    
        }
        else if(fieldName == 'LastName')
        {
            LName = fieldvalue;  
        }
        else if(fieldName == 'Company')
        {
            comp = fieldvalue;  
        }
    }
}
    Lead Lea = new Lead (FirstName =fName , LastName =LName, Company =Comp);
    Insert Lea;
    
    Return lea.Id;

}
        
}