Global class WSDLforTestingSoapAPI 
{
webservice static id method (String Customername , boolean Isacc)
{
    If (Isacc==true)
    {
        Account a = new account (Name = Customername);
            insert a;
        return a.id;
    }
    else
    {
        Contact c = new contact (lastname = Customername);
            insert c;
        return c.id;
    }
}
}