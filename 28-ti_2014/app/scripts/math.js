// Because we are all Javascript pros we can tell our Javascript engine
// to be whiny with us.
'use strict';

//      ___       ___                                        
//     /  /\     /  /\       _______  _______  __      ___   
//    /  /:/    /  /:/      / ___   )(  __   )/  \    /   )  
//   /  /:/    /__/::\      \/   )  || (  )  |\/) )  / /) |  
//  /  /::\    \__\/\:\__       /   )| | /   |  | | / (_) (_ 
// /__/:/\:\      \  \:\/\    _/   / | (/ /) |  | |(____   _)
// \__\/  \:\      \__\::/   /   _/  |   / | |  | |     ) (  
//      \  \:\     /__/:/   (   (__/\|  (__) |__) (_    | |  
//       \__\/     \__\/    \_______/(_______)\____/    (_)  



/**
 * 1.
 * Write a function `exponents` that takes the number of terms in a polynomial
 * and returns an array of numbers corresponding to the powers, in decreasing 
 * order, of each term in the polynomial.
 *
 * Examples:
 *   exponents(0) => [0]
 *   exponents(2) => [1, 0]
 *   exponents(5) => [4, 3, 2, 1, 0]
 *
 * Hint: look up _.range() and .reverse()
 */
var exponents = function(nTerms) {
  // Your code here
};

/**
 * 2.
 * Write a function `polyTerm` that, given variable 'x' and constants 'a' and 'b',
 * returns a * x^b.
 *
 * Examples:
 *   polyTerm(2, 10, 3) => 80
 */
var polyTerm = function(x, a, b) {
  // Your code here
};

/**
 * 3. 
 * Using your minty fresh `exponents` and `polyTerm` functions, 
 * write a function `polynomial` which, given an array of coefficients
 * and an x value, evaluates the polynomial represented by the coefficients
 * at the given x value.  For example:
 *
 * 2x^2 + 3x + 1 at x = 50 is equivalent to
 * polynomial([2, 3, 1], 50);
 *
 * And f(x) = mx + b is equivalent to
 * polynomial([m, b], x)
 *
 * Examples:
 *   polynomial([1], 1000) => 1
 *   polynomial([1, 2, 3], 3) => 18
 *
 * You must use the _.reduce and _.zip functions in your solution.
 * _.reduce is difficult to understand, do not hesitate to ask for help.
 */
var polynomial = function(coefs, x) {
  // Your code here
};

/**
 * 4. 
 * We won't ask you to write this yourself, but this function
 * takes the first derivative of a polynomial represented in the same format
 * as that of your `polynomial` function.  Before reading this, look up _.map
 * and _.initial.  You will need to use _.map later on in the exercise.
 */
var derivative = function (coefs, x) {
  var exponents = _.range(coefs.length).reverse();

  var dCoeffs = _.map( _.zip(_.initial(coefs), _.initial(exponents)),
                       function(t) { return t[0] * t[1]; });

  return polynomial(dCoeffs, x);
};

/**
 * 5. 
 * An important idea in functional programming is partial application, which
 * is when you 'prep' a function for use by supplying some, but not all of the
 * arguments.  This produces a new function that calls the original one with
 * some arguments predetermined and some arguments given at call-time.
 *
 * For example, */
     var add3 = _.partial( function(a,b){return a+b;} , 3);
/* 
 * `add3` is now equivalent to the function f(x) = x + 3 for
 * all real numbers, because we have predetermined one of its arguments
 * as being the integer 3.  add3(10) would return '13'. Look up _.partial 
 * before proceeding.
 *
 * Write a function `makePolynomial` that returns a partially applied
 * `polynomial` function with its `coefs` argument already supplied by
 * the arguments to `makePolynomial`.
 *
 * Remember that Javascript functions can take an arbitrary number of
 * arguments, which are made available in all functions as the `arguments`
 * array.
 *
 * Examples:
 *   var f = makePolynomial(4, 1);
 *   f(10) => 41
 *
 *   var g = makePolynomial(-10, 10, 0);
 *   g(1) => 0
 */
