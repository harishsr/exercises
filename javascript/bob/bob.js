//
// This is only a SKELETON file for the "Bob" exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var Bob = function() {};

Bob.prototype.hey = function(input) {
  if (input === input.toUpperCase()  && input !== input.toLowerCase())
    return "Whoa, chill out!";
  if(input[input.length - 1] === "?")
    return "Sure.";
  else if (input != " " * input.length)
    return "Whatever.";
  else
    return "Fine. Be that way!";
};

module.exports = Bob;
