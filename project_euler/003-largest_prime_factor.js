// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?

var math = require('mathjs')

//
// go through all the factors of a number and get an array of primes
function primeFactor(num){
  var allFactors = factors(num);
  var primeFactors = [];

  for(i = 0; i < num; i++){
    if (math.isPrime(allFactors[i])) {
      primeFactors.push(allFactors[i]);
    }
  }

  return primeFactors;
}

//
// calculate all the factors of a number
function factors(num){
}

PrimeFactor(13195);
