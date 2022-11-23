/*
Phase 1 Callback
Write a function titleize that takes an array of names and a function (callback). 
titleize should use Array.prototype.map to create a new array full of titleized versions of each name - 
titleize meaning "Roger" should be made to read "Mx. Roger Jingleheimer Schmidt". 
Then pass this new array of names to the callback, which should use Array.prototype.forEach to print out each titleized name.


*/
const printCallback = (arr) => {
    arr.forEach(name => {
        console.log(name)
    });
}

const titleize = (arr, callback) => {
    let modifed = arr.map((name)=>
        `Mr. ${name} Jingleheimer Schidt`
    );
    return callback(modifed)
}


// titleize(["Mary", "Brian", "Leo"], printCallback)
// console.log(titleize(['KzK']))

