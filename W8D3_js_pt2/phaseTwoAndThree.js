/*  
First, write a constructor function for an elephant. Each elephant should have a name, height (in inches), and array of tricks in gerund form (e.g. "painting a picture" rather than "paint a picture").

Next, write a few prototype functions that will be shared among all elephants:

    Elephant.prototype.trumpet: should print "(name) the elephant goes 'phrRRRRRRRRRRR!!!!!!!'"
    Elephant.prototype.grow: should increase the elephant's height by 12 inches
    Elephant.prototype.addTrick(trick): add a new trick to their existing repertoire
    Elephant.prototype.play: print out a random trick, e.g. "(name) is (trick)!"
    Hint: look up some JS Math methods!
    Make sure to create an elephant and test all of these functions out on them method style!

 */

function Elephant(name, height, tricks) {
    this.name = name; 
    this.height = height; 
    this.tricks = tricks; 

    Elephant.prototype.trumpet = function(name) {
        console.log(`${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!'`);
    }

    Elephant.prototype.addTrick = function(trick) {
        this.tricks.push(trick);
    }

    Elephant.prototype.grow = function() {
        this.height += 12;
        return this.height;
    }

    Elephant.prototype.play = function() {
        trickIdx = Math.floor(Math.random() * this.tricks.length) 
        console.log(`${this.name} is ${this.tricks[trickIdx]}`);
    }
}
const moves = ["jumping", "drinking", "fetching"];
const eli = new Elephant("elie", 8, moves);

// eli.trumpet();
// eli.addTrick("eat");
// console.log(eli.grow());
// eli.play()

/* Phase 3 
Now let's create a function called paradeHelper that we'll use to have an elephant parade. It should take a single elephant as an argument; this way, we can pass it as a callback to forEach when called on our herd. Make sure to store it as a property on the Elephant object. You can populate it with any console.log statement you want to build your parade (e.g., "___ is trotting by!").

For example:
> Elephant.paradeHelper(micah);
Micah is trotting by!
undefined
Once you have this function, call forEach on the herd and pass it in as the callback without invoking it. Elephants galore!
*/

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.prototype.paradeHelper = function() {
    //console.log(1)
    console.log(`${this.name} is trotting by!`);
}

ellie.paradeHelper();

herd.forEach(elepahant => { elepahant.paradeHelper()});
