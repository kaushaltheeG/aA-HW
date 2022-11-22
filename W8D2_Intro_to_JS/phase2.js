const fizzBuzz = (arr) => {
    let new_arr = [];
    for (let i=0; i < arr.length; i++) {
        if ((arr[i] % 3 == 0 ) ^ (arr[i] % 5 == 0)) new_arr.push(arr[i]) 
    }
    return new_arr
}

// console.log(fizzBuzz([3, 6, 7, 10, 12, 15]))

const isPrime = (num) => {
    let i = 2
    while (i < num) {
        if(num % i == 0) return false 
        i++
    }
    return num > 0
}
// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))


const sumOfNPrimes = (n) => {
    if (n == 0) return 0 ;
    let prime = 2, sum = 0;
    let i = 0;
    while (i < n) {
        if (isPrime(prime)) {sum += prime; i++; }
        prime++
    }
    return sum 
}
console.log(sumOfNPrimes(0))
console.log(sumOfNPrimes(1))
console.log(sumOfNPrimes(4))




