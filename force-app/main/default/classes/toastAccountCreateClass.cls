public class toastAccountCreateClass 
{
    @AuraEnabled
    public static void toastAccount (String AccName)
    {
        Account A= new Account(Name = AccName);
        Insert A;
    }
}