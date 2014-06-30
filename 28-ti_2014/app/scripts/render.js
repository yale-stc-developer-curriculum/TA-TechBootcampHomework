'use strict';

var GrapherCtrl = function ($scope) {
  $scope.a = 0;
  $scope.b = 0;
  $scope.c = 0;
  $scope.d = 0;

  $scope.canvas = document.getElementById('graph');

  $scope.transform = function(x) {
    return Math.pow(0.0025 * x, 9);
  };

  $scope.handleUpdate = function() {
    var vals = [$scope.a, $scope.b, $scope.c, $scope.d];
    var transformed = _.map(vals, $scope.transform);

    batchRender($scope.canvas, sinField.apply(this, transformed));
  };
};

var render = function(canvas, poly, context) {
  
  // Initialize a drawing context and figure out the width and
  // height of the canvas we have been given.
  var ctx    = canvas.getContext('2d');
  var width  = canvas.clientWidth;
  var height = canvas.clientHeight;
  
  // Evaluate the function along 1000 points of the viewable x-axis
  var xVals = defineDomain(0, width, 500);
  var yVals = evalFunction(poly, xVals);
  
  // Put the first point on the path
  ctx.beginPath();
  ctx.moveTo(xVals[0], height/2 - yVals[0]);
  
  // Draw invisible 'skeleton' of the line
  for(var i = 0; i < xVals.length; i++) {
    ctx.lineTo(xVals[i], height/2 - yVals[i]);
    ctx.moveTo(xVals[i], height/2 - yVals[i]);
  }
  
  // Draw the line onto the visible canvas
  ctx.strokeStyle = 'black';
  ctx.stroke();
};

var batchRender = function(canvas, fns) {

  // Clear the canvas for drawing
  var ctx = canvas.getContext('2d');
  ctx.clearRect(0, 0, canvas.width, canvas.height);

  _.each(fns, function(f) { render(canvas, f); });
};