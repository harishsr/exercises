var bankBalance = 3000;
var taxRate = 0.075;

var phonePrice = 300;
var phonePriceWithTax;
var phonesOwned = 0;

var accessoryPrice = 10;
var mentalThreshold = 20;
var accessoriesOwned = 0;


function phonePriceTotal(){
  var total = phonePrice * ( 1 + taxRate );
  return total.toFixed(2);
}

phonePriceWithTax = phonePriceTotal();

console.log("The price of each phone, with tax, is $" + phonePriceWithTax);

while ( bankBalance >= phonePriceWithTax ) { 
  // Buy a new phone
  bankBalance -= phonePriceWithTax;
  phonesOwned += 1;

  // Buy new accessories
  for (i = 0; i <= mentalThreshold; i += mentalThreshold) {
    bankBalance -= accessoryPrice;
    accessoriesOwned += 1;
  }
}

console.log("You now own " + phonesOwned + " phones with " + accessoriesOwned + " accessories!");