var makePolynomial = function() {
  // Your code here
};

/**
 * 6. 
 * Write a function `makeTrig` that given constants `a`, `b` and
 *  a trig function `trigFunc`, returns a function that takes an argument
 *  `x` and evaluates a function g(x) = a * trigFunc( b * x )
 *
 * Example:
 *   var x = makeTrig(1, 1, Math.sin)
 *   x(Math.PI/2) => 1
 *   x(Math.PI)   => 0
 */
var makeTrig = function(a, b, trigFunc) {
  // Your code here
};

/**
 * 7. 
 * Write functions `makeSin` and `makeCos` that rely upon your `makeTrig`
 * function to return a trigonometric function given the same constants `a`
 * and `b`.
 *
 * Example:
 *   var f = makeSin(1, 1);
 *   f(Math.PI/2) => 1
 *
 *   var g = makeCos(10, 1);
 *   g(Math.PI) => -10
 */
var makeSin = function(a, f) { /* Your code here */ };
var makeCos = function(a, f) { /* Your code here */ };

/**
 * 8. 
 * Write a function `addFunctions` that given an arbitrary number of functions
 * as arguments, returns a function that is their composite.  That is, return
 * a function c(x) = f1(x) + f2(x) + ... + fn(x).
 *
 * Use _.reduce, and assign your `arguments` variable to a local variable
 * that you reference inside your anonymous function.  Keep in mind that the
 * body of each function call has its OWN arguments array, and you will lose
 * access to the caller's arguments array unless you assign the caller's array
 * to a local variable accessible to a child function.  See TA's for 
 * clarification.
 *
 * Example:
 *
 * var f = makePolynomial(1, 2, 3);
 * var g = makeSin(1, 2*Math.PI));
 * var h = addFunctions(f, g);
 * 
 * h(1)     is f(1) + g(1)
 *    which is 1(1)^2 + 2(2)^1 + 3(1)^0 + 1*sin(2 * Math.PI * 1)
 *    which is 8 + sin(2π)
 *    which is 8
 *
 * Therefore h(1) => 8
 */
var addFunctions = function() {
  // Your code here
};

/**
 * 9. 
 * Write a function `evalFunction` that takes a function `f` and an array of
 * x-values `xPoints` and returns an array of y-values corresponding to the
 * application of function `f` to each point in `xPoints`.  Use _.map.
 *
 * Example:
 *   evalFunction(makePolynomial(1, 0, 0), [1, 2, 3, 4, 5, 6, 7, 8]) =>
 *     [1, 4, 9, 16, 25, 36, 49, 64]
 *
 *   evalFunction( addFunctions(Math.sin, Math.cos), [0, Math.PI/2, Math.PI] ) =>
 *     [1, 1, -0.9999999999]
 */
var evalFunction = function(f, xPoints) {
  // Your code here
};

/**
 * You're so close to being done! With the first part...
 * 10.
 * Write a function `defineDomain` that returns an array of
 * `nPoints` numbers evenly distributed from `xStart` to `xEnd`. Use
 * _.range.
 */
var defineDomain = function(xStart, xEnd, nPoints) {
  // Your code here
};

/**
 * This is something I wrote, because I think it looks cool.  You should try to
 * make your own.  If you get to this point and you're passing all of the tests,
 * you should be able to change the sliders and see some cool stuff!
 */
var sinField = function(ampLower, ampUpper, freq, num) {
  num = Math.round(num);

  var waves = defineDomain(ampLower, ampUpper, num);
  // var waves = _.range(ampLower, ampUpper, Math.abs(ampUpper - ampLower)/num);
  return _.map(waves, function(wave) {
    var funcs = [makeSin(wave, freq/100000),
                 makeCos(wave, freq*2/100000),
                 makeSin(wave, freq*4/100000),
                 makeSin(wave, freq*8/100000)];

    return addFunctions.apply(null, funcs);
  });
};