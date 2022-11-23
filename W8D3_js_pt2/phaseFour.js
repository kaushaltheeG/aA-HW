/* 
Phase IV: Closures
Let's make a function dinerBreakfast. Ultimately, we want it to return an anonymous closure, which we will be able to use to keep adding breakfast foods to our initial order.

> let bfastOrder = dinerBreakfast();
"I'd like cheesy scrambled eggs please"
> bfastOrder("chocolate chip pancakes");
"I'd like cheesy scrambled eggs and chocolate chip pancakes please."
> bfastOrder("grits");
"I'd like cheesy scrambled eggs and chocolate chip pancakes and grits please."
Hints:

order should be initialized to a starting order (e.g., scrambled eggs and bacon) before the anonymous function can do its work.
The closure should capture/close over order
What should the return value of dinerBreakfast be?
Which function should take in the additional food as an argument?
Make sure you can call it multiple times and keep chaining on more breakfast foods!
*/


function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);

    return function (food) {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    };
};