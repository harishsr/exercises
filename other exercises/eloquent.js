// CH 3: FUNCTIONS

  // Your code here.
    // function min(a, b) {
    //   if (a < b)
    //    return a;
    //   else if (a > b)
    //     return b;
    //   else 
    //     return "They are equal";
    // }

    // console.log(min(0, 10));
    // // → 0
    // console.log(min(0, -10));
    // // → -10


  // RECURSION
    // function isEven(number) {
    //   var even = 0;
    //   var odd = 1;
    //   if (number === even)
    //     return true;
    //   else if (number === odd)
    //     return false;
    //   else
    //     number > even ? number -= 2 : number += 2;
    //     return isEven(number);
    // }


  // BEAN COUNTING
    function countChar(string, type) {
      var numOfType = 0;
      for (var counter = 0; counter <= string.length + 1; counter += 1) {
        if (string.charAt(counter) === type)
          numOfType += 1;
      };
      return numOfType;
    };

// FizzBuzz
  for (var i = 0; i <= 100; i++) {
    if (i % 3 === 0) 
      if (i % 5 === 0)
        console.log("FizzBuzz");
      else
        console.log("Fizz");
    else if (i % 5 === 0)
      console.log("Buzz");
    else
      console.log(i);
  };

// CH 4: DATA STRUCTURES: OBJECTS & ARRAYS
  
  // The Sum of a Range
    function range(start, end, step) {
      var rArray = [];
      if (start < end) {
        for (var i = start; i <= end; i = i + step) {
          rArray.push(i);
        };
      } else if (start > end) {
        for (var n = start; n >= end; n = n - step) {
          rArray.push(n);
        };
      } else {
        rArray.push(start);
      };
      return rArray;
    };

    function sum(arrOfNum) {
      total = 0;
      for (var i = 0; i <= arrOfNum.length-1; i++) {
        total = total + arrOfNum[i];
      };
      return total;
    }