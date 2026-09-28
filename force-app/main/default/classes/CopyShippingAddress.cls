public class CopyShippingAddress 
{
Public static void method (List<Account> A)
{
    
    If(A!=Null)
    {
        For (Account A1:A)
        {
            If (A1.CopyBillingToShipping__c == True)
            {
                A1.ShippingStreet = A1.BillingStreet;
                A1.ShippingCity = A1.BillingCity;
                A1.ShippingPostalCode = A1.BillingPostalCode;
            }
        }
    }
}
}