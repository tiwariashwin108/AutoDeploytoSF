import { LightningElement } from 'lwc';

export default class ReactivityParent extends LightningElement {
    userAddress = '19-19-36/1, pedagantyada';

    


     listUsers =
    [
    {
        id: 1,
        name: "John Doe",
        address: {
            street: "123 Main St",
            city: "New York",
            state: "NY",
            zip: "10001"
        },
        contact: {
            email: "john@example.com",
            phone: "123-456-7890"
        },
        orders: [
            {
                orderId: "ORD001",
                amount: 250,
                items: [
                    { name: "Laptop", qty: 1 },
                    { name: "Mouse", qty: 2 }
                ]
            },
            {
                orderId: "ORD002",
                amount: 100,
                items: [
                    { name: "Keyboard", qty: 1 }
                        ]
            }
                ]
    }
    
         ];
    
    updateAddress()
    {
        this.userAddress = '20-20-40/1, Gajuwaka';
        this.listUsers[0].name = 'Ashwin';

    }



}