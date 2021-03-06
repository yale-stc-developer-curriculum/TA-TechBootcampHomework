// JavaScript Functions Exercise

// Write functions that satisfy the given specifications. To run the code in
// this file, enter the command 'node words.js'. Remember that function
// definitions won't return any values. To test your functions, use the command
// 'console.log(EXPRESSION)' to print the return value of EXPRESSION to the
// command line.

////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// Problem 1

// Write a function find(STR,SUBSTR) that takes two strings STR and SUBSTR and
// returns an array of words (i.e., sequences of characters delimited by spaces)
// from STR that contain SUBSTR. Treat consecutive spaces like single spaces.
// This should ensure that find never returns an array containing any empty
// strings.

// Hint: The string function search(STR) takes a string argument STR and returns
// the index of the first character of STR in the string. If the string doesn't
// contain STR, then search(STR) returns -1.

// E.g., 'hello'.search('l') => 2
// E.g., 'hello'.search('llo') => 2
// E.g., 'hello'.search('q') => -1

////////////////////////////////////////////////////////////////////////////////

// Examples:

// > COMMAND
// RETURN_VALUE

// > find('This is a sentence.','')
// [ 'This', 'is', 'a', 'sentence.' ]

// > find('Prevent premature pregnancy using preventative procedures!','pre')
// [ 'premature', 'pregnancy', 'preventative' ]

// > find('    s   p   a     c   e   y   ','')
// [ 's', 'p', 'a', 'c', 'e', 'y' ]

////////////////////////////////////////////////////////////////////////////////


// Write your answer here


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// Problem 2

// Write a function isPrime(NUM) that takes a positive integer NUM and returns
// true if and only if NUM is prime.

// Note: For the sake of this exercise, 1 is prime.

////////////////////////////////////////////////////////////////////////////////

// Examples:

// > isPrime(5)
// true

// > isPrime(2)
// true

// > isPrime(1)
// true

// > isPrime(1023)
// false

////////////////////////////////////////////////////////////////////////////////


// Write your answer here


////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////

// Problem 3 (Extra Challenge)

// Write a recursive function mergeSort(ARR) that takes an array of integers ARR
// and returns the same array with elements in increasing order. If you aren't
// familiar with the mergesort algorithm, then I'd recommend Googling it rather
// than relying on me to explain it to you!

// Hint: The array function slice(START,END) returns the elements of the array
// from indexes START to END, not including END.

////////////////////////////////////////////////////////////////////////////////

// Examples:

// > primeFactors(5)
// [ 1, 5 ]

// > primeFactors(9)
// [ 1, 3 ]

// > primeFactors(12)
// [ 1, 2, 3 ]

// > primeFactors(100)
// [ 1, 2, 5 ]

// > primeFactors(120)
// [ 1, 2, 3, 5 ]

// > primeFactors(5040)
// [ 1, 2, 3, 5, 7 ]

////////////////////////////////////////////////////////////////////////////////


// Write your answer here


////////////////////////////////////////////////////////////////////////////////