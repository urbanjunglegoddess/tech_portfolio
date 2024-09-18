/* Create an array named products which you will use to add all of your product object literals that you create in the next step. */

/* Create 3 or more product objects using object literal notation
   Each product should include five properties
   - name: name of product (string)
   - price: price of product (number)
   - quantity: quantity in cart should start at zero (number)
   - productId: unique id for the product (number)
   - image: picture of product (url string)
*/
const products = [
    {
        name: "Cherry",
        price: 2.99,
        quantity: 0,
        productId: 1,
        image: "images/cherry.jpg"
    },
    {
        name: "Orange",
        price: 1.99,
        quantity: 0,
        productId: 2,
        image: "images/orange.jpg"
    },
    {
        name: "Strawberry",
        price: 3.49,
        quantity: 0,
        productId: 3,
        image: "images/strawberry.jpg"
    }
];


/* Images provided in /images folder. All images from Unsplash.com
   - cherry.jpg by Mae Mu
   - orange.jpg by Mae Mu
   - strawberry.jpg by Allec Gomes
*/

/* Helper function to get a product by its productId
   - This function takes in a productId and returns the product object that matches the given id.
   - If no product is found, it returns undefined.
*/
function getProductById(productId) {
    return products.find(p => p.productId === productId);
}

/* Helper function to remove a product from the cart
   - This function takes in a product object and removes it from the cart array.
   - It uses the index of the product in the cart to remove it.
*/
function removeFromCart(product) {
    const index = cart.indexOf(product);  // Find the index of the product in the cart
    if (index > -1) {
        cart.splice(index, 1);  // Remove the product from the cart if it exists
    }
}

/* Helper function to check if a product exists in the cart
   - This function checks whether a given product is already in the cart.
   - Returns true if the product is found in the cart, otherwise returns false.
*/
function isProductInCart(product) {
    return cart.includes(product);  // Check if the product is in the cart
}

/* Create a function named addProductToCart that takes in the product productId as an argument
  - addProductToCart should get the correct product based on the productId
  - addProductToCart should then increase the product's quantity
  - if the product is not already in the cart, add it to the cart
*/

function addProductToCart(productId) {
    const product = getProductById(productId);  // Get the product using the helper function
    if (product) {
        product.quantity += 1;  // Increase the quantity of the product
        if (!isProductInCart(product)) {
            cart.push(product);  // If the product is not in the cart, add it
        }
    }
}


/* Create a function named increaseQuantity that takes in the productId as an argument
  - increaseQuantity should get the correct product based on the productId
  - increaseQuantity should then increase the product's quantity
*/

function increaseQuantity(productId) {
    const product = getProductById(productId);  // Get the product using the helper function
    if (product) {
        product.quantity += 1;  // Simply increase the product's quantity
    }
}


/* Create a function named decreaseQuantity that takes in the productId as an argument
  - decreaseQuantity should get the correct product based on the productId
  - decreaseQuantity should decrease the quantity of the product
  - if the function decreases the quantity to 0, the product is removed from the cart
*/

function decreaseQuantity(productId) {
    const product = getProductById(productId);  // Get the product using the helper function
    if (product && product.quantity > 0) {
        product.quantity -= 1;  // Reduce the quantity of the product
        if (product.quantity === 0) {
            removeFromCart(product);  // If the quantity is 0, remove the product from the cart
        }
    }
}

/* Create a function named removeProductFromCart that takes in the productId as an argument
  - removeProductFromCart should get the correct product based on the productId
  - removeProductFromCart should update the product quantity to 0
  - removeProductFromCart should remove the product from the cart
*/

function removeProductFromCart(productId) {
    const product = getProductById(productId);  // Get the product using the helper function
    if (product) {
        product.quantity = 0;  // Reset the product quantity to 0
        removeFromCart(product);  // Remove the product from the cart
    }
}


/* Create a function named cartTotal that has no parameters
  - cartTotal should iterate through the cart to get the total cost of all products
  - cartTotal should return the total cost of the products in the cart
  Hint: price and quantity can be used to determine total cost
*/
function cartTotal() {
    return cart.reduce((total, product) => {
        return total + product.price * product.quantity;  // Add the price * quantity for each product
    }, 0);  // Initial total is 0
}

/* Create a function called emptyCart that empties the products from the cart */
function emptyCart() {
    cart.forEach(product => product.quantity = 0);  // Set the quantity of all products to 0
    cart.length = 0;  // Clear the cart array
}

/* Create a function named pay that takes in an amount as an argument
  - amount is the money paid by customer
  - pay will return a negative number if there is a remaining balance
  - pay will return a positive number if money should be returned to customer
  Hint: cartTotal function gives us cost of all the products in the cart
*/

let totalPaid = 0;  // Variable to keep track of the total amount paid.

function pay(amount) {
    // Add the amount received to the total amount paid.
    totalPaid += amount;
    // Calculate the total cost of products in the cart.
    const totalCost = cartTotal();
    // Subtract the total cost from the total paid to determine the remaining balance or change.
    const remainingBalance = totalPaid - totalCost;
    // Return the remaining balance (can be positive or negative).
    return remainingBalance;
}


/* Place stand out suggestions here (stand out suggestions can be found at the bottom of the project rubric.)*/

// Object to store exchange rates for different currencies



/* The following is for running unit tests.
   To fully complete this project, it is expected that all tests pass.
   Run the following command in terminal to run tests
   npm run test
*/

module.exports = {
   products,
   cart,
   addProductToCart,
   increaseQuantity,
   decreaseQuantity,
   removeProductFromCart,
   cartTotal,
   pay,
   emptyCart,
   /* Uncomment the following line if completing the currency converter bonus */
   // currency
}