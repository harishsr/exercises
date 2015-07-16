//
// This is only a SKELETON file for the 'Hello World' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

var HelloWorld = function() {};

HelloWorld.prototype.hello = function(name) {
  var greeting;
  {
    if (name)
      greeting = "Hello, " + name;
    else
      greeting = "Hello, world!";
  };

  return greeting;
};

module.exports = HelloWorld;
