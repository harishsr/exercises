// The prime factors of 13195 are 5, 7, 13 and 29.
// What is the largest prime factor of the number 600851475143 ?


// calculate all the factors of a number
function factors(num){
  var fa = [];
  for (i = 0; i < num; i++) {
    if ((num % i) === 0) {
      fa.push(i);
    }
  }
  console.log(fa);
  return fa;
}


// calculates whether a number is prime
function isPrime(num){
  var fa = factors(num);
  if (fa.length === 1) {
    return true;
  } else { return false }
}


// go through all the factors of a number and get an array of primes
function primeFactors( num ){
  var fa = factors( num );
  var allPrimeFactors = [];

  for(f = 0; f < fa.length; f++){
    if ( isPrime(fa[f]) ) { 
      allPrimeFactors.push( fa[f] );
    }
  }

  return allPrimeFactors;
}

// largest num in an array
function largestNum( arr ){
  return Math.max.apply(null, arr );
}

var thisTimesNumber = 600851475143;
var answer = largestNum(primeFactors(thisTimesNumber));

console.log(answer);
