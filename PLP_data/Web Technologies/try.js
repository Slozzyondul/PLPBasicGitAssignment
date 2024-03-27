let cashRegister = {    //class
    shoppingCart:[],    //empty cart
    //items object
    items: {
        "phone": 300,
        "smart tv": 220,
        "gaming console": 150,
        "pc": 800
    },
    //methods / functons/ behaviours
    addItem: function(itemName) {
        if (this.items[itemName] !==undefined) {
            this.shoppingCart.push(itemName);
            console.log(`${itemName} added, cart updated!`);
        } else {
            console.log(`the ${itemName} is no longer available`)
        }
    },
    //methods to calculate total price of items in the cart
    calculateTotalPrice: function() {
        let totalPrice = 0;
        for (let item of this.shoppingCart) {
            totalPrice += this.items[item];
        }
        return totalPrice;
    },
    //method to handle payment
    pay: function(paymentAmount) {
        let totalPrice = this.calculateTotalPrice();
        let discount = 0;
        // applying discount if total is greater than 400
        if (totalPrice > 400) {
            discount = totalPrice * 0.1;
            console.log(`discount to be applied: ${discount}`);
        } else {
            console.log("you got no discount this time");
        }

        totalPrice -= discount;
        console.log(`payment amount: ${totalPrice}`); 
  
         //checking if the amount is enough
        if (paymentAmount >= totalPrice) {
            let change = paymentAmount - totalPrice;
            console.log(`thank you for the purchase! change: ${change}`);
            //empty the shopping cart after successful payment
            this.shoppingCart = [];
        } else {
            let extra = totalPrice - paymentAmount;
            console.log(`you need to add extra ${extra} to complete this purchase!`);
        }
    }
};


// Prompting user for input
const readline = require('readline');
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});
rl.question("enter the item name: ", (itemName) => {
    cashRegister.addItem(itemName.toLocaleLowerCase());
    rl.close();
})

//testing 
cashRegister.addItem("smart tv");
cashRegister.addItem("pc");
let total = cashRegister.calculateTotalPrice();
console.log(`total price: ${total}`);
cashRegister.pay(400);
