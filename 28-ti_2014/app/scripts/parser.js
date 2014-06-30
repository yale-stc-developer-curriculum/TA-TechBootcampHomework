'use strict';

var hasForms = function(str) {
  return str.search(/\(|\)/) > -1 ? true : false;
};

var hasOperator = function(str) {
  return str.match(/\+|\-|\/|\*|\^|sin|cos/);
};

var hasConstant = function(str) {
  return str.match(/\s*([a-d])\s*/);
};

var add = function() {
  var self = this;
  return _.reduce(arguments, function(memo, form) {
    return memo + form.call(self);
  }, 0);
};

var subtract = function() {
  var self = this;
  return _.reduce( _.rest(arguments), function(memo, form) {
    return memo - form.call(self);
  }, _.initial(arguments));
};

var multiply = function() {
  var self = this;
  return _.reduce(arguments, function(m, f) {
    return m * f.call(self);
  }, 1);
};

var divide = function(a, b) {
  var self = this;
  return a.call(self) / b.call(self);
};

var exponentiate = function(base, pow) {
  var self = this;
  return Math.pow(base.call(self), pow.call(self));
};

var makeFunc = function (operator) {
  switch (operator) {
    case '+':
      return add;
    case '-':
      return subtract;
    case '*':
      return multiply;
    case '/':
      return divide;
    case '^':
      return exponentiate;
    case 'a':
      return function() { return this.a; };
    case 'b':
      return function() { return this.b; };
    case 'c':
      return function() { return this.c; };
    case 'd':
      return function() { return this.d; };
  }
};

var parse = function(str) {
  var depth = 0;
  var entered = false;

  var currentForm = '';
  var output = [];

  if (!hasForms(str) && !hasOperator(str)) {
    console.log('has no forms or operators');
    output.push(function() { return +str; });
  } else if (!hasForms && hasOperator(str)) {
    console.log('has no forms, has operators');
    var operator = hasOperator(str)[0];
    output.push( makeFunc(operator) );
  } else if (!hasForms && hasConstant(str)) {
    console.log('has no forms, has a constant');
    var constant = hasConstant(str)[0];
    output.push( makeFunc(constant) );
  }
  console.log(output);

  return function() {
    _.first(output).apply(this, _.rest(output));
  };
};