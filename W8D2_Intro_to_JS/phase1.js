function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
//mysteryScoping1() //prints out in block be x is reassigned to point to 'in block' even outside of the loop 

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping2()//prints 'in block' then 'out of block' 

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        // var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping3() //becuase you can not redefine the x after being defined by a const 
function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// mysteryScoping4() //prints 'in block' then 'out of block' since x a var within the if block scope 

// function mysteryScoping5() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     let x = 'out of block again';
//     console.log(x);
// }

//throws an error becuase you cannot defined two vars of the same name within the same scope 

const madLib = (verb, adjective, noun) => {
    return `We shall ${verb} the ${adjective} ${noun}`;
}
console.log(madLib('make', 'best', 'guac')); 

const isSubstring = (searchString, subString) => {
    return searchString.includes(subString)
}
console.log(isSubstring("time to program", "time"))
console.log(isSubstring("Jump for joy", "joys"))


