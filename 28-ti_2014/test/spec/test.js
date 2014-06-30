/* global describe, it */

(function () {
  'use strict';

  describe('Grapher', function () {
    describe('exponents(nTerms)', function () {
      it('returns [0] when only a constant term is present', function() {
        expect(exponents(0)).to.deep.equal([0]);
      });
      it('returns correctly for a two polynomial function', function() {
        expect(exponents(2)).to.deep.equal([1, 0]);
      });
      it('returns correctly for a larger polynomial', function() {
        expect(exponents(20))
          .to.deep.equal([19, 18, 17, 16, 15, 14, 13, 12, 11,
                          10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0]);
      });
    });

    describe('polyTerm(x, a, b)', function() {
      it('polyTerm(1, 1, 1) = 1', function() {
        expect(polyTerm(1, 1, 1)).to.equal(1);
      });

      it('polyTerm(10, 5, 2) = 500', function() {
        expect(polyTerm(10, 5, 2)).to.equal(500);
      });

      it('polyTerm(0, 0, 0) = 0', function() {
        expect(polyTerm(0, 0, 0)).to.equal(0);
      });

      it('polyTerm(0, 10, 0) = 10', function() {
        expect(polyTerm(0, 10, 0)).to.equal(10);
      });
    });

    describe('polynomial(coefs, x)', function() {
      it('1 = 3x^2 + 2x + 1 |x:0', function() {
        expect(polynomial([3, 2, 1], 0)).to.equal(1);
      });

      it('0 = 0x^2 + 0x + 0 |x:100', function() {
        expect(polynomial([0, 0, 0], 0)).to.equal(0);
      });

      it('1e16 = x^8 |x:100', function() {
        expect(polynomial([1, 0, 0, 0, 0, 0, 0, 0, 0], 100)).to.equal(1e16);
      });
    });

    describe('makePolynomial(arg1, ...)', function() {
      it('can return a constant function', function() {
        expect( makePolynomial(10)(-50) ).to.equal(10);
      });

      it('can return an odd function (weirdo)', function() {
        expect( makePolynomial(-4, 0, 0, 1)(1) ).to.equal(-3);
      });

      it('can return a boring old quadratic, 321 = 3x^2 + 2x + 1 |x=100', function() {
        expect( makePolynomial(3, 2, 1)(10) ).to.equal(321);
      });
    });

    describe('makeTrig(a, b, trigFunc)', function() {
      it('can return a proper sin function', function() {
        expect( makeTrig(1, 1, Math.sin)(Math.PI/2)).to.equal(1);
      });

      it('can mirror a hard-coded cosine function like no other', function() {
        var xs = _.range(1000);
        var cos1 = makeTrig(1, 1, Math.cos);
        var cos2 = Math.cos;
        _.each(xs, function(x) {
          expect(cos1(x)).to.equal(cos2(x));
        });
      });
    });

    describe('makeCos(a, b) and makeSin(a, b)', function() {
      it('is a representation of a real cos function', function() {
        var f = Math.cos;
        var g = makeCos(1, 1);
        var n = _.range(1000);
        _.each(n, function(x){ expect(g(x)).to.equal(f(x)); });
      });

      it('is a representation of a real sin function', function() {
        var f = Math.sin;
        var g = makeSin(10, 1);
        var n = _.range(-1, 1, 2/1000);
        _.each(n, function(x){ expect(g(x)).to.equal(10*f(x)); });
      })
    });

    describe('addFunctions(arg1, ...)', function() {
      it('f(x) = [1x^2 + 2x + 3] + sin(2πx)', function() {
        var f = makePolynomial(1, 2, 3);
        var g = makeSin(1, 2*Math.PI);

        var h = addFunctions(f, g);

        var n = _.range(-15, 15, 30/1000);
        _.each(n, function(x) { expect(f(x) + g(x)).to.equal(h(x)); });
      });

      it('f(x) = g(x) + g(x) + g(x)', function() {
        var g = makePolynomial(1, 1, 1, 2, 3, 5, 6, 4, 5, 7, 6, 7);
        var f = addFunctions.apply(null, [g, g, g]);

        var n = _.range(-100, 100, 200/1000);
        _.each(n, function(x) {expect(f(x)).to.equal(3*g(x)); });
      });
    });

    describe('evalFunction(f, xPoints)', function() {
      it('can take a full blown sine wave to the face without flinching', function() {
        expect( evalFunction( makeSin(1e3, 1e-3), _.range(1000) ) ).to.deep.equal((function() {
          return _.map(_.range(1000), function(x){return 1e3*Math.sin(1e-3*x);});
        })());
      });

      it('yields an adorable sequence of squared numbers upon command', function() {
        expect( evalFunction(makePolynomial(1, 0, 0), [1, 2, 3, 4, 5, 6, 7, 8]) )
          .to.deep.equal([1, 4, 9, 16, 25, 36, 49, 64]);
      });
    });

    describe('defineDomain(xStart, xEnd, nPoints)', function() {

    });

    // describe('Parser.js', function() {
    //   it('hasOperator() should recognize simple expressions', function() {
    //     var q = hasForms('(+ 2 2)');
    //     expect(q).to.equal(true);
    //   });

    //   it('hasForms() should recognize forms', function() {

    //   });

    //   it('hasOperator() should return the first expression in a form', function() {
    //     expect( hasOperator('(+ 2 2)')[0])           .to.equal('+');
    //     expect( hasOperator('(sin 2 (cos 1))')[0] )  .to.equal('sin');
    //     expect( hasOperator('(cos 2 2)')[0] )        .to.equal('cos');
    //     expect( hasOperator('(/ 2 (+ 3 4 5 6))')[0] ).to.equal('/');
    //     expect( hasOperator('(- 2 2)')[0] )          .to.equal('-');
    //     expect( hasOperator('(* 2 2)')[0] )          .to.equal('*');
    //     expect( hasOperator('(^ (sin 4) 2)')[0] )    .to.equal('^');
    //   });

    //   it('multiply() performs multiplication on functions', function() {
    //     var a = makeFunc('a');
    //     expect( multiply.apply({a:10}, [a,a,a])).to.equal(1000);
    //   });
    // });
  });
})();
