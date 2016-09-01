// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
// Find the sum of all the multiples of 3 or 5 below 1000.

var Multiples = function(max) {
  var multiples = [];
  var num;

  function multiplesOfThreeOrFive(num) {
    if (num % 3 == 0) {
      multiples.push(num)
      return;
    } else if (num % 5 == 0) {
      multiples.push(num)
      return;
    } else {
      return;
    }
  }

  function calculateAllMultiples() {
    for (i = 1; i < max; i++) {
      multiplesOfThreeOrFive(i);
    }
    return multiples;
  }

  function addMultiples() {
    total = 0;
    for (i = 0; i < multiples.length; i++) {
      total += multiples[i];
    }
    return total;
  }

  calculateAllMultiples();
  return addMultiples();
}

console.log(Multiples(1000));
