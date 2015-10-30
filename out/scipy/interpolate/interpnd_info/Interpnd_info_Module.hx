/* This file is generated, do not edit! */
package scipy.interpolate.interpnd_info;
@:pythonImport("scipy.interpolate.interpnd_info") extern class Interpnd_info_Module {
	static public var C : Dynamic;
	static public function CC(args:Dynamic):Dynamic;
	static public var Catalan : Dynamic;
	static public var E : Dynamic;
	/**
		Classical case of the generalized exponential integral.
		
		This is equivalent to ``expint(1, z)``.
		
		See Also
		========
		
		Ei: Exponential integral.
		expint: Generalised exponential integral.
		li: Logarithmic integral.
		Li: Offset logarithmic integral.
		Si: Sine integral.
		Ci: Cosine integral.
		Shi: Hyperbolic sine integral.
		Chi: Hyperbolic cosine integral.
	**/
	static public function E1(z:Dynamic):Dynamic;
	static public function EX(args:Dynamic):Dynamic;
	/**
		Represent the Levi-Civita symbol.
		
		This is just compatibility wrapper to ``LeviCivita()``.
		
		See Also
		========
		
		LeviCivita
	**/
	static public function Eijk(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var EulerGamma : Dynamic;
	static public var FU : Dynamic;
	static public var GoldenRatio : Dynamic;
	/**
		Apply the Gram-Schmidt process to a set of vectors.
		
		see: http://en.wikipedia.org/wiki/Gram%E2%80%93Schmidt_process
	**/
	static public function GramSchmidt(vlist:Dynamic, ?orthog:Dynamic):Dynamic;
	static public var I : Dynamic;
	static public function Id(args:Dynamic):Dynamic;
	/**
		Return the leading coefficient of ``f``.
		
		Examples
		========
		
		>>> from sympy import LC
		>>> from sympy.abc import x, y
		
		>>> LC(4*x**2 + 2*x*y**2 + x*y + 3*y)
		4
	**/
	static public function LC(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return the leading monomial of ``f``.
		
		Examples
		========
		
		>>> from sympy import LM
		>>> from sympy.abc import x, y
		
		>>> LM(4*x**2 + 2*x*y**2 + x*y + 3*y)
		x**2
	**/
	static public function LM(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return the leading term of ``f``.
		
		Examples
		========
		
		>>> from sympy import LT
		>>> from sympy.abc import x, y
		
		>>> LT(4*x**2 + 2*x*y**2 + x*y + 3*y)
		4*x**2
	**/
	static public function LT(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Calls x.evalf(n, \*\*options).
		
		Both .n() and N() are equivalent to .evalf(); use the one that you like better.
		See also the docstring of .evalf() for information on the options.
		
		Examples
		========
		
		>>> from sympy import Sum, oo, N
		>>> from sympy.abc import k
		>>> Sum(1/k**k, (k, 1, oo))
		Sum(k**(-k), (k, 1, oo))
		>>> N(_, 4)
		1.291
	**/
	static public function N(x:Dynamic, ?n:Dynamic, options:Dynamic):Dynamic;
	/**
		The POSform function uses simplified_pairs and a redundant-group
		eliminating algorithm to convert the list of all input combinations
		that generate '1' (the minterms) into the smallest Product of Sums form.
		
		The variables must be given as the first argument.
		
		Return a logical And function (i.e., the "product of sums" or "POS"
		form) that gives the desired outcome. If there are inputs that can
		be ignored, pass them as a list, too.
		
		The result will be one of the (perhaps many) functions that satisfy
		the conditions.
		
		Examples
		========
		
		>>> from sympy.logic import POSform
		>>> minterms = [[0, 0, 0, 1], [0, 0, 1, 1], [0, 1, 1, 1],
		...             [1, 0, 1, 1], [1, 1, 1, 1]]
		>>> dontcares = [[0, 0, 0, 0], [0, 0, 1, 0], [0, 1, 0, 1]]
		>>> POSform(['w','x','y','z'], minterms, dontcares)
		And(Or(Not(w), y), z)
		
		References
		==========
		
		.. [1] en.wikipedia.org/wiki/Quine-McCluskey_algorithm
	**/
	static public function POSform(variables:Dynamic, minterms:Dynamic, ?dontcares:Dynamic):Dynamic;
	static public function QQ(args:Dynamic):Dynamic;
	static public function RR(args:Dynamic):Dynamic;
	static public function S(?locals:Dynamic, ?convert_xor:Dynamic, ?strict:Dynamic, ?rational:Dynamic, ?evaluate:Dynamic):Dynamic;
	/**
		The SOPform function uses simplified_pairs and a redundant group-
		eliminating algorithm to convert the list of all input combos that
		generate '1' (the minterms) into the smallest Sum of Products form.
		
		The variables must be given as the first argument.
		
		Return a logical Or function (i.e., the "sum of products" or "SOP"
		form) that gives the desired outcome. If there are inputs that can
		be ignored, pass them as a list, too.
		
		The result will be one of the (perhaps many) functions that satisfy
		the conditions.
		
		Examples
		========
		
		>>> from sympy.logic import SOPform
		>>> minterms = [[0, 0, 0, 1], [0, 0, 1, 1],
		...             [0, 1, 1, 1], [1, 0, 1, 1], [1, 1, 1, 1]]
		>>> dontcares = [[0, 0, 0, 0], [0, 0, 1, 0], [0, 1, 0, 1]]
		>>> SOPform(['w','x','y','z'], minterms, dontcares)
		Or(And(Not(w), z), And(y, z))
		
		References
		==========
		
		.. [1] en.wikipedia.org/wiki/Quine-McCluskey_algorithm
	**/
	static public function SOPform(variables:Dynamic, minterms:Dynamic, ?dontcares:Dynamic):Dynamic;
	static public var SYMPY_DEBUG : Dynamic;
	/**
		Deprecated alias for the ImageSet constructor.
	**/
	static public function TransformationSet(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Conjugate spherical harmonics defined as
		
		.. math::
		    \overline{Y_n^m(\theta, \varphi)} := (-1)^m Y_n^{-m}(\theta, \varphi)
		
		See Also
		========
		
		Ynm, Znm
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Spherical_harmonics
		.. [2] http://mathworld.wolfram.com/SphericalHarmonic.html
		.. [3] http://functions.wolfram.com/Polynomials/SphericalHarmonicY/
	**/
	static public function Ynm_c(n:Dynamic, m:Dynamic, theta:Dynamic, phi:Dynamic):Dynamic;
	static public function ZZ(args:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _estimate_gradients_2d_global():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute partial fraction decomposition of a rational function.
		
		Given a rational function ``f``, computes the partial fraction
		decomposition of ``f``. Two algorithms are available: One is based on the
		undertermined coefficients method, the other is Bronstein's full partial
		fraction decomposition algorithm.
		
		The undetermined coefficients method (selected by ``full=False``) uses
		polynomial factorization (and therefore accepts the same options as
		factor) for the denominator. Per default it works over the rational
		numbers, therefore decomposition of denominators with non-rational roots
		(e.g. irrational, complex roots) is not supported by default (see options
		of factor).
		
		Bronstein's algorithm can be selected by using ``full=True`` and allows a
		decomposition of denominators with non-rational roots. A human-readable
		result can be obtained via ``doit()`` (see examples below).
		
		Examples
		========
		
		>>> from sympy.polys.partfrac import apart
		>>> from sympy.abc import x, y
		
		By default, using the undetermined coefficients method:
		
		>>> apart(y/(x + 2)/(x + 1), x)
		-y/(x + 2) + y/(x + 1)
		
		The undetermined coefficients method does not provide a result when the
		denominators roots are not rational:
		
		>>> apart(y/(x**2 + x + 1), x)
		y/(x**2 + x + 1)
		
		You can choose Bronstein's algorithm by setting ``full=True``:
		
		>>> apart(y/(x**2 + x + 1), x, full=True)
		RootSum(_w**2 + _w + 1, Lambda(_a, (-2*_a*y/3 - y/3)/(-_a + x)))
		
		Calling ``doit()`` yields a human-readable result:
		
		>>> apart(y/(x**2 + x + 1), x, full=True).doit()
		(-y/3 - 2*y*(-1/2 - sqrt(3)*I/2)/3)/(x + 1/2 + sqrt(3)*I/2) + (-y/3 -
		    2*y*(-1/2 + sqrt(3)*I/2)/3)/(x + 1/2 - sqrt(3)*I/2)
		
		
		See Also
		========
		
		apart_list, assemble_partfrac_list
	**/
	static public function apart(f:Dynamic, ?x:Dynamic, ?full:Dynamic, options:Dynamic):Dynamic;
	/**
		Compute partial fraction decomposition of a rational function
		and return the result in structured form.
		
		Given a rational function ``f`` compute the partial fraction decomposition
		of ``f``. Only Bronstein's full partial fraction decomposition algorithm
		is supported by this method. The return value is highly structured and
		perfectly suited for further algorithmic treatment rather than being
		human-readable. The function returns a tuple holding three elements:
		
		* The first item is the common coefficient, free of the variable `x` used
		  for decomposition. (It is an element of the base field `K`.)
		
		* The second item is the polynomial part of the decomposition. This can be
		  the zero polynomial. (It is an element of `K[x]`.)
		
		* The third part itself is a list of quadruples. Each quadruple
		  has the following elements in this order:
		
		  - The (not necessarily irreducible) polynomial `D` whose roots `w_i` appear
		    in the linear denominator of a bunch of related fraction terms. (This item
		    can also be a list of explicit roots. However, at the moment ``apart_list``
		    never returns a result this way, but the related ``assemble_partfrac_list``
		    function accepts this format as input.)
		
		  - The numerator of the fraction, written as a function of the root `w`
		
		  - The linear denominator of the fraction *excluding its power exponent*,
		    written as a function of the root `w`.
		
		  - The power to which the denominator has to be raised.
		
		On can always rebuild a plain expression by using the function ``assemble_partfrac_list``.
		
		Examples
		========
		
		A first example:
		
		>>> from sympy.polys.partfrac import apart_list, assemble_partfrac_list
		>>> from sympy.abc import x, t
		
		>>> f = (2*x**3 - 2*x) / (x**2 - 2*x + 1)
		>>> pfd = apart_list(f)
		>>> pfd
		(1,
		Poly(2*x + 4, x, domain='ZZ'),
		[(Poly(_w - 1, _w, domain='ZZ'), Lambda(_a, 4), Lambda(_a, -_a + x), 1)])
		
		>>> assemble_partfrac_list(pfd)
		2*x + 4 + 4/(x - 1)
		
		Second example:
		
		>>> f = (-2*x - 2*x**2) / (3*x**2 - 6*x)
		>>> pfd = apart_list(f)
		>>> pfd
		(-1,
		Poly(2/3, x, domain='QQ'),
		[(Poly(_w - 2, _w, domain='ZZ'), Lambda(_a, 2), Lambda(_a, -_a + x), 1)])
		
		>>> assemble_partfrac_list(pfd)
		-2/3 - 2/(x - 2)
		
		Another example, showing symbolic parameters:
		
		>>> pfd = apart_list(t/(x**2 + x + t), x)
		>>> pfd
		(1,
		Poly(0, x, domain='ZZ[t]'),
		[(Poly(_w**2 + _w + t, _w, domain='ZZ[t]'),
		Lambda(_a, -2*_a*t/(4*t - 1) - t/(4*t - 1)),
		Lambda(_a, -_a + x),
		1)])
		
		>>> assemble_partfrac_list(pfd)
		RootSum(_w**2 + _w + t, Lambda(_a, (-2*_a*t/(4*t - 1) - t/(4*t - 1))/(-_a + x)))
		
		This example is taken from Bronstein's original paper:
		
		>>> f = 36 / (x**5 - 2*x**4 - 2*x**3 + 4*x**2 + x - 2)
		>>> pfd = apart_list(f)
		>>> pfd
		(1,
		Poly(0, x, domain='ZZ'),
		[(Poly(_w - 2, _w, domain='ZZ'), Lambda(_a, 4), Lambda(_a, -_a + x), 1),
		(Poly(_w**2 - 1, _w, domain='ZZ'), Lambda(_a, -3*_a - 6), Lambda(_a, -_a + x), 2),
		(Poly(_w + 1, _w, domain='ZZ'), Lambda(_a, -4), Lambda(_a, -_a + x), 1)])
		
		>>> assemble_partfrac_list(pfd)
		-4/(x + 1) - 3/(x + 1)**2 - 9/(x - 1)**2 + 4/(x - 2)
		
		See also
		========
		
		apart, assemble_partfrac_list
		
		References
		==========
		
		1. [Bronstein93]_
	**/
	static public function apart_list(f:Dynamic, ?x:Dynamic, ?dummies:Dynamic, options:Dynamic):Dynamic;
	/**
		Calculates the finite difference approximation of
		the derivative of requested order at x0 from points
		provided in x_list and y_list.
		
		Parameters
		==========
		
		order: int
		    order of derivative to approximate. 0 corresponds to interpolation.
		x_list: sequence
		    Strictly monotonically increasing sequence of values for
		    the independent variable.
		y_list: sequence
		    The function value at corresponding values for the independent
		    variable in x_list.
		x0: Number or Symbol
		    At what value of the independent variable the derivative should be
		    evaluated.
		
		Returns
		=======
		
		sympy.core.add.Add or sympy.core.numbers.Number
		    The finite difference expression approximating the requested
		    derivative order at x0.
		
		Examples
		========
		
		>>> from sympy.calculus import apply_finite_diff
		>>> cube = lambda arg: (1.0*arg)**3
		>>> xlist = range(-3,3+1)
		>>> apply_finite_diff(2, xlist, map(cube, xlist), 2) - 12 # doctest: +SKIP
		-3.55271367880050e-15
		
		we see that the example above only contain rounding errors.
		apply_finite_diff can also be used on more abstract objects:
		
		>>> from sympy import IndexedBase, Idx
		>>> from sympy.calculus import apply_finite_diff
		>>> x, y = map(IndexedBase, 'xy')
		>>> i = Idx('i')
		>>> x_list, y_list = zip(*[(x[i+j], y[i+j]) for j in range(-1,2)])
		>>> apply_finite_diff(1, x_list, y_list, x[i])
		(-1 + (x[i + 1] - x[i])/(-x[i - 1] + x[i]))*y[i]/(x[i + 1] - x[i]) + (-x[i - 1] + x[i])*y[i + 1]/((-x[i - 1] + x[i + 1])*(x[i + 1] - x[i])) - (x[i + 1] - x[i])*y[i - 1]/((-x[i - 1] + x[i + 1])*(-x[i - 1] + x[i]))
		
		
		Notes
		=====
		
		Order = 0 corresponds to interpolation.
		Only supply so many points you think makes sense
		to around x0 when extracting the derivative (the function
		need to be well behaved within that region). Also beware
		of Runge's phenomenon.
		
		See also
		========
		
		sympy.calculus.finite_diff.finite_diff_weights
		
		References
		==========
		
		Fortran 90 implementation with Python interface for numerics: finitediff_
		
		.. _finitediff: https://github.com/bjodah/finitediff
	**/
	static public function apply_finite_diff(order:Dynamic, x_list:Dynamic, y_list:Dynamic, x0:Dynamic):Dynamic;
	/**
		Are two geometrical entities similar.
		
		Can one geometrical entity be uniformly scaled to the other?
		
		Parameters
		==========
		
		e1 : GeometryEntity
		e2 : GeometryEntity
		
		Returns
		=======
		
		are_similar : boolean
		
		Raises
		======
		
		GeometryError
		    When `e1` and `e2` cannot be compared.
		
		Notes
		=====
		
		If the two objects are equal then they are similar.
		
		See Also
		========
		
		sympy.geometry.entity.GeometryEntity.is_similar
		
		Examples
		========
		
		>>> from sympy import Point, Circle, Triangle, are_similar
		>>> c1, c2 = Circle(Point(0, 0), 4), Circle(Point(1, 4), 3)
		>>> t1 = Triangle(Point(0, 0), Point(1, 0), Point(0, 1))
		>>> t2 = Triangle(Point(0, 0), Point(2, 0), Point(0, 2))
		>>> t3 = Triangle(Point(0, 0), Point(3, 0), Point(0, 1))
		>>> are_similar(t1, t2)
		True
		>>> are_similar(t1, t3)
		False
	**/
	static public function are_similar(e1:Dynamic, e2:Dynamic):Dynamic;
	/**
		Returns an approximation of a derivative of a function in
		the form of a finite difference formula. The expression is a
		weighted sum of the function at a number of discrete values of
		(one of) the independent variable(s).
		
		Parameters
		==========
		
		derivative: a Derivative instance (needs to have an variables
		    and expr attribute).
		
		points: sequence or coefficient, optional
		    If sequence: discrete values (length >= order+1) of the
		    independent variable used for generating the finite
		    difference weights.
		    If it is a coefficient, it will be used as the step-size
		    for generating an equidistant sequence of length order+1
		    centered around x0. default: 1 (step-size 1)
		
		x0: number or Symbol, optional
		    the value of the independent variable (wrt) at which the
		    derivative is to be approximated. default: same as wrt
		
		wrt: Symbol, optional
		    "with respect to" the variable for which the (partial)
		    derivative is to be approximated for. If not provided it
		    is required that the Derivative is ordinary. default: None
		
		
		Examples
		========
		
		>>> from sympy import symbols, Function, exp, sqrt, Symbol, as_finite_diff
		>>> x, h = symbols('x h')
		>>> f = Function('f')
		>>> as_finite_diff(f(x).diff(x))
		-f(x - 1/2) + f(x + 1/2)
		
		The default step size and number of points are 1 and ``order + 1``
		respectively. We can change the step size by passing a symbol
		as a parameter:
		
		>>> as_finite_diff(f(x).diff(x), h)
		-f(-h/2 + x)/h + f(h/2 + x)/h
		
		We can also specify the discretized values to be used in a sequence:
		
		>>> as_finite_diff(f(x).diff(x), [x, x+h, x+2*h])
		-3*f(x)/(2*h) + 2*f(h + x)/h - f(2*h + x)/(2*h)
		
		The algorithm is not restricted to use equidistant spacing, nor
		do we need to make the approximation around x0, but we can get
		an expression estimating the derivative at an offset:
		
		>>> e, sq2 = exp(1), sqrt(2)
		>>> xl = [x-h, x+h, x+e*h]
		>>> as_finite_diff(f(x).diff(x, 1), xl, x+h*sq2)
		2*h*((h + sqrt(2)*h)/(2*h) - (-sqrt(2)*h + h)/(2*h))*f(E*h + x)/((-h + E*h)*(h + E*h)) + (-(-sqrt(2)*h + h)/(2*h) - (-sqrt(2)*h + E*h)/(2*h))*f(-h + x)/(h + E*h) + (-(h + sqrt(2)*h)/(2*h) + (-sqrt(2)*h + E*h)/(2*h))*f(h + x)/(-h + E*h)
		
		Partial derivatives are also supported:
		
		>>> y = Symbol('y')
		>>> d2fdxdy=f(x,y).diff(x,y)
		>>> as_finite_diff(d2fdxdy, wrt=x)
		-f(x - 1/2, y) + f(x + 1/2, y)
		
		See also
		========
		
		sympy.calculus.finite_diff.apply_finite_diff
		sympy.calculus.finite_diff.finite_diff_weights
	**/
	static public function as_finite_diff(derivative:Dynamic, ?points:Dynamic, ?x0:Dynamic, ?wrt:Dynamic):Dynamic;
	/**
		Method for inferring properties about objects.
		
		**Syntax**
		
		    * ask(proposition)
		
		    * ask(proposition, assumptions)
		
		        where ``proposition`` is any boolean expression
		
		Examples
		========
		
		>>> from sympy import ask, Q, pi
		>>> from sympy.abc import x, y
		>>> ask(Q.rational(pi))
		False
		>>> ask(Q.even(x*y), Q.even(x) & Q.integer(y))
		True
		>>> ask(Q.prime(x*y), Q.integer(x) &  Q.integer(y))
		False
		
		**Remarks**
		    Relations in assumptions are not implemented (yet), so the following
		    will not give a meaningful result.
		
		    >>> ask(Q.positive(x), Q.is_true(x > 0)) # doctest: +SKIP
		
		    It is however a work in progress.
	**/
	static public function ask(proposition:Dynamic, ?assumptions:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Reassemble a full partial fraction decomposition
		from a structured result obtained by the function ``apart_list``.
		
		Examples
		========
		
		This example is taken from Bronstein's original paper:
		
		>>> from sympy.polys.partfrac import apart_list, assemble_partfrac_list
		>>> from sympy.abc import x, y
		
		>>> f = 36 / (x**5 - 2*x**4 - 2*x**3 + 4*x**2 + x - 2)
		>>> pfd = apart_list(f)
		>>> pfd
		(1,
		Poly(0, x, domain='ZZ'),
		[(Poly(_w - 2, _w, domain='ZZ'), Lambda(_a, 4), Lambda(_a, -_a + x), 1),
		(Poly(_w**2 - 1, _w, domain='ZZ'), Lambda(_a, -3*_a - 6), Lambda(_a, -_a + x), 2),
		(Poly(_w + 1, _w, domain='ZZ'), Lambda(_a, -4), Lambda(_a, -_a + x), 1)])
		
		>>> assemble_partfrac_list(pfd)
		-4/(x + 1) - 3/(x + 1)**2 - 9/(x - 1)**2 + 4/(x - 2)
		
		If we happen to know some roots we can provide them easily inside the structure:
		
		>>> pfd = apart_list(2/(x**2-2))
		>>> pfd
		(1,
		Poly(0, x, domain='ZZ'),
		[(Poly(_w**2 - 2, _w, domain='ZZ'),
		Lambda(_a, _a/2),
		Lambda(_a, -_a + x),
		1)])
		
		>>> pfda = assemble_partfrac_list(pfd)
		>>> pfda
		RootSum(_w**2 - 2, Lambda(_a, _a/(-_a + x)))/2
		
		>>> pfda.doit()
		-sqrt(2)/(2*(x + sqrt(2))) + sqrt(2)/(2*(x - sqrt(2)))
		
		>>> from sympy import Dummy, Poly, Lambda, sqrt
		>>> a = Dummy("a")
		>>> pfd = (1, Poly(0, x, domain='ZZ'), [([sqrt(2),-sqrt(2)], Lambda(a, a/2), Lambda(a, -a + x), 1)])
		
		>>> assemble_partfrac_list(pfd)
		-sqrt(2)/(2*(x + sqrt(2))) + sqrt(2)/(2*(x - sqrt(2)))
		
		See also
		========
		
		apart, apart_list
	**/
	static public function assemble_partfrac_list(partial_list:Dynamic):Dynamic;
	/**
		Context manager for assumptions
		
		Examples
		========
		
		>>> from sympy.assumptions import assuming, Q, ask
		>>> from sympy.abc import x, y
		
		>>> print(ask(Q.integer(x + y)))
		None
		
		>>> with assuming(Q.integer(x), Q.integer(y)):
		...     print(ask(Q.integer(x + y)))
		True
	**/
	static public function assuming(assumptions:Dynamic):Dynamic;
	/**
		Simplify bessel-type functions.
		
		This routine tries to simplify bessel-type functions. Currently it only
		works on the Bessel J and I functions, however. It works by looking at all
		such functions in turn, and eliminating factors of "I" and "-1" (actually
		their polar equivalents) in front of the argument. Then, functions of
		half-integer order are rewritten using trigonometric functions and
		functions of integer order (> 1) are rewritten using functions
		of low order.  Finally, if the expression was changed, compute
		factorization of the result with factor().
		
		>>> from sympy import besselj, besseli, besselsimp, polar_lift, I, S
		>>> from sympy.abc import z, nu
		>>> besselsimp(besselj(nu, z*polar_lift(-1)))
		exp(I*pi*nu)*besselj(nu, z)
		>>> besselsimp(besseli(nu, z*polar_lift(-I)))
		exp(-I*pi*nu/2)*besselj(nu, z)
		>>> besselsimp(besseli(S(-1)/2, z))
		sqrt(2)*cosh(z)/(sqrt(pi)*sqrt(z))
		>>> besselsimp(z*besseli(0, z) + z*(besseli(2, z))/2 + besseli(1, z))
		3*z*besseli(0, z)/2
	**/
	static public function besselsimp(expr:Dynamic):Dynamic;
	/**
		Return a dictionary containing pairs :math:`{(k1,k2) : C_kn}` where
		:math:`C_kn` are binomial coefficients and :math:`n=k1+k2`.
		Examples
		========
		
		>>> from sympy.ntheory import binomial_coefficients
		>>> binomial_coefficients(9)
		{(0, 9): 1, (1, 8): 9, (2, 7): 36, (3, 6): 84,
		 (4, 5): 126, (5, 4): 126, (6, 3): 84, (7, 2): 36, (8, 1): 9, (9, 0): 1}
		
		See Also
		========
		
		binomial_coefficients_list, multinomial_coefficients
	**/
	static public function binomial_coefficients(n:Dynamic):Dynamic;
	/**
		Return a list of binomial coefficients as rows of the Pascal's
		triangle.
		
		Examples
		========
		
		>>> from sympy.ntheory import binomial_coefficients_list
		>>> binomial_coefficients_list(9)
		[1, 9, 36, 84, 126, 126, 84, 36, 9, 1]
		
		See Also
		========
		
		binomial_coefficients, multinomial_coefficients
	**/
	static public function binomial_coefficients_list(n:Dynamic):Dynamic;
	/**
		Evaluates a block matrix expression
		
		>>> from sympy import MatrixSymbol, BlockMatrix, symbols,                           Identity, Matrix, ZeroMatrix, block_collapse
		>>> n,m,l = symbols('n m l')
		>>> X = MatrixSymbol('X', n, n)
		>>> Y = MatrixSymbol('Y', m ,m)
		>>> Z = MatrixSymbol('Z', n, m)
		>>> B = BlockMatrix([[X, Z], [ZeroMatrix(m, n), Y]])
		>>> print(B)
		Matrix([
		[X, Z],
		[0, Y]])
		
		>>> C = BlockMatrix([[Identity(n), Z]])
		>>> print(C)
		Matrix([[I, Z]])
		
		>>> print(block_collapse(C*B))
		Matrix([[X, Z*Y + Z]])
	**/
	static public function block_collapse(expr:Dynamic):Dynamic;
	/**
		Cut a matrix expression into Blocks
		
		>>> from sympy import ImmutableMatrix, blockcut
		>>> M = ImmutableMatrix(4, 4, range(16))
		>>> B = blockcut(M, (1, 3), (1, 3))
		>>> type(B).__name__
		'BlockMatrix'
		>>> ImmutableMatrix(B.blocks[0, 1])
		Matrix([[1, 2, 3]])
	**/
	static public function blockcut(expr:Dynamic, rowsizes:Dynamic, colsizes:Dynamic):Dynamic;
	/**
		Return True if the two expressions represent the same logical
		behaviour for some correspondence between the variables of each
		(which may be different). For example, And(x, y) is logically
		equivalent to And(a, b) for {x: a, y: b} (or vice versa). If the
		mapping is desired, then set ``info`` to True and the simplified
		form of the functions and mapping of variables will be returned.
	**/
	static public function bool_equal(bool1:Dynamic, bool2:Dynamic, ?info:Dynamic):Dynamic;
	/**
		Return the simplified version of bool1, and the mapping of variables
		that makes the two expressions bool1 and bool2 represent the same
		logical behaviour for some correspondence between the variables
		of each.
		If more than one mappings of this sort exist, one of them
		is returned.
		For example, And(x, y) is logically equivalent to And(a, b) for
		the mapping {x: a, y:b} or {x: b, y:a}.
		If no such mapping exists, return False.
		
		Examples
		========
		
		>>> from sympy import SOPform, bool_map, Or, And, Not, Xor
		>>> from sympy.abc import w, x, y, z, a, b, c, d
		>>> function1 = SOPform(['x','z','y'],[[1, 0, 1], [0, 0, 1]])
		>>> function2 = SOPform(['a','b','c'],[[1, 0, 1], [1, 0, 0]])
		>>> bool_map(function1, function2)
		(And(Not(z), y), {y: a, z: b})
		
		The results are not necessarily unique, but they are canonical. Here,
		``(w, z)`` could be ``(a, d)`` or ``(d, a)``:
		
		>>> eq =  Or(And(Not(y), w), And(Not(y), z), And(x, y))
		>>> eq2 = Or(And(Not(c), a), And(Not(c), d), And(b, c))
		>>> bool_map(eq, eq2)
		(Or(And(Not(y), w), And(Not(y), z), And(x, y)), {w: a, x: b, y: c, z: d})
		>>> eq = And(Xor(a, b), c, And(c,d))
		>>> bool_map(eq, eq.subs(c, x))
		(And(Or(Not(a), Not(b)), Or(a, b), c, d), {a: a, b: b, c: d, d: x})
	**/
	static public function bool_map(bool1:Dynamic, bool2:Dynamic):Dynamic;
	/**
		The `n`-th B-spline at `x` of degree `d` with knots.
		
		B-Splines are piecewise polynomials of degree `d` [1]_.  They are defined on
		a set of knots, which is a sequence of integers or floats.
		
		The 0th degree splines have a value of one on a single interval:
		
		    >>> from sympy import bspline_basis
		    >>> from sympy.abc import x
		    >>> d = 0
		    >>> knots = range(5)
		    >>> bspline_basis(d, knots, 0, x)
		    Piecewise((1, And(x <= 1, x >= 0)), (0, True))
		
		For a given ``(d, knots)`` there are ``len(knots)-d-1`` B-splines defined, that
		are indexed by ``n`` (starting at 0).
		
		Here is an example of a cubic B-spline:
		
		    >>> bspline_basis(3, range(5), 0, x)
		    Piecewise((x**3/6, And(x < 1, x >= 0)),
		              (-x**3/2 + 2*x**2 - 2*x + 2/3, And(x < 2, x >= 1)),
		              (x**3/2 - 4*x**2 + 10*x - 22/3, And(x < 3, x >= 2)),
		              (-x**3/6 + 2*x**2 - 8*x + 32/3, And(x <= 4, x >= 3)),
		              (0, True))
		
		By repeating knot points, you can introduce discontinuities in the
		B-splines and their derivatives:
		
		    >>> d = 1
		    >>> knots = [0,0,2,3,4]
		    >>> bspline_basis(d, knots, 0, x)
		    Piecewise((-x/2 + 1, And(x <= 2, x >= 0)), (0, True))
		
		It is quite time consuming to construct and evaluate B-splines. If you
		need to evaluate a B-splines many times, it is best to lambdify them
		first:
		
		    >>> from sympy import lambdify
		    >>> d = 3
		    >>> knots = range(10)
		    >>> b0 = bspline_basis(d, knots, 0, x)
		    >>> f = lambdify(x, b0)
		    >>> y = f(0.5)
		
		See Also
		========
		
		bsplines_basis_set
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/B-spline
	**/
	static public function bspline_basis(d:Dynamic, knots:Dynamic, n:Dynamic, x:Dynamic, ?close:Dynamic):Dynamic;
	/**
		Return the ``len(knots)-d-1`` B-splines at ``x`` of degree ``d`` with ``knots``.
		
		This function returns a list of Piecewise polynomials that are the
		``len(knots)-d-1`` B-splines of degree ``d`` for the given knots. This function
		calls ``bspline_basis(d, knots, n, x)`` for different values of ``n``.
		
		Examples
		========
		
		>>> from sympy import bspline_basis_set
		>>> from sympy.abc import x
		>>> d = 2
		>>> knots = range(5)
		>>> splines = bspline_basis_set(d, knots, x)
		>>> splines
		[Piecewise((x**2/2, And(x < 1, x >= 0)),
		           (-x**2 + 3*x - 3/2, And(x < 2, x >= 1)),
		           (x**2/2 - 3*x + 9/2, And(x <= 3, x >= 2)),
		           (0, True)),
		 Piecewise((x**2/2 - x + 1/2, And(x < 2, x >= 1)),
		           (-x**2 + 5*x - 11/2, And(x < 3, x >= 2)),
		           (x**2/2 - 4*x + 8, And(x <= 4, x >= 3)),
		           (0, True))]
		
		See Also
		========
		
		bsplines_basis
	**/
	static public function bspline_basis_set(d:Dynamic, knots:Dynamic, x:Dynamic):Dynamic;
	static public function cacheit(func:Dynamic):Dynamic;
	/**
		Cancel common factors in a rational function ``f``.
		
		Examples
		========
		
		>>> from sympy import cancel, sqrt, Symbol
		>>> from sympy.abc import x
		>>> A = Symbol('A', commutative=False)
		
		>>> cancel((2*x**2 - 2)/(x**2 - 2*x + 1))
		(2*x + 2)/(x - 1)
		>>> cancel((sqrt(3) + sqrt(15)*A)/(sqrt(2) + sqrt(10)*A))
		sqrt(6)/2
	**/
	static public function cancel(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return the printed output of func().
		
		`func` should be a function without arguments that produces output with
		print statements.
		
		>>> from sympy.utilities.iterables import capture
		>>> from sympy import pprint
		>>> from sympy.abc import x
		>>> def foo():
		...     print('hello world!')
		...
		>>> 'hello' in capture(foo) # foo, not foo()
		True
		>>> capture(lambda: pprint(2/x))
		'2\n-\nx\n'
	**/
	static public function capture(func:Dynamic):Dynamic;
	/**
		Given linear difference operator L of order 'k' and homogeneous
		equation Ly = 0 we want to compute kernel of L, which is a set
		of 'k' sequences: a(n), b(n), ... z(n).
		
		Solutions of L are linearly independent iff their Casoratian,
		denoted as C(a, b, ..., z), do not vanish for n = 0.
		
		Casoratian is defined by k x k determinant::
		
		           +  a(n)     b(n)     . . . z(n)     +
		           |  a(n+1)   b(n+1)   . . . z(n+1)   |
		           |    .         .     .        .     |
		           |    .         .       .      .     |
		           |    .         .         .    .     |
		           +  a(n+k-1) b(n+k-1) . . . z(n+k-1) +
		
		It proves very useful in rsolve_hyper() where it is applied
		to a generating set of a recurrence to factor out linearly
		dependent solutions and return a basis:
		
		>>> from sympy import Symbol, casoratian, factorial
		>>> n = Symbol('n', integer=True)
		
		Exponential and factorial are linearly independent:
		
		>>> casoratian([2**n, factorial(n)], n) != 0
		True
	**/
	static public function casoratian(seqs:Dynamic, n:Dynamic, ?zero:Dynamic):Dynamic;
	/**
		This function computes the principial cube root of `arg`, so
		it's just a shortcut for `arg**Rational(1, 3)`.
		
		Examples
		========
		
		>>> from sympy import cbrt, Symbol
		>>> x = Symbol('x')
		
		>>> cbrt(x)
		x**(1/3)
		
		>>> cbrt(x)**3
		x
		
		Note that cbrt(x**3) does not simplify to x.
		
		>>> cbrt(x**3)
		(x**3)**(1/3)
		
		This is because the two are not equal to each other in general.
		For example, consider `x == -1`:
		
		>>> from sympy import Eq
		>>> Eq(cbrt(x**3), x).subs(x, -1)
		False
		
		This is because cbrt computes the principal cube root, this
		identity does hold if `x` is positive:
		
		>>> y = Symbol('y', positive=True)
		>>> cbrt(y**3)
		y
		
		See Also
		========
		
		sympy.polys.rootoftools.RootOf, root, real_root
		
		References
		==========
		
		* http://en.wikipedia.org/wiki/Cube_root
		* http://en.wikipedia.org/wiki/Principal_value
	**/
	static public function cbrt(arg:Dynamic):Dynamic;
	/**
		Converts an expr to a string of c code
		
		Parameters
		==========
		
		expr : Expr
		    A sympy expression to be converted.
		assign_to : optional
		    When given, the argument is used as the name of the variable to which
		    the expression is assigned. Can be a string, ``Symbol``,
		    ``MatrixSymbol``, or ``Indexed`` type. This is helpful in case of
		    line-wrapping, or for expressions that generate multi-line statements.
		precision : integer, optional
		    The precision for numbers such as pi [default=15].
		user_functions : dict, optional
		    A dictionary where keys are ``FunctionClass`` instances and values are
		    their string representations. Alternatively, the dictionary value can
		    be a list of tuples i.e. [(argument_test, cfunction_string)]. See below
		    for examples.
		dereference : iterable, optional
		    An iterable of symbols that should be dereferenced in the printed code
		    expression. These would be values passed by address to the function.
		    For example, if ``dereference=[a]``, the resulting code would print
		    ``(*a)`` instead of ``a``.
		human : bool, optional
		    If True, the result is a single string that may contain some constant
		    declarations for the number symbols. If False, the same information is
		    returned in a tuple of (symbols_to_declare, not_supported_functions,
		    code_text). [default=True].
		contract: bool, optional
		    If True, ``Indexed`` instances are assumed to obey tensor contraction
		    rules and the corresponding nested loops over indices are generated.
		    Setting contract=False will not generate loops, instead the user is
		    responsible to provide values for the indices in the code.
		    [default=True].
		
		Examples
		========
		
		>>> from sympy import ccode, symbols, Rational, sin, ceiling, Abs
		>>> x, tau = symbols("x, tau")
		>>> ccode((2*tau)**Rational(7, 2))
		'8*sqrt(2)*pow(tau, 7.0L/2.0L)'
		>>> ccode(sin(x), assign_to="s")
		's = sin(x);'
		
		Custom printing can be defined for certain types by passing a dictionary of
		"type" : "function" to the ``user_functions`` kwarg. Alternatively, the
		dictionary value can be a list of tuples i.e. [(argument_test,
		cfunction_string)].
		
		>>> custom_functions = {
		...   "ceiling": "CEIL",
		...   "Abs": [(lambda x: not x.is_integer, "fabs"),
		...           (lambda x: x.is_integer, "ABS")]
		... }
		>>> ccode(Abs(x) + ceiling(x), user_functions=custom_functions)
		'fabs(x) + CEIL(x)'
		
		``Piecewise`` expressions are converted into conditionals. If an
		``assign_to`` variable is provided an if statement is created, otherwise
		the ternary operator is used. Note that if the ``Piecewise`` lacks a
		default term, represented by ``(expr, True)`` then an error will be thrown.
		This is to prevent generating an expression that may not evaluate to
		anything.
		
		>>> from sympy import Piecewise
		>>> expr = Piecewise((x + 1, x > 0), (x, True))
		>>> print(ccode(expr, tau))
		if (x > 0) {
		tau = x + 1;
		}
		else {
		tau = x;
		}
		
		Support for loops is provided through ``Indexed`` types. With
		``contract=True`` these expressions will be turned into loops, whereas
		``contract=False`` will just print the assignment expression that should be
		looped over:
		
		>>> from sympy import Eq, IndexedBase, Idx
		>>> len_y = 5
		>>> y = IndexedBase('y', shape=(len_y,))
		>>> t = IndexedBase('t', shape=(len_y,))
		>>> Dy = IndexedBase('Dy', shape=(len_y-1,))
		>>> i = Idx('i', len_y-1)
		>>> e=Eq(Dy[i], (y[i+1]-y[i])/(t[i+1]-t[i]))
		>>> ccode(e.rhs, assign_to=e.lhs, contract=False)
		'Dy[i] = (y[i + 1] - y[i])/(t[i + 1] - t[i]);'
		
		Matrices are also supported, but a ``MatrixSymbol`` of the same dimensions
		must be provided to ``assign_to``. Note that any expression that can be
		generated normally can also exist inside a Matrix:
		
		>>> from sympy import Matrix, MatrixSymbol
		>>> mat = Matrix([x**2, Piecewise((x + 1, x > 0), (x, True)), sin(x)])
		>>> A = MatrixSymbol('A', 3, 1)
		>>> print(ccode(mat, A))
		A[0] = pow(x, 2);
		if (x > 0) {
		   A[1] = x + 1;
		}
		else {
		   A[1] = x;
		}
		A[2] = sin(x);
	**/
	static public function ccode(expr:Dynamic, ?assign_to:Dynamic, settings:Dynamic):Dynamic;
	/**
		Find the centroid (center of mass) of the collection containing only Points,
		Segments or Polygons. The centroid is the weighted average of the individual centroid
		where the weights are the lengths (of segments) or areas (of polygons).
		Overlapping regions will add to the weight of that region.
		
		If there are no objects (or a mixture of objects) then None is returned.
		
		See Also
		========
		
		sympy.geometry.point.Point, sympy.geometry.line.Segment,
		sympy.geometry.polygon.Polygon
		
		Examples
		========
		
		>>> from sympy import Point, Segment, Polygon
		>>> from sympy.geometry.util import centroid
		>>> p = Polygon((0, 0), (10, 0), (10, 10))
		>>> q = p.translate(0, 20)
		>>> p.centroid, q.centroid
		(Point(20/3, 10/3), Point(20/3, 70/3))
		>>> centroid(p, q)
		Point(20/3, 40/3)
		>>> p, q = Segment((0, 0), (2, 0)), Segment((0, 0), (2, 2))
		>>> centroid(p, q)
		Point(1, -sqrt(2) + 2)
		>>> centroid(Point(0, 0), Point(2, 0))
		Point(1, 0)
		
		Stacking 3 polygons on top of each other effectively triples the
		weight of that polygon:
		
		    >>> p = Polygon((0, 0), (1, 0), (1, 1), (0, 1))
		    >>> q = Polygon((1, 0), (3, 0), (3, 1), (1, 1))
		    >>> centroid(p, q)
		    Point(3/2, 1/2)
		    >>> centroid(p, p, p, q) # centroid x-coord shifts left
		    Point(11/10, 1/2)
		
		Stacking the squares vertically above and below p has the same
		effect:
		
		    >>> centroid(p, p.translate(0, 1), p.translate(0, -1), q)
		    Point(11/10, 1/2)
	**/
	static public function centroid(args:Dynamic):Dynamic;
	/**
		Generates Chebyshev polynomial of the first kind of degree `n` in `x`. 
	**/
	static public function chebyshevt_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Generates Chebyshev polynomial of the second kind of degree `n` in `x`. 
	**/
	static public function chebyshevu_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Substitutes ``sol`` into ``ode`` and checks that the result is ``0``.
		
		This only works when ``func`` is one function, like `f(x)`.  ``sol`` can
		be a single solution or a list of solutions.  Each solution may be an
		:py:class:`~sympy.core.relational.Equality` that the solution satisfies,
		e.g. ``Eq(f(x), C1), Eq(f(x) + C1, 0)``; or simply an
		:py:class:`~sympy.core.expr.Expr`, e.g. ``f(x) - C1``. In most cases it
		will not be necessary to explicitly identify the function, but if the
		function cannot be inferred from the original equation it can be supplied
		through the ``func`` argument.
		
		If a sequence of solutions is passed, the same sort of container will be
		used to return the result for each solution.
		
		It tries the following methods, in order, until it finds zero equivalence:
		
		1. Substitute the solution for `f` in the original equation.  This only
		   works if ``ode`` is solved for `f`.  It will attempt to solve it first
		   unless ``solve_for_func == False``.
		2. Take `n` derivatives of the solution, where `n` is the order of
		   ``ode``, and check to see if that is equal to the solution.  This only
		   works on exact ODEs.
		3. Take the 1st, 2nd, ..., `n`\th derivatives of the solution, each time
		   solving for the derivative of `f` of that order (this will always be
		   possible because `f` is a linear operator). Then back substitute each
		   derivative into ``ode`` in reverse order.
		
		This function returns a tuple.  The first item in the tuple is ``True`` if
		the substitution results in ``0``, and ``False`` otherwise. The second
		item in the tuple is what the substitution results in.  It should always
		be ``0`` if the first item is ``True``. Note that sometimes this function
		will ``False``, but with an expression that is identically equal to ``0``,
		instead of returning ``True``.  This is because
		:py:meth:`~sympy.simplify.simplify.simplify` cannot reduce the expression
		to ``0``.  If an expression returned by this function vanishes
		identically, then ``sol`` really is a solution to ``ode``.
		
		If this function seems to hang, it is probably because of a hard
		simplification.
		
		To use this function to test, test the first item of the tuple.
		
		Examples
		========
		
		>>> from sympy import Eq, Function, checkodesol, symbols
		>>> x, C1 = symbols('x,C1')
		>>> f = Function('f')
		>>> checkodesol(f(x).diff(x), Eq(f(x), C1))
		(True, 0)
		>>> assert checkodesol(f(x).diff(x), C1)[0]
		>>> assert not checkodesol(f(x).diff(x), x)[0]
		>>> checkodesol(f(x).diff(x, 2), x**2)
		(False, 2)
	**/
	static public function checkodesol(ode:Dynamic, sol:Dynamic, ?func:Dynamic, ?order:Dynamic, ?solve_for_func:Dynamic):Dynamic;
	/**
		Checks if the given solution satisfies the partial differential
		equation.
		
		pde is the partial differential equation which can be given in the
		form of an equation or an expression. sol is the solution for which
		the pde is to be checked. This can also be given in an equation or
		an expression form. If the function is not provided, the helper
		function _preprocess from deutils is used to identify the function.
		
		If a sequence of solutions is passed, the same sort of container will be
		used to return the result for each solution.
		
		The following methods are currently being implemented to check if the
		solution satisfies the PDE:
		
		    1. Directly substitute the solution in the PDE and check. If the
		       solution hasn't been solved for f, then it will solve for f
		       provided solve_for_func hasn't been set to False.
		
		If the solution satisfies the PDE, then a tuple (True, 0) is returned.
		Otherwise a tuple (False, expr) where expr is the value obtained
		after substituting the solution in the PDE. However if a known solution
		returns False, it may be due to the inability of doit() to simplify it to zero.
		
		Examples
		========
		
		>>> from sympy import Function, symbols, diff
		>>> from sympy.solvers.pde import checkpdesol, pdsolve
		>>> x, y = symbols('x y')
		>>> f = Function('f')
		>>> eq = 2*f(x,y) + 3*f(x,y).diff(x) + 4*f(x,y).diff(y)
		>>> sol = pdsolve(eq)
		>>> assert checkpdesol(eq, sol)[0]
		>>> eq = x*f(x,y) + f(x,y).diff(x)
		>>> checkpdesol(eq, sol)
		(False, (x*F(4*x - 3*y) - 6*F(4*x - 3*y)/25 + 4*Subs(Derivative(F(_xi_1), _xi_1), (_xi_1,), (4*x - 3*y,)))*exp(-6*x/25 - 8*y/25))
	**/
	static public function checkpdesol(pde:Dynamic, sol:Dynamic, ?func:Dynamic, ?solve_for_func:Dynamic):Dynamic;
	/**
		Checks whether sol is a solution of equation f == 0.
		
		Input can be either a single symbol and corresponding value
		or a dictionary of symbols and values. When given as a dictionary
		and flag ``simplify=True``, the values in the dictionary will be
		simplified. ``f`` can be a single equation or an iterable of equations.
		A solution must satisfy all equations in ``f`` to be considered valid;
		if a solution does not satisfy any equation, False is returned; if one or
		more checks are inconclusive (and none are False) then None
		is returned.
		
		Examples
		========
		
		>>> from sympy import symbols
		>>> from sympy.solvers import checksol
		>>> x, y = symbols('x,y')
		>>> checksol(x**4 - 1, x, 1)
		True
		>>> checksol(x**4 - 1, x, 0)
		False
		>>> checksol(x**2 + y**2 - 5**2, {x: 3, y: 4})
		True
		
		To check if an expression is zero using checksol, pass it
		as ``f`` and send an empty dictionary for ``symbol``:
		
		>>> checksol(x**2 + x - x*(x + 1), {})
		True
		
		None is returned if checksol() could not conclude.
		
		flags:
		    'numerical=True (default)'
		       do a fast numerical check if ``f`` has only one symbol.
		    'minimal=True (default is False)'
		       a very fast, minimal testing.
		    'warn=True (default is False)'
		       show a warning if checksol() could not conclude.
		    'simplify=True (default)'
		       simplify solution before substituting into function and
		       simplify the function before trying specific simplifications
		    'force=True (default is False)'
		       make positive all symbols without assumptions regarding sign.
	**/
	static public function checksol(f:Dynamic, symbol:Dynamic, ?sol:Dynamic, flags:Dynamic):Dynamic;
	/**
		Returns a tuple of possible :py:meth:`~sympy.solvers.ode.dsolve`
		classifications for an ODE.
		
		The tuple is ordered so that first item is the classification that
		:py:meth:`~sympy.solvers.ode.dsolve` uses to solve the ODE by default.  In
		general, classifications at the near the beginning of the list will
		produce better solutions faster than those near the end, thought there are
		always exceptions.  To make :py:meth:`~sympy.solvers.ode.dsolve` use a
		different classification, use ``dsolve(ODE, func,
		hint=<classification>)``.  See also the
		:py:meth:`~sympy.solvers.ode.dsolve` docstring for different meta-hints
		you can use.
		
		If ``dict`` is true, :py:meth:`~sympy.solvers.ode.classify_ode` will
		return a dictionary of ``hint:match`` expression terms. This is intended
		for internal use by :py:meth:`~sympy.solvers.ode.dsolve`.  Note that
		because dictionaries are ordered arbitrarily, this will most likely not be
		in the same order as the tuple.
		
		You can get help on different hints by executing
		``help(ode.ode_hintname)``, where ``hintname`` is the name of the hint
		without ``_Integral``.
		
		See :py:data:`~sympy.solvers.ode.allhints` or the
		:py:mod:`~sympy.solvers.ode` docstring for a list of all supported hints
		that can be returned from :py:meth:`~sympy.solvers.ode.classify_ode`.
		
		Notes
		=====
		
		These are remarks on hint names.
		
		``_Integral``
		
		    If a classification has ``_Integral`` at the end, it will return the
		    expression with an unevaluated :py:class:`~sympy.integrals.Integral`
		    class in it.  Note that a hint may do this anyway if
		    :py:meth:`~sympy.core.expr.Expr.integrate` cannot do the integral,
		    though just using an ``_Integral`` will do so much faster.  Indeed, an
		    ``_Integral`` hint will always be faster than its corresponding hint
		    without ``_Integral`` because
		    :py:meth:`~sympy.core.expr.Expr.integrate` is an expensive routine.
		    If :py:meth:`~sympy.solvers.ode.dsolve` hangs, it is probably because
		    :py:meth:`~sympy.core.expr.Expr.integrate` is hanging on a tough or
		    impossible integral.  Try using an ``_Integral`` hint or
		    ``all_Integral`` to get it return something.
		
		    Note that some hints do not have ``_Integral`` counterparts.  This is
		    because :py:meth:`~sympy.solvers.ode.integrate` is not used in solving
		    the ODE for those method. For example, `n`\th order linear homogeneous
		    ODEs with constant coefficients do not require integration to solve,
		    so there is no ``nth_linear_homogeneous_constant_coeff_Integrate``
		    hint. You can easily evaluate any unevaluated
		    :py:class:`~sympy.integrals.Integral`\s in an expression by doing
		    ``expr.doit()``.
		
		Ordinals
		
		    Some hints contain an ordinal such as ``1st_linear``.  This is to help
		    differentiate them from other hints, as well as from other methods
		    that may not be implemented yet. If a hint has ``nth`` in it, such as
		    the ``nth_linear`` hints, this means that the method used to applies
		    to ODEs of any order.
		
		``indep`` and ``dep``
		
		    Some hints contain the words ``indep`` or ``dep``.  These reference
		    the independent variable and the dependent function, respectively. For
		    example, if an ODE is in terms of `f(x)`, then ``indep`` will refer to
		    `x` and ``dep`` will refer to `f`.
		
		``subs``
		
		    If a hints has the word ``subs`` in it, it means the the ODE is solved
		    by substituting the expression given after the word ``subs`` for a
		    single dummy variable.  This is usually in terms of ``indep`` and
		    ``dep`` as above.  The substituted expression will be written only in
		    characters allowed for names of Python objects, meaning operators will
		    be spelled out.  For example, ``indep``/``dep`` will be written as
		    ``indep_div_dep``.
		
		``coeff``
		
		    The word ``coeff`` in a hint refers to the coefficients of something
		    in the ODE, usually of the derivative terms.  See the docstring for
		    the individual methods for more info (``help(ode)``).  This is
		    contrast to ``coefficients``, as in ``undetermined_coefficients``,
		    which refers to the common name of a method.
		
		``_best``
		
		    Methods that have more than one fundamental way to solve will have a
		    hint for each sub-method and a ``_best`` meta-classification. This
		    will evaluate all hints and return the best, using the same
		    considerations as the normal ``best`` meta-hint.
		
		
		Examples
		========
		
		>>> from sympy import Function, classify_ode, Eq
		>>> from sympy.abc import x
		>>> f = Function('f')
		>>> classify_ode(Eq(f(x).diff(x), 0), f(x))
		('separable', '1st_linear', '1st_homogeneous_coeff_best',
		'1st_homogeneous_coeff_subs_indep_div_dep',
		'1st_homogeneous_coeff_subs_dep_div_indep',
		'1st_power_series', 'lie_group',
		'nth_linear_constant_coeff_homogeneous',
		'separable_Integral', '1st_linear_Integral',
		'1st_homogeneous_coeff_subs_indep_div_dep_Integral',
		'1st_homogeneous_coeff_subs_dep_div_indep_Integral')
		>>> classify_ode(f(x).diff(x, 2) + 3*f(x).diff(x) + 2*f(x) - 4)
		('nth_linear_constant_coeff_undetermined_coefficients',
		'nth_linear_constant_coeff_variation_of_parameters',
		'nth_linear_constant_coeff_variation_of_parameters_Integral')
	**/
	static public function classify_ode(eq:Dynamic, ?func:Dynamic, ?dict:Dynamic, ?ics:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns a tuple of possible pdsolve() classifications for a PDE.
		
		The tuple is ordered so that first item is the classification that
		pdsolve() uses to solve the PDE by default.  In general,
		classifications near the beginning of the list will produce
		better solutions faster than those near the end, though there are
		always exceptions.  To make pdsolve use a different classification,
		use pdsolve(PDE, func, hint=<classification>).  See also the pdsolve()
		docstring for different meta-hints you can use.
		
		If ``dict`` is true, classify_pde() will return a dictionary of
		hint:match expression terms. This is intended for internal use by
		pdsolve().  Note that because dictionaries are ordered arbitrarily,
		this will most likely not be in the same order as the tuple.
		
		You can get help on different hints by doing help(pde.pde_hintname),
		where hintname is the name of the hint without "_Integral".
		
		See sympy.pde.allhints or the sympy.pde docstring for a list of all
		supported hints that can be returned from classify_pde.
		
		
		Examples
		========
		
		>>> from sympy.solvers.pde import classify_pde
		>>> from sympy import Function, diff, Eq
		>>> from sympy.abc import x, y
		>>> f = Function('f')
		>>> u = f(x, y)
		>>> ux = u.diff(x)
		>>> uy = u.diff(y)
		>>> eq = Eq(1 + (2*(ux/u)) + (3*(uy/u)))
		>>> classify_pde(eq)
		('1st_linear_constant_coeff_homogeneous',)
	**/
	static public function classify_pde(eq:Dynamic, ?func:Dynamic, ?dict:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Compute GCD and cofactors of ``f`` and ``g``.
		
		Returns polynomials ``(h, cff, cfg)`` such that ``h = gcd(f, g)``, and
		``cff = quo(f, h)`` and ``cfg = quo(g, h)`` are, so called, cofactors
		of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import cofactors
		>>> from sympy.abc import x
		
		>>> cofactors(x**2 - 1, x**2 - 3*x + 2)
		(x - 1, x + 1, x - 2)
	**/
	static public function cofactors(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Collect additive terms of an expression.
		
		This function collects additive terms of an expression with respect
		to a list of expression up to powers with rational exponents. By the
		term symbol here are meant arbitrary expressions, which can contain
		powers, products, sums etc. In other words symbol is a pattern which
		will be searched for in the expression's terms.
		
		The input expression is not expanded by :func:`collect`, so user is
		expected to provide an expression is an appropriate form. This makes
		:func:`collect` more predictable as there is no magic happening behind the
		scenes. However, it is important to note, that powers of products are
		converted to products of powers using the :func:`expand_power_base`
		function.
		
		There are two possible types of output. First, if ``evaluate`` flag is
		set, this function will return an expression with collected terms or
		else it will return a dictionary with expressions up to rational powers
		as keys and collected coefficients as values.
		
		Examples
		========
		
		>>> from sympy import S, collect, expand, factor, Wild
		>>> from sympy.abc import a, b, c, x, y, z
		
		This function can collect symbolic coefficients in polynomials or
		rational expressions. It will manage to find all integer or rational
		powers of collection variable::
		
		    >>> collect(a*x**2 + b*x**2 + a*x - b*x + c, x)
		    c + x**2*(a + b) + x*(a - b)
		
		The same result can be achieved in dictionary form::
		
		    >>> d = collect(a*x**2 + b*x**2 + a*x - b*x + c, x, evaluate=False)
		    >>> d[x**2]
		    a + b
		    >>> d[x]
		    a - b
		    >>> d[S.One]
		    c
		
		You can also work with multivariate polynomials. However, remember that
		this function is greedy so it will care only about a single symbol at time,
		in specification order::
		
		    >>> collect(x**2 + y*x**2 + x*y + y + a*y, [x, y])
		    x**2*(y + 1) + x*y + y*(a + 1)
		
		Also more complicated expressions can be used as patterns::
		
		    >>> from sympy import sin, log
		    >>> collect(a*sin(2*x) + b*sin(2*x), sin(2*x))
		    (a + b)*sin(2*x)
		
		    >>> collect(a*x*log(x) + b*(x*log(x)), x*log(x))
		    x*(a + b)*log(x)
		
		You can use wildcards in the pattern::
		
		    >>> w = Wild('w1')
		    >>> collect(a*x**y - b*x**y, w**y)
		    x**y*(a - b)
		
		It is also possible to work with symbolic powers, although it has more
		complicated behavior, because in this case power's base and symbolic part
		of the exponent are treated as a single symbol::
		
		    >>> collect(a*x**c + b*x**c, x)
		    a*x**c + b*x**c
		    >>> collect(a*x**c + b*x**c, x**c)
		    x**c*(a + b)
		
		However if you incorporate rationals to the exponents, then you will get
		well known behavior::
		
		    >>> collect(a*x**(2*c) + b*x**(2*c), x**c)
		    x**(2*c)*(a + b)
		
		Note also that all previously stated facts about :func:`collect` function
		apply to the exponential function, so you can get::
		
		    >>> from sympy import exp
		    >>> collect(a*exp(2*x) + b*exp(2*x), exp(x))
		    (a + b)*exp(2*x)
		
		If you are interested only in collecting specific powers of some symbols
		then set ``exact`` flag in arguments::
		
		    >>> collect(a*x**7 + b*x**7, x, exact=True)
		    a*x**7 + b*x**7
		    >>> collect(a*x**7 + b*x**7, x**7, exact=True)
		    x**7*(a + b)
		
		You can also apply this function to differential equations, where
		derivatives of arbitrary order can be collected. Note that if you
		collect with respect to a function or a derivative of a function, all
		derivatives of that function will also be collected. Use
		``exact=True`` to prevent this from happening::
		
		    >>> from sympy import Derivative as D, collect, Function
		    >>> f = Function('f') (x)
		
		    >>> collect(a*D(f,x) + b*D(f,x), D(f,x))
		    (a + b)*Derivative(f(x), x)
		
		    >>> collect(a*D(D(f,x),x) + b*D(D(f,x),x), f)
		    (a + b)*Derivative(f(x), x, x)
		
		    >>> collect(a*D(D(f,x),x) + b*D(D(f,x),x), D(f,x), exact=True)
		    a*Derivative(f(x), x, x) + b*Derivative(f(x), x, x)
		
		    >>> collect(a*D(f,x) + b*D(f,x) + a*f + b*f, f)
		    (a + b)*f(x) + (a + b)*Derivative(f(x), x)
		
		Or you can even match both derivative order and exponent at the same time::
		
		    >>> collect(a*D(D(f,x),x)**2 + b*D(D(f,x),x)**2, D(f,x))
		    (a + b)*Derivative(f(x), x, x)**2
		
		Finally, you can apply a function to each of the collected coefficients.
		For example you can factorize symbolic coefficients of polynomial::
		
		    >>> f = expand((x + a + 1)**3)
		
		    >>> collect(f, x, factor)
		    x**3 + 3*x**2*(a + 1) + 3*x*(a + 1)**2 + (a + 1)**3
		
		.. note:: Arguments are expected to be in expanded form, so you might have
		          to call :func:`expand` prior to calling this function.
		
		See Also
		========
		collect_const, collect_sqrt, rcollect
	**/
	static public function collect(expr:Dynamic, syms:Dynamic, ?func:Dynamic, ?evaluate:Dynamic, ?exact:Dynamic, ?distribute_order_term:Dynamic):Dynamic;
	/**
		A non-greedy collection of terms with similar number coefficients in
		an Add expr. If ``vars`` is given then only those constants will be
		targeted. Although any Number can also be targeted, if this is not
		desired set ``Numbers=False`` and no Float or Rational will be collected.
		
		Examples
		========
		
		>>> from sympy import sqrt
		>>> from sympy.abc import a, s, x, y, z
		>>> from sympy.simplify.simplify import collect_const
		>>> collect_const(sqrt(3) + sqrt(3)*(1 + sqrt(2)))
		sqrt(3)*(sqrt(2) + 2)
		>>> collect_const(sqrt(3)*s + sqrt(7)*s + sqrt(3) + sqrt(7))
		(sqrt(3) + sqrt(7))*(s + 1)
		>>> s = sqrt(2) + 2
		>>> collect_const(sqrt(3)*s + sqrt(3) + sqrt(7)*s + sqrt(7))
		(sqrt(2) + 3)*(sqrt(3) + sqrt(7))
		>>> collect_const(sqrt(3)*s + sqrt(3) + sqrt(7)*s + sqrt(7), sqrt(3))
		sqrt(7) + sqrt(3)*(sqrt(2) + 3) + sqrt(7)*(sqrt(2) + 2)
		
		The collection is sign-sensitive, giving higher precedence to the
		unsigned values:
		
		>>> collect_const(x - y - z)
		x - (y + z)
		>>> collect_const(-y - z)
		-(y + z)
		>>> collect_const(2*x - 2*y - 2*z, 2)
		2*(x - y - z)
		>>> collect_const(2*x - 2*y - 2*z, -2)
		2*x - 2*(y + z)
		
		See Also
		========
		collect, collect_sqrt, rcollect
	**/
	static public function collect_const(expr:Dynamic, vars:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Simplify combinatorial expressions.
		
		This function takes as input an expression containing factorials,
		binomials, Pochhammer symbol and other "combinatorial" functions,
		and tries to minimize the number of those functions and reduce
		the size of their arguments. The result is be given in terms of
		binomials and factorials.
		
		The algorithm works by rewriting all combinatorial functions as
		expressions involving rising factorials (Pochhammer symbols) and
		applies recurrence relations and other transformations applicable
		to rising factorials, to reduce their arguments, possibly letting
		the resulting rising factorial to cancel. Rising factorials with
		the second argument being an integer are expanded into polynomial
		forms and finally all other rising factorial are rewritten in terms
		more familiar functions. If the initial expression contained any
		combinatorial functions, the result is expressed using binomial
		coefficients and gamma functions. If the initial expression consisted
		of gamma functions alone, the result is expressed in terms of gamma
		functions.
		
		If the result is expressed using gamma functions, the following three
		additional steps are performed:
		
		1. Reduce the number of gammas by applying the reflection theorem
		   gamma(x)*gamma(1-x) == pi/sin(pi*x).
		2. Reduce the number of gammas by applying the multiplication theorem
		   gamma(x)*gamma(x+1/n)*...*gamma(x+(n-1)/n) == C*gamma(n*x).
		3. Reduce the number of prefactors by absorbing them into gammas, where
		   possible.
		
		All transformation rules can be found (or was derived from) here:
		
		1. http://functions.wolfram.com/GammaBetaErf/Pochhammer/17/01/02/
		2. http://functions.wolfram.com/GammaBetaErf/Pochhammer/27/01/0005/
		
		Examples
		========
		
		>>> from sympy.simplify import combsimp
		>>> from sympy import factorial, binomial
		>>> from sympy.abc import n, k
		
		>>> combsimp(factorial(n)/factorial(n - 3))
		n*(n - 2)*(n - 1)
		>>> combsimp(binomial(n+1, k+1)/binomial(n, k))
		(n + 1)/(k + 1)
	**/
	static public function combsimp(expr:Dynamic):Dynamic;
	/**
		Compute functional composition ``f(g)``.
		
		Examples
		========
		
		>>> from sympy import compose
		>>> from sympy.abc import x
		
		>>> compose(x**2 + x, x - 1)
		x**2 - x
	**/
	static public function compose(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Construct a minimal domain for the list of coefficients. 
	**/
	static public function construct_domain(obj:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute GCD of coefficients of ``f``.
		
		Examples
		========
		
		>>> from sympy import content
		>>> from sympy.abc import x
		
		>>> content(6*x**2 + 8*x + 12)
		2
	**/
	static public function content(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return an iterator over the convergents of a continued fraction (cf).
		
		The parameter should be an iterable returning successive
		partial quotients of the continued fraction, such as might be
		returned by continued_fraction_iterator.  In computing the
		convergents, the continued fraction need not be strictly in
		canonical form (all integers, all but the first positive).
		Rational and negative elements may be present in the expansion.
		
		Examples
		========
		
		>>> from sympy.core import Rational, pi
		>>> from sympy import S
		>>> from sympy.ntheory.continued_fraction import             continued_fraction_convergents, continued_fraction_iterator
		
		>>> list(continued_fraction_convergents([0, 2, 1, 2]))
		[0, 1/2, 1/3, 3/8]
		
		>>> list(continued_fraction_convergents([1, S('1/2'), -7, S('1/4')]))
		[1, 3, 19/5, 7]
		
		>>> it = continued_fraction_convergents(continued_fraction_iterator(pi))
		>>> for n in range(7):
		...     print(next(it))
		3
		22/7
		333/106
		355/113
		103993/33102
		104348/33215
		208341/66317
		
		See Also
		========
		
		continued_fraction_iterator
	**/
	static public function continued_fraction_convergents(cf:Dynamic):Dynamic;
	/**
		Return continued fraction expansion of x as iterator.
		
		Examples
		========
		
		>>> from sympy.core import Rational, pi
		>>> from sympy.ntheory.continued_fraction import continued_fraction_iterator
		
		>>> list(continued_fraction_iterator(Rational(3, 8)))
		[0, 2, 1, 2]
		>>> list(continued_fraction_iterator(Rational(-3, 8)))
		[-1, 1, 1, 1, 2]
		
		>>> for i, v in enumerate(continued_fraction_iterator(pi)):
		...     if i > 7:
		...         break
		...     print(v)
		3
		7
		15
		1
		292
		1
		1
		1
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Continued_fraction
	**/
	static public function continued_fraction_iterator(x:Dynamic):Dynamic;
	/**
		Find the periodic continued fraction expansion of a quadratic irrational.
		
		Compute the continued fraction expansion of a rational or a
		quadratic irrational number, i.e. `\frac{p + \sqrt{d}}{q}`, where
		`p`, `q` and `d \ge 0` are integers.
		
		Returns the continued fraction representation (canonical form) as
		a list of integers, optionally ending (for quadratic irrationals)
		with repeating block as the last term of this list.
		
		Parameters
		==========
		
		p : int
		    the rational part of the number's numerator
		q : int
		    the denominator of the number
		d : int, optional
		    the irrational part (discriminator) of the number's numerator
		
		Examples
		========
		
		>>> from sympy.ntheory.continued_fraction import continued_fraction_periodic
		>>> continued_fraction_periodic(3, 2, 7)
		[2, [1, 4, 1, 1]]
		
		Golden ratio has the simplest continued fraction expansion:
		
		>>> continued_fraction_periodic(1, 2, 5)
		[[1]]
		
		If the discriminator is zero or a perfect square then the number will be a
		rational number:
		
		>>> continued_fraction_periodic(4, 3, 0)
		[1, 3]
		>>> continued_fraction_periodic(4, 3, 49)
		[3, 1, 2]
		
		See Also
		========
		
		continued_fraction_iterator, continued_fraction_reduce
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Periodic_continued_fraction
		.. [2] K. Rosen. Elementary Number theory and its applications.
		       Addison-Wesley, 3 Sub edition, pages 379-381, January 1992.
	**/
	static public function continued_fraction_periodic(p:Dynamic, q:Dynamic, ?d:Dynamic):Dynamic;
	/**
		Reduce a continued fraction to a rational or quadratic irrational.
		
		Compute the rational or quadratic irrational number from its
		terminating or periodic continued fraction expansion.  The
		continued fraction expansion (cf) should be supplied as a
		terminating iterator supplying the terms of the expansion.  For
		terminating continued fractions, this is equivalent to
		``list(continued_fraction_convergents(cf))[-1]``, only a little more
		efficient.  If the expansion has a repeating part, a list of the
		repeating terms should be returned as the last element from the
		iterator.  This is the format returned by
		continued_fraction_periodic.
		
		For quadratic irrationals, returns the largest solution found,
		which is generally the one sought, if the fraction is in canonical
		form (all terms positive except possibly the first).
		
		Examples
		========
		
		>>> from sympy.ntheory.continued_fraction import continued_fraction_reduce
		>>> continued_fraction_reduce([1, 2, 3, 4, 5])
		225/157
		>>> continued_fraction_reduce([-2, 1, 9, 7, 1, 2])
		-256/233
		>>> continued_fraction_reduce([2, 1, 2, 1, 1, 4, 1, 1, 6, 1, 1, 8]).n(10)
		2.718281835
		>>> continued_fraction_reduce([1, 4, 2, [3, 1]])
		(sqrt(21) + 287)/238
		>>> continued_fraction_reduce([[1]])
		1/2 + sqrt(5)/2
		>>> from sympy.ntheory.continued_fraction import continued_fraction_periodic
		>>> continued_fraction_reduce(continued_fraction_periodic(8, 5, 13))
		(sqrt(13) + 8)/5
		
		See Also
		========
		
		continued_fraction_periodic
	**/
	static public function continued_fraction_reduce(cf:Dynamic):Dynamic;
	/**
		The convex hull surrounding the Points contained in the list of entities.
		
		Parameters
		==========
		
		args : a collection of Points, Segments and/or Polygons
		
		Returns
		=======
		
		convex_hull : Polygon
		
		Notes
		=====
		
		This can only be performed on a set of non-symbolic points.
		
		References
		==========
		
		[1] http://en.wikipedia.org/wiki/Graham_scan
		
		[2] Andrew's Monotone Chain Algorithm
		(A.M. Andrew,
		"Another Efficient Algorithm for Convex Hulls in Two Dimensions", 1979)
		http://geomalgorithms.com/a10-_hull-1.html
		
		See Also
		========
		
		sympy.geometry.point.Point, sympy.geometry.polygon.Polygon
		
		Examples
		========
		
		>>> from sympy.geometry import Point, convex_hull
		>>> points = [(1,1), (1,2), (3,1), (-5,2), (15,4)]
		>>> convex_hull(*points)
		Polygon(Point(-5, 2), Point(1, 1), Point(3, 1), Point(15, 4))
	**/
	static public function convex_hull(args:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency cosine transform of `f`, defined
		as
		
		.. math:: F(k) = \sqrt{\frac{2}{\pi}} \int_{0}^\infty f(x) \cos(2\pi x k) \mathrm{d} x.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`CosineTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import cosine_transform, exp, sqrt, cos
		>>> from sympy.abc import x, k, a
		>>> cosine_transform(exp(-a*x), x, k)
		sqrt(2)*a/(sqrt(pi)*(a**2 + k**2))
		>>> cosine_transform(exp(-a*sqrt(x))*cos(a*sqrt(x)), x, k)
		a*exp(-a**2/(2*k))/(2*k**(3/2))
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform,
		sine_transform, inverse_sine_transform
		inverse_cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function cosine_transform(f:Dynamic, x:Dynamic, k:Dynamic, hints:Dynamic):Dynamic;
	/**
		Return a representation (integer or expression) of the operations in expr.
		
		If ``visual`` is ``False`` (default) then the sum of the coefficients of the
		visual expression will be returned.
		
		If ``visual`` is ``True`` then the number of each type of operation is shown
		with the core class types (or their virtual equivalent) multiplied by the
		number of times they occur.
		
		If expr is an iterable, the sum of the op counts of the
		items will be returned.
		
		Examples
		========
		
		>>> from sympy.abc import a, b, x, y
		>>> from sympy import sin, count_ops
		
		Although there isn't a SUB object, minus signs are interpreted as
		either negations or subtractions:
		
		>>> (x - y).count_ops(visual=True)
		SUB
		>>> (-x).count_ops(visual=True)
		NEG
		
		Here, there are two Adds and a Pow:
		
		>>> (1 + a + b**2).count_ops(visual=True)
		2*ADD + POW
		
		In the following, an Add, Mul, Pow and two functions:
		
		>>> (sin(x)*x + sin(x)**2).count_ops(visual=True)
		ADD + MUL + POW + 2*SIN
		
		for a total of 5:
		
		>>> (sin(x)*x + sin(x)**2).count_ops(visual=False)
		5
		
		Note that "what you type" is not always what you get. The expression
		1/x/y is translated by sympy into 1/(x*y) so it gives a DIV and MUL rather
		than two DIVs:
		
		>>> (1/x/y).count_ops(visual=True)
		DIV + MUL
		
		The visual option can be used to demonstrate the difference in
		operations for expressions in different forms. Here, the Horner
		representation is compared with the expanded form of a polynomial:
		
		>>> eq=x*(1 + x*(2 + x*(3 + x)))
		>>> count_ops(eq.expand(), visual=True) - count_ops(eq, visual=True)
		-MUL + 3*POW
		
		The count_ops function also handles iterables:
		
		>>> count_ops([x, sin(x), None, True, x + 2], visual=False)
		2
		>>> count_ops([x, sin(x), None, True, x + 2], visual=True)
		ADD + SIN
		>>> count_ops({x: sin(x), x + 2: y + 1}, visual=True)
		2*ADD + SIN
	**/
	static public function count_ops(expr:Dynamic, ?visual:Dynamic):Dynamic;
	/**
		Return the number of roots of ``f`` in ``[inf, sup]`` interval.
		
		If one of ``inf`` or ``sup`` is complex, it will return the number of roots
		in the complex rectangle with corners at ``inf`` and ``sup``.
		
		Examples
		========
		
		>>> from sympy import count_roots, I
		>>> from sympy.abc import x
		
		>>> count_roots(x**4 - 4, -3, 3)
		2
		>>> count_roots(x**4 - 4, 0, 1 + 3*I)
		1
	**/
	static public function count_roots(f:Dynamic, ?inf:Dynamic, ?sup:Dynamic):Dynamic;
	/**
		Perform common subexpression elimination on an expression.
		
		Parameters
		==========
		
		exprs : list of sympy expressions, or a single sympy expression
		    The expressions to reduce.
		symbols : infinite iterator yielding unique Symbols
		    The symbols used to label the common subexpressions which are pulled
		    out. The ``numbered_symbols`` generator is useful. The default is a
		    stream of symbols of the form "x0", "x1", etc. This must be an
		    infinite iterator.
		optimizations : list of (callable, callable) pairs
		    The (preprocessor, postprocessor) pairs of external optimization
		    functions. Optionally 'basic' can be passed for a set of predefined
		    basic optimizations. Such 'basic' optimizations were used by default
		    in old implementation, however they can be really slow on larger
		    expressions. Now, no pre or post optimizations are made by default.
		postprocess : a function which accepts the two return values of cse and
		    returns the desired form of output from cse, e.g. if you want the
		    replacements reversed the function might be the following lambda:
		    lambda r, e: return reversed(r), e
		order : string, 'none' or 'canonical'
		    The order by which Mul and Add arguments are processed. If set to
		    'canonical', arguments will be canonically ordered. If set to 'none',
		    ordering will be faster but dependent on expressions hashes, thus
		    machine dependent and variable. For large expressions where speed is a
		    concern, use the setting order='none'.
		
		Returns
		=======
		
		replacements : list of (Symbol, expression) pairs
		    All of the common subexpressions that were replaced. Subexpressions
		    earlier in this list might show up in subexpressions later in this
		    list.
		reduced_exprs : list of sympy expressions
		    The reduced expressions with all of the replacements above.
	**/
	static public function cse(exprs:Dynamic, ?symbols:Dynamic, ?optimizations:Dynamic, ?postprocess:Dynamic, ?order:Dynamic):Dynamic;
	/**
		For a given iterated sequence, return a generator that gives
		the length of the iterated cycle (lambda) and the length of terms
		before the cycle begins (mu); if ``values`` is True then the
		terms of the sequence will be returned instead. The sequence is
		started with value ``x0``.
		
		Note: more than the first lambda + mu terms may be returned and this
		is the cost of cycle detection with Brent's method; there are, however,
		generally less terms calculated than would have been calculated if the
		proper ending point were determined, e.g. by using Floyd's method.
		
		>>> from sympy.ntheory.generate import cycle_length
		
		This will yield successive values of i <-- func(i):
		
		    >>> def iter(func, i):
		    ...     while 1:
		    ...         ii = func(i)
		    ...         yield ii
		    ...         i = ii
		    ...
		
		A function is defined:
		
		    >>> func = lambda i: (i**2 + 1) % 51
		
		and given a seed of 4 and the mu and lambda terms calculated:
		
		    >>> next(cycle_length(func, 4))
		    (6, 2)
		
		We can see what is meant by looking at the output:
		
		    >>> n = cycle_length(func, 4, values=True)
		    >>> list(ni for ni in n)
		    [17, 35, 2, 5, 26, 14, 44, 50, 2, 5, 26, 14]
		
		There are 6 repeating values after the first 2.
		
		If a sequence is suspected of being longer than you might wish, ``nmax``
		can be used to exit early (and mu will be returned as None):
		
		    >>> next(cycle_length(func, 4, nmax = 4))
		    (4, None)
		    >>> [ni for ni in cycle_length(func, 4, nmax = 4, values=True)]
		    [17, 35, 2, 5]
		
		Code modified from:
		    http://en.wikipedia.org/wiki/Cycle_detection.
	**/
	static public function cycle_length(f:Dynamic, x0:Dynamic, ?nmax:Dynamic, ?values:Dynamic):Dynamic;
	/**
		Generates cyclotomic polynomial of order `n` in `x`. 
	**/
	static public function cyclotomic_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute functional decomposition of ``f``.
		
		Examples
		========
		
		>>> from sympy import decompose
		>>> from sympy.abc import x
		
		>>> decompose(x**4 + 2*x**3 - x - 1)
		[x**2 - x - 1, x**2 + x]
	**/
	static public function decompose(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return a key that can be used for sorting.
		
		The key has the structure:
		
		(class_key, (len(args), args), exponent.sort_key(), coefficient)
		
		This key is supplied by the sort_key routine of Basic objects when
		``item`` is a Basic object or an object (other than a string) that
		sympifies to a Basic object. Otherwise, this function produces the
		key.
		
		The ``order`` argument is passed along to the sort_key routine and is
		used to determine how the terms *within* an expression are ordered.
		(See examples below) ``order`` options are: 'lex', 'grlex', 'grevlex',
		and reversed values of the same (e.g. 'rev-lex'). The default order
		value is None (which translates to 'lex').
		
		Examples
		========
		
		>>> from sympy import S, I, default_sort_key
		>>> from sympy.core.function import UndefinedFunction
		>>> from sympy.abc import x
		
		The following are equivalent ways of getting the key for an object:
		
		>>> x.sort_key() == default_sort_key(x)
		True
		
		Here are some examples of the key that is produced:
		
		>>> default_sort_key(UndefinedFunction('f'))
		((0, 0, 'UndefinedFunction'), (1, ('f',)), ((1, 0, 'Number'),
		    (0, ()), (), 1), 1)
		>>> default_sort_key('1')
		((0, 0, 'str'), (1, ('1',)), ((1, 0, 'Number'), (0, ()), (), 1), 1)
		>>> default_sort_key(S.One)
		((1, 0, 'Number'), (0, ()), (), 1)
		>>> default_sort_key(2)
		((1, 0, 'Number'), (0, ()), (), 2)
		
		
		While sort_key is a method only defined for SymPy objects,
		default_sort_key will accept anything as an argument so it is
		more robust as a sorting key. For the following, using key=
		lambda i: i.sort_key() would fail because 2 doesn't have a sort_key
		method; that's why default_sort_key is used. Note, that it also
		handles sympification of non-string items likes ints:
		
		>>> a = [2, I, -I]
		>>> sorted(a, key=default_sort_key)
		[2, -I, I]
		
		The returned key can be used anywhere that a key can be specified for
		a function, e.g. sort, min, max, etc...:
		
		>>> a.sort(key=default_sort_key); a[0]
		2
		>>> min(a, key=default_sort_key)
		2
		
		Note
		----
		
		The key returned is useful for getting items into a canonical order
		that will be the same across platforms. It is not directly useful for
		sorting lists of expressions:
		
		>>> a, b = x, 1/x
		
		Since ``a`` has only 1 term, its value of sort_key is unaffected by
		``order``:
		
		>>> a.sort_key() == a.sort_key('rev-lex')
		True
		
		If ``a`` and ``b`` are combined then the key will differ because there
		are terms that can be ordered:
		
		>>> eq = a + b
		>>> eq.sort_key() == eq.sort_key('rev-lex')
		False
		>>> eq.as_ordered_terms()
		[x, 1/x]
		>>> eq.as_ordered_terms('rev-lex')
		[1/x, x]
		
		But since the keys for each of these terms are independent of ``order``'s
		value, they don't sort differently when they appear separately in a list:
		
		>>> sorted(eq.args, key=default_sort_key)
		[1/x, x]
		>>> sorted(eq.args, key=lambda i: default_sort_key(i, order='rev-lex'))
		[1/x, x]
		
		The order of terms obtained when using these keys is the order that would
		be obtained if those terms were *factors* in a product.
		
		See Also
		========
		
		sympy.core.expr.as_ordered_factors, sympy.core.expr.as_ordered_terms
	**/
	static public function default_sort_key(item:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return the degree value for the given radians (pi = 180 degrees).
	**/
	static public function deg(r:Dynamic):Dynamic;
	/**
		Return the degree of ``f`` in the given variable.
		
		The degree of 0 is negative infinity.
		
		Examples
		========
		
		>>> from sympy import degree
		>>> from sympy.abc import x, y
		
		>>> degree(x**2 + y*x + 1, gen=x)
		2
		>>> degree(x**2 + y*x + 1, gen=y)
		1
		>>> degree(0, x)
		-oo
	**/
	static public function degree(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return a list of degrees of ``f`` in all variables.
		
		Examples
		========
		
		>>> from sympy import degree_list
		>>> from sympy.abc import x, y
		
		>>> degree_list(x**2 + y*x + 1)
		(2, 1)
	**/
	static public function degree_list(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	static public function denom(expr:Dynamic):Dynamic;
	/**
		Matrix Determinant
		
		>>> from sympy import MatrixSymbol, det, eye
		>>> A = MatrixSymbol('A', 3, 3)
		>>> det(A)
		Determinant(A)
		
		>>> det(eye(3))
		1
	**/
	static public function det(matexpr:Dynamic):Dynamic;
	/**
		Return ``det(M)`` assuming that either
		there are lots of zeros or the size of the matrix
		is small. If this assumption is not met, then the normal
		Matrix.det function will be used with method = ``method``.
		
		See Also
		========
		det_minor
		det_perm
	**/
	static public function det_quick(M:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Create a sparse, diagonal matrix from a list of diagonal values.
		
		Notes
		=====
		
		When arguments are matrices they are fitted in resultant matrix.
		
		The returned matrix is a mutable, dense matrix. To make it a different
		type, send the desired class for keyword ``cls``.
		
		Examples
		========
		
		>>> from sympy.matrices import diag, Matrix, ones
		>>> diag(1, 2, 3)
		Matrix([
		[1, 0, 0],
		[0, 2, 0],
		[0, 0, 3]])
		>>> diag(*[1, 2, 3])
		Matrix([
		[1, 0, 0],
		[0, 2, 0],
		[0, 0, 3]])
		
		The diagonal elements can be matrices; diagonal filling will
		continue on the diagonal from the last element of the matrix:
		
		>>> from sympy.abc import x, y, z
		>>> a = Matrix([x, y, z])
		>>> b = Matrix([[1, 2], [3, 4]])
		>>> c = Matrix([[5, 6]])
		>>> diag(a, 7, b, c)
		Matrix([
		[x, 0, 0, 0, 0, 0],
		[y, 0, 0, 0, 0, 0],
		[z, 0, 0, 0, 0, 0],
		[0, 7, 0, 0, 0, 0],
		[0, 0, 1, 2, 0, 0],
		[0, 0, 3, 4, 0, 0],
		[0, 0, 0, 0, 5, 6]])
		
		When diagonal elements are lists, they will be treated as arguments
		to Matrix:
		
		>>> diag([1, 2, 3], 4)
		Matrix([
		[1, 0],
		[2, 0],
		[3, 0],
		[0, 4]])
		>>> diag([[1, 2, 3]], 4)
		Matrix([
		[1, 2, 3, 0],
		[0, 0, 0, 4]])
		
		A given band off the diagonal can be made by padding with a
		vertical or horizontal "kerning" vector:
		
		>>> hpad = ones(0, 2)
		>>> vpad = ones(2, 0)
		>>> diag(vpad, 1, 2, 3, hpad) + diag(hpad, 4, 5, 6, vpad)
		Matrix([
		[0, 0, 4, 0, 0],
		[0, 0, 0, 5, 0],
		[1, 0, 0, 0, 6],
		[0, 2, 0, 0, 0],
		[0, 0, 3, 0, 0]])
		
		
		
		The type is mutable by default but can be made immutable by setting
		the ``mutable`` flag to False:
		
		>>> type(diag(1))
		<class 'sympy.matrices.dense.MutableDenseMatrix'>
		>>> from sympy.matrices import ImmutableMatrix
		>>> type(diag(1, cls=ImmutableMatrix))
		<class 'sympy.matrices.immutable.ImmutableMatrix'>
		
		See Also
		========
		
		eye
	**/
	static public function diag(values:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Merge dictionaries into a single dictionary. 
	**/
	static public function dict_merge(dicts:Dynamic):Dynamic;
	/**
		Differentiate f with respect to symbols.
		
		This is just a wrapper to unify .diff() and the Derivative class; its
		interface is similar to that of integrate().  You can use the same
		shortcuts for multiple variables as with Derivative.  For example,
		diff(f(x), x, x, x) and diff(f(x), x, 3) both return the third derivative
		of f(x).
		
		You can pass evaluate=False to get an unevaluated Derivative class.  Note
		that if there are 0 symbols (such as diff(f(x), x, 0), then the result will
		be the function (the zeroth derivative), even if evaluate=False.
		
		Examples
		========
		
		>>> from sympy import sin, cos, Function, diff
		>>> from sympy.abc import x, y
		>>> f = Function('f')
		
		>>> diff(sin(x), x)
		cos(x)
		>>> diff(f(x), x, x, x)
		Derivative(f(x), x, x, x)
		>>> diff(f(x), x, 3)
		Derivative(f(x), x, x, x)
		>>> diff(sin(x)*cos(y), x, 2, y, 2)
		sin(x)*cos(y)
		
		>>> type(diff(sin(x), x))
		cos
		>>> type(diff(sin(x), x, evaluate=False))
		<class 'sympy.core.function.Derivative'>
		>>> type(diff(sin(x), x, 0))
		sin
		>>> type(diff(sin(x), x, 0, evaluate=False))
		sin
		
		>>> diff(sin(x))
		cos(x)
		>>> diff(sin(x*y))
		Traceback (most recent call last):
		...
		ValueError: specify differentiation variables to differentiate sin(x*y)
		
		Note that ``diff(sin(x))`` syntax is meant only for convenience
		in interactive sessions and should be avoided in library code.
		
		References
		==========
		
		http://reference.wolfram.com/legacy/v5_2/Built-inFunctions/AlgebraicComputation/Calculus/D.html
		
		See Also
		========
		
		Derivative
		sympy.geometry.util.idiff: computes the derivative implicitly
	**/
	static public function diff(f:Dynamic, symbols:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		The digamma function is the first derivative of the loggamma function i.e,
		
		.. math::
		    \psi(x) := \frac{\mathrm{d}}{\mathrm{d} z} \log\Gamma(z)
		            = \frac{\Gamma'(z)}{\Gamma(z) }
		
		In this case, ``digamma(z) = polygamma(0, z)``.
		
		See Also
		========
		
		gamma: Gamma function.
		lowergamma: Lower incomplete gamma function.
		uppergamma: Upper incomplete gamma function.
		polygamma: Polygamma function.
		loggamma: Log Gamma function.
		trigamma: Trigamma function.
		sympy.functions.special.beta_functions.beta: Euler Beta function.
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Digamma_function
		.. [2] http://mathworld.wolfram.com/DigammaFunction.html
		.. [3] http://functions.wolfram.com/GammaBetaErf/PolyGamma2/
	**/
	static public function digamma(x:Dynamic):Dynamic;
	/**
		Compute discriminant of ``f``.
		
		Examples
		========
		
		>>> from sympy import discriminant
		>>> from sympy.abc import x
		
		>>> discriminant(x**2 + 2*x + 3)
		-8
	**/
	static public function discriminant(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute polynomial division of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import div, ZZ, QQ
		>>> from sympy.abc import x
		
		>>> div(x**2 + 1, 2*x - 4, domain=ZZ)
		(0, x**2 + 1)
		>>> div(x**2 + 1, 2*x - 4, domain=QQ)
		(x/2 + 1, 5)
	**/
	static public function div(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the number of divisors of ``n``. If ``modulus`` is not 1 then only
		those that are divisible by ``modulus`` are counted.
		
		References
		==========
		
		- http://www.mayer.dial.pipex.com/maths/formulae.htm
		
		>>> from sympy import divisor_count
		>>> divisor_count(6)
		4
		
		See Also
		========
		
		factorint, divisors, totient
	**/
	static public function divisor_count(n:Dynamic, ?modulus:Dynamic):Dynamic;
	/**
		Return all divisors of n sorted from 1..n by default.
		If generator is True an unordered generator is returned.
		
		The number of divisors of n can be quite large if there are many
		prime factors (counting repeated factors). If only the number of
		factors is desired use divisor_count(n).
		
		Examples
		========
		
		>>> from sympy import divisors, divisor_count
		>>> divisors(24)
		[1, 2, 3, 4, 6, 8, 12, 24]
		>>> divisor_count(24)
		8
		
		>>> list(divisors(120, generator=True))
		[1, 2, 4, 8, 3, 6, 12, 24, 5, 10, 20, 40, 15, 30, 60, 120]
		
		This is a slightly modified version of Tim Peters referenced at:
		http://stackoverflow.com/questions/1010381/python-factorization
		
		See Also
		========
		
		primefactors, factorint, divisor_count
	**/
	static public function divisors(n:Dynamic, ?generator:Dynamic):Dynamic;
	/**
		Runs doctests in all \*.py files in the sympy directory which match
		any of the given strings in ``paths`` or all tests if paths=[].
		
		Notes:
		
		- Paths can be entered in native system format or in unix,
		  forward-slash format.
		- Files that are on the blacklist can be tested by providing
		  their path; they are only excluded if no paths are given.
		
		Examples
		========
		
		>>> import sympy
		
		Run all tests:
		
		>>> sympy.doctest() # doctest: +SKIP
		
		Run one file:
		
		>>> sympy.doctest("sympy/core/basic.py") # doctest: +SKIP
		>>> sympy.doctest("polynomial.rst") # doctest: +SKIP
		
		Run all tests in sympy/functions/ and some particular file:
		
		>>> sympy.doctest("/functions", "basic.py") # doctest: +SKIP
		
		Run any file having polynomial in its name, doc/src/modules/polynomial.rst,
		sympy/functions/special/polynomials.py, and sympy/polys/polynomial.py:
		
		>>> sympy.doctest("polynomial") # doctest: +SKIP
		
		The ``split`` option can be passed to split the test run into parts. The
		split currently only splits the test files, though this may change in the
		future. ``split`` should be a string of the form 'a/b', which will run
		part ``a`` of ``b``. Note that the regular doctests and the Sphinx
		doctests are split independently. For instance, to run the first half of
		the test suite:
		
		>>> sympy.doctest(split='1/2')  # doctest: +SKIP
		
		The ``subprocess`` and ``verbose`` options are the same as with the function
		``test()``.  See the docstring of that function for more information.
	**/
	static public function doctest(paths:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		 Solves any (supported) kind of ordinary differential equation and
		 system of ordinary differential equations.
		
		 For single ordinary differential equation
		 =========================================
		
		 It is classified under this when number of equation in ``eq`` is one.
		 **Usage**
		
		     ``dsolve(eq, f(x), hint)`` -> Solve ordinary differential equation
		     ``eq`` for function ``f(x)``, using method ``hint``.
		
		 **Details**
		
		     ``eq`` can be any supported ordinary differential equation (see the
		         :py:mod:`~sympy.solvers.ode` docstring for supported methods).
		         This can either be an :py:class:`~sympy.core.relational.Equality`,
		         or an expression, which is assumed to be equal to ``0``.
		
		     ``f(x)`` is a function of one variable whose derivatives in that
		         variable make up the ordinary differential equation ``eq``.  In
		         many cases it is not necessary to provide this; it will be
		         autodetected (and an error raised if it couldn't be detected).
		
		     ``hint`` is the solving method that you want dsolve to use.  Use
		         ``classify_ode(eq, f(x))`` to get all of the possible hints for an
		         ODE.  The default hint, ``default``, will use whatever hint is
		         returned first by :py:meth:`~sympy.solvers.ode.classify_ode`.  See
		         Hints below for more options that you can use for hint.
		
		     ``simplify`` enables simplification by
		         :py:meth:`~sympy.solvers.ode.odesimp`.  See its docstring for more
		         information.  Turn this off, for example, to disable solving of
		         solutions for ``func`` or simplification of arbitrary constants.
		         It will still integrate with this hint. Note that the solution may
		         contain more arbitrary constants than the order of the ODE with
		         this option enabled.
		
		     ``xi`` and ``eta`` are the infinitesimal functions of an ordinary
		         differential equation. They are the infinitesimals of the Lie group
		         of point transformations for which the differential equation is
		         invariant. The user can specify values for the infinitesimals. If
		         nothing is specified, ``xi`` and ``eta`` are calculated using
		         :py:meth:`~sympy.solvers.ode.infinitesimals` with the help of various
		         heuristics.
		
		     ``ics`` is the set of boundary conditions for the differential equation.
		       It should be given in the form of ``{f(x0): x1, f(x).diff(x).subs(x, x2):
		       x3}`` and so on. For now initial conditions are implemented only for
		       power series solutions of first-order differential equations which should
		       be given in the form of ``{f(x0): x1}`` (See issue 4720). If nothing is
		       specified for this case ``f(0)`` is assumed to be ``C0`` and the power
		       series solution is calculated about 0.
		
		     ``x0`` is the point about which the power series solution of a differential
		       equation is to be evaluated.
		
		     ``n`` gives the exponent of the dependent variable up to which the power series
		       solution of a differential equation is to be evaluated.
		
		 **Hints**
		
		     Aside from the various solving methods, there are also some meta-hints
		     that you can pass to :py:meth:`~sympy.solvers.ode.dsolve`:
		
		     ``default``:
		             This uses whatever hint is returned first by
		             :py:meth:`~sympy.solvers.ode.classify_ode`. This is the
		             default argument to :py:meth:`~sympy.solvers.ode.dsolve`.
		
		     ``all``:
		             To make :py:meth:`~sympy.solvers.ode.dsolve` apply all
		             relevant classification hints, use ``dsolve(ODE, func,
		             hint="all")``.  This will return a dictionary of
		             ``hint:solution`` terms.  If a hint causes dsolve to raise the
		             ``NotImplementedError``, value of that hint's key will be the
		             exception object raised.  The dictionary will also include
		             some special keys:
		
		             - ``order``: The order of the ODE.  See also
		               :py:meth:`~sympy.solvers.deutils.ode_order` in
		               ``deutils.py``.
		             - ``best``: The simplest hint; what would be returned by
		               ``best`` below.
		             - ``best_hint``: The hint that would produce the solution
		               given by ``best``.  If more than one hint produces the best
		               solution, the first one in the tuple returned by
		               :py:meth:`~sympy.solvers.ode.classify_ode` is chosen.
		             - ``default``: The solution that would be returned by default.
		               This is the one produced by the hint that appears first in
		               the tuple returned by
		               :py:meth:`~sympy.solvers.ode.classify_ode`.
		
		     ``all_Integral``:
		             This is the same as ``all``, except if a hint also has a
		             corresponding ``_Integral`` hint, it only returns the
		             ``_Integral`` hint.  This is useful if ``all`` causes
		             :py:meth:`~sympy.solvers.ode.dsolve` to hang because of a
		             difficult or impossible integral.  This meta-hint will also be
		             much faster than ``all``, because
		             :py:meth:`~sympy.core.expr.Expr.integrate` is an expensive
		             routine.
		
		     ``best``:
		             To have :py:meth:`~sympy.solvers.ode.dsolve` try all methods
		             and return the simplest one.  This takes into account whether
		             the solution is solvable in the function, whether it contains
		             any Integral classes (i.e.  unevaluatable integrals), and
		             which one is the shortest in size.
		
		     See also the :py:meth:`~sympy.solvers.ode.classify_ode` docstring for
		     more info on hints, and the :py:mod:`~sympy.solvers.ode` docstring for
		     a list of all supported hints.
		
		 **Tips**
		
		     - You can declare the derivative of an unknown function this way:
		
		         >>> from sympy import Function, Derivative
		         >>> from sympy.abc import x # x is the independent variable
		         >>> f = Function("f")(x) # f is a function of x
		         >>> # f_ will be the derivative of f with respect to x
		         >>> f_ = Derivative(f, x)
		
		     - See ``test_ode.py`` for many tests, which serves also as a set of
		       examples for how to use :py:meth:`~sympy.solvers.ode.dsolve`.
		     - :py:meth:`~sympy.solvers.ode.dsolve` always returns an
		       :py:class:`~sympy.core.relational.Equality` class (except for the
		       case when the hint is ``all`` or ``all_Integral``).  If possible, it
		       solves the solution explicitly for the function being solved for.
		       Otherwise, it returns an implicit solution.
		     - Arbitrary constants are symbols named ``C1``, ``C2``, and so on.
		     - Because all solutions should be mathematically equivalent, some
		       hints may return the exact same result for an ODE. Often, though,
		       two different hints will return the same solution formatted
		       differently.  The two should be equivalent. Also note that sometimes
		       the values of the arbitrary constants in two different solutions may
		       not be the same, because one constant may have "absorbed" other
		       constants into it.
		     - Do ``help(ode.ode_<hintname>)`` to get help more information on a
		       specific hint, where ``<hintname>`` is the name of a hint without
		       ``_Integral``.
		
		 For system of ordinary differential equations
		 =============================================
		
		**Usage**
		     ``dsolve(eq, func)`` -> Solve a system of ordinary differential
		     equations ``eq`` for ``func`` being list of functions including
		     `x(t)`, `y(t)`, `z(t)` where number of functions in the list depends
		     upon the number of equations provided in ``eq``.
		
		 **Details**
		
		     ``eq`` can be any supported system of ordinary differential equations
		     This can either be an :py:class:`~sympy.core.relational.Equality`,
		     or an expression, which is assumed to be equal to ``0``.
		
		     ``func`` holds ``x(t)`` and ``y(t)`` being functions of one variable which
		     together with some of their derivatives make up the system of ordinary
		     differential equation ``eq``. It is not necessary to provide this; it
		     will be autodetected (and an error raised if it couldn't be detected).
		
		 **Hints**
		
		     The hints are formed by parameters returned by classify_sysode, combining
		     them give hints name used later for forming method name.
		
		 Examples
		 ========
		
		 >>> from sympy import Function, dsolve, Eq, Derivative, sin, cos, symbols
		 >>> from sympy.abc import x
		 >>> f = Function('f')
		 >>> dsolve(Derivative(f(x), x, x) + 9*f(x), f(x))
		 f(x) == C1*sin(3*x) + C2*cos(3*x)
		
		 >>> eq = sin(x)*cos(f(x)) + cos(x)*sin(f(x))*f(x).diff(x)
		 >>> dsolve(eq, hint='1st_exact')
		 [f(x) == -acos(C1/cos(x)) + 2*pi, f(x) == acos(C1/cos(x))]
		 >>> dsolve(eq, hint='almost_linear')
		 [f(x) == -acos(-sqrt(C1/cos(x)**2)) + 2*pi, f(x) == -acos(sqrt(C1/cos(x)**2)) + 2*pi,
		 f(x) == acos(-sqrt(C1/cos(x)**2)), f(x) == acos(sqrt(C1/cos(x)**2))]
		 >>> t = symbols('t')
		 >>> x, y = symbols('x, y', function=True)
		 >>> eq = (Eq(Derivative(x(t),t), 12*t*x(t) + 8*y(t)), Eq(Derivative(y(t),t), 21*x(t) + 7*t*y(t)))
		 >>> dsolve(eq)
		 [x(t) == C1*x0 + C2*x0*Integral(8*exp(Integral(7*t, t))*exp(Integral(12*t, t))/x0**2, t),
		 y(t) == C1*y0 + C2(y0*Integral(8*exp(Integral(7*t, t))*exp(Integral(12*t, t))/x0**2, t) +
		 exp(Integral(7*t, t))*exp(Integral(12*t, t))/x0)]
		 >>> eq = (Eq(Derivative(x(t),t),x(t)*y(t)*sin(t)), Eq(Derivative(y(t),t),y(t)**2*sin(t)))
		 >>> dsolve(eq)
		 set([x(t) == -exp(C1)/(C2*exp(C1) - cos(t)), y(t) == -1/(C1 - cos(t))])
		 
	**/
	static public function dsolve(eq:Dynamic, ?func:Dynamic, ?hint:Dynamic, ?simplify:Dynamic, ?ics:Dynamic, ?xi:Dynamic, ?eta:Dynamic, ?x0:Dynamic, ?n:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the list of denominators of an Egyptian fraction
		expansion [1]_ of the said rational `r`.
		
		Parameters
		==========
		
		r : Rational
		    a positive rational number.
		algorithm : { "Greedy", "Graham Jewett", "Takenouchi", "Golomb" }, optional
		    Denotes the algorithm to be used (the default is "Greedy").
		
		Examples
		========
		
		>>> from sympy import Rational
		>>> from sympy.ntheory.egyptian_fraction import egyptian_fraction
		>>> egyptian_fraction(Rational(3, 7))
		[3, 11, 231]
		>>> egyptian_fraction(Rational(3, 7), "Graham Jewett")
		[7, 8, 9, 56, 57, 72, 3192]
		>>> egyptian_fraction(Rational(3, 7), "Takenouchi")
		[4, 7, 28]
		>>> egyptian_fraction(Rational(3, 7), "Golomb")
		[3, 15, 35]
		>>> egyptian_fraction(Rational(11, 5), "Golomb")
		[1, 2, 3, 4, 9, 234, 1118, 2580]
		
		See Also
		========
		
		sympy.core.numbers.Rational
		
		Notes
		=====
		
		Currently the following algorithms are supported:
		
		1) Greedy Algorithm
		
		   Also called the Fibonacci-Sylvester algorithm [2]_.
		   At each step, extract the largest unit fraction less
		   than the target and replace the target with the remainder.
		
		   It has some distinct properties:
		
		   a) Given `p/q` in lowest terms, generates an expansion of maximum
		      length `p`. Even as the numerators get large, the number of
		      terms is seldom more than a handful.
		
		   b) Uses minimal memory.
		
		   c) The terms can blow up (standard examples of this are 5/121 and
		      31/311).  The denominator is at most squared at each step
		      (doubly-exponential growth) and typically exhibits
		      singly-exponential growth.
		
		2) Graham Jewett Algorithm
		
		   The algorithm suggested by the result of Graham and Jewett.
		   Note that this has a tendency to blow up: the length of the
		   resulting expansion is always ``2**(x/gcd(x, y)) - 1``.  See [3]_.
		
		3) Takenouchi Algorithm
		
		   The algorithm suggested by Takenouchi (1921).
		   Differs from the Graham-Jewett algorithm only in the handling
		   of duplicates.  See [3]_.
		
		4) Golomb's Algorithm
		
		   A method given by Golumb (1962), using modular arithmetic and
		   inverses.  It yields the same results as a method using continued
		   fractions proposed by Bleicher (1972).  See [4]_.
		
		If the given rational is greater than or equal to 1, a greedy algorithm
		of summing the harmonic sequence 1/1 + 1/2 + 1/3 + ... is used, taking
		all the unit fractions of this sequence until adding one more would be
		greater than the given number.  This list of denominators is prefixed
		to the result from the requested algorithm used on the remainder.  For
		example, if r is 8/3, using the Greedy algorithm, we get [1, 2, 3, 4,
		5, 6, 7, 14, 420], where the beginning of the sequence, [1, 2, 3, 4, 5,
		6, 7] is part of the harmonic sequence summing to 363/140, leaving a
		remainder of 31/420, which yields [14, 420] by the Greedy algorithm.
		The result of egyptian_fraction(Rational(8, 3), "Golomb") is [1, 2, 3,
		4, 5, 6, 7, 14, 574, 2788, 6460, 11590, 33062, 113820], and so on.
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Egyptian_fraction
		.. [2] https://en.wikipedia.org/wiki/Greedy_algorithm_for_Egyptian_fractions
		.. [3] http://www.ics.uci.edu/~eppstein/numth/egypt/conflict.html
		.. [4] http://ami.ektf.hu/uploads/papers/finalpdf/AMI_42_from129to134.pdf
	**/
	static public function egyptian_fraction(r:Dynamic, ?algorithm:Dynamic):Dynamic;
	/**
		Manipulate parts of an expression selected by a path.
		
		This function allows to manipulate large nested expressions in single
		line of code, utilizing techniques to those applied in XML processing
		standards (e.g. XPath).
		
		If ``func`` is ``None``, :func:`epath` retrieves elements selected by
		the ``path``. Otherwise it applies ``func`` to each matching element.
		
		Note that it is more efficient to create an EPath object and use the select
		and apply methods of that object, since this will compile the path string
		only once.  This function should only be used as a convenient shortcut for
		interactive use.
		
		This is the supported syntax:
		
		* select all: ``/*``
		      Equivalent of ``for arg in args:``.
		* select slice: ``/[0]`` or ``/[1:5]`` or ``/[1:5:2]``
		      Supports standard Python's slice syntax.
		* select by type: ``/list`` or ``/list|tuple``
		      Emulates :func:`isinstance`.
		* select by attribute: ``/__iter__?``
		      Emulates :func:`hasattr`.
		
		Parameters
		==========
		
		path : str | EPath
		    A path as a string or a compiled EPath.
		expr : Basic | iterable
		    An expression or a container of expressions.
		func : callable (optional)
		    A callable that will be applied to matching parts.
		args : tuple (optional)
		    Additional positional arguments to ``func``.
		kwargs : dict (optional)
		    Additional keyword arguments to ``func``.
		
		Examples
		========
		
		>>> from sympy.simplify.epathtools import epath
		>>> from sympy import sin, cos, E
		>>> from sympy.abc import x, y, z, t
		
		>>> path = "/* /[0]/Symbol"
		>>> expr = [((x, 1), 2), ((3, y), z)]
		
		>>> epath(path, expr)
		[x, y]
		>>> epath(path, expr, lambda expr: expr**2)
		[((x**2, 1), 2), ((3, y**2), z)]
		
		>>> path = "/* /* /Symbol"
		>>> expr = t + sin(x + 1) + cos(x + y + E)
		
		>>> epath(path, expr)
		[x, x, y]
		>>> epath(path, expr, lambda expr: 2*expr)
		t + sin(2*x + 1) + cos(2*x + 2*y + E)
	**/
	static public function epath(path:Dynamic, ?expr:Dynamic, ?func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Find the Euler-Lagrange equations [1]_ for a given Lagrangian.
		
		Parameters
		==========
		
		L : Expr
		    The Lagrangian that should be a function of the functions listed
		    in the second argument and their derivatives.
		
		    For example, in the case of two functions `f(x,y)`, `g(x,y)` and
		    two independent variables `x`, `y` the Lagrangian would have the form:
		
		        .. math:: L\left(f(x,y),g(x,y),\frac{\partial f(x,y)}{\partial x},
		                  \frac{\partial f(x,y)}{\partial y},
		                  \frac{\partial g(x,y)}{\partial x},
		                  \frac{\partial g(x,y)}{\partial y},x,y\right)
		
		    In many cases it is not necessary to provide anything, except the
		    Lagrangian, it will be autodetected (and an error raised if this
		    couldn't be done).
		
		funcs : Function or an iterable of Functions
		    The functions that the Lagrangian depends on. The Euler equations
		    are differential equations for each of these functions.
		
		vars : Symbol or an iterable of Symbols
		    The Symbols that are the independent variables of the functions.
		
		Returns
		=======
		
		eqns : list of Eq
		    The list of differential equations, one for each function.
		
		Examples
		========
		
		>>> from sympy import Symbol, Function
		>>> from sympy.calculus.euler import euler_equations
		>>> x = Function('x')
		>>> t = Symbol('t')
		>>> L = (x(t).diff(t))**2/2 - x(t)**2/2
		>>> euler_equations(L, x(t), t)
		[-x(t) - Derivative(x(t), t, t) == 0]
		>>> u = Function('u')
		>>> x = Symbol('x')
		>>> L = (u(t, x).diff(t))**2/2 - (u(t, x).diff(x))**2/2
		>>> euler_equations(L, u(t, x), [t, x])
		[-Derivative(u(t, x), t, t) + Derivative(u(t, x), x, x) == 0]
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Euler%E2%80%93Lagrange_equation
	**/
	static public function euler_equations(L:Dynamic, ?funcs:Dynamic, ?vars:Dynamic):Dynamic;
	/**
		Control automatic evaluation
		
		This context managers controls whether or not all SymPy functions evaluate
		by default.
		
		Note that much of SymPy expects evaluated expressions.  This functionality
		is experimental and is unlikely to function as intended on large
		expressions.
		
		Examples
		========
		
		>>> from sympy.abc import x
		>>> from sympy.core.evaluate import evaluate
		>>> print(x + x)
		2*x
		>>> with evaluate(False):
		...     print(x + x)
		x + x
	**/
	static public function evaluate(x:Dynamic):Dynamic;
	/**
		Expand an expression using methods given as hints.
		
		Hints evaluated unless explicitly set to False are:  ``basic``, ``log``,
		``multinomial``, ``mul``, ``power_base``, and ``power_exp`` The following
		hints are supported but not applied unless set to True:  ``complex``,
		``func``, and ``trig``.  In addition, the following meta-hints are
		supported by some or all of the other hints:  ``frac``, ``numer``,
		``denom``, ``modulus``, and ``force``.  ``deep`` is supported by all
		hints.  Additionally, subclasses of Expr may define their own hints or
		meta-hints.
		
		The ``basic`` hint is used for any special rewriting of an object that
		should be done automatically (along with the other hints like ``mul``)
		when expand is called. This is a catch-all hint to handle any sort of
		expansion that may not be described by the existing hint names. To use
		this hint an object should override the ``_eval_expand_basic`` method.
		Objects may also define their own expand methods, which are not run by
		default.  See the API section below.
		
		If ``deep`` is set to ``True`` (the default), things like arguments of
		functions are recursively expanded.  Use ``deep=False`` to only expand on
		the top level.
		
		If the ``force`` hint is used, assumptions about variables will be ignored
		in making the expansion.
		
		Hints
		=====
		
		These hints are run by default
		
		mul
		---
		
		Distributes multiplication over addition:
		
		>>> from sympy import cos, exp, sin
		>>> from sympy.abc import x, y, z
		>>> (y*(x + z)).expand(mul=True)
		x*y + y*z
		
		multinomial
		-----------
		
		Expand (x + y + ...)**n where n is a positive integer.
		
		>>> ((x + y + z)**2).expand(multinomial=True)
		x**2 + 2*x*y + 2*x*z + y**2 + 2*y*z + z**2
		
		power_exp
		---------
		
		Expand addition in exponents into multiplied bases.
		
		>>> exp(x + y).expand(power_exp=True)
		exp(x)*exp(y)
		>>> (2**(x + y)).expand(power_exp=True)
		2**x*2**y
		
		power_base
		----------
		
		Split powers of multiplied bases.
		
		This only happens by default if assumptions allow, or if the
		``force`` meta-hint is used:
		
		>>> ((x*y)**z).expand(power_base=True)
		(x*y)**z
		>>> ((x*y)**z).expand(power_base=True, force=True)
		x**z*y**z
		>>> ((2*y)**z).expand(power_base=True)
		2**z*y**z
		
		Note that in some cases where this expansion always holds, SymPy performs
		it automatically:
		
		>>> (x*y)**2
		x**2*y**2
		
		log
		---
		
		Pull out power of an argument as a coefficient and split logs products
		into sums of logs.
		
		Note that these only work if the arguments of the log function have the
		proper assumptions--the arguments must be positive and the exponents must
		be real--or else the ``force`` hint must be True:
		
		>>> from sympy import log, symbols
		>>> log(x**2*y).expand(log=True)
		log(x**2*y)
		>>> log(x**2*y).expand(log=True, force=True)
		2*log(x) + log(y)
		>>> x, y = symbols('x,y', positive=True)
		>>> log(x**2*y).expand(log=True)
		2*log(x) + log(y)
		
		basic
		-----
		
		This hint is intended primarily as a way for custom subclasses to enable
		expansion by default.
		
		These hints are not run by default:
		
		complex
		-------
		
		Split an expression into real and imaginary parts.
		
		>>> x, y = symbols('x,y')
		>>> (x + y).expand(complex=True)
		re(x) + re(y) + I*im(x) + I*im(y)
		>>> cos(x).expand(complex=True)
		-I*sin(re(x))*sinh(im(x)) + cos(re(x))*cosh(im(x))
		
		Note that this is just a wrapper around ``as_real_imag()``.  Most objects
		that wish to redefine ``_eval_expand_complex()`` should consider
		redefining ``as_real_imag()`` instead.
		
		func
		----
		
		Expand other functions.
		
		>>> from sympy import gamma
		>>> gamma(x + 1).expand(func=True)
		x*gamma(x)
		
		trig
		----
		
		Do trigonometric expansions.
		
		>>> cos(x + y).expand(trig=True)
		-sin(x)*sin(y) + cos(x)*cos(y)
		>>> sin(2*x).expand(trig=True)
		2*sin(x)*cos(x)
		
		Note that the forms of ``sin(n*x)`` and ``cos(n*x)`` in terms of ``sin(x)``
		and ``cos(x)`` are not unique, due to the identity `\sin^2(x) + \cos^2(x)
		= 1`.  The current implementation uses the form obtained from Chebyshev
		polynomials, but this may change.  See `this MathWorld article
		<http://mathworld.wolfram.com/Multiple-AngleFormulas.html>`_ for more
		information.
		
		Notes
		=====
		
		- You can shut off unwanted methods::
		
		    >>> (exp(x + y)*(x + y)).expand()
		    x*exp(x)*exp(y) + y*exp(x)*exp(y)
		    >>> (exp(x + y)*(x + y)).expand(power_exp=False)
		    x*exp(x + y) + y*exp(x + y)
		    >>> (exp(x + y)*(x + y)).expand(mul=False)
		    (x + y)*exp(x)*exp(y)
		
		- Use deep=False to only expand on the top level::
		
		    >>> exp(x + exp(x + y)).expand()
		    exp(x)*exp(exp(x)*exp(y))
		    >>> exp(x + exp(x + y)).expand(deep=False)
		    exp(x)*exp(exp(x + y))
		
		- Hints are applied in an arbitrary, but consistent order (in the current
		  implementation, they are applied in alphabetical order, except
		  multinomial comes before mul, but this may change).  Because of this,
		  some hints may prevent expansion by other hints if they are applied
		  first. For example, ``mul`` may distribute multiplications and prevent
		  ``log`` and ``power_base`` from expanding them. Also, if ``mul`` is
		  applied before ``multinomial`, the expression might not be fully
		  distributed. The solution is to use the various ``expand_hint`` helper
		  functions or to use ``hint=False`` to this function to finely control
		  which hints are applied. Here are some examples::
		
		    >>> from sympy import expand, expand_mul, expand_power_base
		    >>> x, y, z = symbols('x,y,z', positive=True)
		
		    >>> expand(log(x*(y + z)))
		    log(x) + log(y + z)
		
		  Here, we see that ``log`` was applied before ``mul``.  To get the mul
		  expanded form, either of the following will work::
		
		    >>> expand_mul(log(x*(y + z)))
		    log(x*y + x*z)
		    >>> expand(log(x*(y + z)), log=False)
		    log(x*y + x*z)
		
		  A similar thing can happen with the ``power_base`` hint::
		
		    >>> expand((x*(y + z))**x)
		    (x*y + x*z)**x
		
		  To get the ``power_base`` expanded form, either of the following will
		  work::
		
		    >>> expand((x*(y + z))**x, mul=False)
		    x**x*(y + z)**x
		    >>> expand_power_base((x*(y + z))**x)
		    x**x*(y + z)**x
		
		    >>> expand((x + y)*y/x)
		    y + y**2/x
		
		  The parts of a rational expression can be targeted::
		
		    >>> expand((x + y)*y/x/(x + 1), frac=True)
		    (x*y + y**2)/(x**2 + x)
		    >>> expand((x + y)*y/x/(x + 1), numer=True)
		    (x*y + y**2)/(x*(x + 1))
		    >>> expand((x + y)*y/x/(x + 1), denom=True)
		    y*(x + y)/(x**2 + x)
		
		- The ``modulus`` meta-hint can be used to reduce the coefficients of an
		  expression post-expansion::
		
		    >>> expand((3*x + 1)**2)
		    9*x**2 + 6*x + 1
		    >>> expand((3*x + 1)**2, modulus=5)
		    4*x**2 + x + 1
		
		- Either ``expand()`` the function or ``.expand()`` the method can be
		  used.  Both are equivalent::
		
		    >>> expand((x + 1)**2)
		    x**2 + 2*x + 1
		    >>> ((x + 1)**2).expand()
		    x**2 + 2*x + 1
		
		API
		===
		
		Objects can define their own expand hints by defining
		``_eval_expand_hint()``.  The function should take the form::
		
		    def _eval_expand_hint(self, **hints):
		        # Only apply the method to the top-level expression
		        ...
		
		See also the example below.  Objects should define ``_eval_expand_hint()``
		methods only if ``hint`` applies to that specific object.  The generic
		``_eval_expand_hint()`` method defined in Expr will handle the no-op case.
		
		Each hint should be responsible for expanding that hint only.
		Furthermore, the expansion should be applied to the top-level expression
		only.  ``expand()`` takes care of the recursion that happens when
		``deep=True``.
		
		You should only call ``_eval_expand_hint()`` methods directly if you are
		100% sure that the object has the method, as otherwise you are liable to
		get unexpected ``AttributeError``s.  Note, again, that you do not need to
		recursively apply the hint to args of your object: this is handled
		automatically by ``expand()``.  ``_eval_expand_hint()`` should
		generally not be used at all outside of an ``_eval_expand_hint()`` method.
		If you want to apply a specific expansion from within another method, use
		the public ``expand()`` function, method, or ``expand_hint()`` functions.
		
		In order for expand to work, objects must be rebuildable by their args,
		i.e., ``obj.func(*obj.args) == obj`` must hold.
		
		Expand methods are passed ``**hints`` so that expand hints may use
		'metahints'--hints that control how different expand methods are applied.
		For example, the ``force=True`` hint described above that causes
		``expand(log=True)`` to ignore assumptions is such a metahint.  The
		``deep`` meta-hint is handled exclusively by ``expand()`` and is not
		passed to ``_eval_expand_hint()`` methods.
		
		Note that expansion hints should generally be methods that perform some
		kind of 'expansion'.  For hints that simply rewrite an expression, use the
		.rewrite() API.
		
		Example
		-------
		
		>>> from sympy import Expr, sympify
		>>> class MyClass(Expr):
		...     def __new__(cls, *args):
		...         args = sympify(args)
		...         return Expr.__new__(cls, *args)
		...
		...     def _eval_expand_double(self, **hints):
		...         '''
		...         Doubles the args of MyClass.
		...
		...         If there more than four args, doubling is not performed,
		...         unless force=True is also used (False by default).
		...         '''
		...         force = hints.pop('force', False)
		...         if not force and len(self.args) > 4:
		...             return self
		...         return self.func(*(self.args + self.args))
		...
		>>> a = MyClass(1, 2, MyClass(3, 4))
		>>> a
		MyClass(1, 2, MyClass(3, 4))
		>>> a.expand(double=True)
		MyClass(1, 2, MyClass(3, 4, 3, 4), 1, 2, MyClass(3, 4, 3, 4))
		>>> a.expand(double=True, deep=False)
		MyClass(1, 2, MyClass(3, 4), 1, 2, MyClass(3, 4))
		
		>>> b = MyClass(1, 2, 3, 4, 5)
		>>> b.expand(double=True)
		MyClass(1, 2, 3, 4, 5)
		>>> b.expand(double=True, force=True)
		MyClass(1, 2, 3, 4, 5, 1, 2, 3, 4, 5)
		
		See Also
		========
		
		expand_log, expand_mul, expand_multinomial, expand_complex, expand_trig,
		expand_power_base, expand_power_exp, expand_func, hyperexpand
	**/
	static public function expand(e:Dynamic, ?deep:Dynamic, ?modulus:Dynamic, ?power_base:Dynamic, ?power_exp:Dynamic, ?mul:Dynamic, ?log:Dynamic, ?multinomial:Dynamic, ?basic:Dynamic, hints:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the complex hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import expand_complex, exp, sqrt, I
		>>> from sympy.abc import z
		>>> expand_complex(exp(z))
		I*exp(re(z))*sin(im(z)) + exp(re(z))*cos(im(z))
		>>> expand_complex(sqrt(I))
		sqrt(2)/2 + sqrt(2)*I/2
		
		See Also
		========
		Expr.as_real_imag
	**/
	static public function expand_complex(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the func hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import expand_func, gamma
		>>> from sympy.abc import x
		>>> expand_func(gamma(x + 2))
		x*(x + 1)*gamma(x)
	**/
	static public function expand_func(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the log hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import symbols, expand_log, exp, log
		>>> x, y = symbols('x,y', positive=True)
		>>> expand_log(exp(x+y)*(x+y)*log(x*y**2))
		(x + y)*(log(x) + 2*log(y))*exp(x + y)
	**/
	static public function expand_log(expr:Dynamic, ?deep:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the mul hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import symbols, expand_mul, exp, log
		>>> x, y = symbols('x,y', positive=True)
		>>> expand_mul(exp(x+y)*(x+y)*log(x*y**2))
		x*exp(x + y)*log(x*y**2) + y*exp(x + y)*log(x*y**2)
	**/
	static public function expand_mul(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the multinomial hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import symbols, expand_multinomial, exp
		>>> x, y = symbols('x y', positive=True)
		>>> expand_multinomial((x + exp(x + 1))**2)
		x**2 + 2*x*exp(x + 1) + exp(2*x + 2)
	**/
	static public function expand_multinomial(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the power_base hint.
		
		See the expand docstring for more information.
		
		A wrapper to expand(power_base=True) which separates a power with a base
		that is a Mul into a product of powers, without performing any other
		expansions, provided that assumptions about the power's base and exponent
		allow.
		
		deep=False (default is True) will only apply to the top-level expression.
		
		force=True (default is False) will cause the expansion to ignore
		assumptions about the base and exponent. When False, the expansion will
		only happen if the base is non-negative or the exponent is an integer.
		
		>>> from sympy.abc import x, y, z
		>>> from sympy import expand_power_base, sin, cos, exp
		
		>>> (x*y)**2
		x**2*y**2
		
		>>> (2*x)**y
		(2*x)**y
		>>> expand_power_base(_)
		2**y*x**y
		
		>>> expand_power_base((x*y)**z)
		(x*y)**z
		>>> expand_power_base((x*y)**z, force=True)
		x**z*y**z
		>>> expand_power_base(sin((x*y)**z), deep=False)
		sin((x*y)**z)
		>>> expand_power_base(sin((x*y)**z), force=True)
		sin(x**z*y**z)
		
		>>> expand_power_base((2*sin(x))**y + (2*cos(x))**y)
		2**y*sin(x)**y + 2**y*cos(x)**y
		
		>>> expand_power_base((2*exp(y))**x)
		2**x*exp(y)**x
		
		>>> expand_power_base((2*cos(x))**y)
		2**y*cos(x)**y
		
		Notice that sums are left untouched. If this is not the desired behavior,
		apply full ``expand()`` to the expression:
		
		>>> expand_power_base(((x+y)*z)**2)
		z**2*(x + y)**2
		>>> (((x+y)*z)**2).expand()
		x**2*z**2 + 2*x*y*z**2 + y**2*z**2
		
		>>> expand_power_base((2*y)**(1+z))
		2**(z + 1)*y**(z + 1)
		>>> ((2*y)**(1+z)).expand()
		2*2**z*y*y**z
	**/
	static public function expand_power_base(expr:Dynamic, ?deep:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the power_exp hint.
		
		See the expand docstring for more information.
		
		Examples
		========
		
		>>> from sympy import expand_power_exp
		>>> from sympy.abc import x, y
		>>> expand_power_exp(x**(y + 2))
		x**2*x**y
	**/
	static public function expand_power_exp(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Wrapper around expand that only uses the trig hint.  See the expand
		docstring for more information.
		
		Examples
		========
		
		>>> from sympy import expand_trig, sin
		>>> from sympy.abc import x, y
		>>> expand_trig(sin(x+y)*(x+y))
		(x + y)*(sin(x)*cos(y) + sin(y)*cos(x))
	**/
	static public function expand_trig(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Simplifies exponential / trigonometric / hyperbolic functions.
		When ``simplify`` is True (default) the expression obtained after the
		simplification step will be then be passed through simplify to
		precondition it so the final transformations will be applied.
		
		Examples
		========
		
		>>> from sympy import exptrigsimp, exp, cosh, sinh
		>>> from sympy.abc import z
		
		>>> exptrigsimp(exp(z) + exp(-z))
		2*cosh(z)
		>>> exptrigsimp(cosh(z) - sinh(z))
		exp(-z)
	**/
	static public function exptrigsimp(expr:Dynamic, ?simplify:Dynamic):Dynamic;
	/**
		Compute polynomial exact quotient of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import exquo
		>>> from sympy.abc import x
		
		>>> exquo(x**2 - 1, x - 1)
		x + 1
		
		>>> exquo(x**2 + 1, 2*x - 4)
		Traceback (most recent call last):
		...
		ExactQuotientFailed: 2*x - 4 does not divide x**2 + 1
	**/
	static public function exquo(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Create square identity matrix n x n
		
		See Also
		========
		
		diag
		zeros
		ones
	**/
	static public function eye(n:Dynamic, ?cls:Dynamic):Dynamic;
	/**
		Compute the factorization of expression, ``f``, into irreducibles. (To
		factor an integer into primes, use ``factorint``.)
		
		There two modes implemented: symbolic and formal. If ``f`` is not an
		instance of :class:`Poly` and generators are not specified, then the
		former mode is used. Otherwise, the formal mode is used.
		
		In symbolic mode, :func:`factor` will traverse the expression tree and
		factor its components without any prior expansion, unless an instance
		of :class:`Add` is encountered (in this case formal factorization is
		used). This way :func:`factor` can handle large or symbolic exponents.
		
		By default, the factorization is computed over the rationals. To factor
		over other domain, e.g. an algebraic or finite field, use appropriate
		options: ``extension``, ``modulus`` or ``domain``.
		
		Examples
		========
		
		>>> from sympy import factor, sqrt
		>>> from sympy.abc import x, y
		
		>>> factor(2*x**5 + 2*x**4*y + 4*x**3 + 4*x**2*y + 2*x + 2*y)
		2*(x + y)*(x**2 + 1)**2
		
		>>> factor(x**2 + 1)
		x**2 + 1
		>>> factor(x**2 + 1, modulus=2)
		(x + 1)**2
		>>> factor(x**2 + 1, gaussian=True)
		(x - I)*(x + I)
		
		>>> factor(x**2 - 2, extension=sqrt(2))
		(x - sqrt(2))*(x + sqrt(2))
		
		>>> factor((x**2 - 1)/(x**2 + 4*x + 4))
		(x - 1)*(x + 1)/(x + 2)**2
		>>> factor((x**2 + 4*x + 4)**10000000*(x**2 + 1))
		(x + 2)**20000000*(x**2 + 1)
		
		By default, factor deals with an expression as a whole:
		
		>>> eq = 2**(x**2 + 2*x + 1)
		>>> factor(eq)
		2**(x**2 + 2*x + 1)
		
		If the ``deep`` flag is True then subexpressions will
		be factored:
		
		>>> factor(eq, deep=True)
		2**((x + 1)**2)
		
		See Also
		========
		sympy.ntheory.factor_.factorint
	**/
	static public function factor(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute a list of irreducible factors of ``f``.
		
		Examples
		========
		
		>>> from sympy import factor_list
		>>> from sympy.abc import x, y
		
		>>> factor_list(2*x**5 + 2*x**4*y + 4*x**3 + 4*x**2*y + 2*x + 2*y)
		(2, [(x + y, 1), (x**2 + 1, 2)])
	**/
	static public function factor_list(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return the factored form of ``expr`` while handling non-commutative
		expressions.
		
		**examples**
		>>> from sympy.core.exprtools import factor_nc
		>>> from sympy import Symbol
		>>> from sympy.abc import x
		>>> A = Symbol('A', commutative=False)
		>>> B = Symbol('B', commutative=False)
		>>> factor_nc((x**2 + 2*A*x + A**2).expand())
		(x + A)**2
		>>> factor_nc(((x + A)*(x + B)).expand())
		(x + A)*(x + B)
	**/
	static public function factor_nc(expr:Dynamic):Dynamic;
	/**
		Remove common factors from terms in all arguments without
		changing the underlying structure of the expr. No expansion or
		simplification (and no processing of non-commutatives) is performed.
		
		If radical=True then a radical common to all terms will be factored
		out of any Add sub-expressions of the expr.
		
		If clear=False (default) then coefficients will not be separated
		from a single Add if they can be distributed to leave one or more
		terms with integer coefficients.
		
		If fraction=True (default is False) then a common denominator will be
		constructed for the expression.
		
		If sign=True (default) then even if the only factor in common is a -1,
		it will be factored out of the expression.
		
		Examples
		========
		
		>>> from sympy import factor_terms, Symbol
		>>> from sympy.abc import x, y
		>>> factor_terms(x + x*(2 + 4*y)**3)
		x*(8*(2*y + 1)**3 + 1)
		>>> A = Symbol('A', commutative=False)
		>>> factor_terms(x*A + x*A + x*y*A)
		x*(y*A + 2*A)
		
		When ``clear`` is False, a rational will only be factored out of an
		Add expression if all terms of the Add have coefficients that are
		fractions:
		
		>>> factor_terms(x/2 + 1, clear=False)
		x/2 + 1
		>>> factor_terms(x/2 + 1, clear=True)
		(x + 2)/2
		
		This only applies when there is a single Add that the coefficient
		multiplies:
		
		>>> factor_terms(x*y/2 + y, clear=True)
		y*(x + 2)/2
		>>> factor_terms(x*y/2 + y, clear=False) == _
		True
		
		If a -1 is all that can be factored out, to *not* factor it out, the
		flag ``sign`` must be False:
		
		>>> factor_terms(-x - y)
		-(x + y)
		>>> factor_terms(-x - y, sign=False)
		-x - y
		>>> factor_terms(-2*x - 2*y, sign=False)
		-2*(x + y)
		
		See Also
		========
		gcd_terms, sympy.polys.polytools.terms_gcd
	**/
	static public function factor_terms(expr:Dynamic, ?radical:Dynamic, ?clear:Dynamic, ?fraction:Dynamic, ?sign:Dynamic):Dynamic;
	/**
		Given a positive integer ``n``, ``factorint(n)`` returns a dict containing
		the prime factors of ``n`` as keys and their respective multiplicities
		as values. For example:
		
		>>> from sympy.ntheory import factorint
		>>> factorint(2000)    # 2000 = (2**4) * (5**3)
		{2: 4, 5: 3}
		>>> factorint(65537)   # This number is prime
		{65537: 1}
		
		For input less than 2, factorint behaves as follows:
		
		    - ``factorint(1)`` returns the empty factorization, ``{}``
		    - ``factorint(0)`` returns ``{0:1}``
		    - ``factorint(-n)`` adds ``-1:1`` to the factors and then factors ``n``
		
		Partial Factorization:
		
		If ``limit`` (> 3) is specified, the search is stopped after performing
		trial division up to (and including) the limit (or taking a
		corresponding number of rho/p-1 steps). This is useful if one has
		a large number and only is interested in finding small factors (if
		any). Note that setting a limit does not prevent larger factors
		from being found early; it simply means that the largest factor may
		be composite. Since checking for perfect power is relatively cheap, it is
		done regardless of the limit setting.
		
		This number, for example, has two small factors and a huge
		semi-prime factor that cannot be reduced easily:
		
		>>> from sympy.ntheory import isprime
		>>> from sympy.core.compatibility import long
		>>> a = 1407633717262338957430697921446883
		>>> f = factorint(a, limit=10000)
		>>> f == {991: 1, long(202916782076162456022877024859): 1, 7: 1}
		True
		>>> isprime(max(f))
		False
		
		This number has a small factor and a residual perfect power whose
		base is greater than the limit:
		
		>>> factorint(3*101**7, limit=5)
		{3: 1, 101: 7}
		
		Visual Factorization:
		
		If ``visual`` is set to ``True``, then it will return a visual
		factorization of the integer.  For example:
		
		>>> from sympy import pprint
		>>> pprint(factorint(4200, visual=True))
		 3  1  2  1
		2 *3 *5 *7
		
		Note that this is achieved by using the evaluate=False flag in Mul
		and Pow. If you do other manipulations with an expression where
		evaluate=False, it may evaluate.  Therefore, you should use the
		visual option only for visualization, and use the normal dictionary
		returned by visual=False if you want to perform operations on the
		factors.
		
		You can easily switch between the two forms by sending them back to
		factorint:
		
		>>> from sympy import Mul, Pow
		>>> regular = factorint(1764); regular
		{2: 2, 3: 2, 7: 2}
		>>> pprint(factorint(regular))
		 2  2  2
		2 *3 *7
		
		>>> visual = factorint(1764, visual=True); pprint(visual)
		 2  2  2
		2 *3 *7
		>>> print(factorint(visual))
		{2: 2, 3: 2, 7: 2}
		
		If you want to send a number to be factored in a partially factored form
		you can do so with a dictionary or unevaluated expression:
		
		>>> factorint(factorint({4: 2, 12: 3})) # twice to toggle to dict form
		{2: 10, 3: 3}
		>>> factorint(Mul(4, 12, evaluate=False))
		{2: 4, 3: 1}
		
		The table of the output logic is:
		
		    ====== ====== ======= =======
		                   Visual
		    ------ ----------------------
		    Input  True   False   other
		    ====== ====== ======= =======
		    dict    mul    dict    mul
		    n       mul    dict    dict
		    mul     mul    dict    dict
		    ====== ====== ======= =======
		
		Notes
		=====
		
		Algorithm:
		
		The function switches between multiple algorithms. Trial division
		quickly finds small factors (of the order 1-5 digits), and finds
		all large factors if given enough time. The Pollard rho and p-1
		algorithms are used to find large factors ahead of time; they
		will often find factors of the order of 10 digits within a few
		seconds:
		
		>>> factors = factorint(12345678910111213141516)
		>>> for base, exp in sorted(factors.items()):
		...     print('%s %s' % (base, exp))
		...
		2 2
		2507191691 1
		1231026625769 1
		
		Any of these methods can optionally be disabled with the following
		boolean parameters:
		
		    - ``use_trial``: Toggle use of trial division
		    - ``use_rho``: Toggle use of Pollard's rho method
		    - ``use_pm1``: Toggle use of Pollard's p-1 method
		
		``factorint`` also periodically checks if the remaining part is
		a prime number or a perfect power, and in those cases stops.
		
		
		If ``verbose`` is set to ``True``, detailed progress is printed.
		
		See Also
		========
		
		smoothness, smoothness_p, divisors
	**/
	static public function factorint(n:Dynamic, ?limit:Dynamic, ?use_trial:Dynamic, ?use_rho:Dynamic, ?use_pm1:Dynamic, ?verbose:Dynamic, ?visual:Dynamic):Dynamic;
	@:native("false")
	static public var _false : Dynamic;
	/**
		Converts an expr to a string of c code
		
		Parameters
		==========
		
		expr : Expr
		    A sympy expression to be converted.
		assign_to : optional
		    When given, the argument is used as the name of the variable to which
		    the expression is assigned. Can be a string, ``Symbol``,
		    ``MatrixSymbol``, or ``Indexed`` type. This is helpful in case of
		    line-wrapping, or for expressions that generate multi-line statements.
		precision : integer, optional
		    The precision for numbers such as pi [default=15].
		user_functions : dict, optional
		    A dictionary where keys are ``FunctionClass`` instances and values are
		    their string representations. Alternatively, the dictionary value can
		    be a list of tuples i.e. [(argument_test, cfunction_string)]. See below
		    for examples.
		human : bool, optional
		    If True, the result is a single string that may contain some constant
		    declarations for the number symbols. If False, the same information is
		    returned in a tuple of (symbols_to_declare, not_supported_functions,
		    code_text). [default=True].
		contract: bool, optional
		    If True, ``Indexed`` instances are assumed to obey tensor contraction
		    rules and the corresponding nested loops over indices are generated.
		    Setting contract=False will not generate loops, instead the user is
		    responsible to provide values for the indices in the code.
		    [default=True].
		source_format : optional
		    The source format can be either 'fixed' or 'free'. [default='fixed']
		standard : integer, optional
		    The Fortran standard to be followed. This is specified as an integer.
		    Acceptable standards are 66, 77, 90, 95, 2003, and 2008. Default is 77.
		    Note that currently the only distinction internally is between
		    standards before 95, and those 95 and after. This may change later as
		    more features are added.
		
		Examples
		========
		
		>>> from sympy import fcode, symbols, Rational, sin, ceiling, floor
		>>> x, tau = symbols("x, tau")
		>>> fcode((2*tau)**Rational(7, 2))
		'      8*sqrt(2.0d0)*tau**(7.0d0/2.0d0)'
		>>> fcode(sin(x), assign_to="s")
		'      s = sin(x)'
		
		Custom printing can be defined for certain types by passing a dictionary of
		"type" : "function" to the ``user_functions`` kwarg. Alternatively, the
		dictionary value can be a list of tuples i.e. [(argument_test,
		cfunction_string)].
		
		>>> custom_functions = {
		...   "ceiling": "CEIL",
		...   "floor": [(lambda x: not x.is_integer, "FLOOR1"),
		...             (lambda x: x.is_integer, "FLOOR2")]
		... }
		>>> fcode(floor(x) + ceiling(x), user_functions=custom_functions)
		'      CEIL(x) + FLOOR1(x)'
		
		``Piecewise`` expressions are converted into conditionals. If an
		``assign_to`` variable is provided an if statement is created, otherwise
		the ternary operator is used. Note that if the ``Piecewise`` lacks a
		default term, represented by ``(expr, True)`` then an error will be thrown.
		This is to prevent generating an expression that may not evaluate to
		anything.
		
		>>> from sympy import Piecewise
		>>> expr = Piecewise((x + 1, x > 0), (x, True))
		>>> print(fcode(expr, tau))
		      if (x > 0) then
		         tau = x + 1
		      else
		         tau = x
		      end if
		
		Support for loops is provided through ``Indexed`` types. With
		``contract=True`` these expressions will be turned into loops, whereas
		``contract=False`` will just print the assignment expression that should be
		looped over:
		
		>>> from sympy import Eq, IndexedBase, Idx
		>>> len_y = 5
		>>> y = IndexedBase('y', shape=(len_y,))
		>>> t = IndexedBase('t', shape=(len_y,))
		>>> Dy = IndexedBase('Dy', shape=(len_y-1,))
		>>> i = Idx('i', len_y-1)
		>>> e=Eq(Dy[i], (y[i+1]-y[i])/(t[i+1]-t[i]))
		>>> fcode(e.rhs, assign_to=e.lhs, contract=False)
		'      Dy(i) = (y(i + 1) - y(i))/(t(i + 1) - t(i))'
		
		Matrices are also supported, but a ``MatrixSymbol`` of the same dimensions
		must be provided to ``assign_to``. Note that any expression that can be
		generated normally can also exist inside a Matrix:
		
		>>> from sympy import Matrix, MatrixSymbol
		>>> mat = Matrix([x**2, Piecewise((x + 1, x > 0), (x, True)), sin(x)])
		>>> A = MatrixSymbol('A', 3, 1)
		>>> print(fcode(mat, A))
		      A(1, 1) = x**2
		         if (x > 0) then
		      A(2, 1) = x + 1
		         else
		      A(2, 1) = x
		         end if
		      A(3, 1) = sin(x)
	**/
	static public function fcode(expr:Dynamic, ?assign_to:Dynamic, settings:Dynamic):Dynamic;
	/**
		Construct new rational function field returning (field, x1, ..., xn). 
	**/
	static public function field(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Construct an isomorphism between two number fields. 
	**/
	static public function field_isomorphism(a:Dynamic, b:Dynamic, args:Dynamic):Dynamic;
	static public function filldedent(s:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Calculates the finite difference weights for an arbitrarily
		spaced one-dimensional grid (x_list) for derivatives at 'x0'
		of order 0, 1, ..., up to 'order' using a recursive formula.
		
		Parameters
		==========
		
		order : int
		    Up to what derivative order weights should be calculated.
		    0 corresponds to interpolation.
		x_list: sequence
		    Strictly monotonically increasing sequence of values for
		    the independent variable.
		x0: Number or Symbol
		    At what value of the independent variable the finite difference
		    weights should be generated.
		
		Returns
		=======
		
		list
		    A list of sublists, each corresponding to coefficients for
		    increasing derivative order, and each containing lists of
		    coefficients for increasing accuracy.
		
		Examples
		========
		
		>>> from sympy import S
		>>> from sympy.calculus import finite_diff_weights
		>>> finite_diff_weights(1, [-S(1)/2, S(1)/2, S(3)/2, S(5)/2], 0)
		[[[1, 0, 0, 0],
		[1/2, 1/2, 0, 0],
		[3/8, 3/4, -1/8, 0],
		[5/16, 15/16, -5/16, 1/16]],
		[[0, 0, 0, 0], [-1, 1, 0, 0], [-1, 1, 0, 0], [-23/24, 7/8, 1/8, -1/24]]]
		
		the result is two subslists, the first is for the 0:th derivative
		(interpolation) and the second for the first derivative (we gave
		1 as the parameter of order so this is why we get no list for
		a higher order derivative). Each sublist contains the most accurate
		formula in the end (all points used).
		
		Beware of the offset in the lower accuracy formulae when looking at a
		centered difference:
		
		>>> from sympy import S
		>>> from sympy.calculus import finite_diff_weights
		>>> finite_diff_weights(1, [-S(5)/2, -S(3)/2, -S(1)/2, S(1)/2,
		...    S(3)/2, S(5)/2], 0) #doctest: +NORMALIZE_WHITESPACE
		[[[1, 0, 0, 0, 0, 0],
		  [-3/2, 5/2, 0, 0, 0, 0],
		  [3/8, -5/4, 15/8, 0, 0, 0],
		  [1/16, -5/16, 15/16, 5/16, 0, 0],
		  [3/128, -5/32, 45/64, 15/32, -5/128, 0],
		  [3/256, -25/256, 75/128, 75/128, -25/256, 3/256]],
		 [[0, 0, 0, 0, 0, 0],
		  [-1, 1, 0, 0, 0, 0],
		  [1, -3, 2, 0, 0, 0],
		  [1/24, -1/8, -7/8, 23/24, 0, 0],
		  [0, 1/24, -9/8, 9/8, -1/24, 0],
		  [-3/640, 25/384, -75/64, 75/64, -25/384, 3/640]]]
		
		
		The capability to generate weights at arbitrary points can be
		used e.g. to minimize Runge's phenomenon by using Chebyshev nodes:
		
		>>> from sympy import cos, symbols, pi, simplify
		>>> from sympy.calculus import finite_diff_weights
		>>> N, (h, x) = 4, symbols('h x')
		>>> x_list = [x+h*cos(i*pi/(N)) for i in range(N,-1,-1)] # chebyshev nodes
		>>> print(x_list)
		[-h + x, -sqrt(2)*h/2 + x, x, sqrt(2)*h/2 + x, h + x]
		>>> mycoeffs = finite_diff_weights(1, x_list, 0)[1][4]
		>>> [simplify(c) for c in  mycoeffs] #doctest: +NORMALIZE_WHITESPACE
		[(h**3/2 + h**2*x - 3*h*x**2 - 4*x**3)/h**4,
		(-sqrt(2)*h**3 - 4*h**2*x + 3*sqrt(2)*h*x**2 + 8*x**3)/h**4,
		6*x/h**2 - 8*x**3/h**4,
		(sqrt(2)*h**3 - 4*h**2*x - 3*sqrt(2)*h*x**2 + 8*x**3)/h**4,
		(-h**3/2 + h**2*x + 3*h*x**2 - 4*x**3)/h**4]
		
		Notes
		=====
		
		If weights for a finite difference approximation
		of the 3rd order derivative is wanted, weights for 0th, 1st
		and 2nd order are calculated "for free", so are formulae using
		fewer and fewer of the parameters. This is something one can
		take advantage of to save computational cost.
		
		See also
		========
		
		sympy.calculus.finite_diff.apply_finite_diff
		
		
		References
		==========
		
		.. [1] Generation of Finite Difference Formulas on Arbitrarily Spaced
		        Grids, Bengt Fornberg; Mathematics of computation; 51; 184;
		        (1988); 699-706; doi:10.1090/S0025-5718-1988-0935077-0
	**/
	static public function finite_diff_weights(order:Dynamic, x_list:Dynamic, x0:Dynamic):Dynamic;
	/**
		Recursively denest iterable containers.
		
		>>> from sympy.utilities.iterables import flatten
		
		>>> flatten([1, 2, 3])
		[1, 2, 3]
		>>> flatten([1, 2, [3]])
		[1, 2, 3]
		>>> flatten([1, [2, 3], [4, 5]])
		[1, 2, 3, 4, 5]
		>>> flatten([1.0, 2, (1, None)])
		[1.0, 2, 1, None]
		
		If you want to denest only a specified number of levels of
		nested containers, then set ``levels`` flag to the desired
		number of levels::
		
		>>> ls = [[(-2, -1), (1, 2)], [(0, 0)]]
		
		>>> flatten(ls, levels=1)
		[(-2, -1), (1, 2), (0, 0)]
		
		If cls argument is specified, it will only flatten instances of that
		class, for example:
		
		>>> from sympy.core import Basic
		>>> class MyOp(Basic):
		...     pass
		...
		>>> flatten([MyOp(1, MyOp(2, 3))], cls=MyOp)
		[1, 2, 3]
		
		adapted from http://kogs-www.informatik.uni-hamburg.de/~meine/python_tricks
	**/
	static public function flatten(iterable:Dynamic, ?levels:Dynamic, ?cls:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency Fourier transform of `f`, defined
		as
		
		.. math:: F(k) = \int_{-\infty}^\infty f(x) e^{-2\pi i x k} \mathrm{d} x.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`FourierTransform` object.
		
		For other Fourier transform conventions, see the function
		:func:`sympy.integrals.transforms._fourier_transform`.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import fourier_transform, exp
		>>> from sympy.abc import x, k
		>>> fourier_transform(exp(-x**2), x, k)
		sqrt(pi)*exp(-pi**2*k**2)
		>>> fourier_transform(exp(-x**2), x, k, noconds=False)
		(sqrt(pi)*exp(-pi**2*k**2), True)
		
		See Also
		========
		
		inverse_fourier_transform
		sine_transform, inverse_sine_transform
		cosine_transform, inverse_cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function fourier_transform(f:Dynamic, x:Dynamic, k:Dynamic, hints:Dynamic):Dynamic;
	/**
		Returns a pair with expression's numerator and denominator.
		If the given expression is not a fraction then this function
		will return the tuple (expr, 1).
		
		This function will not make any attempt to simplify nested
		fractions or to do any term rewriting at all.
		
		If only one of the numerator/denominator pair is needed then
		use numer(expr) or denom(expr) functions respectively.
		
		>>> from sympy import fraction, Rational, Symbol
		>>> from sympy.abc import x, y
		
		>>> fraction(x/y)
		(x, y)
		>>> fraction(x)
		(x, 1)
		
		>>> fraction(1/y**2)
		(1, y**2)
		
		>>> fraction(x*y/2)
		(x*y, 2)
		>>> fraction(Rational(1, 2))
		(1, 2)
		
		This function will also work fine with assumptions:
		
		>>> k = Symbol('k', negative=True)
		>>> fraction(x * y**k)
		(x, y**(-k))
		
		If we know nothing about sign of some exponent and 'exact'
		flag is unset, then structure this exponent's structure will
		be analyzed and pretty fraction will be returned:
		
		>>> from sympy import exp
		>>> fraction(2*x**(-y))
		(2, x**y)
		
		>>> fraction(exp(-x))
		(1, exp(x))
		
		>>> fraction(exp(-x), exact=True)
		(exp(-x), 1)
	**/
	static public function fraction(expr:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Attempt to simplify expression by using transformation rules given
		in the algorithm by Fu et al.
		
		:func:`fu` will try to minimize the objective function ``measure``.
		By default this first minimizes the number of trig terms and then minimizes
		the number of total operations.
		
		Examples
		========
		
		>>> from sympy.simplify.fu import fu
		>>> from sympy import cos, sin, tan, pi, S, sqrt
		>>> from sympy.abc import x, y, a, b
		
		>>> fu(sin(50)**2 + cos(50)**2 + sin(pi/6))
		3/2
		>>> fu(sqrt(6)*cos(x) + sqrt(2)*sin(x))
		2*sqrt(2)*sin(x + pi/3)
		
		CTR1 example
		
		>>> eq = sin(x)**4 - cos(y)**2 + sin(y)**2 + 2*cos(x)**2
		>>> fu(eq)
		cos(x)**4 - 2*cos(y)**2 + 2
		
		CTR2 example
		
		>>> fu(S.Half - cos(2*x)/2)
		sin(x)**2
		
		CTR3 example
		
		>>> fu(sin(a)*(cos(b) - sin(b)) + cos(a)*(sin(b) + cos(b)))
		sqrt(2)*sin(a + b + pi/4)
		
		CTR4 example
		
		>>> fu(sqrt(3)*cos(x)/2 + sin(x)/2)
		sin(x + pi/3)
		
		Example 1
		
		>>> fu(1-sin(2*x)**2/4-sin(y)**2-cos(x)**4)
		-cos(x)**2 + cos(y)**2
		
		Example 2
		
		>>> fu(cos(4*pi/9))
		sin(pi/18)
		>>> fu(cos(pi/9)*cos(2*pi/9)*cos(3*pi/9)*cos(4*pi/9))
		1/16
		
		Example 3
		
		>>> fu(tan(7*pi/18)+tan(5*pi/18)-sqrt(3)*tan(5*pi/18)*tan(7*pi/18))
		-sqrt(3)
		
		Objective function example
		>>> fu(sin(x)/cos(x))  # default objective function
		tan(x)
		>>> fu(sin(x)/cos(x), measure=lambda x: -x.count_ops()) # maximize op count
		sin(x)/cos(x)
		
		References
		==========
		http://rfdz.ph-noe.ac.at/fileadmin/Mathematik_Uploads/ACDCA/
		DESTIME2006/DES_contribs/Fu/simplification.pdf
	**/
	static public function fu(rv:Dynamic, ?measure:Dynamic):Dynamic;
	/**
		Compute GCD of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import gcd
		>>> from sympy.abc import x
		
		>>> gcd(x**2 - 1, x**2 - 3*x + 2)
		x - 1
	**/
	static public function gcd(f:Dynamic, ?g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute GCD of a list of polynomials.
		
		Examples
		========
		
		>>> from sympy import gcd_list
		>>> from sympy.abc import x
		
		>>> gcd_list([x**3 - 1, x**2 - 1, x**2 - 3*x + 2])
		x - 1
	**/
	static public function gcd_list(seq:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute the GCD of ``terms`` and put them together.
		
		``terms`` can be an expression or a non-Basic sequence of expressions
		which will be handled as though they are terms from a sum.
		
		If ``isprimitive`` is True the _gcd_terms will not run the primitive
		method on the terms.
		
		``clear`` controls the removal of integers from the denominator of an Add
		expression. When True (default), all numerical denominator will be cleared;
		when False the denominators will be cleared only if all terms had numerical
		denominators other than 1.
		
		``fraction``, when True (default), will put the expression over a common
		denominator.
		
		Examples
		========
		
		>>> from sympy.core import gcd_terms
		>>> from sympy.abc import x, y
		
		>>> gcd_terms((x + 1)**2*y + (x + 1)*y**2)
		y*(x + 1)*(x + y + 1)
		>>> gcd_terms(x/2 + 1)
		(x + 2)/2
		>>> gcd_terms(x/2 + 1, clear=False)
		x/2 + 1
		>>> gcd_terms(x/2 + y/2, clear=False)
		(x + y)/2
		>>> gcd_terms(x/2 + 1/x)
		(x**2 + 2)/(2*x)
		>>> gcd_terms(x/2 + 1/x, fraction=False)
		(x + 2/x)/2
		>>> gcd_terms(x/2 + 1/x, fraction=False, clear=False)
		x/2 + 1/x
		
		>>> gcd_terms(x/2/y + 1/x/y)
		(x**2 + 2)/(2*x*y)
		>>> gcd_terms(x/2/y + 1/x/y, fraction=False, clear=False)
		(x + 2/x)/(2*y)
		
		The ``clear`` flag was ignored in this case because the returned
		expression was a rational expression, not a simple sum.
		
		See Also
		========
		factor_terms, sympy.polys.polytools.terms_gcd
	**/
	static public function gcd_terms(terms:Dynamic, ?isprimitive:Dynamic, ?clear:Dynamic, ?fraction:Dynamic):Dynamic;
	/**
		Extended Euclidean algorithm of ``f`` and ``g``.
		
		Returns ``(s, t, h)`` such that ``h = gcd(f, g)`` and ``s*f + t*g = h``.
		
		Examples
		========
		
		>>> from sympy import gcdex
		>>> from sympy.abc import x
		
		>>> gcdex(x**4 - 2*x**3 - 6*x**2 + 12*x + 15, x**3 + x**2 - 4*x - 4)
		(-x/5 + 3/5, x**2/5 - 6*x/5 + 2, x + 1)
	**/
	static public function gcdex(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Determine dummy indices of ``expr`` and describe its structure
		
		By *dummy* we mean indices that are summation indices.
		
		The stucture of the expression is determined and described as follows:
		
		1) A conforming summation of Indexed objects is described with a dict where
		   the keys are summation indices and the corresponding values are sets
		   containing all terms for which the summation applies.  All Add objects
		   in the SymPy expression tree are described like this.
		
		2) For all nodes in the SymPy expression tree that are *not* of type Add, the
		   following applies:
		
		   If a node discovers contractions in one of its arguments, the node
		   itself will be stored as a key in the dict.  For that key, the
		   corresponding value is a list of dicts, each of which is the result of a
		   recursive call to get_contraction_structure().  The list contains only
		   dicts for the non-trivial deeper contractions, ommitting dicts with None
		   as the one and only key.
		
		.. Note:: The presence of expressions among the dictinary keys indicates
		   multiple levels of index contractions.  A nested dict displays nested
		   contractions and may itself contain dicts from a deeper level.  In
		   practical calculations the summation in the deepest nested level must be
		   calculated first so that the outer expression can access the resulting
		   indexed object.
		
		Examples
		========
		
		>>> from sympy.tensor.index_methods import get_contraction_structure
		>>> from sympy import symbols, default_sort_key
		>>> from sympy.tensor import IndexedBase, Idx
		>>> x, y, A = map(IndexedBase, ['x', 'y', 'A'])
		>>> i, j, k, l = map(Idx, ['i', 'j', 'k', 'l'])
		>>> get_contraction_structure(x[i]*y[i] + A[j, j])
		{(i,): set([x[i]*y[i]]), (j,): set([A[j, j]])}
		>>> get_contraction_structure(x[i]*y[j])
		{None: set([x[i]*y[j]])}
		
		A multiplication of contracted factors results in nested dicts representing
		the internal contractions.
		
		>>> d = get_contraction_structure(x[i, i]*y[j, j])
		>>> sorted(d.keys(), key=default_sort_key)
		[None, x[i, i]*y[j, j]]
		
		In this case, the product has no contractions:
		
		>>> d[None]
		set([x[i, i]*y[j, j]])
		
		Factors are contracted "first":
		
		>>> sorted(d[x[i, i]*y[j, j]], key=default_sort_key)
		[{(i,): set([x[i, i]])}, {(j,): set([y[j, j]])}]
		
		A parenthesized Add object is also returned as a nested dictionary.  The
		term containing the parenthesis is a Mul with a contraction among the
		arguments, so it will be found as a key in the result.  It stores the
		dictionary resulting from a recursive call on the Add expression.
		
		>>> d = get_contraction_structure(x[i]*(y[i] + A[i, j]*x[j]))
		>>> sorted(d.keys(), key=default_sort_key)
		[(x[j]*A[i, j] + y[i])*x[i], (i,)]
		>>> d[(i,)]
		set([(x[j]*A[i, j] + y[i])*x[i]])
		>>> d[x[i]*(A[i, j]*x[j] + y[i])]
		[{None: set([y[i]]), (j,): set([x[j]*A[i, j]])}]
		
		Powers with contractions in either base or exponent will also be found as
		keys in the dictionary, mapping to a list of results from recursive calls:
		
		>>> d = get_contraction_structure(A[j, j]**A[i, i])
		>>> d[None]
		set([A[j, j]**A[i, i]])
		>>> nested_contractions = d[A[j, j]**A[i, i]]
		>>> nested_contractions[0]
		{(j,): set([A[j, j]])}
		>>> nested_contractions[1]
		{(i,): set([A[i, i]])}
		
		The description of the contraction structure may appear complicated when
		represented with a string in the above examples, but it is easy to iterate
		over:
		
		>>> from sympy import Expr
		>>> for key in d:
		...     if isinstance(key, Expr):
		...         continue
		...     for term in d[key]:
		...         if term in d:
		...             # treat deepest contraction first
		...             pass
		...     # treat outermost contactions here
	**/
	static public function get_contraction_structure(expr:Dynamic):Dynamic;
	/**
		Determine the outer indices of expression ``expr``
		
		By *outer* we mean indices that are not summation indices.  Returns a set
		and a dict.  The set contains outer indices and the dict contains
		information about index symmetries.
		
		Examples
		========
		
		>>> from sympy.tensor.index_methods import get_indices
		>>> from sympy import symbols
		>>> from sympy.tensor import IndexedBase, Idx
		>>> x, y, A = map(IndexedBase, ['x', 'y', 'A'])
		>>> i, j, a, z = symbols('i j a z', integer=True)
		
		The indices of the total expression is determined, Repeated indices imply a
		summation, for instance the trace of a matrix A:
		
		>>> get_indices(A[i, i])
		(set(), {})
		
		In the case of many terms, the terms are required to have identical
		outer indices.  Else an IndexConformanceException is raised.
		
		>>> get_indices(x[i] + A[i, j]*y[j])
		(set([i]), {})
		
		:Exceptions:
		
		An IndexConformanceException means that the terms ar not compatible, e.g.
		
		>>> get_indices(x[i] + y[j])                #doctest: +SKIP
		        (...)
		IndexConformanceException: Indices are not consistent: x(i) + y(j)
		
		.. warning::
		   The concept of *outer* indices applies recursively, starting on the deepest
		   level.  This implies that dummies inside parenthesis are assumed to be
		   summed first, so that the following expression is handled gracefully:
		
		   >>> get_indices((x[i] + A[i, j]*y[j])*x[j])
		   (set([i, j]), {})
		
		   This is correct and may appear convenient, but you need to be careful
		   with this as SymPy will happily .expand() the product, if requested.  The
		   resulting expression would mix the outer ``j`` with the dummies inside
		   the parenthesis, which makes it a different expression.  To be on the
		   safe side, it is best to avoid such ambiguities by using unique indices
		   for all contractions that should be held separate.
	**/
	static public function get_indices(expr:Dynamic):Dynamic;
	/**
		Compute greatest factorial factorization of ``f``. 
	**/
	static public function gff(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute a list of greatest factorial factors of ``f``.
		
		Examples
		========
		
		>>> from sympy import gff_list, ff
		>>> from sympy.abc import x
		
		>>> f = x**5 + 2*x**4 - x**3 - 2*x**2
		
		>>> gff_list(f)
		[(x, 1), (x + 2, 4)]
		
		>>> (ff(x, 1)*ff(x + 2, 4)).expand() == f
		True
	**/
	static public function gff_list(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	static public function grevlex(monomial:Dynamic):Dynamic;
	static public function grlex(monomial:Dynamic):Dynamic;
	/**
		Computes the reduced Groebner basis for a set of polynomials.
		
		Use the ``order`` argument to set the monomial ordering that will be
		used to compute the basis. Allowed orders are ``lex``, ``grlex`` and
		``grevlex``. If no order is specified, it defaults to ``lex``.
		
		For more information on Groebner bases, see the references and the docstring
		of `solve_poly_system()`.
		
		Examples
		========
		
		Example taken from [1].
		
		>>> from sympy import groebner
		>>> from sympy.abc import x, y
		
		>>> F = [x*y - 2*y, 2*y**2 - x**2]
		
		>>> groebner(F, x, y, order='lex')
		GroebnerBasis([x**2 - 2*y**2, x*y - 2*y, y**3 - 2*y], x, y,
		              domain='ZZ', order='lex')
		>>> groebner(F, x, y, order='grlex')
		GroebnerBasis([y**3 - 2*y, x**2 - 2*y**2, x*y - 2*y], x, y,
		              domain='ZZ', order='grlex')
		>>> groebner(F, x, y, order='grevlex')
		GroebnerBasis([y**3 - 2*y, x**2 - 2*y**2, x*y - 2*y], x, y,
		              domain='ZZ', order='grevlex')
		
		By default, an improved implementation of the Buchberger algorithm is
		used. Optionally, an implementation of the F5B algorithm can be used.
		The algorithm can be set using ``method`` flag or with the :func:`setup`
		function from :mod:`sympy.polys.polyconfig`:
		
		>>> F = [x**2 - x - 1, (2*x - 1) * y - (x**10 - (1 - x)**10)]
		
		>>> groebner(F, x, y, method='buchberger')
		GroebnerBasis([x**2 - x - 1, y - 55], x, y, domain='ZZ', order='lex')
		>>> groebner(F, x, y, method='f5b')
		GroebnerBasis([x**2 - x - 1, y - 55], x, y, domain='ZZ', order='lex')
		
		References
		==========
		
		1. [Buchberger01]_
		2. [Cox97]_
	**/
	static public function groebner(F:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute roots of ``f`` by factorization in the ground domain.
		
		Examples
		========
		
		>>> from sympy import ground_roots
		>>> from sympy.abc import x
		
		>>> ground_roots(x**6 - 4*x**4 + 4*x**3 - x**2)
		{0: 2, 1: 2}
	**/
	static public function ground_roots(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Splits a sequence into a list of lists of equal, adjacent elements.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import group
		
		>>> group([1, 1, 1, 2, 2, 3])
		[[1, 1, 1], [2, 2], [3]]
		>>> group([1, 1, 1, 2, 2, 3], multiple=False)
		[(1, 3), (2, 2), (3, 1)]
		>>> group([1, 1, 3, 2, 2, 1], multiple=False)
		[(1, 2), (3, 1), (2, 2), (1, 1)]
		
		See Also
		========
		multiset
	**/
	static public function group(seq:Dynamic, ?multiple:Dynamic):Dynamic;
	/**
		Compute the limit of e(z) at the point z0 using the Gruntz algorithm.
		
		z0 can be any expression, including oo and -oo.
		
		For dir="+" (default) it calculates the limit from the right
		(z->z0+) and for dir="-" the limit from the left (z->z0-). For infinite z0
		(oo or -oo), the dir argument doesn't matter.
		
		This algorithm is fully described in the module docstring in the gruntz.py
		file. It relies heavily on the series expansion. Most frequently, gruntz()
		is only used if the faster limit() function (which uses heuristics) fails.
	**/
	static public function gruntz(e:Dynamic, z:Dynamic, z0:Dynamic, ?dir:Dynamic):Dynamic;
	/**
		Return the elementwise (aka Hadamard) product of matrices.
		
		Examples
		--------
		>>> from sympy.matrices import hadamard_product, MatrixSymbol
		>>> A = MatrixSymbol('A', 2, 3)
		>>> B = MatrixSymbol('B', 2, 3)
		>>> hadamard_product(A)
		A
		>>> hadamard_product(A, B)
		A.*B
		>>> hadamard_product(A, B)[0, 1]
		A[0, 1]*B[0, 1]
	**/
	static public function hadamard_product(matrices:Dynamic):Dynamic;
	/**
		Half extended Euclidean algorithm of ``f`` and ``g``.
		
		Returns ``(s, h)`` such that ``h = gcd(f, g)`` and ``s*f = h (mod g)``.
		
		Examples
		========
		
		>>> from sympy import half_gcdex
		>>> from sympy.abc import x
		
		>>> half_gcdex(x**4 - 2*x**3 - 6*x**2 + 12*x + 15, x**3 + x**2 - 4*x - 4)
		(-x/5 + 3/5, x + 1)
	**/
	static public function half_gcdex(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute the Hankel transform of `f`, defined as
		
		.. math:: F_\nu(k) = \int_{0}^\infty f(r) J_\nu(k r) r \mathrm{d} r.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`HankelTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import hankel_transform, inverse_hankel_transform
		>>> from sympy import gamma, exp, sinh, cosh
		>>> from sympy.abc import r, k, m, nu, a
		
		>>> ht = hankel_transform(1/r**m, r, k, nu)
		>>> ht
		2*2**(-m)*k**(m - 2)*gamma(-m/2 + nu/2 + 1)/gamma(m/2 + nu/2)
		
		>>> inverse_hankel_transform(ht, k, r, nu)
		r**(-m)
		
		>>> ht = hankel_transform(exp(-a*r), r, k, 0)
		>>> ht
		a/(k**3*(a**2/k**2 + 1)**(3/2))
		
		>>> inverse_hankel_transform(ht, k, r, 0)
		exp(-a*r)
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform
		sine_transform, inverse_sine_transform
		cosine_transform, inverse_cosine_transform
		inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function hankel_transform(f:Dynamic, r:Dynamic, k:Dynamic, nu:Dynamic, hints:Dynamic):Dynamic;
	/**
		Return True if there are any duplicate elements in ``seq``.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import has_dups
		>>> from sympy import Dict, Set
		
		>>> has_dups((1, 2, 1))
		True
		>>> has_dups(range(3))
		False
		>>> all(has_dups(c) is False for c in (set(), Set(), dict(), Dict()))
		True
	**/
	static public function has_dups(seq:Dynamic):Dynamic;
	/**
		Return True if there are any different elements in ``seq``.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import has_variety
		
		>>> has_variety((1, 2, 1))
		True
		>>> has_variety((1, 1, 1))
		False
	**/
	static public function has_variety(seq:Dynamic):Dynamic;
	/**
		Generates Hermite polynomial of degree `n` in `x`. 
	**/
	static public function hermite_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute Hessian matrix for a function f wrt parameters in varlist
		which may be given as a sequence or a row/column vector. A list of
		constraints may optionally be given.
		
		Examples
		========
		
		>>> from sympy import Function, hessian, pprint
		>>> from sympy.abc import x, y
		>>> f = Function('f')(x, y)
		>>> g1 = Function('g')(x, y)
		>>> g2 = x**2 + 3*y
		>>> pprint(hessian(f, (x, y), [g1, g2]))
		[                   d               d            ]
		[     0        0    --(g(x, y))     --(g(x, y))  ]
		[                   dx              dy           ]
		[                                                ]
		[     0        0        2*x              3       ]
		[                                                ]
		[                     2               2          ]
		[d                   d               d           ]
		[--(g(x, y))  2*x   ---(f(x, y))   -----(f(x, y))]
		[dx                   2            dy dx         ]
		[                   dx                           ]
		[                                                ]
		[                     2               2          ]
		[d                   d               d           ]
		[--(g(x, y))   3   -----(f(x, y))   ---(f(x, y)) ]
		[dy                dy dx              2          ]
		[                                   dy           ]
		
		References
		==========
		
		http://en.wikipedia.org/wiki/Hessian_matrix
		
		See Also
		========
		
		sympy.matrices.mutable.Matrix.jacobian
		wronskian
	**/
	static public function hessian(f:Dynamic, varlist:Dynamic, ?constraints:Dynamic):Dynamic;
	/**
		Returns the order `n` if `g` is homogeneous and ``None`` if it is not
		homogeneous.
		
		Determines if a function is homogeneous and if so of what order.  A
		function `f(x, y, \cdots)` is homogeneous of order `n` if `f(t x, t y,
		\cdots) = t^n f(x, y, \cdots)`.
		
		If the function is of two variables, `F(x, y)`, then `f` being homogeneous
		of any order is equivalent to being able to rewrite `F(x, y)` as `G(x/y)`
		or `H(y/x)`.  This fact is used to solve 1st order ordinary differential
		equations whose coefficients are homogeneous of the same order (see the
		docstrings of
		:py:meth:`~solvers.ode.ode_1st_homogeneous_coeff_subs_dep_div_indep` and
		:py:meth:`~solvers.ode.ode_1st_homogeneous_coeff_subs_indep_div_dep`).
		
		Symbols can be functions, but every argument of the function must be a
		symbol, and the arguments of the function that appear in the expression
		must match those given in the list of symbols.  If a declared function
		appears with different arguments than given in the list of symbols,
		``None`` is returned.
		
		Examples
		========
		
		>>> from sympy import Function, homogeneous_order, sqrt
		>>> from sympy.abc import x, y
		>>> f = Function('f')
		>>> homogeneous_order(f(x), f(x)) is None
		True
		>>> homogeneous_order(f(x,y), f(y, x), x, y) is None
		True
		>>> homogeneous_order(f(x), f(x), x)
		1
		>>> homogeneous_order(x**2*f(x)/sqrt(x**2+f(x)**2), x, f(x))
		2
		>>> homogeneous_order(x**2+f(x), x, f(x)) is None
		True
	**/
	static public function homogeneous_order(eq:Dynamic, symbols:Dynamic):Dynamic;
	/**
		Rewrite a polynomial in Horner form.
		
		Among other applications, evaluation of a polynomial at a point is optimal
		when it is applied using the Horner scheme ([1]).
		
		Examples
		========
		
		>>> from sympy.polys.polyfuncs import horner
		>>> from sympy.abc import x, y, a, b, c, d, e
		
		>>> horner(9*x**4 + 8*x**3 + 7*x**2 + 6*x + 5)
		x*(x*(x*(9*x + 8) + 7) + 6) + 5
		
		>>> horner(a*x**4 + b*x**3 + c*x**2 + d*x + e)
		e + x*(d + x*(c + x*(a*x + b)))
		
		>>> f = 4*x**2*y**2 + 2*x**2*y + 2*x*y**2 + x*y
		
		>>> horner(f, wrt=x)
		x*(x*y*(4*y + 2) + y*(2*y + 1))
		
		>>> horner(f, wrt=y)
		y*(x*y*(4*x + 2) + x*(2*x + 1))
		
		References
		==========
		[1] - http://en.wikipedia.org/wiki/Horner_scheme
	**/
	static public function horner(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Expand hypergeometric functions. If allow_hyper is True, allow partial
		simplification (that is a result different from input,
		but still containing hypergeometric functions).
		
		Examples
		========
		
		>>> from sympy.simplify.hyperexpand import hyperexpand
		>>> from sympy.functions import hyper
		>>> from sympy.abc import z
		>>> hyperexpand(hyper([], [], z))
		exp(z)
		
		Non-hyperegeometric parts of the expression and hypergeometric expressions
		that are not recognised are left unchanged:
		
		>>> hyperexpand(1 + hyper([1, 1, 1], [], z))
		hyper((1, 1, 1), (), z) + 1
	**/
	static public function hyperexpand(f:Dynamic, ?allow_hyper:Dynamic, ?rewrite:Dynamic):Dynamic;
	/**
		Returns True if 'f' and 'g' are hyper-similar.
		
		Similarity in hypergeometric sense means that a quotient of
		f(k) and g(k) is a rational function in k.  This procedure
		is useful in solving recurrence relations.
		
		For more information see hypersimp().
	**/
	static public function hypersimilar(f:Dynamic, g:Dynamic, k:Dynamic):Dynamic;
	/**
		Given combinatorial term f(k) simplify its consecutive term ratio
		i.e. f(k+1)/f(k).  The input term can be composed of functions and
		integer sequences which have equivalent representation in terms
		of gamma special function.
		
		The algorithm performs three basic steps:
		
		1. Rewrite all functions in terms of gamma, if possible.
		
		2. Rewrite all occurrences of gamma in terms of products
		   of gamma and rising factorial with integer,  absolute
		   constant exponent.
		
		3. Perform simplification of nested fractions, powers
		   and if the resulting expression is a quotient of
		   polynomials, reduce their total degree.
		
		If f(k) is hypergeometric then as result we arrive with a
		quotient of polynomials of minimal degree. Otherwise None
		is returned.
		
		For more information on the implemented algorithm refer to:
		
		1. W. Koepf, Algorithms for m-fold Hypergeometric Summation,
		   Journal of Symbolic Computation (1995) 20, 399-417
	**/
	static public function hypersimp(f:Dynamic, k:Dynamic):Dynamic;
	/**
		Return ``dy/dx`` assuming that ``eq == 0``.
		
		Parameters
		==========
		
		y : the dependent variable or a list of dependent variables (with y first)
		x : the variable that the derivative is being taken with respect to
		n : the order of the derivative (default is 1)
		
		Examples
		========
		
		>>> from sympy.abc import x, y, a
		>>> from sympy.geometry.util import idiff
		
		>>> circ = x**2 + y**2 - 4
		>>> idiff(circ, y, x)
		-x/y
		>>> idiff(circ, y, x, 2).simplify()
		-(x**2 + y**2)/y**3
		
		Here, ``a`` is assumed to be independent of ``x``:
		
		>>> idiff(x + a + y, y, x)
		-1
		
		Now the x-dependence of ``a`` is made explicit by listing ``a`` after
		``y`` in a list.
		
		>>> idiff(x + a + y, [y, a], x)
		-Derivative(a, x) - 1
		
		See Also
		========
		
		sympy.core.function.Derivative: represents unevaluated derivatives
		sympy.core.function.diff: explicitly differentiates wrt symbols
	**/
	static public function idiff(eq:Dynamic, y:Dynamic, x:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Computes positive integer greatest common divisor.
		
		The algorithm is based on the well known Euclid's algorithm. To
		improve speed, igcd() has its own caching mechanism implemented.
		
		Examples
		========
		
		>>> from sympy.core.numbers import igcd
		>>> igcd(2, 4)
		2
		>>> igcd(5, 10, 15)
		5
	**/
	static public function igcd(args:Dynamic):Dynamic;
	static public function igrevlex(monomial:Dynamic):Dynamic;
	static public function igrlex(monomial:Dynamic):Dynamic;
	/**
		Computes integer least common multiple.
		
		Examples
		========
		
		>>> from sympy.core.numbers import ilcm
		>>> ilcm(5, 10)
		10
		>>> ilcm(7, 3)
		21
		>>> ilcm(5, 10, 15)
		30
	**/
	static public function ilcm(args:Dynamic):Dynamic;
	static public function ilex(monomial:Dynamic):Dynamic;
	/**
		Image of set under transformation ``f``.
		
		If this function can't compute the image, it returns an
		unevaluated ImageSet object.
		
		.. math::
		    { f(x) | x \in self }
		
		Examples
		========
		
		>>> from sympy import Interval, Symbol, imageset, sin, Lambda
		>>> x = Symbol('x')
		
		>>> imageset(x, 2*x, Interval(0, 2))
		[0, 4]
		
		>>> imageset(lambda x: 2*x, Interval(0, 2))
		[0, 4]
		
		>>> imageset(Lambda(x, sin(x)), Interval(-2, 1))
		ImageSet(Lambda(x, sin(x)), [-2, 1])
		
		See Also
		========
		
		sympy.sets.fancysets.ImageSet
	**/
	static public function imageset(args:Dynamic):Dynamic;
	/**
		Initializes pretty-printer depending on the environment.
		
		Parameters
		==========
		
		pretty_print: boolean
		    If True, use pretty_print to stringify or the provided pretty
		    printer; if False, use sstrrepr to stringify or the provided string
		    printer.
		order: string or None
		    There are a few different settings for this parameter:
		    lex (default), which is lexographic order;
		    grlex, which is graded lexographic order;
		    grevlex, which is reversed graded lexographic order;
		    old, which is used for compatibility reasons and for long expressions;
		    None, which sets it to lex.
		use_unicode: boolean or None
		    If True, use unicode characters;
		    if False, do not use unicode characters.
		use_latex: string, boolean, or None
		    If True, use default latex rendering in GUI interfaces (png and
		    mathjax);
		    if False, do not use latex rendering;
		    if 'png', enable latex rendering with an external latex compiler,
		    falling back to matplotlib if external compilation fails;
		    if 'matplotlib', enable latex rendering with matplotlib;
		    if 'mathjax', enable latex text generation, for example MathJax
		    rendering in IPython notebook or text rendering in LaTeX documents
		wrap_line: boolean
		    If True, lines will wrap at the end; if False, they will not wrap
		    but continue as one line. This is only relevant if `pretty_print` is
		    True.
		num_columns: int or None
		    If int, number of columns before wrapping is set to num_columns; if
		    None, number of columns before wrapping is set to terminal width.
		    This is only relevant if `pretty_print` is True.
		no_global: boolean
		    If True, the settings become system wide;
		    if False, use just for this console/session.
		ip: An interactive console
		    This can either be an instance of IPython,
		    or a class that derives from code.InteractiveConsole.
		euler: boolean, optional, default=False
		    Loads the euler package in the LaTeX preamble for handwritten style
		    fonts (http://www.ctan.org/pkg/euler).
		forecolor: string, optional, default='Black'
		    DVI setting for foreground color.
		backcolor: string, optional, default='Transparent'
		    DVI setting for background color.
		fontsize: string, optional, default='10pt'
		    A font size to pass to the LaTeX documentclass function in the
		    preamble.
		latex_mode: string, optional, default='equation*'
		    The mode used in the LaTeX printer. Can be one of:
		    {'inline'|'plain'|'equation'|'equation*'}.
		print_builtin: boolean, optional, default=True
		    If true then floats and integers will be printed. If false the
		    printer will only print SymPy types.
		str_printer: function, optional, default=None
		    A custom string printer function. This should mimic
		    sympy.printing.sstrrepr().
		pretty_printer: function, optional, default=None
		    A custom pretty printer. This should mimic sympy.printing.pretty().
		latex_printer: function, optional, default=None
		    A custom LaTeX printer. This should mimic sympy.printing.latex()
		    This should mimic sympy.printing.latex().
		
		Examples
		========
		
		>>> from sympy.interactive import init_printing
		>>> from sympy import Symbol, sqrt
		>>> from sympy.abc import x, y
		>>> sqrt(5)
		sqrt(5)
		>>> init_printing(pretty_print=True) # doctest: +SKIP
		>>> sqrt(5) # doctest: +SKIP
		  ___
		\/ 5
		>>> theta = Symbol('theta') # doctest: +SKIP
		>>> init_printing(use_unicode=True) # doctest: +SKIP
		>>> theta # doctest: +SKIP
		θ
		>>> init_printing(use_unicode=False) # doctest: +SKIP
		>>> theta # doctest: +SKIP
		theta
		>>> init_printing(order='lex') # doctest: +SKIP
		>>> str(y + x + y**2 + x**2) # doctest: +SKIP
		x**2 + x + y**2 + y
		>>> init_printing(order='grlex') # doctest: +SKIP
		>>> str(y + x + y**2 + x**2) # doctest: +SKIP
		x**2 + x + y**2 + y
		>>> init_printing(order='grevlex') # doctest: +SKIP
		>>> str(y * x**2 + x * y**2) # doctest: +SKIP
		x**2*y + x*y**2
		>>> init_printing(order='old') # doctest: +SKIP
		>>> str(x**2 + y**2 + x + y) # doctest: +SKIP
		x**2 + x + y**2 + y
		>>> init_printing(num_columns=10) # doctest: +SKIP
		>>> x**2 + x + y**2 + y # doctest: +SKIP
		x + y +
		x**2 + y**2
	**/
	static public function init_printing(?pretty_print:Dynamic, ?order:Dynamic, ?use_unicode:Dynamic, ?use_latex:Dynamic, ?wrap_line:Dynamic, ?num_columns:Dynamic, ?no_global:Dynamic, ?ip:Dynamic, ?euler:Dynamic, ?forecolor:Dynamic, ?backcolor:Dynamic, ?fontsize:Dynamic, ?latex_mode:Dynamic, ?print_builtin:Dynamic, ?str_printer:Dynamic, ?pretty_printer:Dynamic, ?latex_printer:Dynamic):Dynamic;
	/**
		Initialize an embedded IPython or Python session. The IPython session is
		initiated with the --pylab option, without the numpy imports, so that
		matplotlib plotting can be interactive.
		
		Parameters
		==========
		
		pretty_print: boolean
		    If True, use pretty_print to stringify;
		    if False, use sstrrepr to stringify.
		order: string or None
		    There are a few different settings for this parameter:
		    lex (default), which is lexographic order;
		    grlex, which is graded lexographic order;
		    grevlex, which is reversed graded lexographic order;
		    old, which is used for compatibility reasons and for long expressions;
		    None, which sets it to lex.
		use_unicode: boolean or None
		    If True, use unicode characters;
		    if False, do not use unicode characters.
		use_latex: boolean or None
		    If True, use latex rendering if IPython GUI's;
		    if False, do not use latex rendering.
		quiet: boolean
		    If True, init_session will not print messages regarding its status;
		    if False, init_session will print messages regarding its status.
		auto_symbols: boolean
		    If True, IPython will automatically create symbols for you.
		    If False, it will not.
		    The default is False.
		auto_int_to_Integer: boolean
		    If True, IPython will automatically wrap int literals with Integer, so
		    that things like 1/2 give Rational(1, 2).
		    If False, it will not.
		    The default is False.
		ipython: boolean or None
		    If True, printing will initialize for an IPython console;
		    if False, printing will initialize for a normal console;
		    The default is None, which automatically determines whether we are in
		    an ipython instance or not.
		argv: list of arguments for IPython
		    See sympy.bin.isympy for options that can be used to initialize IPython.
		
		See Also
		========
		
		sympy.interactive.printing.init_printing: for examples and the rest of the parameters.
		
		
		Examples
		========
		
		>>> from sympy import init_session, Symbol, sin, sqrt
		>>> sin(x) #doctest: +SKIP
		NameError: name 'x' is not defined
		>>> init_session() #doctest: +SKIP
		>>> sin(x) #doctest: +SKIP
		sin(x)
		>>> sqrt(5) #doctest: +SKIP
		  ___
		\/ 5
		>>> init_session(pretty_print=False) #doctest: +SKIP
		>>> sqrt(5) #doctest: +SKIP
		sqrt(5)
		>>> y + x + y**2 + x**2 #doctest: +SKIP
		x**2 + x + y**2 + y
		>>> init_session(order='grlex') #doctest: +SKIP
		>>> y + x + y**2 + x**2 #doctest: +SKIP
		x**2 + y**2 + x + y
		>>> init_session(order='grevlex') #doctest: +SKIP
		>>> y * x**2 + x * y**2 #doctest: +SKIP
		x**2*y + x*y**2
		>>> init_session(order='old') #doctest: +SKIP
		>>> x**2 + y**2 + x + y #doctest: +SKIP
		x + y + x**2 + y**2
		>>> theta = Symbol('theta') #doctest: +SKIP
		>>> theta #doctest: +SKIP
		theta
		>>> init_session(use_unicode=True) #doctest: +SKIP
		>>> theta # doctest: +SKIP
		θ
	**/
	static public function init_session(?ipython:Dynamic, ?pretty_print:Dynamic, ?order:Dynamic, ?use_unicode:Dynamic, ?use_latex:Dynamic, ?quiet:Dynamic, ?auto_symbols:Dynamic, ?auto_int_to_Integer:Dynamic, ?argv:Dynamic):Dynamic;
	/**
		Return a tuple containing x = floor(y**(1/n))
		and a boolean indicating whether the result is exact (that is,
		whether x**n == y).
		
		>>> from sympy import integer_nthroot
		>>> integer_nthroot(16,2)
		(4, True)
		>>> integer_nthroot(26,2)
		(5, False)
	**/
	static public function integer_nthroot(y:Dynamic, n:Dynamic):Dynamic;
	/**
		integrate(f, var, ...)
		
		Compute definite or indefinite integral of one or more variables
		using Risch-Norman algorithm and table lookup. This procedure is
		able to handle elementary algebraic and transcendental functions
		and also a huge class of special functions, including Airy,
		Bessel, Whittaker and Lambert.
		
		var can be:
		
		- a symbol                   -- indefinite integration
		- a tuple (symbol, a)        -- indefinite integration with result
		                                given with `a` replacing `symbol`
		- a tuple (symbol, a, b)     -- definite integration
		
		Several variables can be specified, in which case the result is
		multiple integration. (If var is omitted and the integrand is
		univariate, the indefinite integral in that variable will be performed.)
		
		Indefinite integrals are returned without terms that are independent
		of the integration variables. (see examples)
		
		Definite improper integrals often entail delicate convergence
		conditions. Pass conds='piecewise', 'separate' or 'none' to have
		these returned, respectively, as a Piecewise function, as a separate
		result (i.e. result will be a tuple), or not at all (default is
		'piecewise').
		
		**Strategy**
		
		SymPy uses various approaches to definite integration. One method is to
		find an antiderivative for the integrand, and then use the fundamental
		theorem of calculus. Various functions are implemented to integrate
		polynomial, rational and trigonometric functions, and integrands
		containing DiracDelta terms.
		
		SymPy also implements the part of the Risch algorithm, which is a decision
		procedure for integrating elementary functions, i.e., the algorithm can
		either find an elementary antiderivative, or prove that one does not
		exist.  There is also a (very successful, albeit somewhat slow) general
		implementation of the heuristic Risch algorithm.  This algorithm will
		eventually be phased out as more of the full Risch algorithm is
		implemented. See the docstring of Integral._eval_integral() for more
		details on computing the antiderivative using algebraic methods.
		
		The option risch=True can be used to use only the (full) Risch algorithm.
		This is useful if you want to know if an elementary function has an
		elementary antiderivative.  If the indefinite Integral returned by this
		function is an instance of NonElementaryIntegral, that means that the
		Risch algorithm has proven that integral to be non-elementary.  Note that
		by default, additional methods (such as the Meijer G method outlined
		below) are tried on these integrals, as they may be expressible in terms
		of special functions, so if you only care about elementary answers, use
		risch=True.  Also note that an unevaluated Integral returned by this
		function is not necessarily a NonElementaryIntegral, even with risch=True,
		as it may just be an indication that the particular part of the Risch
		algorithm needed to integrate that function is not yet implemented.
		
		Another family of strategies comes from re-writing the integrand in
		terms of so-called Meijer G-functions. Indefinite integrals of a
		single G-function can always be computed, and the definite integral
		of a product of two G-functions can be computed from zero to
		infinity. Various strategies are implemented to rewrite integrands
		as G-functions, and use this information to compute integrals (see
		the ``meijerint`` module).
		
		The option manual=True can be used to use only an algorithm that tries
		to mimic integration by hand. This algorithm does not handle as many
		integrands as the other algorithms implemented but may return results in
		a more familiar form. The ``manualintegrate`` module has functions that
		return the steps used (see the module docstring for more information).
		
		In general, the algebraic methods work best for computing
		antiderivatives of (possibly complicated) combinations of elementary
		functions. The G-function methods work best for computing definite
		integrals from zero to infinity of moderately complicated
		combinations of special functions, or indefinite integrals of very
		simple combinations of special functions.
		
		The strategy employed by the integration code is as follows:
		
		- If computing a definite integral, and both limits are real,
		  and at least one limit is +- oo, try the G-function method of
		  definite integration first.
		
		- Try to find an antiderivative, using all available methods, ordered
		  by performance (that is try fastest method first, slowest last; in
		  particular polynomial integration is tried first, meijer
		  g-functions second to last, and heuristic risch last).
		
		- If still not successful, try G-functions irrespective of the
		  limits.
		
		The option meijerg=True, False, None can be used to, respectively:
		always use G-function methods and no others, never use G-function
		methods, or use all available methods (in order as described above).
		It defaults to None.
		
		Examples
		========
		
		>>> from sympy import integrate, log, exp, oo
		>>> from sympy.abc import a, x, y
		
		>>> integrate(x*y, x)
		x**2*y/2
		
		>>> integrate(log(x), x)
		x*log(x) - x
		
		>>> integrate(log(x), (x, 1, a))
		a*log(a) - a + 1
		
		>>> integrate(x)
		x**2/2
		
		Terms that are independent of x are dropped by indefinite integration:
		
		>>> from sympy import sqrt
		>>> integrate(sqrt(1 + x), (x, 0, x))
		2*(x + 1)**(3/2)/3 - 2/3
		>>> integrate(sqrt(1 + x), x)
		2*(x + 1)**(3/2)/3
		
		>>> integrate(x*y)
		Traceback (most recent call last):
		...
		ValueError: specify integration variables to integrate x*y
		
		Note that ``integrate(x)`` syntax is meant only for convenience
		in interactive sessions and should be avoided in library code.
		
		>>> integrate(x**a*exp(-x), (x, 0, oo)) # same as conds='piecewise'
		Piecewise((gamma(a + 1), -re(a) < 1),
		    (Integral(x**a*exp(-x), (x, 0, oo)), True))
		
		>>> integrate(x**a*exp(-x), (x, 0, oo), conds='none')
		gamma(a + 1)
		
		>>> integrate(x**a*exp(-x), (x, 0, oo), conds='separate')
		(gamma(a + 1), -re(a) < 1)
		
		See Also
		========
		
		Integral, Integral.doit
	**/
	static public function integrate(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Traverse a tree asking a user which branch to choose. 
	**/
	static public function interactive_traversal(expr:Dynamic):Dynamic;
	/**
		Construct an interpolating polynomial for the data points.
		
		Examples
		========
		
		>>> from sympy.polys.polyfuncs import interpolate
		>>> from sympy.abc import x
		
		A list is interpreted as though it were paired with a range starting
		from 1:
		
		>>> interpolate([1, 4, 9, 16], x)
		x**2
		
		This can be made explicit by giving a list of coordinates:
		
		>>> interpolate([(1, 1), (2, 4), (3, 9)], x)
		x**2
		
		The (x, y) coordinates can also be given as keys and values of a
		dictionary (and the points need not be equispaced):
		
		>>> interpolate([(-1, 2), (1, 2), (2, 5)], x)
		x**2 + 1
		>>> interpolate({-1: 2, 1: 2, 2: 5}, x)
		x**2 + 1
	**/
	static public function interpolate(data:Dynamic, x:Dynamic):Dynamic;
	/**
		Construct Lagrange interpolating polynomial for ``n`` data points. 
	**/
	static public function interpolating_poly(n:Dynamic, x:Dynamic, ?X:Dynamic, ?Y:Dynamic):Dynamic;
	/**
		The intersection of a collection of GeometryEntity instances.
		
		Parameters
		==========
		
		entities : sequence of GeometryEntity
		
		Returns
		=======
		
		intersection : list of GeometryEntity
		
		Raises
		======
		
		NotImplementedError
		    When unable to calculate intersection.
		
		Notes
		=====
		
		The intersection of any geometrical entity with itself should return
		a list with one item: the entity in question.
		An intersection requires two or more entities. If only a single
		entity is given then the function will return an empty list.
		It is possible for `intersection` to miss intersections that one
		knows exists because the required quantities were not fully
		simplified internally.
		Reals should be converted to Rationals, e.g. Rational(str(real_num))
		or else failures due to floating point issues may result.
		
		See Also
		========
		
		sympy.geometry.entity.GeometryEntity.intersection
		
		Examples
		========
		
		>>> from sympy.geometry import Point, Line, Circle, intersection
		>>> p1, p2, p3 = Point(0, 0), Point(1, 1), Point(-1, 5)
		>>> l1, l2 = Line(p1, p2), Line(p3, p2)
		>>> c = Circle(p2, 1)
		>>> intersection(l1, p2)
		[Point(1, 1)]
		>>> intersection(l1, l2)
		[Point(1, 1)]
		>>> intersection(c, p2)
		[]
		>>> intersection(c, Point(1, 0))
		[Point(1, 0)]
		>>> intersection(c, l2)
		[Point(-sqrt(5)/5 + 1, 2*sqrt(5)/5 + 1),
		 Point(sqrt(5)/5 + 1, -2*sqrt(5)/5 + 1)]
	**/
	static public function intersection(entities:Dynamic):Dynamic;
	/**
		Compute isolating intervals for roots of ``f``.
		
		Examples
		========
		
		>>> from sympy import intervals
		>>> from sympy.abc import x
		
		>>> intervals(x**2 - 3)
		[((-2, -1), 1), ((1, 2), 1)]
		>>> intervals(x**2 - 3, eps=1e-2)
		[((-26/15, -19/11), 1), ((19/11, 26/15), 1)]
	**/
	static public function intervals(F:Dynamic, ?all:Dynamic, ?eps:Dynamic, ?inf:Dynamic, ?sup:Dynamic, ?strict:Dynamic, ?fast:Dynamic, ?sqf:Dynamic):Dynamic;
	/**
		Return the inverse of ``M``, assuming that either
		there are lots of zeros or the size of the matrix
		is small.
	**/
	static public function inv_quick(M:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency inverse cosine transform of `F`,
		defined as
		
		.. math:: f(x) = \sqrt{\frac{2}{\pi}} \int_{0}^\infty F(k) \cos(2\pi x k) \mathrm{d} k.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`InverseCosineTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import inverse_cosine_transform, exp, sqrt, pi
		>>> from sympy.abc import x, k, a
		>>> inverse_cosine_transform(sqrt(2)*a/(sqrt(pi)*(a**2 + k**2)), k, x)
		exp(-a*x)
		>>> inverse_cosine_transform(1/sqrt(k), k, x)
		1/sqrt(x)
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform,
		sine_transform, inverse_sine_transform
		cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function inverse_cosine_transform(F:Dynamic, k:Dynamic, x:Dynamic, hints:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency inverse Fourier transform of `F`,
		defined as
		
		.. math:: f(x) = \int_{-\infty}^\infty F(k) e^{2\pi i x k} \mathrm{d} k.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`InverseFourierTransform` object.
		
		For other Fourier transform conventions, see the function
		:func:`sympy.integrals.transforms._fourier_transform`.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import inverse_fourier_transform, exp, sqrt, pi
		>>> from sympy.abc import x, k
		>>> inverse_fourier_transform(sqrt(pi)*exp(-(pi*k)**2), k, x)
		exp(-x**2)
		>>> inverse_fourier_transform(sqrt(pi)*exp(-(pi*k)**2), k, x, noconds=False)
		(exp(-x**2), True)
		
		See Also
		========
		
		fourier_transform
		sine_transform, inverse_sine_transform
		cosine_transform, inverse_cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function inverse_fourier_transform(F:Dynamic, k:Dynamic, x:Dynamic, hints:Dynamic):Dynamic;
	/**
		Compute the inverse Hankel transform of `F` defined as
		
		.. math:: f(r) = \int_{0}^\infty F_\nu(k) J_\nu(k r) k \mathrm{d} k.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`InverseHankelTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import hankel_transform, inverse_hankel_transform, gamma
		>>> from sympy import gamma, exp, sinh, cosh
		>>> from sympy.abc import r, k, m, nu, a
		
		>>> ht = hankel_transform(1/r**m, r, k, nu)
		>>> ht
		2*2**(-m)*k**(m - 2)*gamma(-m/2 + nu/2 + 1)/gamma(m/2 + nu/2)
		
		>>> inverse_hankel_transform(ht, k, r, nu)
		r**(-m)
		
		>>> ht = hankel_transform(exp(-a*r), r, k, 0)
		>>> ht
		a/(k**3*(a**2/k**2 + 1)**(3/2))
		
		>>> inverse_hankel_transform(ht, k, r, 0)
		exp(-a*r)
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform
		sine_transform, inverse_sine_transform
		cosine_transform, inverse_cosine_transform
		hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function inverse_hankel_transform(F:Dynamic, k:Dynamic, r:Dynamic, nu:Dynamic, hints:Dynamic):Dynamic;
	/**
		Compute the inverse Laplace transform of `F(s)`, defined as
		
		.. math :: f(t) = \int_{c-i\infty}^{c+i\infty} e^{st} F(s) \mathrm{d}s,
		
		for `c` so large that `F(s)` has no singularites in the
		half-plane `\operatorname{Re}(s) > c-\epsilon`.
		
		The plane can be specified by
		argument ``plane``, but will be inferred if passed as None.
		
		Under certain regularity conditions, this recovers `f(t)` from its
		Laplace Transform `F(s)`, for non-negative `t`, and vice
		versa.
		
		If the integral cannot be computed in closed form, this function returns
		an unevaluated :class:`InverseLaplaceTransform` object.
		
		Note that this function will always assume `t` to be real,
		regardless of the sympy assumption on `t`.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		
		>>> from sympy.integrals.transforms import inverse_laplace_transform
		>>> from sympy import exp, Symbol
		>>> from sympy.abc import s, t
		>>> a = Symbol('a', positive=True)
		>>> inverse_laplace_transform(exp(-a*s)/s, s, t)
		Heaviside(-a + t)
		
		See Also
		========
		
		laplace_transform
		hankel_transform, inverse_hankel_transform
	**/
	static public function inverse_laplace_transform(F:Dynamic, s:Dynamic, t:Dynamic, ?plane:Dynamic, hints:Dynamic):Dynamic;
	/**
		Compute the inverse Mellin transform of `F(s)` over the fundamental
		strip given by ``strip=(a, b)``.
		
		This can be defined as
		
		.. math:: f(x) = \int_{c - i\infty}^{c + i\infty} x^{-s} F(s) \mathrm{d}s,
		
		for any `c` in the fundamental strip. Under certain regularity
		conditions on `F` and/or `f`,
		this recovers `f` from its Mellin transform `F`
		(and vice versa), for positive real `x`.
		
		One of `a` or `b` may be passed as ``None``; a suitable `c` will be
		inferred.
		
		If the integral cannot be computed in closed form, this function returns
		an unevaluated :class:`InverseMellinTransform` object.
		
		Note that this function will assume x to be positive and real, regardless
		of the sympy assumptions!
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		
		>>> from sympy.integrals.transforms import inverse_mellin_transform
		>>> from sympy import oo, gamma
		>>> from sympy.abc import x, s
		>>> inverse_mellin_transform(gamma(s), s, x, (0, oo))
		exp(-x)
		
		The fundamental strip matters:
		
		>>> f = 1/(s**2 - 1)
		>>> inverse_mellin_transform(f, s, x, (-oo, -1))
		(x/2 - 1/(2*x))*Heaviside(x - 1)
		>>> inverse_mellin_transform(f, s, x, (-1, 1))
		-x*Heaviside(-x + 1)/2 - Heaviside(x - 1)/(2*x)
		>>> inverse_mellin_transform(f, s, x, (1, oo))
		(-x/2 + 1/(2*x))*Heaviside(-x + 1)
		
		See Also
		========
		
		mellin_transform
		hankel_transform, inverse_hankel_transform
	**/
	static public function inverse_mellin_transform(F:Dynamic, s:Dynamic, x:Dynamic, strip:Dynamic, hints:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency inverse sine transform of `F`,
		defined as
		
		.. math:: f(x) = \sqrt{\frac{2}{\pi}} \int_{0}^\infty F(k) \sin(2\pi x k) \mathrm{d} k.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`InverseSineTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import inverse_sine_transform, exp, sqrt, gamma, pi
		>>> from sympy.abc import x, k, a
		>>> inverse_sine_transform(2**((1-2*a)/2)*k**(a - 1)*
		...     gamma(-a/2 + 1)/gamma((a+1)/2), k, x)
		x**(-a)
		>>> inverse_sine_transform(sqrt(2)*k*exp(-k**2/(4*a))/(4*sqrt(a)**3), k, x)
		x*exp(-a*x**2)
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform
		sine_transform
		cosine_transform, inverse_cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function inverse_sine_transform(F:Dynamic, k:Dynamic, x:Dynamic, hints:Dynamic):Dynamic;
	/**
		Invert ``f`` modulo ``g`` when possible.
		
		Examples
		========
		
		>>> from sympy import invert
		>>> from sympy.abc import x
		
		>>> invert(x**2 - 1, 2*x - 1)
		-4/3
		
		>>> invert(x**2 - 1, x - 1)
		Traceback (most recent call last):
		...
		NotInvertible: zero divisor
	**/
	static public function invert(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns True if ``x**n == a (mod m)`` has solutions.
		
		References
		==========
		
		P. Hackman "Elementary Number Theory" (2009),  page 76
	**/
	static public function is_nthpow_residue(a:Dynamic, n:Dynamic, m:Dynamic):Dynamic;
	/**
		Returns True if ``a`` is a primitive root of ``p``
		
		``a`` is said to be the primitive root of ``p`` if gcd(a, p) == 1 and
		totient(p) is the smallest positive number s.t.
		
		    a**totient(p) cong 1 mod(p)
		
		Examples
		========
		
		>>> from sympy.ntheory import is_primitive_root, n_order, totient
		>>> is_primitive_root(3, 10)
		True
		>>> is_primitive_root(9, 10)
		False
		>>> n_order(3, 10) == totient(10)
		True
		>>> n_order(9, 10) == totient(10)
		False
	**/
	static public function is_primitive_root(a:Dynamic, p:Dynamic):Dynamic;
	/**
		Returns True if ``a`` (mod ``p``) is in the set of squares mod ``p``,
		i.e a % p in set([i**2 % p for i in range(p)]). If ``p`` is an odd
		prime, an iterative method is used to make the determination:
		
		>>> from sympy.ntheory import is_quad_residue
		>>> sorted(set([i**2 % 7 for i in range(7)]))
		[0, 1, 2, 4]
		>>> [j for j in range(7) if is_quad_residue(j, 7)]
		[0, 1, 2, 4]
		
		See Also
		========
		
		legendre_symbol, jacobi_symbol
	**/
	static public function is_quad_residue(a:Dynamic, p:Dynamic):Dynamic;
	/**
		Checks if the ideal generated by a Groebner basis is zero-dimensional.
		
		The algorithm checks if the set of monomials not divisible by the
		leading monomial of any element of ``F`` is bounded.
		
		References
		==========
		
		David A. Cox, John B. Little, Donal O'Shea. Ideals, Varieties and
		Algorithms, 3rd edition, p. 230
	**/
	static public function is_zero_dimensional(F:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Give a rational isolating interval for an algebraic number. 
	**/
	static public function isolate(alg:Dynamic, ?eps:Dynamic, ?fast:Dynamic):Dynamic;
	/**
		Test if n is a prime number (True) or not (False). For n < 10**16 the
		answer is accurate; greater n values have a small probability of actually
		being pseudoprimes.
		
		Negative primes (e.g. -2) are not considered prime.
		
		The function first looks for trivial factors, and if none is found,
		performs a safe Miller-Rabin strong pseudoprime test with bases
		that are known to prove a number prime. Finally, a general Miller-Rabin
		test is done with the first k bases which will report a pseudoprime as a
		prime with an error of about 4**-k. The current value of k is 46 so the
		error is about 2 x 10**-28.
		
		Examples
		========
		
		>>> from sympy.ntheory import isprime
		>>> isprime(13)
		True
		>>> isprime(15)
		False
		
		See Also
		========
		
		sympy.ntheory.generate.primerange : Generates all primes in a given range
		sympy.ntheory.generate.primepi : Return the number of primes less than or equal to n
		sympy.ntheory.generate.prime : Return the nth prime
	**/
	static public function isprime(n:Dynamic):Dynamic;
	/**
		Generate a set of monomials of the given total degree or less.
		
		Given a set of variables `V` and a total degree `N` generate
		a set of monomials of degree at most `N`. The total number of
		monomials is huge and is given by the following formula:
		
		.. math::
		
		    \frac{(\#V + N)!}{\#V! N!}
		
		For example if we would like to generate a dense polynomial of
		a total degree `N = 50` in 5 variables, assuming that exponents
		and all of coefficients are 32-bit long and stored in an array we
		would need almost 80 GiB of memory! Fortunately most polynomials,
		that we will encounter, are sparse.
		
		Examples
		========
		
		Consider monomials in variables `x` and `y`::
		
		    >>> from sympy.polys.monomials import itermonomials
		    >>> from sympy.polys.orderings import monomial_key
		    >>> from sympy.abc import x, y
		
		    >>> sorted(itermonomials([x, y], 2), key=monomial_key('grlex', [y, x]))
		    [1, x, y, x**2, x*y, y**2]
		
		    >>> sorted(itermonomials([x, y], 3), key=monomial_key('grlex', [y, x]))
		    [1, x, y, x**2, x*y, y**2, x**3, x**2*y, x*y**2, y**3]
	**/
	static public function itermonomials(variables:Dynamic, degree:Dynamic):Dynamic;
	/**
		Jacobi polynomial :math:`P_n^{\left(\alpha, \beta\right)}(x)`
		
		jacobi_normalized(n, alpha, beta, x) gives the nth Jacobi polynomial
		in x, :math:`P_n^{\left(\alpha, \beta\right)}(x)`.
		
		The Jacobi polynomials are orthogonal on :math:`[-1, 1]` with respect
		to the weight :math:`\left(1-x\right)^\alpha \left(1+x\right)^\beta`.
		
		This functions returns the polynomials normilzed:
		
		.. math::
		
		    \int_{-1}^{1}
		      P_m^{\left(\alpha, \beta\right)}(x)
		      P_n^{\left(\alpha, \beta\right)}(x)
		      (1-x)^{\alpha} (1+x)^{\beta} \mathrm{d}x
		    = \delta_{m,n}
		
		Examples
		========
		
		>>> from sympy import jacobi_normalized
		>>> from sympy.abc import n,a,b,x
		
		>>> jacobi_normalized(n, a, b, x)
		jacobi(n, a, b, x)/sqrt(2**(a + b + 1)*gamma(a + n + 1)*gamma(b + n + 1)/((a + b + 2*n + 1)*factorial(n)*gamma(a + b + n + 1)))
		
		See Also
		========
		
		gegenbauer,
		chebyshevt_root, chebyshevu, chebyshevu_root,
		legendre, assoc_legendre,
		hermite,
		laguerre, assoc_laguerre,
		sympy.polys.orthopolys.jacobi_poly,
		sympy.polys.orthopolys.gegenbauer_poly
		sympy.polys.orthopolys.chebyshevt_poly
		sympy.polys.orthopolys.chebyshevu_poly
		sympy.polys.orthopolys.hermite_poly
		sympy.polys.orthopolys.legendre_poly
		sympy.polys.orthopolys.laguerre_poly
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Jacobi_polynomials
		.. [2] http://mathworld.wolfram.com/JacobiPolynomial.html
		.. [3] http://functions.wolfram.com/Polynomials/JacobiP/
	**/
	static public function jacobi_normalized(n:Dynamic, a:Dynamic, b:Dynamic, x:Dynamic):Dynamic;
	/**
		Generates Jacobi polynomial of degree `n` in `x`. 
	**/
	static public function jacobi_poly(n:Dynamic, a:Dynamic, b:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns the product of the legendre_symbol(m, p)
		for all the prime factors, p, of n.
		
		Returns
		=======
		
		1. 0 if m cong 0 mod(n)
		2. 1 if x**2 cong m mod(n) has a solution
		3. -1 otherwise
		
		Examples
		========
		
		>>> from sympy.ntheory import jacobi_symbol, legendre_symbol
		>>> from sympy import Mul, S
		>>> jacobi_symbol(45, 77)
		-1
		>>> jacobi_symbol(60, 121)
		1
		
		The relationship between the jacobi_symbol and legendre_symbol can
		be demonstrated as follows:
		
		>>> L = legendre_symbol
		>>> S(45).factors()
		{3: 2, 5: 1}
		>>> jacobi_symbol(7, 45) == L(7, 3)**2 * L(7, 5)**1
		True
		
		See Also
		========
		
		is_quad_residue, legendre_symbol
	**/
	static public function jacobi_symbol(m:Dynamic, n:Dynamic):Dynamic;
	/**
		Zeros of the spherical Bessel function of the first kind.
		
		This returns an array of zeros of jn up to the k-th zero.
		
		* method = "sympy": uses :func:`mpmath.besseljzero`
		* method = "scipy": uses the
		  `SciPy's sph_jn <http://docs.scipy.org/doc/scipy/reference/generated/scipy.special.jn.html>`_
		  and
		  `newton <http://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.newton.html>`_
		  to find all
		  roots, which is faster than computing the zeros using a general
		  numerical solver, but it requires SciPy and only works with low
		  precision floating point numbers.  [The function used with
		  method="sympy" is a recent addition to mpmath, before that a general
		  solver was used.]
		
		Examples
		========
		
		>>> from sympy import jn_zeros
		>>> jn_zeros(2, 4, dps=5)
		[5.7635, 9.095, 12.323, 15.515]
		
		See Also
		========
		
		jn, yn, besselj, besselk, bessely
	**/
	static public function jn_zeros(n:Dynamic, k:Dynamic, ?method:Dynamic, ?dps:Dynamic):Dynamic;
	/**
		Create matrix of Jordan cell kind:
		
		Examples
		========
		
		>>> from sympy.matrices import jordan_cell
		>>> from sympy.abc import x
		>>> jordan_cell(x, 4)
		Matrix([
		[x, 1, 0, 0],
		[0, x, 1, 0],
		[0, 0, x, 1],
		[0, 0, 0, x]])
	**/
	static public function jordan_cell(eigenval:Dynamic, n:Dynamic):Dynamic;
	/**
		Converts an expr to a string of javascript code
		
		Parameters
		==========
		
		expr : Expr
		    A sympy expression to be converted.
		assign_to : optional
		    When given, the argument is used as the name of the variable to which
		    the expression is assigned. Can be a string, ``Symbol``,
		    ``MatrixSymbol``, or ``Indexed`` type. This is helpful in case of
		    line-wrapping, or for expressions that generate multi-line statements.
		precision : integer, optional
		    The precision for numbers such as pi [default=15].
		user_functions : dict, optional
		    A dictionary where keys are ``FunctionClass`` instances and values are
		    their string representations. Alternatively, the dictionary value can
		    be a list of tuples i.e. [(argument_test, js_function_string)]. See
		    below for examples.
		human : bool, optional
		    If True, the result is a single string that may contain some constant
		    declarations for the number symbols. If False, the same information is
		    returned in a tuple of (symbols_to_declare, not_supported_functions,
		    code_text). [default=True].
		contract: bool, optional
		    If True, ``Indexed`` instances are assumed to obey tensor contraction
		    rules and the corresponding nested loops over indices are generated.
		    Setting contract=False will not generate loops, instead the user is
		    responsible to provide values for the indices in the code.
		    [default=True].
		
		Examples
		========
		
		>>> from sympy import jscode, symbols, Rational, sin, ceiling, Abs
		>>> x, tau = symbols("x, tau")
		>>> jscode((2*tau)**Rational(7, 2))
		'8*Math.sqrt(2)*Math.pow(tau, 7/2)'
		>>> jscode(sin(x), assign_to="s")
		's = Math.sin(x);'
		
		Custom printing can be defined for certain types by passing a dictionary of
		"type" : "function" to the ``user_functions`` kwarg. Alternatively, the
		dictionary value can be a list of tuples i.e. [(argument_test,
		js_function_string)].
		
		>>> custom_functions = {
		...   "ceiling": "CEIL",
		...   "Abs": [(lambda x: not x.is_integer, "fabs"),
		...           (lambda x: x.is_integer, "ABS")]
		... }
		>>> jscode(Abs(x) + ceiling(x), user_functions=custom_functions)
		'fabs(x) + CEIL(x)'
		
		``Piecewise`` expressions are converted into conditionals. If an
		``assign_to`` variable is provided an if statement is created, otherwise
		the ternary operator is used. Note that if the ``Piecewise`` lacks a
		default term, represented by ``(expr, True)`` then an error will be thrown.
		This is to prevent generating an expression that may not evaluate to
		anything.
		
		>>> from sympy import Piecewise
		>>> expr = Piecewise((x + 1, x > 0), (x, True))
		>>> print(jscode(expr, tau))
		if (x > 0) {
		   tau = x + 1;
		}
		else {
		   tau = x;
		}
		
		Support for loops is provided through ``Indexed`` types. With
		``contract=True`` these expressions will be turned into loops, whereas
		``contract=False`` will just print the assignment expression that should be
		looped over:
		
		>>> from sympy import Eq, IndexedBase, Idx
		>>> len_y = 5
		>>> y = IndexedBase('y', shape=(len_y,))
		>>> t = IndexedBase('t', shape=(len_y,))
		>>> Dy = IndexedBase('Dy', shape=(len_y-1,))
		>>> i = Idx('i', len_y-1)
		>>> e=Eq(Dy[i], (y[i+1]-y[i])/(t[i+1]-t[i]))
		>>> jscode(e.rhs, assign_to=e.lhs, contract=False)
		'Dy[i] = (y[i + 1] - y[i])/(t[i + 1] - t[i]);'
		
		Matrices are also supported, but a ``MatrixSymbol`` of the same dimensions
		must be provided to ``assign_to``. Note that any expression that can be
		generated normally can also exist inside a Matrix:
		
		>>> from sympy import Matrix, MatrixSymbol
		>>> mat = Matrix([x**2, Piecewise((x + 1, x > 0), (x, True)), sin(x)])
		>>> A = MatrixSymbol('A', 3, 1)
		>>> print(jscode(mat, A))
		A[0] = Math.pow(x, 2);
		if (x > 0) {
		   A[1] = x + 1;
		}
		else {
		   A[1] = x;
		}
		A[2] = Math.sin(x);
	**/
	static public function jscode(expr:Dynamic, ?assign_to:Dynamic, settings:Dynamic):Dynamic;
	/**
		Generates Laguerre polynomial of degree `n` in `x`. 
	**/
	static public function laguerre_poly(n:Dynamic, ?x:Dynamic, ?alpha:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a lambda function for fast calculation of numerical values.
		
		If not specified differently by the user, SymPy functions are replaced as
		far as possible by either python-math, numpy (if available) or mpmath
		functions - exactly in this order. To change this behavior, the "modules"
		argument can be used. It accepts:
		
		 - the strings "math", "mpmath", "numpy", "numexpr", "sympy"
		 - any modules (e.g. math)
		 - dictionaries that map names of sympy functions to arbitrary functions
		 - lists that contain a mix of the arguments above, with higher priority
		   given to entries appearing first.
		
		The default behavior is to substitute all arguments in the provided
		expression with dummy symbols. This allows for applied functions (e.g.
		f(t)) to be supplied as arguments. Call the function with dummify=False if
		dummy substitution is unwanted (and `args` is not a string). If you want
		to view the lambdified function or provide "sympy" as the module, you
		should probably set dummify=False.
		
		For functions involving large array calculations, numexpr can provide a
		significant speedup over numpy.  Please note that the available functions
		for numexpr are more limited than numpy but can be expanded with
		implemented_function and user defined subclasses of Function.  If specified,
		numexpr may be the only option in modules. The official list of numexpr
		functions can be found at:
		https://github.com/pydata/numexpr#supported-functions
		
		Deprecation Warnings
		====================
		
		In previous releases ``lambdify`` replaced ``Matrix`` with ``numpy.matrix``
		by default. As of release 0.7.6 ``numpy.array`` is being transitioned to
		the default. In release 0.7.7 this transition will be complete. For now, to
		use the new default behavior you must pass in ``[{'ImmutableMatrix':
		numpy.array}, 'numpy']`` to the ``modules`` kwarg.
		
		>>> from sympy import lambdify, Matrix
		>>> from sympy.abc import x, y
		>>> import numpy
		>>> mat2array = [{'ImmutableMatrix': numpy.array}, 'numpy']
		>>> f = lambdify((x, y), Matrix([x, y]), modules=mat2array)
		>>> f(1, 2)
		array([[1],
		       [2]])
		
		Usage
		=====
		
		(1) Use one of the provided modules:
		
		    >>> from sympy import sin, tan, gamma
		    >>> from sympy.utilities.lambdify import lambdastr
		    >>> from sympy.abc import x, y
		    >>> f = lambdify(x, sin(x), "math")
		
		    Attention: Functions that are not in the math module will throw a name
		               error when the lambda function is evaluated! So this would
		               be better:
		
		    >>> f = lambdify(x, sin(x)*gamma(x), ("math", "mpmath", "sympy"))
		
		(2) Use some other module:
		
		    >>> import numpy
		    >>> f = lambdify((x,y), tan(x*y), numpy)
		
		    Attention: There are naming differences between numpy and sympy. So if
		               you simply take the numpy module, e.g. sympy.atan will not be
		               translated to numpy.arctan. Use the modified module instead
		               by passing the string "numpy":
		
		    >>> f = lambdify((x,y), tan(x*y), "numpy")
		    >>> f(1, 2)
		    -2.18503986326
		    >>> from numpy import array
		    >>> f(array([1, 2, 3]), array([2, 3, 5]))
		    [-2.18503986 -0.29100619 -0.8559934 ]
		
		(3) Use a dictionary defining custom functions:
		
		    >>> def my_cool_function(x): return 'sin(%s) is cool' % x
		    >>> myfuncs = {"sin" : my_cool_function}
		    >>> f = lambdify(x, sin(x), myfuncs); f(1)
		    'sin(1) is cool'
		
		Examples
		========
		
		>>> from sympy.utilities.lambdify import implemented_function
		>>> from sympy import sqrt, sin, Matrix
		>>> from sympy import Function
		>>> from sympy.abc import w, x, y, z
		
		>>> f = lambdify(x, x**2)
		>>> f(2)
		4
		>>> f = lambdify((x, y, z), [z, y, x])
		>>> f(1,2,3)
		[3, 2, 1]
		>>> f = lambdify(x, sqrt(x))
		>>> f(4)
		2.0
		>>> f = lambdify((x, y), sin(x*y)**2)
		>>> f(0, 5)
		0.0
		>>> row = lambdify((x, y), Matrix((x, x + y)).T, modules='sympy')
		>>> row(1, 2)
		Matrix([[1, 3]])
		
		Tuple arguments are handled and the lambdified function should
		be called with the same type of arguments as were used to create
		the function.:
		
		>>> f = lambdify((x, (y, z)), x + y)
		>>> f(1, (2, 4))
		3
		
		A more robust way of handling this is to always work with flattened
		arguments:
		
		>>> from sympy.utilities.iterables import flatten
		>>> args = w, (x, (y, z))
		>>> vals = 1, (2, (3, 4))
		>>> f = lambdify(flatten(args), w + x + y + z)
		>>> f(*flatten(vals))
		10
		
		Functions present in `expr` can also carry their own numerical
		implementations, in a callable attached to the ``_imp_``
		attribute.  Usually you attach this using the
		``implemented_function`` factory:
		
		>>> f = implemented_function(Function('f'), lambda x: x+1)
		>>> func = lambdify(x, f(x))
		>>> func(4)
		5
		
		``lambdify`` always prefers ``_imp_`` implementations to implementations
		in other namespaces, unless the ``use_imps`` input parameter is False.
	**/
	static public function lambdify(args:Dynamic, expr:Dynamic, ?modules:Dynamic, ?printer:Dynamic, ?use_imps:Dynamic, ?dummify:Dynamic):Dynamic;
	/**
		Compute the Laplace Transform `F(s)` of `f(t)`,
		
		.. math :: F(s) = \int_0^\infty e^{-st} f(t) \mathrm{d}t.
		
		For all "sensible" functions, this converges absolutely in a
		half plane  `a < \operatorname{Re}(s)`.
		
		This function returns ``(F, a, cond)``
		where ``F`` is the Laplace transform of ``f``, `\operatorname{Re}(s) > a` is the half-plane
		of convergence, and ``cond`` are auxiliary convergence conditions.
		
		If the integral cannot be computed in closed form, this function returns
		an unevaluated :class:`LaplaceTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`. If ``noconds=True``,
		only `F` will be returned (i.e. not ``cond``, and also not the plane ``a``).
		
		>>> from sympy.integrals import laplace_transform
		>>> from sympy.abc import t, s, a
		>>> laplace_transform(t**a, t, s)
		(s**(-a)*gamma(a + 1)/s, 0, -re(a) < 1)
		
		See Also
		========
		
		inverse_laplace_transform, mellin_transform, fourier_transform
		hankel_transform, inverse_hankel_transform
	**/
	static public function laplace_transform(f:Dynamic, t:Dynamic, s:Dynamic, hints:Dynamic):Dynamic;
	/**
		Convert the given expression to LaTeX representation.
		
		>>> from sympy import latex, pi, sin, asin, Integral, Matrix, Rational
		>>> from sympy.abc import x, y, mu, r, tau
		
		>>> print(latex((2*tau)**Rational(7,2)))
		8 \sqrt{2} \tau^{\frac{7}{2}}
		
		order: Any of the supported monomial orderings (currently "lex", "grlex", or
		"grevlex"), "old", and "none". This parameter does nothing for Mul objects.
		Setting order to "old" uses the compatibility ordering for Add defined in
		Printer. For very large expressions, set the 'order' keyword to 'none' if
		speed is a concern.
		
		mode: Specifies how the generated code will be delimited. 'mode' can be one
		of 'plain', 'inline', 'equation' or 'equation*'.  If 'mode' is set to
		'plain', then the resulting code will not be delimited at all (this is the
		default). If 'mode' is set to 'inline' then inline LaTeX $ $ will be used.
		If 'mode' is set to 'equation' or 'equation*', the resulting code will be
		enclosed in the 'equation' or 'equation*' environment (remember to import
		'amsmath' for 'equation*'), unless the 'itex' option is set. In the latter
		case, the ``$$ $$`` syntax is used.
		
		>>> print(latex((2*mu)**Rational(7,2), mode='plain'))
		8 \sqrt{2} \mu^{\frac{7}{2}}
		
		>>> print(latex((2*tau)**Rational(7,2), mode='inline'))
		$8 \sqrt{2} \tau^{\frac{7}{2}}$
		
		>>> print(latex((2*mu)**Rational(7,2), mode='equation*'))
		\begin{equation*}8 \sqrt{2} \mu^{\frac{7}{2}}\end{equation*}
		
		>>> print(latex((2*mu)**Rational(7,2), mode='equation'))
		\begin{equation}8 \sqrt{2} \mu^{\frac{7}{2}}\end{equation}
		
		itex: Specifies if itex-specific syntax is used, including emitting ``$$ $$``.
		
		>>> print(latex((2*mu)**Rational(7,2), mode='equation', itex=True))
		$$8 \sqrt{2} \mu^{\frac{7}{2}}$$
		
		fold_frac_powers: Emit "^{p/q}" instead of "^{\frac{p}{q}}" for fractional
		powers.
		
		>>> print(latex((2*tau)**Rational(7,2), fold_frac_powers=True))
		8 \sqrt{2} \tau^{7/2}
		
		fold_func_brackets: Fold function brackets where applicable.
		
		>>> print(latex((2*tau)**sin(Rational(7,2))))
		\left(2 \tau\right)^{\sin{\left (\frac{7}{2} \right )}}
		>>> print(latex((2*tau)**sin(Rational(7,2)), fold_func_brackets = True))
		\left(2 \tau\right)^{\sin {\frac{7}{2}}}
		
		fold_short_frac: Emit "p / q" instead of "\frac{p}{q}" when the
		denominator is simple enough (at most two terms and no powers).
		The default value is `True` for inline mode, False otherwise.
		
		>>> print(latex(3*x**2/y))
		\frac{3 x^{2}}{y}
		>>> print(latex(3*x**2/y, fold_short_frac=True))
		3 x^{2} / y
		
		long_frac_ratio: The allowed ratio of the width of the numerator to the
		width of the denominator before we start breaking off long fractions.
		The default value is 2.
		
		>>> print(latex(Integral(r, r)/2/pi, long_frac_ratio=2))
		\frac{\int r\, dr}{2 \pi}
		>>> print(latex(Integral(r, r)/2/pi, long_frac_ratio=0))
		\frac{1}{2 \pi} \int r\, dr
		
		mul_symbol: The symbol to use for multiplication. Can be one of None,
		"ldot", "dot", or "times".
		
		>>> print(latex((2*tau)**sin(Rational(7,2)), mul_symbol="times"))
		\left(2 \times \tau\right)^{\sin{\left (\frac{7}{2} \right )}}
		
		inv_trig_style: How inverse trig functions should be displayed. Can be one
		of "abbreviated", "full", or "power". Defaults to "abbreviated".
		
		>>> print(latex(asin(Rational(7,2))))
		\operatorname{asin}{\left (\frac{7}{2} \right )}
		>>> print(latex(asin(Rational(7,2)), inv_trig_style="full"))
		\arcsin{\left (\frac{7}{2} \right )}
		>>> print(latex(asin(Rational(7,2)), inv_trig_style="power"))
		\sin^{-1}{\left (\frac{7}{2} \right )}
		
		mat_str: Which matrix environment string to emit. "smallmatrix", "matrix",
		"array", etc. Defaults to "smallmatrix" for inline mode, "matrix" for
		matrices of no more than 10 columns, and "array" otherwise.
		
		>>> print(latex(Matrix(2, 1, [x, y])))
		\left[\begin{matrix}x\\y\end{matrix}\right]
		
		>>> print(latex(Matrix(2, 1, [x, y]), mat_str = "array"))
		\left[\begin{array}{c}x\\y\end{array}\right]
		
		mat_delim: The delimiter to wrap around matrices. Can be one of "[", "(",
		or the empty string. Defaults to "[".
		
		>>> print(latex(Matrix(2, 1, [x, y]), mat_delim="("))
		\left(\begin{matrix}x\\y\end{matrix}\right)
		
		symbol_names: Dictionary of symbols and the custom strings they should be
		emitted as.
		
		>>> print(latex(x**2, symbol_names={x:'x_i'}))
		x_i^{2}
		
		``latex`` also supports the builtin container types list, tuple, and
		dictionary.
		
		>>> print(latex([2/x, y], mode='inline'))
		$\left [ 2 / x, \quad y\right ]$
	**/
	static public function latex(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Compute LCM of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import lcm
		>>> from sympy.abc import x
		
		>>> lcm(x**2 - 1, x**2 - 3*x + 2)
		x**3 - 2*x**2 - x + 2
	**/
	static public function lcm(f:Dynamic, ?g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute LCM of a list of polynomials.
		
		Examples
		========
		
		>>> from sympy import lcm_list
		>>> from sympy.abc import x
		
		>>> lcm_list([x**3 - 1, x**2 - 1, x**2 - 3*x + 2])
		x**5 - x**4 - 2*x**3 - x**2 + x + 2
	**/
	static public function lcm_list(seq:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Generates Legendre polynomial of degree `n` in `x`. 
	**/
	static public function legendre_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns
		=======
		
		1. 0 if a is multiple of p
		2. 1 if a is a quadratic residue of p
		3. -1 otherwise
		
		p should be an odd prime by definition
		
		Examples
		========
		
		>>> from sympy.ntheory import legendre_symbol
		>>> [legendre_symbol(i, 7) for i in range(7)]
		[0, 1, 1, -1, 1, -1, -1]
		>>> sorted(set([i**2 % 7 for i in range(7)]))
		[0, 1, 2, 4]
		
		See Also
		========
		
		is_quad_residue, jacobi_symbol
	**/
	static public function legendre_symbol(a:Dynamic, p:Dynamic):Dynamic;
	static public function lex(monomial:Dynamic):Dynamic;
	/**
		Compute the limit of e(z) at the point z0.
		
		z0 can be any expression, including oo and -oo.
		
		For dir="+" (default) it calculates the limit from the right
		(z->z0+) and for dir="-" the limit from the left (z->z0-).  For infinite
		z0 (oo or -oo), the dir argument is determined from the direction
		of the infinity (i.e., dir="-" for oo).
		
		Examples
		========
		
		>>> from sympy import limit, sin, Symbol, oo
		>>> from sympy.abc import x
		>>> limit(sin(x)/x, x, 0)
		1
		>>> limit(1/x, x, 0, dir="+")
		oo
		>>> limit(1/x, x, 0, dir="-")
		-oo
		>>> limit(1/x, x, oo)
		0
		
		Notes
		=====
		
		First we try some heuristics for easy and frequent cases like "x", "1/x",
		"x**2" and similar, so that it's fast. For all other cases, we use the
		Gruntz algorithm (see the gruntz() function).
	**/
	static public function limit(e:Dynamic, z:Dynamic, z0:Dynamic, ?dir:Dynamic):Dynamic;
	/**
		line_integrate(field, Curve, variables)
		
		Compute the line integral.
		
		Examples
		========
		
		>>> from sympy import Curve, line_integrate, E, ln
		>>> from sympy.abc import x, y, t
		>>> C = Curve([E**t + 1, E**t - 1], (t, 0, ln(2)))
		>>> line_integrate(x + y, C, [x, y])
		3*sqrt(2)
		
		See Also
		========
		
		integrate, Integral
	**/
	static public function line_integrate(field:Dynamic, curve:Dynamic, vars:Dynamic):Dynamic;
	/**
		Converts python list of SymPy expressions to a NumPy array.
		
		See Also
		========
		
		matrix2numpy
	**/
	static public function list2numpy(l:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Takes logarithms and combines them using the following rules:
		
		- log(x) + log(y) == log(x*y) if both are not negative
		- a*log(x) == log(x**a) if x is positive and a is real
		
		If ``force`` is True then the assumptions above will be assumed to hold if
		there is no assumption already in place on a quantity. For example, if
		``a`` is imaginary or the argument negative, force will not perform a
		combination but if ``a`` is a symbol with no assumptions the change will
		take place.
		
		Examples
		========
		
		>>> from sympy import Symbol, symbols, log, logcombine, I
		>>> from sympy.abc import a, x, y, z
		>>> logcombine(a*log(x) + log(y) - log(z))
		a*log(x) + log(y) - log(z)
		>>> logcombine(a*log(x) + log(y) - log(z), force=True)
		log(x**a*y/z)
		>>> x,y,z = symbols('x,y,z', positive=True)
		>>> a = Symbol('a', real=True)
		>>> logcombine(a*log(x) + log(y) - log(z))
		log(x**a*y/z)
		
		The transformation is limited to factors and/or terms that
		contain logs, so the result depends on the initial state of
		expansion:
		
		>>> eq = (2 + 3*I)*log(x)
		>>> logcombine(eq, force=True) == eq
		True
		>>> logcombine(eq.expand(), force=True)
		log(x**2) + I*log(x**3)
		
		See Also
		========
		posify: replace all symbols with symbols having positive assumptions
	**/
	static public function logcombine(expr:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Converts an expr to a string of the Wolfram Mathematica code
		
		Examples
		========
		
		>>> from sympy import mathematica_code as mcode, symbols, sin
		>>> x = symbols('x')
		>>> mcode(sin(x).series(x).removeO())
		'(1/120)*x^5 - 1/6*x^3 + x'
	**/
	static public function mathematica_code(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Converts SymPy's matrix to a NumPy array.
		
		See Also
		========
		
		list2numpy
	**/
	static public function matrix2numpy(m:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return the Hadamard product (elementwise product) of A and B
		
		>>> from sympy.matrices import matrix_multiply_elementwise
		>>> from sympy.matrices import Matrix
		>>> A = Matrix([[0, 1, 2], [3, 4, 5]])
		>>> B = Matrix([[1, 10, 100], [100, 10, 1]])
		>>> matrix_multiply_elementwise(A, B)
		Matrix([
		[  0, 10, 200],
		[300, 40,   5]])
		
		See Also
		========
		
		__mul__
	**/
	static public function matrix_multiply_elementwise(A:Dynamic, B:Dynamic):Dynamic;
	static public function matrix_symbols(expr:Dynamic):Dynamic;
	/**
		Compute the Mellin transform `F(s)` of `f(x)`,
		
		.. math :: F(s) = \int_0^\infty x^{s-1} f(x) \mathrm{d}x.
		
		For all "sensible" functions, this converges absolutely in a strip
		  `a < \operatorname{Re}(s) < b`.
		
		The Mellin transform is related via change of variables to the Fourier
		transform, and also to the (bilateral) Laplace transform.
		
		This function returns ``(F, (a, b), cond)``
		where ``F`` is the Mellin transform of ``f``, ``(a, b)`` is the fundamental strip
		(as above), and ``cond`` are auxiliary convergence conditions.
		
		If the integral cannot be computed in closed form, this function returns
		an unevaluated :class:`MellinTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`. If ``noconds=False``,
		then only `F` will be returned (i.e. not ``cond``, and also not the strip
		``(a, b)``).
		
		>>> from sympy.integrals.transforms import mellin_transform
		>>> from sympy import exp
		>>> from sympy.abc import x, s
		>>> mellin_transform(exp(-x), x, s)
		(gamma(s), (0, oo), True)
		
		See Also
		========
		
		inverse_mellin_transform, laplace_transform, fourier_transform
		hankel_transform, inverse_hankel_transform
	**/
	static public function mellin_transform(f:Dynamic, x:Dynamic, s:Dynamic, hints:Dynamic):Dynamic;
	/**
		Computes the minimal polynomial of an algebraic element.
		
		Parameters
		==========
		
		ex : algebraic element expression
		x : independent variable of the minimal polynomial
		
		Options
		=======
		
		compose : if ``True`` ``_minpoly_compose`` is used, if ``False`` the ``groebner`` algorithm
		polys : if ``True`` returns a ``Poly`` object
		domain : ground domain
		
		Notes
		=====
		
		By default ``compose=True``, the minimal polynomial of the subexpressions of ``ex``
		are computed, then the arithmetic operations on them are performed using the resultant
		and factorization.
		If ``compose=False``, a bottom-up algorithm is used with ``groebner``.
		The default algorithm stalls less frequently.
		
		If no ground domain is given, it will be generated automatically from the expression.
		
		Examples
		========
		
		>>> from sympy import minimal_polynomial, sqrt, solve, QQ
		>>> from sympy.abc import x, y
		
		>>> minimal_polynomial(sqrt(2), x)
		x**2 - 2
		>>> minimal_polynomial(sqrt(2), x, domain=QQ.algebraic_field(sqrt(2)))
		x - sqrt(2)
		>>> minimal_polynomial(sqrt(2) + sqrt(3), x)
		x**4 - 10*x**2 + 1
		>>> minimal_polynomial(solve(x**3 + x + 3)[0], x)
		x**3 + x + 3
		>>> minimal_polynomial(sqrt(y), x)
		x**2 - y
	**/
	static public function minimal_polynomial(ex:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Computes the minimal polynomial of an algebraic element.
		
		Parameters
		==========
		
		ex : algebraic element expression
		x : independent variable of the minimal polynomial
		
		Options
		=======
		
		compose : if ``True`` ``_minpoly_compose`` is used, if ``False`` the ``groebner`` algorithm
		polys : if ``True`` returns a ``Poly`` object
		domain : ground domain
		
		Notes
		=====
		
		By default ``compose=True``, the minimal polynomial of the subexpressions of ``ex``
		are computed, then the arithmetic operations on them are performed using the resultant
		and factorization.
		If ``compose=False``, a bottom-up algorithm is used with ``groebner``.
		The default algorithm stalls less frequently.
		
		If no ground domain is given, it will be generated automatically from the expression.
		
		Examples
		========
		
		>>> from sympy import minimal_polynomial, sqrt, solve, QQ
		>>> from sympy.abc import x, y
		
		>>> minimal_polynomial(sqrt(2), x)
		x**2 - 2
		>>> minimal_polynomial(sqrt(2), x, domain=QQ.algebraic_field(sqrt(2)))
		x - sqrt(2)
		>>> minimal_polynomial(sqrt(2) + sqrt(3), x)
		x**4 - 10*x**2 + 1
		>>> minimal_polynomial(solve(x**3 + x + 3)[0], x)
		x**3 + x + 3
		>>> minimal_polynomial(sqrt(y), x)
		x**2 - y
	**/
	static public function minpoly(ex:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Divide all coefficients of ``f`` by ``LC(f)``.
		
		Examples
		========
		
		>>> from sympy import monic
		>>> from sympy.abc import x
		
		>>> monic(3*x**2 + 4*x + 2)
		x**2 + 4*x/3 + 2/3
	**/
	static public function monic(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return a dictionary containing pairs ``{(k1,k2,..,km) : C_kn}``
		where ``C_kn`` are multinomial coefficients such that
		``n=k1+k2+..+km``.
		
		For example:
		
		>>> from sympy.ntheory import multinomial_coefficients
		>>> multinomial_coefficients(2, 5) # indirect doctest
		{(0, 5): 1, (1, 4): 5, (2, 3): 10, (3, 2): 10, (4, 1): 5, (5, 0): 1}
		
		The algorithm is based on the following result:
		
		.. math::
		    \binom{n}{k_1, \ldots, k_m} =
		    \frac{k_1 + 1}{n - k_1} \sum_{i=2}^m \binom{n}{k_1 + 1, \ldots, k_i - 1, \ldots}
		
		Code contributed to Sage by Yann Laigle-Chapuy, copied with permission
		of the author.
		
		See Also
		========
		
		binomial_coefficients_list, binomial_coefficients
	**/
	static public function multinomial_coefficients(m:Dynamic, n:Dynamic):Dynamic;
	/**
		Find the greatest integer m such that p**m divides n.
		
		Examples
		========
		
		>>> from sympy.ntheory import multiplicity
		>>> from sympy.core.numbers import Rational as R
		>>> [multiplicity(5, n) for n in [8, 5, 25, 125, 250]]
		[0, 1, 2, 3, 3]
		>>> multiplicity(3, R(1, 9))
		-2
	**/
	static public function multiplicity(p:Dynamic, n:Dynamic):Dynamic;
	/**
		Returns the order of ``a`` modulo ``n``.
		
		The order of ``a`` modulo ``n`` is the smallest integer
		``k`` such that ``a**k`` leaves a remainder of 1 with ``n``.
		
		Examples
		========
		
		>>> from sympy.ntheory import n_order
		>>> n_order(3, 7)
		6
		>>> n_order(4, 7)
		3
	**/
	static public function n_order(a:Dynamic, n:Dynamic):Dynamic;
	static public var nan : Dynamic;
	/**
		Return the ith prime greater than n.
		
		i must be an integer.
		
		Notes
		=====
		
		Potential primes are located at 6*j +/- 1. This
		property is used during searching.
		
		>>> from sympy import nextprime
		>>> [(i, nextprime(i)) for i in range(10, 15)]
		[(10, 11), (11, 13), (12, 13), (13, 17), (14, 17)]
		>>> nextprime(2, ith=2) # the 2nd prime after 2
		5
		
		See Also
		========
		
		prevprime : Return the largest prime smaller than n
		primerange : Generate all primes in a given range
	**/
	static public function nextprime(n:Dynamic, ?ith:Dynamic):Dynamic;
	/**
		Make all Rationals in expr Floats except those in exponents
		(unless the exponents flag is set to True).
		
		Examples
		========
		
		>>> from sympy.core.function import nfloat
		>>> from sympy.abc import x, y
		>>> from sympy import cos, pi, sqrt
		>>> nfloat(x**4 + x/2 + cos(pi/3) + 1 + sqrt(y))
		x**4 + 0.5*x + sqrt(y) + 1.5
		>>> nfloat(x**4 + sqrt(y), exponent=True)
		x**4.0 + y**0.5
	**/
	static public function nfloat(expr:Dynamic, ?n:Dynamic, ?exponent:Dynamic):Dynamic;
	/**
		Calculate the partition function P(n), i.e. the number of ways that
		n can be written as a sum of positive integers.
		
		P(n) is computed using the Hardy-Ramanujan-Rademacher formula,
		described e.g. at http://mathworld.wolfram.com/PartitionFunctionP.html
		
		The correctness of this implementation has been tested for 10**n
		up to n = 8.
		
		Examples
		========
		
		>>> from sympy.ntheory import npartitions
		>>> npartitions(25)
		1958
	**/
	static public function npartitions(n:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Compute numerical approximations of roots of ``f``.
		
		Examples
		========
		
		>>> from sympy import nroots
		>>> from sympy.abc import x
		
		>>> nroots(x**2 - 3, n=15)
		[-1.73205080756888, 1.73205080756888]
		>>> nroots(x**2 - 3, n=30)
		[-1.73205080756887729352744634151, 1.73205080756887729352744634151]
	**/
	static public function nroots(f:Dynamic, ?n:Dynamic, ?maxsteps:Dynamic, ?cleanup:Dynamic):Dynamic;
	/**
		Find a simple representation for a number or, if there are free symbols or
		if rational=True, then replace Floats with their Rational equivalents. If
		no change is made and rational is not False then Floats will at least be
		converted to Rationals.
		
		For numerical expressions, a simple formula that numerically matches the
		given numerical expression is sought (and the input should be possible
		to evalf to a precision of at least 30 digits).
		
		Optionally, a list of (rationally independent) constants to
		include in the formula may be given.
		
		A lower tolerance may be set to find less exact matches. If no tolerance
		is given then the least precise value will set the tolerance (e.g. Floats
		default to 15 digits of precision, so would be tolerance=10**-15).
		
		With full=True, a more extensive search is performed
		(this is useful to find simpler numbers when the tolerance
		is set low).
		
		Examples
		========
		
		>>> from sympy import nsimplify, sqrt, GoldenRatio, exp, I, exp, pi
		>>> nsimplify(4/(1+sqrt(5)), [GoldenRatio])
		-2 + 2*GoldenRatio
		>>> nsimplify((1/(exp(3*pi*I/5)+1)))
		1/2 - I*sqrt(sqrt(5)/10 + 1/4)
		>>> nsimplify(I**I, [pi])
		exp(-pi/2)
		>>> nsimplify(pi, tolerance=0.01)
		22/7
		
		See Also
		========
		sympy.core.function.nfloat
	**/
	static public function nsimplify(expr:Dynamic, ?constants:Dynamic, ?tolerance:Dynamic, ?full:Dynamic, ?rational:Dynamic):Dynamic;
	/**
		Solve a nonlinear equation system numerically::
		
		    nsolve(f, [args,] x0, modules=['mpmath'], **kwargs)
		
		f is a vector function of symbolic expressions representing the system.
		args are the variables. If there is only one variable, this argument can
		be omitted.
		x0 is a starting vector close to a solution.
		
		Use the modules keyword to specify which modules should be used to
		evaluate the function and the Jacobian matrix. Make sure to use a module
		that supports matrices. For more information on the syntax, please see the
		docstring of lambdify.
		
		Overdetermined systems are supported.
		
		>>> from sympy import Symbol, nsolve
		>>> import sympy
		>>> sympy.mpmath.mp.dps = 15
		>>> x1 = Symbol('x1')
		>>> x2 = Symbol('x2')
		>>> f1 = 3 * x1**2 - 2 * x2**2 - 1
		>>> f2 = x1**2 - 2 * x1 + x2**2 + 2 * x2 - 8
		>>> print(nsolve((f1, f2), (x1, x2), (-1, 1)))
		[-1.19287309935246]
		[ 1.27844411169911]
		
		For one-dimensional functions the syntax is simplified:
		
		>>> from sympy import sin, nsolve
		>>> from sympy.abc import x
		>>> nsolve(sin(x), x, 2)
		3.14159265358979
		>>> nsolve(sin(x), 2)
		3.14159265358979
		
		mpmath.findroot is used, you can find there more extensive documentation,
		especially concerning keyword parameters and available solvers.
	**/
	static public function nsolve(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Construct a polynomial with n-th powers of roots of ``f``.
		
		Examples
		========
		
		>>> from sympy import nth_power_roots_poly, factor, roots
		>>> from sympy.abc import x
		
		>>> f = x**4 - x**2 + 1
		>>> g = factor(nth_power_roots_poly(f, 2))
		
		>>> g
		(x**2 - x + 1)**2
		
		>>> R_f = [ (r**2).expand() for r in roots(f) ]
		>>> R_g = roots(g).keys()
		
		>>> set(R_f) == set(R_g)
		True
	**/
	static public function nth_power_roots_poly(f:Dynamic, n:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		find the solutions to ``x**n = a mod p``
		
		Parameters
		==========
		
		a : integer
		n : positive integer
		p : positive integer
		all_roots : if False returns the smallest root, else the list of roots
		
		Examples
		========
		
		>>> from sympy.ntheory.residue_ntheory import nthroot_mod
		>>> nthroot_mod(11, 4, 19)
		8
		>>> nthroot_mod(11, 4, 19, True)
		[8, 11]
		>>> nthroot_mod(68, 3, 109)
		23
	**/
	static public function nthroot_mod(a:Dynamic, n:Dynamic, p:Dynamic, ?all_roots:Dynamic):Dynamic;
	/**
		Generate an infinite stream of Symbols consisting of a prefix and
		increasing subscripts provided that they do not occur in `exclude`.
		
		Parameters
		==========
		
		prefix : str, optional
		    The prefix to use. By default, this function will generate symbols of
		    the form "x0", "x1", etc.
		
		cls : class, optional
		    The class to use. By default, it uses Symbol, but you can also use Wild or Dummy.
		
		start : int, optional
		    The start number.  By default, it is 0.
		
		Returns
		=======
		
		sym : Symbol
		    The subscripted symbols.
	**/
	static public function numbered_symbols(?prefix:Dynamic, ?cls:Dynamic, ?start:Dynamic, ?exclude:Dynamic, args:Dynamic, assumptions:Dynamic):Dynamic;
	static public function numer(expr:Dynamic):Dynamic;
	/**
		Converts `expr` to a string of Octave (or Matlab) code.
		
		The string uses a subset of the Octave language for Matlab compatibility.
		
		Parameters
		==========
		
		expr : Expr
		    A sympy expression to be converted.
		assign_to : optional
		    When given, the argument is used as the name of the variable to which
		    the expression is assigned.  Can be a string, ``Symbol``,
		    ``MatrixSymbol``, or ``Indexed`` type.  This can be helpful for
		    expressions that generate multi-line statements.
		precision : integer, optional
		    The precision for numbers such as pi  [default=16].
		user_functions : dict, optional
		    A dictionary where keys are ``FunctionClass`` instances and values are
		    their string representations.  Alternatively, the dictionary value can
		    be a list of tuples i.e. [(argument_test, cfunction_string)].  See
		    below for examples.
		human : bool, optional
		    If True, the result is a single string that may contain some constant
		    declarations for the number symbols.  If False, the same information is
		    returned in a tuple of (symbols_to_declare, not_supported_functions,
		    code_text).  [default=True].
		contract: bool, optional
		    If True, ``Indexed`` instances are assumed to obey tensor contraction
		    rules and the corresponding nested loops over indices are generated.
		    Setting contract=False will not generate loops, instead the user is
		    responsible to provide values for the indices in the code.
		    [default=True].
		inline: bool, optional
		    If True, we try to create single-statement code instead of multiple
		    statements.  [default=True].
		
		Examples
		========
		
		>>> from sympy import octave_code, symbols, sin, pi
		>>> x = symbols('x')
		>>> octave_code(sin(x).series(x).removeO())
		'x.^5/120 - x.^3/6 + x'
		
		>>> from sympy import Rational, ceiling, Abs
		>>> x, y, tau = symbols("x, y, tau")
		>>> octave_code((2*tau)**Rational(7, 2))
		'8*sqrt(2)*tau.^(7/2)'
		
		Note that element-wise (Hadamard) operations are used by default between
		symbols.  This is because its very common in Octave to write "vectorized"
		code.  It is harmless if the values are scalars.
		
		>>> octave_code(sin(pi*x*y), assign_to="s")
		's = sin(pi*x.*y);'
		
		If you need a matrix product "*" or matrix power "^", you can specify the
		symbol as a ``MatrixSymbol``.
		
		>>> from sympy import Symbol, MatrixSymbol
		>>> n = Symbol('n', integer=True, positive=True)
		>>> A = MatrixSymbol('A', n, n)
		>>> octave_code(3*pi*A**3)
		'(3*pi)*A^3'
		
		This class uses several rules to decide which symbol to use a product.
		Pure numbers use "*", Symbols use ".*" and MatrixSymbols use "*".
		A HadamardProduct can be used to specify componentwise multiplication ".*"
		of two MatrixSymbols.  There is currently there is no easy way to specify
		scalar symbols, so sometimes the code might have some minor cosmetic
		issues.  For example, suppose x and y are scalars and A is a Matrix, then
		while a human programmer might write "(x^2*y)*A^3", we generate:
		
		>>> octave_code(x**2*y*A**3)
		'(x.^2.*y)*A^3'
		
		Matrices are supported using Octave inline notation.  When using
		``assign_to`` with matrices, the name can be specified either as a string
		or as a ``MatrixSymbol``.  The dimenions must align in the latter case.
		
		>>> from sympy import Matrix, MatrixSymbol
		>>> mat = Matrix([[x**2, sin(x), ceiling(x)]])
		>>> octave_code(mat, assign_to='A')
		'A = [x.^2 sin(x) ceil(x)];'
		
		``Piecewise`` expressions are implemented with logical masking by default.
		Alternatively, you can pass "inline=False" to use if-else conditionals.
		Note that if the ``Piecewise`` lacks a default term, represented by
		``(expr, True)`` then an error will be thrown.  This is to prevent
		generating an expression that may not evaluate to anything.
		
		>>> from sympy import Piecewise
		>>> pw = Piecewise((x + 1, x > 0), (x, True))
		>>> octave_code(pw, assign_to=tau)
		'tau = ((x > 0).*(x + 1) + (~(x > 0)).*(x));'
		
		Note that any expression that can be generated normally can also exist
		inside a Matrix:
		
		>>> mat = Matrix([[x**2, pw, sin(x)]])
		>>> octave_code(mat, assign_to='A')
		'A = [x.^2 ((x > 0).*(x + 1) + (~(x > 0)).*(x)) sin(x)];'
		
		Custom printing can be defined for certain types by passing a dictionary of
		"type" : "function" to the ``user_functions`` kwarg.  Alternatively, the
		dictionary value can be a list of tuples i.e., [(argument_test,
		cfunction_string)].  This can be used to call a custom Octave function.
		
		>>> from sympy import Function
		>>> f = Function('f')
		>>> g = Function('g')
		>>> custom_functions = {
		...   "f": "existing_octave_fcn",
		...   "g": [(lambda x: x.is_Matrix, "my_mat_fcn"),
		...         (lambda x: not x.is_Matrix, "my_fcn")]
		... }
		>>> mat = Matrix([[1, x]])
		>>> octave_code(f(x) + g(x) + g(mat), user_functions=custom_functions)
		'existing_octave_fcn(x) + my_fcn(x) + my_mat_fcn([1 x])'
		
		Support for loops is provided through ``Indexed`` types. With
		``contract=True`` these expressions will be turned into loops, whereas
		``contract=False`` will just print the assignment expression that should be
		looped over:
		>>> from sympy import Eq, IndexedBase, Idx, ccode
		>>> len_y = 5
		>>> y = IndexedBase('y', shape=(len_y,))
		>>> t = IndexedBase('t', shape=(len_y,))
		>>> Dy = IndexedBase('Dy', shape=(len_y-1,))
		>>> i = Idx('i', len_y-1)
		>>> e = Eq(Dy[i], (y[i+1]-y[i])/(t[i+1]-t[i]))
		>>> octave_code(e.rhs, assign_to=e.lhs, contract=False)
		'Dy(i) = (y(i + 1) - y(i))./(t(i + 1) - t(i));'
	**/
	static public function octave_code(expr:Dynamic, ?assign_to:Dynamic, settings:Dynamic):Dynamic;
	/**
		Returns the order of a given differential
		equation with respect to func.
		
		This function is implemented recursively.
		
		Examples
		========
		
		>>> from sympy import Function
		>>> from sympy.solvers.deutils import ode_order
		>>> from sympy.abc import x
		>>> f, g = map(Function, ['f', 'g'])
		>>> ode_order(f(x).diff(x, 2) + f(x).diff(x)**2 +
		... f(x).diff(x), f(x))
		2
		>>> ode_order(f(x).diff(x, 2) + g(x).diff(x, 3), f(x))
		2
		>>> ode_order(f(x).diff(x, 2) + g(x).diff(x, 3), g(x))
		3
	**/
	static public function ode_order(expr:Dynamic, func:Dynamic):Dynamic;
	/**
		Returns a matrix of ones with ``r`` rows and ``c`` columns;
		if ``c`` is omitted a square matrix will be returned.
		
		See Also
		========
		
		zeros
		eye
		diag
	**/
	static public function ones(r:Dynamic, ?c:Dynamic):Dynamic;
	static public var oo : Dynamic;
	/**
		Return an iterator of the seq where keys are used to break ties in
		a conservative fashion: if, after applying a key, there are no ties
		then no other keys will be computed.
		
		Two default keys will be applied if 1) keys are not provided or 2) the
		given keys don't resolve all ties (but only if `default` is True). The
		two keys are `_nodes` (which places smaller expressions before large) and
		`default_sort_key` which (if the `sort_key` for an object is defined
		properly) should resolve any ties.
		
		If ``warn`` is True then an error will be raised if there were no
		keys remaining to break ties. This can be used if it was expected that
		there should be no ties between items that are not identical.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import ordered
		>>> from sympy import count_ops
		>>> from sympy.abc import x, y
		
		The count_ops is not sufficient to break ties in this list and the first
		two items appear in their original order (i.e. the sorting is stable):
		
		>>> list(ordered([y + 2, x + 2, x**2 + y + 3],
		...    count_ops, default=False, warn=False))
		...
		[y + 2, x + 2, x**2 + y + 3]
		
		The default_sort_key allows the tie to be broken:
		
		>>> list(ordered([y + 2, x + 2, x**2 + y + 3]))
		...
		[x + 2, y + 2, x**2 + y + 3]
		
		Here, sequences are sorted by length, then sum:
		
		>>> seq, keys = [[[1, 2, 1], [0, 3, 1], [1, 1, 3], [2], [1]], [
		...    lambda x: len(x),
		...    lambda x: sum(x)]]
		...
		>>> list(ordered(seq, keys, default=False, warn=False))
		[[1], [2], [1, 2, 1], [0, 3, 1], [1, 1, 3]]
		
		If ``warn`` is True, an error will be raised if there were not
		enough keys to break ties:
		
		>>> list(ordered(seq, keys, default=False, warn=True))
		Traceback (most recent call last):
		...
		ValueError: not enough keys to break ties
		
		
		Notes
		=====
		
		The decorated sort is one of the fastest ways to sort a sequence for
		which special item comparison is desired: the sequence is decorated,
		sorted on the basis of the decoration (e.g. making all letters lower
		case) and then undecorated. If one wants to break ties for items that
		have the same decorated value, a second key can be used. But if the
		second key is expensive to compute then it is inefficient to decorate
		all items with both keys: only those items having identical first key
		values need to be decorated. This function applies keys successively
		only when needed to break ties. By yielding an iterator, use of the
		tie-breaker is delayed as long as possible.
		
		This function is best used in cases when use of the first key is
		expected to be a good hashing function; if there are no unique hashes
		from application of a key then that key should not have been used. The
		exception, however, is that even if there are many collisions, if the
		first group is small and one does not need to process all items in the
		list then time will not be wasted sorting what one was not interested
		in. For example, if one were looking for the minimum in a list and
		there were several criteria used to define the sort order, then this
		function would be good at returning that quickly if the first group
		of candidates is small relative to the number of items being processed.
	**/
	static public function ordered(seq:Dynamic, ?keys:Dynamic, ?_default:Dynamic, ?warn:Dynamic):Dynamic;
	/**
		Prints expr using the pager, in pretty form.
		
		This invokes a pager command using pydoc. Lines are not wrapped
		automatically. This routine is meant to be used with a pager that allows
		sideways scrolling, like ``less -S``.
		
		Parameters are the same as for ``pretty_print``. If you wish to wrap lines,
		pass ``num_columns=None`` to auto-detect the width of the terminal.
	**/
	static public function pager_print(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Construct polynomials from expressions. 
	**/
	static public function parallel_poly_from_expr(exprs:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Separate variables in partial differential equation either by additive
		or multiplicative separation approach. It tries to rewrite an equation so
		that one of the specified variables occurs on a different side of the
		equation than the others.
		
		:param eq: Partial differential equation
		
		:param fun: Original function F(x, y, z)
		
		:param sep: List of separated functions [X(x), u(y, z)]
		
		:param strategy: Separation strategy. You can choose between additive
		    separation ('add') and multiplicative separation ('mul') which is
		    default.
		
		Examples
		========
		
		>>> from sympy import E, Eq, Function, pde_separate, Derivative as D
		>>> from sympy.abc import x, t
		>>> u, X, T = map(Function, 'uXT')
		
		>>> eq = Eq(D(u(x, t), x), E**(u(x, t))*D(u(x, t), t))
		>>> pde_separate(eq, u(x, t), [X(x), T(t)], strategy='add')
		[exp(-X(x))*Derivative(X(x), x), exp(T(t))*Derivative(T(t), t)]
		
		>>> eq = Eq(D(u(x, t), x, 2), D(u(x, t), t, 2))
		>>> pde_separate(eq, u(x, t), [X(x), T(t)], strategy='mul')
		[Derivative(X(x), x, x)/X(x), Derivative(T(t), t, t)/T(t)]
		
		See Also
		========
		pde_separate_add, pde_separate_mul
	**/
	static public function pde_separate(eq:Dynamic, fun:Dynamic, sep:Dynamic, ?strategy:Dynamic):Dynamic;
	/**
		Helper function for searching additive separable solutions.
		
		Consider an equation of two independent variables x, y and a dependent
		variable w, we look for the product of two functions depending on different
		arguments:
		
		`w(x, y, z) = X(x) + y(y, z)`
		
		Examples
		========
		
		>>> from sympy import E, Eq, Function, pde_separate_add, Derivative as D
		>>> from sympy.abc import x, t
		>>> u, X, T = map(Function, 'uXT')
		
		>>> eq = Eq(D(u(x, t), x), E**(u(x, t))*D(u(x, t), t))
		>>> pde_separate_add(eq, u(x, t), [X(x), T(t)])
		[exp(-X(x))*Derivative(X(x), x), exp(T(t))*Derivative(T(t), t)]
	**/
	static public function pde_separate_add(eq:Dynamic, fun:Dynamic, sep:Dynamic):Dynamic;
	/**
		Helper function for searching multiplicative separable solutions.
		
		Consider an equation of two independent variables x, y and a dependent
		variable w, we look for the product of two functions depending on different
		arguments:
		
		`w(x, y, z) = X(x)*u(y, z)`
		
		Examples
		========
		
		>>> from sympy import Function, Eq, pde_separate_mul, Derivative as D
		>>> from sympy.abc import x, y
		>>> u, X, Y = map(Function, 'uXY')
		
		>>> eq = Eq(D(u(x, y), x, 2), D(u(x, y), y, 2))
		>>> pde_separate_mul(eq, u(x, y), [X(x), Y(y)])
		[Derivative(X(x), x, x)/X(x), Derivative(Y(y), y, y)/Y(y)]
	**/
	static public function pde_separate_mul(eq:Dynamic, fun:Dynamic, sep:Dynamic):Dynamic;
	/**
		Compute polynomial pseudo-division of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import pdiv
		>>> from sympy.abc import x
		
		>>> pdiv(x**2 + 1, 2*x - 4)
		(2*x + 4, 20)
	**/
	static public function pdiv(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Solves any (supported) kind of partial differential equation.
		
		**Usage**
		
		    pdsolve(eq, f(x,y), hint) -> Solve partial differential equation
		    eq for function f(x,y), using method hint.
		
		**Details**
		
		    ``eq`` can be any supported partial differential equation (see
		        the pde docstring for supported methods).  This can either
		        be an Equality, or an expression, which is assumed to be
		        equal to 0.
		
		    ``f(x,y)`` is a function of two variables whose derivatives in that
		        variable make up the partial differential equation. In many
		        cases it is not necessary to provide this; it will be autodetected
		        (and an error raised if it couldn't be detected).
		
		    ``hint`` is the solving method that you want pdsolve to use.  Use
		        classify_pde(eq, f(x,y)) to get all of the possible hints for
		        a PDE.  The default hint, 'default', will use whatever hint
		        is returned first by classify_pde().  See Hints below for
		        more options that you can use for hint.
		
		    ``solvefun`` is the convention used for arbitrary functions returned
		        by the PDE solver. If not set by the user, it is set by default
		        to be F.
		
		**Hints**
		
		    Aside from the various solving methods, there are also some
		    meta-hints that you can pass to pdsolve():
		
		    "default":
		            This uses whatever hint is returned first by
		            classify_pde(). This is the default argument to
		            pdsolve().
		
		    "all":
		            To make pdsolve apply all relevant classification hints,
		            use pdsolve(PDE, func, hint="all").  This will return a
		            dictionary of hint:solution terms.  If a hint causes
		            pdsolve to raise the NotImplementedError, value of that
		            hint's key will be the exception object raised.  The
		            dictionary will also include some special keys:
		
		            - order: The order of the PDE.  See also ode_order() in
		              deutils.py
		            - default: The solution that would be returned by
		              default.  This is the one produced by the hint that
		              appears first in the tuple returned by classify_pde().
		
		    "all_Integral":
		            This is the same as "all", except if a hint also has a
		            corresponding "_Integral" hint, it only returns the
		            "_Integral" hint.  This is useful if "all" causes
		            pdsolve() to hang because of a difficult or impossible
		            integral.  This meta-hint will also be much faster than
		            "all", because integrate() is an expensive routine.
		
		    See also the classify_pde() docstring for more info on hints,
		    and the pde docstring for a list of all supported hints.
		
		**Tips**
		    - You can declare the derivative of an unknown function this way:
		        >>> from sympy import Function, Derivative
		        >>> from sympy.abc import x, y # x and y are the independent variables
		        >>> f = Function("f")(x, y) # f is a function of x and y
		        >>> # fx will be the partial derivative of f with respect to x
		        >>> fx = Derivative(f, x)
		        >>> # fy will be the partial derivative of f with respect to y
		        >>> fy = Derivative(f, y)
		
		    - See test_pde.py for many tests, which serves also as a set of
		      examples for how to use pdsolve().
		    - pdsolve always returns an Equality class (except for the case
		      when the hint is "all" or "all_Integral"). Note that it is not possible
		      to get an explicit solution for f(x, y) as in the case of ODE's
		    - Do help(pde.pde_hintname) to get help more information on a
		      specific hint
		
		
		Examples
		========
		
		>>> from sympy.solvers.pde import pdsolve
		>>> from sympy import Function, diff, Eq
		>>> from sympy.abc import x, y
		>>> f = Function('f')
		>>> u = f(x, y)
		>>> ux = u.diff(x)
		>>> uy = u.diff(y)
		>>> eq = Eq(1 + (2*(ux/u)) + (3*(uy/u)))
		>>> pdsolve(eq)
		f(x, y) == F(3*x - 2*y)*exp(-2*x/13 - 3*y/13)
	**/
	static public function pdsolve(eq:Dynamic, ?func:Dynamic, ?hint:Dynamic, ?dict:Dynamic, ?solvefun:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return ``(b, e)`` such that ``n`` == ``b**e`` if ``n`` is a
		perfect power; otherwise return ``False``.
		
		By default, the base is recursively decomposed and the exponents
		collected so the largest possible ``e`` is sought. If ``big=False``
		then the smallest possible ``e`` (thus prime) will be chosen.
		
		If ``candidates`` for exponents are given, they are assumed to be sorted
		and the first one that is larger than the computed maximum will signal
		failure for the routine.
		
		If ``factor=True`` then simultaneous factorization of n is attempted
		since finding a factor indicates the only possible root for n. This
		is True by default since only a few small factors will be tested in
		the course of searching for the perfect power.
		
		Examples
		========
		
		>>> from sympy import perfect_power
		>>> perfect_power(16)
		(2, 4)
		>>> perfect_power(16, big = False)
		(4, 2)
	**/
	static public function perfect_power(n:Dynamic, ?candidates:Dynamic, ?big:Dynamic, ?factor:Dynamic):Dynamic;
	/**
		Compute polynomial exact pseudo-quotient of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import pexquo
		>>> from sympy.abc import x
		
		>>> pexquo(x**2 - 1, 2*x - 2)
		2*x + 2
		
		>>> pexquo(x**2 + 1, 2*x - 4)
		Traceback (most recent call last):
		...
		ExactQuotientFailed: 2*x - 4 does not divide x**2 + 1
	**/
	static public function pexquo(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		Takes an expression containing a piecewise function and returns the
		expression in piecewise form.
		
		Examples
		========
		
		>>> from sympy import Piecewise, piecewise_fold, sympify as S
		>>> from sympy.abc import x
		>>> p = Piecewise((x, x < 1), (1, S(1) <= x))
		>>> piecewise_fold(x*p)
		Piecewise((x**2, x < 1), (x, 1 <= x))
		
		See Also
		========
		
		Piecewise
	**/
	static public function piecewise_fold(expr:Dynamic):Dynamic;
	/**
		Plots a function of a single variable and returns an instance of
		the ``Plot`` class (also, see the description of the
		``show`` keyword argument below).
		
		The plotting uses an adaptive algorithm which samples recursively to
		accurately plot the plot. The adaptive algorithm uses a random point near
		the midpoint of two points that has to be further sampled. Hence the same
		plots can appear slightly different.
		
		Usage
		=====
		
		Single Plot
		
		``plot(expr, range, **kwargs)``
		
		If the range is not specified, then a default range of (-10, 10) is used.
		
		Multiple plots with same range.
		
		``plot(expr1, expr2, ..., range, **kwargs)``
		
		If the range is not specified, then a default range of (-10, 10) is used.
		
		Multiple plots with different ranges.
		
		``plot((expr1, range), (expr2, range), ..., **kwargs)``
		
		Range has to be specified for every expression.
		
		Default range may change in the future if a more advanced default range
		detection algorithm is implemented.
		
		Arguments
		=========
		
		``expr`` : Expression representing the function of single variable
		
		``range``: (x, 0, 5), A 3-tuple denoting the range of the free variable.
		
		Keyword Arguments
		=================
		
		Arguments for ``plot`` function:
		
		``show``: Boolean. The default value is set to ``True``. Set show to
		``False`` and the function will not display the plot. The returned
		instance of the ``Plot`` class can then be used to save or display
		the plot by calling the ``save()`` and ``show()`` methods
		respectively.
		
		Arguments for ``LineOver1DRangeSeries`` class:
		
		``adaptive``: Boolean. The default value is set to True. Set adaptive to False and
		specify ``nb_of_points`` if uniform sampling is required.
		
		``depth``: int Recursion depth of the adaptive algorithm. A depth of value ``n``
		samples a maximum of `2^{n}` points.
		
		``nb_of_points``: int. Used when the ``adaptive`` is set to False. The function
		is uniformly sampled at ``nb_of_points`` number of points.
		
		Aesthetics options:
		
		``line_color``: float. Specifies the color for the plot.
		See ``Plot`` to see how to set color for the plots.
		
		If there are multiple plots, then the same series series are applied to
		all the plots. If you want to set these options separately, you can index
		the ``Plot`` object returned and set it.
		
		Arguments for ``Plot`` class:
		
		``title`` : str. Title of the plot. It is set to the latex representation of
		the expression, if the plot has only one expression.
		
		``xlabel`` : str. Label for the x-axis.
		
		``ylabel`` : str. Label for the y-axis.
		
		``xscale``: {'linear', 'log'} Sets the scaling of the x-axis.
		
		``yscale``: {'linear', 'log'} Sets the scaling if the y-axis.
		
		``axis_center``: tuple of two floats denoting the coordinates of the center or
		{'center', 'auto'}
		
		``xlim`` : tuple of two floats, denoting the x-axis limits.
		
		``ylim`` : tuple of two floats, denoting the y-axis limits.
		
		Examples
		========
		
		>>> from sympy import symbols
		>>> from sympy.plotting import plot
		>>> x = symbols('x')
		
		Single Plot
		
		>>> plot(x**2, (x, -5, 5))
		Plot object containing:
		[0]: cartesian line: x**2 for x over (-5.0, 5.0)
		
		Multiple plots with single range.
		
		>>> plot(x, x**2, x**3, (x, -5, 5))
		Plot object containing:
		[0]: cartesian line: x for x over (-5.0, 5.0)
		[1]: cartesian line: x**2 for x over (-5.0, 5.0)
		[2]: cartesian line: x**3 for x over (-5.0, 5.0)
		
		
		Multiple plots with different ranges.
		
		>>> plot((x**2, (x, -6, 6)), (x, (x, -5, 5)))
		Plot object containing:
		[0]: cartesian line: x**2 for x over (-6.0, 6.0)
		[1]: cartesian line: x for x over (-5.0, 5.0)
		
		No adaptive sampling.
		
		>>> plot(x**2, adaptive=False, nb_of_points=400)
		Plot object containing:
		[0]: cartesian line: x**2 for x over (-10.0, 10.0)
		
		See Also
		========
		
		Plot, LineOver1DRangeSeries.
	**/
	static public function plot(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var plot_backends : Dynamic;
	/**
		A plot function to plot implicit equations / inequalities.
		
		Arguments
		=========
		
		- ``expr`` : The equation / inequality that is to be plotted.
		- ``x_var`` (optional) : symbol to plot on x-axis or tuple giving symbol
		  and range as ``(symbol, xmin, xmax)``
		- ``y_var`` (optional) : symbol to plot on y-axis or tuple giving symbol
		  and range as ``(symbol, ymin, ymax)``
		
		If neither ``x_var`` nor ``y_var`` are given then the free symbols in the
		expression will be assigned in the order they are sorted.
		
		The following keyword arguments can also be used:
		
		- ``adaptive``. Boolean. The default value is set to True. It has to be
		    set to False if you want to use a mesh grid.
		
		- ``depth`` integer. The depth of recursion for adaptive mesh grid.
		    Default value is 0. Takes value in the range (0, 4).
		
		- ``points`` integer. The number of points if adaptive mesh grid is not
		    used. Default value is 200.
		
		- ``title`` string .The title for the plot.
		
		- ``xlabel`` string. The label for the x-axis
		
		- ``ylabel`` string. The label for the y-axis
		
		plot_implicit, by default, uses interval arithmetic to plot functions. If
		the expression cannot be plotted using interval arithmetic, it defaults to
		a generating a contour using a mesh grid of fixed number of points. By
		setting adaptive to False, you can force plot_implicit to use the mesh
		grid. The mesh grid method can be effective when adaptive plotting using
		interval arithmetic, fails to plot with small line width.
		
		Examples:
		=========
		
		Plot expressions:
		
		>>> from sympy import plot_implicit, cos, sin, symbols, Eq, And
		>>> x, y = symbols('x y')
		
		Without any ranges for the symbols in the expression
		
		>>> p1 = plot_implicit(Eq(x**2 + y**2, 5))
		
		With the range for the symbols
		
		>>> p2 = plot_implicit(Eq(x**2 + y**2, 3),
		...         (x, -3, 3), (y, -3, 3))
		
		With depth of recursion as argument.
		
		>>> p3 = plot_implicit(Eq(x**2 + y**2, 5),
		...         (x, -4, 4), (y, -4, 4), depth = 2)
		
		Using mesh grid and not using adaptive meshing.
		
		>>> p4 = plot_implicit(Eq(x**2 + y**2, 5),
		...         (x, -5, 5), (y, -2, 2), adaptive=False)
		
		Using mesh grid with number of points as input.
		
		>>> p5 = plot_implicit(Eq(x**2 + y**2, 5),
		...         (x, -5, 5), (y, -2, 2),
		...         adaptive=False, points=400)
		
		Plotting regions.
		
		>>> p6 = plot_implicit(y > x**2)
		
		Plotting Using boolean conjunctions.
		
		>>> p7 = plot_implicit(And(y > x, y > -x))
		
		When plotting an expression with a single variable (y - 1, for example),
		specify the x or the y variable explicitly:
		
		>>> p8 = plot_implicit(y - 1, y_var=y)
		>>> p9 = plot_implicit(x - 1, x_var=x)
	**/
	static public function plot_implicit(expr:Dynamic, ?x_var:Dynamic, ?y_var:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Turn all numbers in eq into their polar equivalents (under the standard
		choice of argument).
		
		Note that no attempt is made to guess a formal convention of adding
		polar numbers, expressions like 1 + x will generally not be altered.
		
		Note also that this function does not promote exp(x) to exp_polar(x).
		
		If ``subs`` is True, all symbols which are not already polar will be
		substituted for polar dummies; in this case the function behaves much
		like posify.
		
		If ``lift`` is True, both addition statements and non-polar symbols are
		changed to their polar_lift()ed versions.
		Note that lift=True implies subs=False.
		
		>>> from sympy import polarify, sin, I
		>>> from sympy.abc import x, y
		>>> expr = (-x)**y
		>>> expr.expand()
		(-x)**y
		>>> polarify(expr)
		((_x*exp_polar(I*pi))**_y, {_x: x, _y: y})
		>>> polarify(expr)[0].expand()
		_x**_y*exp_polar(_y*I*pi)
		>>> polarify(x, lift=True)
		polar_lift(x)
		>>> polarify(x*(1+y), lift=True)
		polar_lift(x)*polar_lift(y + 1)
		
		Adds are treated carefully:
		
		>>> polarify(1 + sin((1 + I)*x))
		(sin(_x*polar_lift(1 + I)) + 1, {_x: x})
	**/
	static public function polarify(eq:Dynamic, ?subs:Dynamic, ?lift:Dynamic):Dynamic;
	/**
		Use Pollard's p-1 method to try to extract a nontrivial factor
		of ``n``. Either a divisor (perhaps composite) or ``None`` is returned.
		
		The value of ``a`` is the base that is used in the test gcd(a**M - 1, n).
		The default is 2.  If ``retries`` > 0 then if no factor is found after the
		first attempt, a new ``a`` will be generated randomly (using the ``seed``)
		and the process repeated.
		
		Note: the value of M is lcm(1..B) = reduce(ilcm, range(2, B + 1)).
		
		A search is made for factors next to even numbers having a power smoothness
		less than ``B``. Choosing a larger B increases the likelihood of finding a
		larger factor but takes longer. Whether a factor of n is found or not
		depends on ``a`` and the power smoothness of the even mumber just less than
		the factor p (hence the name p - 1).
		
		Although some discussion of what constitutes a good ``a`` some
		descriptions are hard to interpret. At the modular.math site referenced
		below it is stated that if gcd(a**M - 1, n) = N then a**M % q**r is 1
		for every prime power divisor of N. But consider the following:
		
		    >>> from sympy.ntheory.factor_ import smoothness_p, pollard_pm1
		    >>> n=257*1009
		    >>> smoothness_p(n)
		    (-1, [(257, (1, 2, 256)), (1009, (1, 7, 16))])
		
		So we should (and can) find a root with B=16:
		
		    >>> pollard_pm1(n, B=16, a=3)
		    1009
		
		If we attempt to increase B to 256 we find that it doesn't work:
		
		    >>> pollard_pm1(n, B=256)
		    >>>
		
		But if the value of ``a`` is changed we find that only multiples of
		257 work, e.g.:
		
		    >>> pollard_pm1(n, B=256, a=257)
		    1009
		
		Checking different ``a`` values shows that all the ones that didn't
		work had a gcd value not equal to ``n`` but equal to one of the
		factors:
		
		    >>> from sympy.core.numbers import ilcm, igcd
		    >>> from sympy import factorint, Pow
		    >>> M = 1
		    >>> for i in range(2, 256):
		    ...     M = ilcm(M, i)
		    ...
		    >>> set([igcd(pow(a, M, n) - 1, n) for a in range(2, 256) if
		    ...      igcd(pow(a, M, n) - 1, n) != n])
		    set([1009])
		
		But does aM % d for every divisor of n give 1?
		
		    >>> aM = pow(255, M, n)
		    >>> [(d, aM%Pow(*d.args)) for d in factorint(n, visual=True).args]
		    [(257**1, 1), (1009**1, 1)]
		
		No, only one of them. So perhaps the principle is that a root will
		be found for a given value of B provided that:
		
		1) the power smoothness of the p - 1 value next to the root
		   does not exceed B
		2) a**M % p != 1 for any of the divisors of n.
		
		By trying more than one ``a`` it is possible that one of them
		will yield a factor.
		
		Examples
		========
		
		With the default smoothness bound, this number can't be cracked:
		
		    >>> from sympy.ntheory import pollard_pm1, primefactors
		    >>> pollard_pm1(21477639576571)
		
		Increasing the smoothness bound helps:
		
		    >>> pollard_pm1(21477639576571, B=2000)
		    4410317
		
		Looking at the smoothness of the factors of this number we find:
		
		    >>> from sympy.utilities import flatten
		    >>> from sympy.ntheory.factor_ import smoothness_p, factorint
		    >>> print(smoothness_p(21477639576571, visual=1))
		    p**i=4410317**1 has p-1 B=1787, B-pow=1787
		    p**i=4869863**1 has p-1 B=2434931, B-pow=2434931
		
		The B and B-pow are the same for the p - 1 factorizations of the divisors
		because those factorizations had a very large prime factor:
		
		    >>> factorint(4410317 - 1)
		    {2: 2, 617: 1, 1787: 1}
		    >>> factorint(4869863-1)
		    {2: 1, 2434931: 1}
		
		Note that until B reaches the B-pow value of 1787, the number is not cracked;
		
		    >>> pollard_pm1(21477639576571, B=1786)
		    >>> pollard_pm1(21477639576571, B=1787)
		    4410317
		
		The B value has to do with the factors of the number next to the divisor,
		not the divisors themselves. A worst case scenario is that the number next
		to the factor p has a large prime divisisor or is a perfect power. If these
		conditions apply then the power-smoothness will be about p/2 or p. The more
		realistic is that there will be a large prime factor next to p requiring
		a B value on the order of p/2. Although primes may have been searched for
		up to this level, the p/2 is a factor of p - 1, something that we don't
		know. The modular.math reference below states that 15% of numbers in the
		range of 10**15 to 15**15 + 10**4 are 10**6 power smooth so a B of 10**6
		will fail 85% of the time in that range. From 10**8 to 10**8 + 10**3 the
		percentages are nearly reversed...but in that range the simple trial
		division is quite fast.
		
		References
		==========
		
		- Richard Crandall & Carl Pomerance (2005), "Prime Numbers:
		  A Computational Perspective", Springer, 2nd edition, 236-238
		- http://modular.math.washington.edu/edu/2007/spring/ent/ent-html/node81.html
		- http://www.cs.toronto.edu/~yuvalf/Factorization.pdf
	**/
	static public function pollard_pm1(n:Dynamic, ?B:Dynamic, ?a:Dynamic, ?retries:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Use Pollard's rho method to try to extract a nontrivial factor
		of ``n``. The returned factor may be a composite number. If no
		factor is found, ``None`` is returned.
		
		The algorithm generates pseudo-random values of x with a generator
		function, replacing x with F(x). If F is not supplied then the
		function x**2 + ``a`` is used. The first value supplied to F(x) is ``s``.
		Upon failure (if ``retries`` is > 0) a new ``a`` and ``s`` will be
		supplied; the ``a`` will be ignored if F was supplied.
		
		The sequence of numbers generated by such functions generally have a
		a lead-up to some number and then loop around back to that number and
		begin to repeat the sequence, e.g. 1, 2, 3, 4, 5, 3, 4, 5 -- this leader
		and loop look a bit like the Greek letter rho, and thus the name, 'rho'.
		
		For a given function, very different leader-loop values can be obtained
		so it is a good idea to allow for retries:
		
		>>> from sympy.ntheory.generate import cycle_length
		>>> n = 16843009
		>>> F = lambda x:(2048*pow(x, 2, n) + 32767) % n
		>>> for s in range(5):
		...     print('loop length = %4i; leader length = %3i' % next(cycle_length(F, s)))
		...
		loop length = 2489; leader length =  42
		loop length =   78; leader length = 120
		loop length = 1482; leader length =  99
		loop length = 1482; leader length = 285
		loop length = 1482; leader length = 100
		
		Here is an explicit example where there is a two element leadup to
		a sequence of 3 numbers (11, 14, 4) that then repeat:
		
		>>> x=2
		>>> for i in range(9):
		...     x=(x**2+12)%17
		...     print(x)
		...
		16
		13
		11
		14
		4
		11
		14
		4
		11
		>>> next(cycle_length(lambda x: (x**2+12)%17, 2))
		(3, 2)
		>>> list(cycle_length(lambda x: (x**2+12)%17, 2, values=True))
		[16, 13, 11, 14, 4]
		
		Instead of checking the differences of all generated values for a gcd
		with n, only the kth and 2*kth numbers are checked, e.g. 1st and 2nd,
		2nd and 4th, 3rd and 6th until it has been detected that the loop has been
		traversed. Loops may be many thousands of steps long before rho finds a
		factor or reports failure. If ``max_steps`` is specified, the iteration
		is cancelled with a failure after the specified number of steps.
		
		Examples
		========
		
		>>> from sympy import pollard_rho
		>>> n=16843009
		>>> F=lambda x:(2048*pow(x,2,n) + 32767) % n
		>>> pollard_rho(n, F=F)
		257
		
		Use the default setting with a bad value of ``a`` and no retries:
		
		>>> pollard_rho(n, a=n-2, retries=0)
		
		If retries is > 0 then perhaps the problem will correct itself when
		new values are generated for a:
		
		>>> pollard_rho(n, a=n-2, retries=1)
		257
		
		References
		==========
		
		- Richard Crandall & Carl Pomerance (2005), "Prime Numbers:
		  A Computational Perspective", Springer, 2nd edition, 229-231
	**/
	static public function pollard_rho(n:Dynamic, ?s:Dynamic, ?a:Dynamic, ?retries:Dynamic, ?seed:Dynamic, ?max_steps:Dynamic, ?F:Dynamic):Dynamic;
	/**
		Efficiently transform an expression into a polynomial.
		
		Examples
		========
		
		>>> from sympy import poly
		>>> from sympy.abc import x
		
		>>> poly(x*(x**2 + x - 1)**2)
		Poly(x**5 + 2*x**4 - x**3 - 2*x**2 + x, x, domain='ZZ')
	**/
	static public function poly(expr:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Construct a polynomial from an expression. 
	**/
	static public function poly_from_expr(expr:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return eq (with generic symbols made positive) and a restore
		dictionary.
		
		Any symbol that has positive=None will be replaced with a positive dummy
		symbol having the same name. This replacement will allow more symbolic
		processing of expressions, especially those involving powers and
		logarithms.
		
		A dictionary that can be sent to subs to restore eq to its original
		symbols is also returned.
		
		>>> from sympy import posify, Symbol, log
		>>> from sympy.abc import x
		>>> posify(x + Symbol('p', positive=True) + Symbol('n', negative=True))
		(_x + n + p, {_x: x})
		
		>> log(1/x).expand() # should be log(1/x) but it comes back as -log(x)
		log(1/x)
		
		>>> log(posify(1/x)[0]).expand() # take [0] and ignore replacements
		-log(_x)
		>>> eq, rep = posify(1/x)
		>>> log(eq).expand().subs(rep)
		-log(x)
		>>> posify([x, 1 + x])
		([_x, _x + 1], {_x: x})
	**/
	static public function posify(eq:Dynamic):Dynamic;
	/**
		Generate all postfixes of a sequence.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import postfixes
		
		>>> list(postfixes([1,2,3,4]))
		[[4], [3, 4], [2, 3, 4], [1, 2, 3, 4]]
	**/
	static public function postfixes(seq:Dynamic):Dynamic;
	/**
		Do a postorder traversal of a tree.
		
		This generator recursively yields nodes that it has visited in a postorder
		fashion. That is, it descends through the tree depth-first to yield all of
		a node's children's postorder traversal before yielding the node itself.
		
		Parameters
		==========
		
		node : sympy expression
		    The expression to traverse.
		keys : (default None) sort key(s)
		    The key(s) used to sort args of Basic objects. When None, args of Basic
		    objects are processed in arbitrary order. If key is defined, it will
		    be passed along to ordered() as the only key(s) to use to sort the
		    arguments; if ``key`` is simply True then the default keys of
		    ``ordered`` will be used (node count and default_sort_key).
		
		Yields
		======
		subtree : sympy expression
		    All of the subtrees in the tree.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import postorder_traversal
		>>> from sympy.abc import w, x, y, z
		
		The nodes are returned in the order that they are encountered unless key
		is given; simply passing key=True will guarantee that the traversal is
		unique.
		
		>>> list(postorder_traversal(w + (x + y)*z)) # doctest: +SKIP
		[z, y, x, x + y, z*(x + y), w, w + z*(x + y)]
		>>> list(postorder_traversal(w + (x + y)*z, keys=True))
		[w, z, x, y, x + y, z*(x + y), w + z*(x + y)]
	**/
	static public function postorder_traversal(node:Dynamic, ?keys:Dynamic):Dynamic;
	/**
		Collect exponents on powers as assumptions allow.
		
		Given ``(bb**be)**e``, this can be simplified as follows:
		    * if ``bb`` is positive, or
		    * ``e`` is an integer, or
		    * ``|be| < 1`` then this simplifies to ``bb**(be*e)``
		
		Given a product of powers raised to a power, ``(bb1**be1 *
		bb2**be2...)**e``, simplification can be done as follows:
		
		- if e is positive, the gcd of all bei can be joined with e;
		- all non-negative bb can be separated from those that are negative
		  and their gcd can be joined with e; autosimplification already
		  handles this separation.
		- integer factors from powers that have integers in the denominator
		  of the exponent can be removed from any term and the gcd of such
		  integers can be joined with e
		
		Setting ``force`` to True will make symbols that are not explicitly
		negative behave as though they are positive, resulting in more
		denesting.
		
		Setting ``polar`` to True will do simplifications on the Riemann surface of
		the logarithm, also resulting in more denestings.
		
		When there are sums of logs in exp() then a product of powers may be
		obtained e.g. ``exp(3*(log(a) + 2*log(b)))`` - > ``a**3*b**6``.
		
		Examples
		========
		
		>>> from sympy.abc import a, b, x, y, z
		>>> from sympy import Symbol, exp, log, sqrt, symbols, powdenest
		
		>>> powdenest((x**(2*a/3))**(3*x))
		(x**(2*a/3))**(3*x)
		>>> powdenest(exp(3*x*log(2)))
		2**(3*x)
		
		Assumptions may prevent expansion:
		
		>>> powdenest(sqrt(x**2))
		sqrt(x**2)
		
		>>> p = symbols('p', positive=True)
		>>> powdenest(sqrt(p**2))
		p
		
		No other expansion is done.
		
		>>> i, j = symbols('i,j', integer=True)
		>>> powdenest((x**x)**(i + j)) # -X-> (x**x)**i*(x**x)**j
		x**(x*(i + j))
		
		But exp() will be denested by moving all non-log terms outside of
		the function; this may result in the collapsing of the exp to a power
		with a different base:
		
		>>> powdenest(exp(3*y*log(x)))
		x**(3*y)
		>>> powdenest(exp(y*(log(a) + log(b))))
		(a*b)**y
		>>> powdenest(exp(3*(log(a) + log(b))))
		a**3*b**3
		
		If assumptions allow, symbols can also be moved to the outermost exponent:
		
		>>> i = Symbol('i', integer=True)
		>>> powdenest(((x**(2*i))**(3*y))**x)
		((x**(2*i))**(3*y))**x
		>>> powdenest(((x**(2*i))**(3*y))**x, force=True)
		x**(6*i*x*y)
		
		>>> powdenest(((x**(2*a/3))**(3*y/i))**x)
		((x**(2*a/3))**(3*y/i))**x
		>>> powdenest((x**(2*i)*y**(4*i))**z, force=True)
		(x*y**2)**(2*i*z)
		
		>>> n = Symbol('n', negative=True)
		
		>>> powdenest((x**i)**y, force=True)
		x**(i*y)
		>>> powdenest((n**i)**x, force=True)
		(n**i)**x
	**/
	static public function powdenest(eq:Dynamic, ?force:Dynamic, ?polar:Dynamic):Dynamic;
	/**
		reduces expression by combining powers with similar bases and exponents.
		
		Notes
		=====
		
		If deep is True then powsimp() will also simplify arguments of
		functions. By default deep is set to False.
		
		If force is True then bases will be combined without checking for
		assumptions, e.g. sqrt(x)*sqrt(y) -> sqrt(x*y) which is not true
		if x and y are both negative.
		
		You can make powsimp() only combine bases or only combine exponents by
		changing combine='base' or combine='exp'.  By default, combine='all',
		which does both.  combine='base' will only combine::
		
		     a   a          a                          2x      x
		    x * y  =>  (x*y)   as well as things like 2   =>  4
		
		and combine='exp' will only combine
		::
		
		     a   b      (a + b)
		    x * x  =>  x
		
		combine='exp' will strictly only combine exponents in the way that used
		to be automatic.  Also use deep=True if you need the old behavior.
		
		When combine='all', 'exp' is evaluated first.  Consider the first
		example below for when there could be an ambiguity relating to this.
		This is done so things like the second example can be completely
		combined.  If you want 'base' combined first, do something like
		powsimp(powsimp(expr, combine='base'), combine='exp').
		
		Examples
		========
		
		>>> from sympy import powsimp, exp, log, symbols
		>>> from sympy.abc import x, y, z, n
		>>> powsimp(x**y*x**z*y**z, combine='all')
		x**(y + z)*y**z
		>>> powsimp(x**y*x**z*y**z, combine='exp')
		x**(y + z)*y**z
		>>> powsimp(x**y*x**z*y**z, combine='base', force=True)
		x**y*(x*y)**z
		
		>>> powsimp(x**z*x**y*n**z*n**y, combine='all', force=True)
		(n*x)**(y + z)
		>>> powsimp(x**z*x**y*n**z*n**y, combine='exp')
		n**(y + z)*x**(y + z)
		>>> powsimp(x**z*x**y*n**z*n**y, combine='base', force=True)
		(n*x)**y*(n*x)**z
		
		>>> x, y = symbols('x y', positive=True)
		>>> powsimp(log(exp(x)*exp(y)))
		log(exp(x)*exp(y))
		>>> powsimp(log(exp(x)*exp(y)), deep=True)
		x + y
		
		Radicals with Mul bases will be combined if combine='exp'
		
		>>> from sympy import sqrt, Mul
		>>> x, y = symbols('x y')
		
		Two radicals are automatically joined through Mul:
		>>> a=sqrt(x*sqrt(y))
		>>> a*a**3 == a**4
		True
		
		But if an integer power of that radical has been
		autoexpanded then Mul does not join the resulting factors:
		>>> a**4 # auto expands to a Mul, no longer a Pow
		x**2*y
		>>> _*a # so Mul doesn't combine them
		x**2*y*sqrt(x*sqrt(y))
		>>> powsimp(_) # but powsimp will
		(x*sqrt(y))**(5/2)
		>>> powsimp(x*y*a) # but won't when doing so would violate assumptions
		x*y*sqrt(x*sqrt(y))
	**/
	static public function powsimp(expr:Dynamic, ?deep:Dynamic, ?combine:Dynamic, ?force:Dynamic, ?measure:Dynamic):Dynamic;
	/**
		Prints expr in pretty form.
		
		pprint is just a shortcut for this function.
		
		
		Parameters
		==========
		
		expr : expression
		    the expression to print
		wrap_line : bool, optional
		    line wrapping enabled/disabled, defaults to True
		num_columns : int or None, optional
		    number of columns before line breaking (default to None which reads
		    the terminal width), useful when using SymPy without terminal.
		use_unicode : bool or None, optional
		    use unicode characters, such as the Greek letter pi instead of
		    the string pi.
		full_prec : bool or string, optional
		    use full precision. Default to "auto"
		order : bool or string, optional
		    set to 'none' for long expressions if slow; default is None
	**/
	static public function pprint(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		See if unicode output is available and leverage it if possible
	**/
	static public function pprint_try_use_unicode():Dynamic;
	/**
		Set whether pretty-printer should use unicode by default
	**/
	static public function pprint_use_unicode(?flag:Dynamic):Dynamic;
	/**
		Compute polynomial pseudo-quotient of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import pquo
		>>> from sympy.abc import x
		
		>>> pquo(x**2 + 1, 2*x - 4)
		2*x + 4
		>>> pquo(x**2 - 1, 2*x - 1)
		2*x + 1
	**/
	static public function pquo(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Generate all prefixes of a sequence.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import prefixes
		
		>>> list(prefixes([1,2,3,4]))
		[[1], [1, 2], [1, 2, 3], [1, 2, 3, 4]]
	**/
	static public function prefixes(seq:Dynamic):Dynamic;
	/**
		Compute polynomial pseudo-remainder of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import prem
		>>> from sympy.abc import x
		
		>>> prem(x**2 + 1, 2*x - 4)
		20
	**/
	static public function prem(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a string containing the prettified form of expr.
		
		For information on keyword arguments see pretty_print function.
	**/
	static public function pretty(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Prints expr in pretty form.
		
		pprint is just a shortcut for this function.
		
		
		Parameters
		==========
		
		expr : expression
		    the expression to print
		wrap_line : bool, optional
		    line wrapping enabled/disabled, defaults to True
		num_columns : int or None, optional
		    number of columns before line breaking (default to None which reads
		    the terminal width), useful when using SymPy without terminal.
		use_unicode : bool or None, optional
		    use unicode characters, such as the Greek letter pi instead of
		    the string pi.
		full_prec : bool or string, optional
		    use full precision. Default to "auto"
		order : bool or string, optional
		    set to 'none' for long expressions if slow; default is None
	**/
	static public function pretty_print(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		View expression or LaTeX markup in PNG, DVI, PostScript or PDF form.
		
		If the expr argument is an expression, it will be exported to LaTeX and
		then compiled using the available TeX distribution.  The first argument,
		'expr', may also be a LaTeX string.  The function will then run the
		appropriate viewer for the given output format or use the user defined
		one. By default png output is generated.
		
		By default pretty Euler fonts are used for typesetting (they were used to
		typeset the well known "Concrete Mathematics" book). For that to work, you
		need the 'eulervm.sty' LaTeX style (in Debian/Ubuntu, install the
		texlive-fonts-extra package). If you prefer default AMS fonts or your
		system lacks 'eulervm' LaTeX package then unset the 'euler' keyword
		argument.
		
		To use viewer auto-detection, lets say for 'png' output, issue
		
		>>> from sympy import symbols, preview, Symbol
		>>> x, y = symbols("x,y")
		
		>>> preview(x + y, output='png')
		
		This will choose 'pyglet' by default. To select a different one, do
		
		>>> preview(x + y, output='png', viewer='gimp')
		
		The 'png' format is considered special. For all other formats the rules
		are slightly different. As an example we will take 'dvi' output format. If
		you would run
		
		>>> preview(x + y, output='dvi')
		
		then 'view' will look for available 'dvi' viewers on your system
		(predefined in the function, so it will try evince, first, then kdvi and
		xdvi). If nothing is found you will need to set the viewer explicitly.
		
		>>> preview(x + y, output='dvi', viewer='superior-dvi-viewer')
		
		This will skip auto-detection and will run user specified
		'superior-dvi-viewer'. If 'view' fails to find it on your system it will
		gracefully raise an exception.
		
		You may also enter 'file' for the viewer argument. Doing so will cause
		this function to return a file object in read-only mode, if 'filename'
		is unset. However, if it was set, then 'preview' writes the genereted
		file to this filename instead.
		
		There is also support for writing to a BytesIO like object, which needs
		to be passed to the 'outputbuffer' argument.
		
		>>> from io import BytesIO
		>>> obj = BytesIO()
		>>> preview(x + y, output='png', viewer='BytesIO',
		...         outputbuffer=obj)
		
		The LaTeX preamble can be customized by setting the 'preamble' keyword
		argument. This can be used, e.g., to set a different font size, use a
		custom documentclass or import certain set of LaTeX packages.
		
		>>> preamble = "\\documentclass[10pt]{article}\n" \
		...            "\\usepackage{amsmath,amsfonts}\\begin{document}"
		>>> preview(x + y, output='png', preamble=preamble)
		
		If the value of 'output' is different from 'dvi' then command line
		options can be set ('dvioptions' argument) for the execution of the
		'dvi'+output conversion tool. These options have to be in the form of a
		list of strings (see subprocess.Popen).
		
		Additional keyword args will be passed to the latex call, e.g., the
		symbol_names flag.
		
		>>> phidd = Symbol('phidd')
		>>> preview(phidd, symbol_names={phidd:r'\ddot{\varphi}'})
		
		For post-processing the generated TeX File can be written to a file by
		passing the desired filename to the 'outputTexFile' keyword
		argument. To write the TeX code to a file named
		"sample.tex" and run the default png viewer to display the resulting
		bitmap, do
		
		>>> preview(x + y, outputTexFile="sample.tex")
	**/
	static public function preview(expr:Dynamic, ?output:Dynamic, ?viewer:Dynamic, ?euler:Dynamic, ?packages:Dynamic, ?filename:Dynamic, ?outputbuffer:Dynamic, ?preamble:Dynamic, ?dvioptions:Dynamic, ?outputTexFile:Dynamic, latex_settings:Dynamic):Dynamic;
	/**
		Return the largest prime smaller than n.
		
		Notes
		=====
		
		Potential primes are located at 6*j +/- 1. This
		property is used during searching.
		
		>>> from sympy import prevprime
		>>> [(i, prevprime(i)) for i in range(10, 15)]
		[(10, 7), (11, 7), (12, 11), (13, 11), (14, 13)]
		
		See Also
		========
		
		nextprime : Return the ith prime greater than n
		primerange : Generates all primes in a given range
	**/
	static public function prevprime(n:Dynamic):Dynamic;
	/**
		Return the nth prime, with the primes indexed as prime(1) = 2,
		prime(2) = 3, etc.... The nth prime is approximately n*log(n) and
		can never be larger than 2**n.
		
		References
		==========
		
		- http://primes.utm.edu/glossary/xpage/BertrandsPostulate.html
		
		Examples
		========
		
		>>> from sympy import prime
		>>> prime(10)
		29
		>>> prime(1)
		2
		
		See Also
		========
		
		sympy.ntheory.primetest.isprime : Test if n is prime
		primerange : Generate all primes in a given range
		primepi : Return the number of primes less than or equal to n
	**/
	static public function prime(nth:Dynamic):Dynamic;
	/**
		Return a sorted list of n's prime factors, ignoring multiplicity
		and any composite factor that remains if the limit was set too low
		for complete factorization. Unlike factorint(), primefactors() does
		not return -1 or 0.
		
		Examples
		========
		
		>>> from sympy.ntheory import primefactors, factorint, isprime
		>>> primefactors(6)
		[2, 3]
		>>> primefactors(-5)
		[5]
		
		>>> sorted(factorint(123456).items())
		[(2, 6), (3, 1), (643, 1)]
		>>> primefactors(123456)
		[2, 3, 643]
		
		>>> sorted(factorint(10000000001, limit=200).items())
		[(101, 1), (99009901, 1)]
		>>> isprime(99009901)
		False
		>>> primefactors(10000000001, limit=300)
		[101]
		
		See Also
		========
		
		divisors
	**/
	static public function primefactors(n:Dynamic, ?limit:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Return the value of the prime counting function pi(n) = the number
		of prime numbers less than or equal to n.
		
		Examples
		========
		
		>>> from sympy import primepi
		>>> primepi(25)
		9
		
		See Also
		========
		
		sympy.ntheory.primetest.isprime : Test if n is prime
		primerange : Generate all primes in a given range
		prime : Return the nth prime
	**/
	static public function primepi(n:Dynamic):Dynamic;
	/**
		Generate a list of all prime numbers in the range [a, b).
		
		If the range exists in the default sieve, the values will
		be returned from there; otherwise values will be returned
		but will not modify the sieve.
		
		Notes
		=====
		
		Some famous conjectures about the occurence of primes in a given
		range are [1]:
		
		- Twin primes: though often not, the following will give 2 primes
		            an infinite number of times:
		                primerange(6*n - 1, 6*n + 2)
		- Legendre's: the following always yields at least one prime
		                primerange(n**2, (n+1)**2+1)
		- Bertrand's (proven): there is always a prime in the range
		                primerange(n, 2*n)
		- Brocard's: there are at least four primes in the range
		                primerange(prime(n)**2, prime(n+1)**2)
		
		The average gap between primes is log(n) [2]; the gap between
		primes can be arbitrarily large since sequences of composite
		numbers are arbitrarily large, e.g. the numbers in the sequence
		n! + 2, n! + 3 ... n! + n are all composite.
		
		References
		==========
		
		1. http://en.wikipedia.org/wiki/Prime_number
		2. http://primes.utm.edu/notes/gaps.html
		
		Examples
		========
		
		>>> from sympy import primerange, sieve
		>>> print([i for i in primerange(1, 30)])
		[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
		
		The Sieve method, primerange, is generally faster but it will
		occupy more memory as the sieve stores values. The default
		instance of Sieve, named sieve, can be used:
		
		>>> list(sieve.primerange(1, 30))
		[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
		
		See Also
		========
		
		nextprime : Return the ith prime greater than n
		prevprime : Return the largest prime smaller than n
		randprime : Returns a random prime in a given range
		primorial : Returns the product of primes based on condition
		Sieve.primerange : return range from already computed primes
		                   or extend the sieve to contain the requested
		                   range.
	**/
	static public function primerange(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute content and the primitive form of ``f``.
		
		Examples
		========
		
		>>> from sympy.polys.polytools import primitive
		>>> from sympy.abc import x
		
		>>> primitive(6*x**2 + 8*x + 12)
		(2, 3*x**2 + 4*x + 6)
		
		>>> eq = (2 + 2*x)*x + 2
		
		Expansion is performed by default:
		
		>>> primitive(eq)
		(2, x**2 + x + 1)
		
		Set ``expand`` to False to shut this off. Note that the
		extraction will not be recursive; use the as_content_primitive method
		for recursive, non-destructive Rational extraction.
		
		>>> primitive(eq, expand=False)
		(1, x*(2*x + 2) + 2)
		
		>>> eq.as_content_primitive()
		(2, x*(x + 1) + 1)
	**/
	static public function primitive(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Construct a common number field for all extensions. 
	**/
	static public function primitive_element(extension:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns the smallest primitive root or None
		
		References
		==========
		
		[1] W. Stein "Elementary Number Theory" (2011), page 44
		[2] P. Hackman "Elementary Number Theory" (2009),  Chapter C
		
		Parameters
		==========
		
		p : positive integer
		
		Examples
		========
		
		>>> from sympy.ntheory.residue_ntheory import primitive_root
		>>> primitive_root(19)
		2
	**/
	static public function primitive_root(p:Dynamic):Dynamic;
	/**
		Returns the product of the first n primes (default) or
		the primes less than or equal to n (when ``nth=False``).
		
		>>> from sympy.ntheory.generate import primorial, randprime, primerange
		>>> from sympy import factorint, Mul, primefactors, sqrt
		>>> primorial(4) # the first 4 primes are 2, 3, 5, 7
		210
		>>> primorial(4, nth=False) # primes <= 4 are 2 and 3
		6
		>>> primorial(1)
		2
		>>> primorial(1, nth=False)
		1
		>>> primorial(sqrt(101), nth=False)
		210
		
		One can argue that the primes are infinite since if you take
		a set of primes and multiply them together (e.g. the primorial) and
		then add or subtract 1, the result cannot be divided by any of the
		original factors, hence either 1 or more new primes must divide this
		product of primes.
		
		In this case, the number itself is a new prime:
		
		>>> factorint(primorial(4) + 1)
		{211: 1}
		
		In this case two new primes are the factors:
		
		>>> factorint(primorial(4) - 1)
		{11: 1, 19: 1}
		
		Here, some primes smaller and larger than the primes multiplied together
		are obtained:
		
		>>> p = list(primerange(10, 20))
		>>> sorted(set(primefactors(Mul(*p) + 1)).difference(set(p)))
		[2, 5, 31, 149]
		
		See Also
		========
		
		primerange : Generate all primes in a given range
	**/
	static public function primorial(n:Dynamic, ?nth:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Print to Gtkmathview, a gtk widget capable of rendering MathML.
		
		Needs libgtkmathview-bin
	**/
	static public function print_gtk(x:Dynamic, ?start_viewer:Dynamic):Dynamic;
	/**
		Print output of python() function
	**/
	static public function print_python(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Prints a tree representation of "node".
		
		Examples
		========
		
		>>> from sympy.printing import print_tree
		>>> from sympy import Symbol
		>>> x = Symbol('x', odd=True)
		>>> y = Symbol('y', even=True)
		>>> print_tree(y**x)
		Pow: y**x
		+-Symbol: y
		| algebraic: True
		| commutative: True
		| complex: True
		| even: True
		| hermitian: True
		| imaginary: False
		| integer: True
		| irrational: False
		| noninteger: False
		| odd: False
		| rational: True
		| real: True
		| transcendental: False
		+-Symbol: x
		  algebraic: True
		  commutative: True
		  complex: True
		  even: False
		  hermitian: True
		  imaginary: False
		  integer: True
		  irrational: False
		  noninteger: False
		  nonzero: True
		  odd: True
		  rational: True
		  real: True
		  transcendental: False
		  zero: False
		
		See also: tree()
	**/
	static public function print_tree(node:Dynamic):Dynamic;
	/**
		Return product of elements of a. Start with int 1 so if only
		   ints are included then an int result is returned.
		
		Examples
		========
		
		>>> from sympy import prod, S
		>>> prod(range(3))
		0
		>>> type(_) is int
		True
		>>> prod([S(2), 3])
		6
		>>> _.is_Integer
		True
		
		You can start the product at something other than 1:
		>>> prod([1, 2], 3)
		6
	**/
	static public function prod(a:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Compute the product.
		
		The notation for symbols is similiar to the notation used in Sum or
		Integral. product(f, (i, a, b)) computes the product of f with
		respect to i from a to b, i.e.,
		
		::
		
		                                 b
		                               _____
		    product(f(n), (i, a, b)) = |   | f(n)
		                               |   |
		                               i = a
		
		If it cannot compute the product, it returns an unevaluated Product object.
		Repeated products can be computed by introducing additional symbols tuples::
		
		>>> from sympy import product, symbols
		>>> i, n, m, k = symbols('i n m k', integer=True)
		
		>>> product(i, (i, 1, k))
		factorial(k)
		>>> product(m, (i, 1, k))
		m**k
		>>> product(i, (i, 1, k), (k, 1, n))
		Product(factorial(k), (k, 1, n))
	**/
	static public function product(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Append ``obj``'s name to global ``__all__`` variable (call site).
		
		By using this decorator on functions or classes you achieve the same goal
		as by filling ``__all__`` variables manually, you just don't have to repeat
		your self (object's name). You also know if object is public at definition
		site, not at some random location (where ``__all__`` was set).
		
		Note that in multiple decorator setup, in almost all cases, ``@public``
		decorator must be applied before any other decorators, because it relies
		on the pointer to object's global namespace. If you apply other decorators
		first, ``@public`` may end up modifying wrong namespace.
		
		Example::
		
		>>> from sympy.utilities.decorator import public
		
		>>> __all__
		Traceback (most recent call last):
		...
		NameError: name '__all__' is not defined
		
		>>> @public
		... def some_function():
		...     pass
		
		>>> __all__
		['some_function']
	**/
	@:native("public")
	static public function _public(obj:Dynamic):Dynamic;
	/**
		Return Python interpretation of passed expression
		(can be passed to the exec() function without any modifications)
	**/
	static public function python(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Returns the list of quadratic residues.
		
		Examples
		========
		
		>>> from sympy.ntheory.residue_ntheory import quadratic_residues
		>>> quadratic_residues(7)
		[0, 1, 2, 4]
	**/
	static public function quadratic_residues(p:Dynamic):Dynamic;
	/**
		Compute polynomial quotient of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import quo
		>>> from sympy.abc import x
		
		>>> quo(x**2 + 1, 2*x - 4)
		x/2 + 1
		>>> quo(x**2 - 1, x - 1)
		x + 1
	**/
	static public function quo(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Return the radian value for the given degrees (pi = 180 degrees).
	**/
	static public function rad(d:Dynamic):Dynamic;
	/**
		Rationalize the denominator by removing square roots.
		
		Note: the expression returned from radsimp must be used with caution
		since if the denominator contains symbols, it will be possible to make
		substitutions that violate the assumptions of the simplification process:
		that for a denominator matching a + b*sqrt(c), a != +/-b*sqrt(c). (If
		there are no symbols, this assumptions is made valid by collecting terms
		of sqrt(c) so the match variable ``a`` does not contain ``sqrt(c)``.) If
		you do not want the simplification to occur for symbolic denominators, set
		``symbolic`` to False.
		
		If there are more than ``max_terms`` radical terms then the expression is
		returned unchanged.
		
		Examples
		========
		
		>>> from sympy import radsimp, sqrt, Symbol, denom, pprint, I
		>>> from sympy import factor_terms, fraction, signsimp
		>>> from sympy.simplify.simplify import collect_sqrt
		>>> from sympy.abc import a, b, c
		
		>>> radsimp(1/(I + 1))
		(1 - I)/2
		>>> radsimp(1/(2 + sqrt(2)))
		(-sqrt(2) + 2)/2
		>>> x,y = map(Symbol, 'xy')
		>>> e = ((2 + 2*sqrt(2))*x + (2 + sqrt(8))*y)/(2 + sqrt(2))
		>>> radsimp(e)
		sqrt(2)*(x + y)
		
		No simplification beyond removal of the gcd is done. One might
		want to polish the result a little, however, by collecting
		square root terms:
		
		>>> r2 = sqrt(2)
		>>> r5 = sqrt(5)
		>>> ans = radsimp(1/(y*r2 + x*r2 + a*r5 + b*r5)); pprint(ans)
		    ___       ___       ___       ___
		  \/ 5 *a + \/ 5 *b - \/ 2 *x - \/ 2 *y
		------------------------------------------
		   2               2      2              2
		5*a  + 10*a*b + 5*b  - 2*x  - 4*x*y - 2*y
		
		>>> n, d = fraction(ans)
		>>> pprint(factor_terms(signsimp(collect_sqrt(n))/d, radical=True))
		        ___             ___
		      \/ 5 *(a + b) - \/ 2 *(x + y)
		------------------------------------------
		   2               2      2              2
		5*a  + 10*a*b + 5*b  - 2*x  - 4*x*y - 2*y
		
		If radicals in the denominator cannot be removed or there is no denominator,
		the original expression will be returned.
		
		>>> radsimp(sqrt(2)*x + sqrt(2))
		sqrt(2)*x + sqrt(2)
		
		Results with symbols will not always be valid for all substitutions:
		
		>>> eq = 1/(a + b*sqrt(c))
		>>> eq.subs(a, b*sqrt(c))
		1/(2*b*sqrt(c))
		>>> radsimp(eq).subs(a, b*sqrt(c))
		nan
		
		If symbolic=False, symbolic denominators will not be transformed (but
		numeric denominators will still be processed):
		
		>>> radsimp(eq, symbolic=False)
		1/(a + b*sqrt(c))
	**/
	static public function radsimp(expr:Dynamic, ?symbolic:Dynamic, ?max_terms:Dynamic):Dynamic;
	/**
		Create random matrix with dimensions ``r`` x ``c``. If ``c`` is omitted
		the matrix will be square. If ``symmetric`` is True the matrix must be
		square. If ``percent`` is less than 100 then only approximately the given
		percentage of elements will be non-zero.
		
		Examples
		========
		
		>>> from sympy.matrices import randMatrix
		>>> randMatrix(3) # doctest:+SKIP
		[25, 45, 27]
		[44, 54,  9]
		[23, 96, 46]
		>>> randMatrix(3, 2) # doctest:+SKIP
		[87, 29]
		[23, 37]
		[90, 26]
		>>> randMatrix(3, 3, 0, 2) # doctest:+SKIP
		[0, 2, 0]
		[2, 0, 1]
		[0, 0, 1]
		>>> randMatrix(3, symmetric=True) # doctest:+SKIP
		[85, 26, 29]
		[26, 71, 43]
		[29, 43, 57]
		>>> A = randMatrix(3, seed=1)
		>>> B = randMatrix(3, seed=2)
		>>> A == B # doctest:+SKIP
		False
		>>> A == randMatrix(3, seed=1)
		True
		>>> randMatrix(3, symmetric=True, percent=50) # doctest:+SKIP
		[0, 68, 43]
		[0, 68,  0]
		[0, 91, 34]
	**/
	static public function randMatrix(r:Dynamic, ?c:Dynamic, ?min:Dynamic, ?max:Dynamic, ?seed:Dynamic, ?symmetric:Dynamic, ?percent:Dynamic):Dynamic;
	/**
		Return a polynomial of degree ``n`` with coefficients in ``[inf, sup]``. 
	**/
	static public function random_poly(x:Dynamic, n:Dynamic, inf:Dynamic, sup:Dynamic, ?domain:Dynamic, ?polys:Dynamic):Dynamic;
	/**
		Return a random prime number in the range [a, b).
		
		Bertrand's postulate assures that
		randprime(a, 2*a) will always succeed for a > 1.
		
		References
		==========
		
		- http://en.wikipedia.org/wiki/Bertrand's_postulate
		
		Examples
		========
		
		>>> from sympy import randprime, isprime
		>>> randprime(1, 30) #doctest: +SKIP
		13
		>>> isprime(randprime(1, 30))
		True
		
		See Also
		========
		
		primerange : Generate all primes in a given range
	**/
	static public function randprime(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Put an expression over a common denominator, cancel and reduce.
		
		Examples
		========
		
		>>> from sympy import ratsimp
		>>> from sympy.abc import x, y
		>>> ratsimp(1/x + 1/y)
		(x + y)/(x*y)
	**/
	static public function ratsimp(expr:Dynamic):Dynamic;
	/**
		Simplifies a rational expression ``expr`` modulo the prime ideal
		generated by ``G``.  ``G`` should be a Groebner basis of the
		ideal.
		
		>>> from sympy.simplify.simplify import ratsimpmodprime
		>>> from sympy.abc import x, y
		>>> eq = (x + y**5 + y)/(x - y)
		>>> ratsimpmodprime(eq, [x*y**5 - x - y], x, y, order='lex')
		(x**2 + x*y + x + y)/(x**2 - x*y)
		
		If ``polynomial`` is False, the algorithm computes a rational
		simplification which minimizes the sum of the total degrees of
		the numerator and the denominator.
		
		If ``polynomial`` is True, this function just brings numerator and
		denominator into a canonical form. This is much faster, but has
		potentially worse results.
		
		References
		==========
		
		M. Monagan, R. Pearce, Rational Simplification Modulo a Polynomial
		Ideal,
		http://citeseer.ist.psu.edu/viewdoc/summary?doi=10.1.1.163.6984
		(specifically, the second algorithm)
	**/
	static public function ratsimpmodprime(expr:Dynamic, G:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Recursively collect sums in an expression.
		
		Examples
		========
		
		>>> from sympy.simplify import rcollect
		>>> from sympy.abc import x, y
		
		>>> expr = (x**2*y + x*y + x + y)/(x + y)
		
		>>> rcollect(expr, y)
		(x + y*(x**2 + x + 1))/(x + y)
		
		See Also
		========
		collect, collect_const, collect_sqrt
	**/
	static public function rcollect(expr:Dynamic, vars:Dynamic):Dynamic;
	/**
		Return the real nth-root of arg if possible. If n is omitted then
		all instances of -1**(1/odd) will be changed to -1.
		
		Examples
		========
		
		>>> from sympy import root, real_root, Rational
		>>> from sympy.abc import x, n
		
		>>> real_root(-8, 3)
		-2
		>>> root(-8, 3)
		2*(-1)**(1/3)
		>>> real_root(_)
		-2
		
		See Also
		========
		
		sympy.polys.rootoftools.RootOf
		sympy.core.power.integer_nthroot
		root, sqrt
	**/
	static public function real_root(arg:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Return a list of real roots with multiplicities of ``f``.
		
		Examples
		========
		
		>>> from sympy import real_roots
		>>> from sympy.abc import x
		
		>>> real_roots(2*x**3 - 7*x**2 + 4*x + 4)
		[-1/2, 2, 2]
	**/
	static public function real_roots(f:Dynamic, ?multiple:Dynamic):Dynamic;
	/**
		Reduce a system of inequalities with nested absolute values.
		
		Examples
		========
		
		>>> from sympy import Q, Abs, Symbol
		>>> from sympy.abc import x
		>>> from sympy.solvers.inequalities import reduce_abs_inequalities
		>>> x = Symbol('x', real=True)
		
		>>> reduce_abs_inequalities([(Abs(3*x - 5) - 7, '<'),
		... (Abs(x + 25) - 13, '>')], x)
		And(-2/3 < x, Or(And(-12 < x, x < oo), And(-oo < x, x < -38)), x < 4)
		
		>>> reduce_abs_inequalities([(Abs(x - 4) + Abs(3*x - 5) - 7, '<')], x)
		And(1/2 < x, x < 4)
		
		See Also
		========
		
		reduce_abs_inequality
	**/
	static public function reduce_abs_inequalities(exprs:Dynamic, gen:Dynamic):Dynamic;
	/**
		Reduce an inequality with nested absolute values.
		
		Examples
		========
		
		>>> from sympy import Q, Abs, Symbol
		>>> from sympy.solvers.inequalities import reduce_abs_inequality
		>>> x = Symbol('x', real=True)
		
		>>> reduce_abs_inequality(Abs(x - 5) - 3, '<', x)
		And(2 < x, x < 8)
		
		>>> reduce_abs_inequality(Abs(x + 2)*3 - 13, '<', x)
		And(-19/3 < x, x < 7/3)
		
		See Also
		========
		
		reduce_abs_inequalities
	**/
	static public function reduce_abs_inequality(expr:Dynamic, rel:Dynamic, gen:Dynamic):Dynamic;
	/**
		Reduce a system of inequalities with rational coefficients.
		
		Examples
		========
		
		>>> from sympy import Q, sympify as S, Symbol
		>>> from sympy.abc import x, y
		>>> from sympy.solvers.inequalities import reduce_inequalities
		
		>>> x = Symbol('x', real=True)
		>>> reduce_inequalities(S(0) <= x + 3, [])
		And(-3 <= x, x < oo)
		
		>>> x = Symbol('x')
		>>> reduce_inequalities(S(0) <= x + y*2 - 1, [x])
		-2*y + 1 <= x
	**/
	static public function reduce_inequalities(inequalities:Dynamic, ?symbols:Dynamic):Dynamic;
	/**
		Reduces a polynomial ``f`` modulo a set of polynomials ``G``.
		
		Given a polynomial ``f`` and a set of polynomials ``G = (g_1, ..., g_n)``,
		computes a set of quotients ``q = (q_1, ..., q_n)`` and the remainder ``r``
		such that ``f = q_1*g_1 + ... + q_n*g_n + r``, where ``r`` vanishes or ``r``
		is a completely reduced polynomial with respect to ``G``.
		
		Examples
		========
		
		>>> from sympy import reduced
		>>> from sympy.abc import x, y
		
		>>> reduced(2*x**4 + y**2 - x**2 + y**3, [x**3 - x, y**3 - y])
		([2*x, 1], x**2 + y**2 + y)
	**/
	static public function reduced(f:Dynamic, G:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Simplify an expression using assumptions.
		
		Gives the form of expr that would be obtained if symbols
		in it were replaced by explicit numerical expressions satisfying
		the assumptions.
		
		Examples
		========
		
		    >>> from sympy import refine, sqrt, Q
		    >>> from sympy.abc import x
		    >>> refine(sqrt(x**2), Q.real(x))
		    Abs(x)
		    >>> refine(sqrt(x**2), Q.positive(x))
		    x
	**/
	static public function refine(expr:Dynamic, ?assumptions:Dynamic):Dynamic;
	/**
		Refine an isolating interval of a root to the given precision.
		
		Examples
		========
		
		>>> from sympy import refine_root
		>>> from sympy.abc import x
		
		>>> refine_root(x**2 - 3, 1, 2, eps=1e-2)
		(19/11, 26/15)
	**/
	static public function refine_root(f:Dynamic, s:Dynamic, t:Dynamic, ?eps:Dynamic, ?steps:Dynamic, ?fast:Dynamic, ?check_sqf:Dynamic):Dynamic;
	/**
		Register a handler in the ask system. key must be a string and handler a
		class inheriting from AskHandler::
		
		    >>> from sympy.assumptions import register_handler, ask, Q
		    >>> from sympy.assumptions.handlers import AskHandler
		    >>> class MersenneHandler(AskHandler):
		    ...     # Mersenne numbers are in the form 2**n + 1, n integer
		    ...     @staticmethod
		    ...     def Integer(expr, assumptions):
		    ...         import math
		    ...         return ask(Q.integer(math.log(expr + 1, 2)))
		    >>> register_handler('mersenne', MersenneHandler)
		    >>> ask(Q.mersenne(7))
		    True
	**/
	static public function register_handler(key:Dynamic, handler:Dynamic):Dynamic;
	/**
		Compute polynomial remainder of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import rem, ZZ, QQ
		>>> from sympy.abc import x
		
		>>> rem(x**2 + 1, 2*x - 4, domain=ZZ)
		x**2 + 1
		>>> rem(x**2 + 1, 2*x - 4, domain=QQ)
		5
	**/
	static public function rem(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Removes a handler from the ask system. Same syntax as register_handler
	**/
	static public function remove_handler(key:Dynamic, handler:Dynamic):Dynamic;
	/**
		Reshape the sequence according to the template in ``how``.
		
		Examples
		========
		
		>>> from sympy.utilities import reshape
		>>> seq = list(range(1, 9))
		
		>>> reshape(seq, [4]) # lists of 4
		[[1, 2, 3, 4], [5, 6, 7, 8]]
		
		>>> reshape(seq, (4,)) # tuples of 4
		[(1, 2, 3, 4), (5, 6, 7, 8)]
		
		>>> reshape(seq, (2, 2)) # tuples of 4
		[(1, 2, 3, 4), (5, 6, 7, 8)]
		
		>>> reshape(seq, (2, [2])) # (i, i, [i, i])
		[(1, 2, [3, 4]), (5, 6, [7, 8])]
		
		>>> reshape(seq, ((2,), [2])) # etc....
		[((1, 2), [3, 4]), ((5, 6), [7, 8])]
		
		>>> reshape(seq, (1, [2], 1))
		[(1, [2, 3], 4), (5, [6, 7], 8)]
		
		>>> reshape(tuple(seq), ([[1], 1, (2,)],))
		(([[1], 2, (3, 4)],), ([[5], 6, (7, 8)],))
		
		>>> reshape(tuple(seq), ([1], 1, (2,)))
		(([1], 2, (3, 4)), ([5], 6, (7, 8)))
		
		>>> reshape(list(range(12)), [2, [3], set([2]), (1, (3,), 1)])
		[[0, 1, [2, 3, 4], set([5, 6]), (7, (8, 9, 10), 11)]]
	**/
	static public function reshape(seq:Dynamic, how:Dynamic):Dynamic;
	/**
		Finds the residue of ``expr`` at the point x=x0.
		
		The residue is defined as the coefficient of 1/(x-x0) in the power series
		expansion about x=x0.
		
		Examples
		========
		
		>>> from sympy import Symbol, residue, sin
		>>> x = Symbol("x")
		>>> residue(1/x, x, 0)
		1
		>>> residue(1/x**2, x, 0)
		0
		>>> residue(2/sin(x), x, 0)
		2
		
		This function is essential for the Residue Theorem [1].
		
		References
		==========
		
		1. http://en.wikipedia.org/wiki/Residue_theorem
	**/
	static public function residue(expr:Dynamic, x:Dynamic, x0:Dynamic):Dynamic;
	/**
		Compute resultant of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import resultant
		>>> from sympy.abc import x
		
		>>> resultant(x**2 + 1, x**2 - 1)
		4
	**/
	static public function resultant(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Construct a polynomial ring returning ``(ring, x_1, ..., x_n)``.
		
		Parameters
		----------
		symbols : str, Symbol/Expr or sequence of str, Symbol/Expr (non-empty)
		domain : :class:`Domain` or coercible
		order : :class:`Order` or coercible, optional, defaults to ``lex``
		
		Examples
		--------
		>>> from sympy.polys.rings import ring
		>>> from sympy.polys.domains import ZZ
		>>> from sympy.polys.orderings import lex
		
		>>> R, x, y, z = ring("x,y,z", ZZ, lex)
		>>> R
		Polynomial ring in x, y, z over ZZ with lex order
		>>> x + y + z
		x + y + z
		>>> type(_)
		<class 'sympy.polys.rings.PolyElement'>
	**/
	static public function ring(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		The n-th root function (a shortcut for ``arg**(1/n)``)
		
		root(x, n) -> Returns the principal n-th root of x.
		
		
		Examples
		========
		
		>>> from sympy import root, Rational
		>>> from sympy.abc import x, n
		
		>>> root(x, 2)
		sqrt(x)
		
		>>> root(x, 3)
		x**(1/3)
		
		>>> root(x, n)
		x**(1/n)
		
		>>> root(x, -Rational(2, 3))
		x**(-3/2)
		
		
		To get all n n-th roots you can use the RootOf function.
		The following examples show the roots of unity for n
		equal 2, 3 and 4:
		
		>>> from sympy import RootOf, I
		
		>>> [ RootOf(x**2-1,i) for i in (0,1) ]
		[-1, 1]
		
		>>> [ RootOf(x**3-1,i) for i in (0,1,2) ]
		[1, -1/2 - sqrt(3)*I/2, -1/2 + sqrt(3)*I/2]
		
		>>> [ RootOf(x**4-1,i) for i in (0,1,2,3) ]
		[-1, 1, -I, I]
		
		SymPy, like other symbolic algebra systems, returns the
		complex root of negative numbers. This is the principal
		root and differs from the text-book result that one might
		be expecting. For example, the cube root of -8 does not
		come back as -2:
		
		>>> root(-8, 3)
		2*(-1)**(1/3)
		
		The real_root function can be used to either make such a result
		real or simply return the real root in the first place:
		
		>>> from sympy import real_root
		>>> real_root(_)
		-2
		>>> real_root(-32, 5)
		-2
		
		See Also
		========
		
		sympy.polys.rootoftools.RootOf
		sympy.core.power.integer_nthroot
		sqrt, real_root
		
		References
		==========
		
		* http://en.wikipedia.org/wiki/Square_root
		* http://en.wikipedia.org/wiki/Real_root
		* http://en.wikipedia.org/wiki/Root_of_unity
		* http://en.wikipedia.org/wiki/Principal_value
		* http://mathworld.wolfram.com/CubeRoot.html
	**/
	static public function root(arg:Dynamic, n:Dynamic):Dynamic;
	/**
		Computes symbolic roots of a univariate polynomial.
		
		Given a univariate polynomial f with symbolic coefficients (or
		a list of the polynomial's coefficients), returns a dictionary
		with its roots and their multiplicities.
		
		Only roots expressible via radicals will be returned.  To get
		a complete set of roots use RootOf class or numerical methods
		instead. By default cubic and quartic formulas are used in
		the algorithm. To disable them because of unreadable output
		set ``cubics=False`` or ``quartics=False`` respectively. If cubic
		roots are real but are expressed in terms of complex numbers
		(casus irreducibilis [1]) the ``trig`` flag can be set to True to
		have the solutions returned in terms of cosine and inverse cosine
		functions.
		
		To get roots from a specific domain set the ``filter`` flag with
		one of the following specifiers: Z, Q, R, I, C. By default all
		roots are returned (this is equivalent to setting ``filter='C'``).
		
		By default a dictionary is returned giving a compact result in
		case of multiple roots.  However to get a list containing all
		those roots set the ``multiple`` flag to True; the list will
		have identical roots appearing next to each other in the result.
		(For a given Poly, the all_roots method will give the roots in
		sorted numerical order.)
		
		Examples
		========
		
		>>> from sympy import Poly, roots
		>>> from sympy.abc import x, y
		
		>>> roots(x**2 - 1, x)
		{-1: 1, 1: 1}
		
		>>> p = Poly(x**2-1, x)
		>>> roots(p)
		{-1: 1, 1: 1}
		
		>>> p = Poly(x**2-y, x, y)
		
		>>> roots(Poly(p, x))
		{-sqrt(y): 1, sqrt(y): 1}
		
		>>> roots(x**2 - y, x)
		{-sqrt(y): 1, sqrt(y): 1}
		
		>>> roots([1, 0, -1])
		{-1: 1, 1: 1}
		
		
		References
		==========
		
		1. http://en.wikipedia.org/wiki/Cubic_function#Trigonometric_.28and_hyperbolic.29_method
	**/
	static public function roots(f:Dynamic, gens:Dynamic, flags:Dynamic):Dynamic;
	/**
		Returns a rotation matrix for a rotation of theta (in radians) about
		the 1-axis.
		
		Examples
		========
		
		>>> from sympy import pi
		>>> from sympy.matrices import rot_axis1
		
		A rotation of pi/3 (60 degrees):
		
		>>> theta = pi/3
		>>> rot_axis1(theta)
		Matrix([
		[1,          0,         0],
		[0,        1/2, sqrt(3)/2],
		[0, -sqrt(3)/2,       1/2]])
		
		If we rotate by pi/2 (90 degrees):
		
		>>> rot_axis1(pi/2)
		Matrix([
		[1,  0, 0],
		[0,  0, 1],
		[0, -1, 0]])
		
		See Also
		========
		
		rot_axis2: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 2-axis
		rot_axis3: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 3-axis
	**/
	static public function rot_axis1(theta:Dynamic):Dynamic;
	/**
		Returns a rotation matrix for a rotation of theta (in radians) about
		the 2-axis.
		
		Examples
		========
		
		>>> from sympy import pi
		>>> from sympy.matrices import rot_axis2
		
		A rotation of pi/3 (60 degrees):
		
		>>> theta = pi/3
		>>> rot_axis2(theta)
		Matrix([
		[      1/2, 0, -sqrt(3)/2],
		[        0, 1,          0],
		[sqrt(3)/2, 0,        1/2]])
		
		If we rotate by pi/2 (90 degrees):
		
		>>> rot_axis2(pi/2)
		Matrix([
		[0, 0, -1],
		[0, 1,  0],
		[1, 0,  0]])
		
		See Also
		========
		
		rot_axis1: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 1-axis
		rot_axis3: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 3-axis
	**/
	static public function rot_axis2(theta:Dynamic):Dynamic;
	/**
		Returns a rotation matrix for a rotation of theta (in radians) about
		the 3-axis.
		
		Examples
		========
		
		>>> from sympy import pi
		>>> from sympy.matrices import rot_axis3
		
		A rotation of pi/3 (60 degrees):
		
		>>> theta = pi/3
		>>> rot_axis3(theta)
		Matrix([
		[       1/2, sqrt(3)/2, 0],
		[-sqrt(3)/2,       1/2, 0],
		[         0,         0, 1]])
		
		If we rotate by pi/2 (90 degrees):
		
		>>> rot_axis3(pi/2)
		Matrix([
		[ 0, 1, 0],
		[-1, 0, 0],
		[ 0, 0, 1]])
		
		See Also
		========
		
		rot_axis1: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 1-axis
		rot_axis2: Returns a rotation matrix for a rotation of theta (in radians)
		    about the 2-axis
	**/
	static public function rot_axis3(theta:Dynamic):Dynamic;
	/**
		Solve univariate recurrence with rational coefficients.
		
		Given `k`-th order linear recurrence `\operatorname{L} y = f`,
		or equivalently:
		
		.. math:: a_{k}(n) y(n+k) + a_{k-1}(n) y(n+k-1) +
		          \dots + a_{0}(n) y(n) = f(n)
		
		where `a_{i}(n)`, for `i=0, \dots, k`, are polynomials or rational
		functions in `n`, and `f` is a hypergeometric function or a sum
		of a fixed number of pairwise dissimilar hypergeometric terms in
		`n`, finds all solutions or returns ``None``, if none were found.
		
		Initial conditions can be given as a dictionary in two forms:
		
		    (1) ``{   n_0  : v_0,   n_1  : v_1, ...,   n_m  : v_m }``
		    (2) ``{ y(n_0) : v_0, y(n_1) : v_1, ..., y(n_m) : v_m }``
		
		or as a list ``L`` of values:
		
		    ``L = [ v_0, v_1, ..., v_m ]``
		
		where ``L[i] = v_i``, for `i=0, \dots, m`, maps to `y(n_i)`.
		
		Examples
		========
		
		Lets consider the following recurrence:
		
		.. math:: (n - 1) y(n + 2) - (n^2 + 3 n - 2) y(n + 1) +
		          2 n (n + 1) y(n) = 0
		
		>>> from sympy import Function, rsolve
		>>> from sympy.abc import n
		>>> y = Function('y')
		
		>>> f = (n - 1)*y(n + 2) - (n**2 + 3*n - 2)*y(n + 1) + 2*n*(n + 1)*y(n)
		
		>>> rsolve(f, y(n))
		2**n*C0 + C1*factorial(n)
		
		>>> rsolve(f, y(n), { y(0):0, y(1):3 })
		3*2**n - 3*factorial(n)
		
		See Also
		========
		
		rsolve_poly, rsolve_ratio, rsolve_hyper
	**/
	static public function rsolve(f:Dynamic, y:Dynamic, ?init:Dynamic):Dynamic;
	/**
		Given linear recurrence operator `\operatorname{L}` of order `k`
		with polynomial coefficients and inhomogeneous equation
		`\operatorname{L} y = f` we seek for all hypergeometric solutions
		over field `K` of characteristic zero.
		
		The inhomogeneous part can be either hypergeometric or a sum
		of a fixed number of pairwise dissimilar hypergeometric terms.
		
		The algorithm performs three basic steps:
		
		    (1) Group together similar hypergeometric terms in the
		        inhomogeneous part of `\operatorname{L} y = f`, and find
		        particular solution using Abramov's algorithm.
		
		    (2) Compute generating set of `\operatorname{L}` and find basis
		        in it, so that all solutions are linearly independent.
		
		    (3) Form final solution with the number of arbitrary
		        constants equal to dimension of basis of `\operatorname{L}`.
		
		Term `a(n)` is hypergeometric if it is annihilated by first order
		linear difference equations with polynomial coefficients or, in
		simpler words, if consecutive term ratio is a rational function.
		
		The output of this procedure is a linear combination of fixed
		number of hypergeometric terms. However the underlying method
		can generate larger class of solutions - D'Alembertian terms.
		
		Note also that this method not only computes the kernel of the
		inhomogeneous equation, but also reduces in to a basis so that
		solutions generated by this procedure are linearly independent
		
		Examples
		========
		
		>>> from sympy.solvers import rsolve_hyper
		>>> from sympy.abc import x
		
		>>> rsolve_hyper([-1, -1, 1], 0, x)
		C0*(1/2 + sqrt(5)/2)**x + C1*(-sqrt(5)/2 + 1/2)**x
		
		>>> rsolve_hyper([-1, 1], 1 + x, x)
		C0 + x*(x + 1)/2
		
		References
		==========
		
		.. [1] M. Petkovsek, Hypergeometric solutions of linear recurrences
		       with polynomial coefficients, J. Symbolic Computation,
		       14 (1992), 243-264.
		
		.. [2] M. Petkovsek, H. S. Wilf, D. Zeilberger, A = B, 1996.
	**/
	static public function rsolve_hyper(coeffs:Dynamic, f:Dynamic, n:Dynamic, hints:Dynamic):Dynamic;
	/**
		Given linear recurrence operator `\operatorname{L}` of order
		`k` with polynomial coefficients and inhomogeneous equation
		`\operatorname{L} y = f`, where `f` is a polynomial, we seek for
		all polynomial solutions over field `K` of characteristic zero.
		
		The algorithm performs two basic steps:
		
		    (1) Compute degree `N` of the general polynomial solution.
		    (2) Find all polynomials of degree `N` or less
		        of `\operatorname{L} y = f`.
		
		There are two methods for computing the polynomial solutions.
		If the degree bound is relatively small, i.e. it's smaller than
		or equal to the order of the recurrence, then naive method of
		undetermined coefficients is being used. This gives system
		of algebraic equations with `N+1` unknowns.
		
		In the other case, the algorithm performs transformation of the
		initial equation to an equivalent one, for which the system of
		algebraic equations has only `r` indeterminates. This method is
		quite sophisticated (in comparison with the naive one) and was
		invented together by Abramov, Bronstein and Petkovsek.
		
		It is possible to generalize the algorithm implemented here to
		the case of linear q-difference and differential equations.
		
		Lets say that we would like to compute `m`-th Bernoulli polynomial
		up to a constant. For this we can use `b(n+1) - b(n) = m n^{m-1}`
		recurrence, which has solution `b(n) = B_m + C`. For example:
		
		>>> from sympy import Symbol, rsolve_poly
		>>> n = Symbol('n', integer=True)
		
		>>> rsolve_poly([-1, 1], 4*n**3, n)
		C0 + n**4 - 2*n**3 + n**2
		
		References
		==========
		
		.. [1] S. A. Abramov, M. Bronstein and M. Petkovsek, On polynomial
		       solutions of linear operator equations, in: T. Levelt, ed.,
		       Proc. ISSAC '95, ACM Press, New York, 1995, 290-296.
		
		.. [2] M. Petkovsek, Hypergeometric solutions of linear recurrences
		       with polynomial coefficients, J. Symbolic Computation,
		       14 (1992), 243-264.
		
		.. [3] M. Petkovsek, H. S. Wilf, D. Zeilberger, A = B, 1996.
	**/
	static public function rsolve_poly(coeffs:Dynamic, f:Dynamic, n:Dynamic, hints:Dynamic):Dynamic;
	/**
		Given linear recurrence operator `\operatorname{L}` of order `k`
		with polynomial coefficients and inhomogeneous equation
		`\operatorname{L} y = f`, where `f` is a polynomial, we seek
		for all rational solutions over field `K` of characteristic zero.
		
		This procedure accepts only polynomials, however if you are
		interested in solving recurrence with rational coefficients
		then use ``rsolve`` which will pre-process the given equation
		and run this procedure with polynomial arguments.
		
		The algorithm performs two basic steps:
		
		    (1) Compute polynomial `v(n)` which can be used as universal
		        denominator of any rational solution of equation
		        `\operatorname{L} y = f`.
		
		    (2) Construct new linear difference equation by substitution
		        `y(n) = u(n)/v(n)` and solve it for `u(n)` finding all its
		        polynomial solutions. Return ``None`` if none were found.
		
		Algorithm implemented here is a revised version of the original
		Abramov's algorithm, developed in 1989. The new approach is much
		simpler to implement and has better overall efficiency. This
		method can be easily adapted to q-difference equations case.
		
		Besides finding rational solutions alone, this functions is
		an important part of Hyper algorithm were it is used to find
		particular solution of inhomogeneous part of a recurrence.
		
		Examples
		========
		
		>>> from sympy.abc import x
		>>> from sympy.solvers.recurr import rsolve_ratio
		>>> rsolve_ratio([-2*x**3 + x**2 + 2*x - 1, 2*x**3 + x**2 - 6*x,
		... - 2*x**3 - 11*x**2 - 18*x - 9, 2*x**3 + 13*x**2 + 22*x + 8], 0, x)
		C2*(2*x - 3)/(2*(x**2 - 1))
		
		References
		==========
		
		.. [1] S. A. Abramov, Rational solutions of linear difference
		       and q-difference equations with polynomial coefficients,
		       in: T. Levelt, ed., Proc. ISSAC '95, ACM Press, New York,
		       1995, 285-289
		
		See Also
		========
		
		rsolve_hyper
	**/
	static public function rsolve_ratio(coeffs:Dynamic, f:Dynamic, n:Dynamic, hints:Dynamic):Dynamic;
	/**
		Check satisfiability of a propositional sentence.
		Returns a model when it succeeds.
		Returns {true: true} for trivially true expressions.
		
		On setting all_models to True, if given expr is satisfiable then
		returns a generator of models. However, if expr is unsatisfiable
		then returns a generator containing the single element False.
		
		Examples
		========
		
		>>> from sympy.abc import A, B
		>>> from sympy.logic.inference import satisfiable
		>>> satisfiable(A & ~B)
		{A: True, B: False}
		>>> satisfiable(A & ~A)
		False
		>>> satisfiable(True)
		{True: True}
		>>> next(satisfiable(A & ~A, all_models=True))
		False
		>>> models = satisfiable((A >> B) & B, all_models=True)
		>>> next(models)
		{A: False, B: True}
		>>> next(models)
		{A: True, B: True}
		>>> def use_models(models):
		...     for model in models:
		...         if model:
		...             # Do something with the model.
		...             print(model)
		...         else:
		...             # Given expr is unsatisfiable.
		...             print("UNSAT")
		>>> use_models(satisfiable(A >> ~A, all_models=True))
		{A: False}
		>>> use_models(satisfiable(A ^ A, all_models=True))
		UNSAT
	**/
	static public function satisfiable(expr:Dynamic, ?algorithm:Dynamic, ?all_models:Dynamic):Dynamic;
	/**
		Separates variables in an expression, if possible.  By
		default, it separates with respect to all symbols in an
		expression and collects constant coefficients that are
		independent of symbols.
		
		If dict=True then the separated terms will be returned
		in a dictionary keyed to their corresponding symbols.
		By default, all symbols in the expression will appear as
		keys; if symbols are provided, then all those symbols will
		be used as keys, and any terms in the expression containing
		other symbols or non-symbols will be returned keyed to the
		string 'coeff'. (Passing None for symbols will return the
		expression in a dictionary keyed to 'coeff'.)
		
		If force=True, then bases of powers will be separated regardless
		of assumptions on the symbols involved.
		
		Notes
		=====
		The order of the factors is determined by Mul, so that the
		separated expressions may not necessarily be grouped together.
		
		Although factoring is necessary to separate variables in some
		expressions, it is not necessary in all cases, so one should not
		count on the returned factors being factored.
		
		Examples
		========
		
		>>> from sympy.abc import x, y, z, alpha
		>>> from sympy import separatevars, sin
		>>> separatevars((x*y)**y)
		(x*y)**y
		>>> separatevars((x*y)**y, force=True)
		x**y*y**y
		
		>>> e = 2*x**2*z*sin(y)+2*z*x**2
		>>> separatevars(e)
		2*x**2*z*(sin(y) + 1)
		>>> separatevars(e, symbols=(x, y), dict=True)
		{'coeff': 2*z, x: x**2, y: sin(y) + 1}
		>>> separatevars(e, [x, y, alpha], dict=True)
		{'coeff': 2*z, alpha: 1, x: x**2, y: sin(y) + 1}
		
		If the expression is not really separable, or is only partially
		separable, separatevars will do the best it can to separate it
		by using factoring.
		
		>>> separatevars(x + x*y - 3*x**2)
		-x*(3*x - y - 1)
		
		If the expression is not separable then expr is returned unchanged
		or (if dict=True) then None is returned.
		
		>>> eq = 2*x + y*sin(x)
		>>> separatevars(eq) == eq
		True
		>>> separatevars(2*x + y*sin(x), symbols=(x, y), dict=True) == None
		True
	**/
	static public function separatevars(expr:Dynamic, ?symbols:Dynamic, ?dict:Dynamic, ?force:Dynamic):Dynamic;
	/**
		Series expansion of expr around point `x = x0`.
		
		See the doctring of Expr.series() for complete details of this wrapper.
	**/
	static public function series(expr:Dynamic, ?x:Dynamic, ?x0:Dynamic, ?n:Dynamic, ?dir:Dynamic):Dynamic;
	/**
		Should sympy raise an exception on 0/0 or return a nan?
		
		divide == True .... raise an exception
		divide == False ... return nan
	**/
	static public function seterr(?divide:Dynamic):Dynamic;
	/**
		Construct a field deriving generators and domain from options and input expressions. 
	**/
	static public function sfield(exprs:Dynamic, symbols:Dynamic, options:Dynamic):Dynamic;
	static public var sieve : Dynamic;
	/**
		Sift the sequence, ``seq`` into a dictionary according to keyfunc.
		
		OUTPUT: each element in expr is stored in a list keyed to the value
		of keyfunc for the element.
		
		Examples
		========
		
		>>> from sympy.utilities import sift
		>>> from sympy.abc import x, y
		>>> from sympy import sqrt, exp
		
		>>> sift(range(5), lambda x: x % 2)
		{0: [0, 2, 4], 1: [1, 3]}
		
		sift() returns a defaultdict() object, so any key that has no matches will
		give [].
		
		>>> sift([x], lambda x: x.is_commutative)
		{True: [x]}
		>>> _[False]
		[]
		
		Sometimes you won't know how many keys you will get:
		
		>>> sift([sqrt(x), exp(x), (y**x)**2],
		...      lambda x: x.as_base_exp()[0])
		{E: [exp(x)], x: [sqrt(x)], y: [y**(2*x)]}
		
		If you need to sort the sifted items it might be better to use
		``ordered`` which can economically apply multiple sort keys
		to a squence while sorting.
		
		See Also
		========
		ordered
	**/
	static public function sift(seq:Dynamic, keyfunc:Dynamic):Dynamic;
	/**
		Make all Add sub-expressions canonical wrt sign.
		
		If an Add subexpression, ``a``, can have a sign extracted,
		as determined by could_extract_minus_sign, it is replaced
		with Mul(-1, a, evaluate=False). This allows signs to be
		extracted from powers and products.
		
		Examples
		========
		
		>>> from sympy import signsimp, exp, symbols
		>>> from sympy.abc import x, y
		>>> i = symbols('i', odd=True)
		>>> n = -1 + 1/x
		>>> n/x/(-n)**2 - 1/n/x
		(-1 + 1/x)/(x*(1 - 1/x)**2) - 1/(x*(-1 + 1/x))
		>>> signsimp(_)
		0
		>>> x*n + x*-n
		x*(-1 + 1/x) + x*(1 - 1/x)
		>>> signsimp(_)
		0
		
		Since powers automatically handle leading signs
		
		>>> (-2)**i
		-2**i
		
		signsimp can be used to put the base of a power with an integer
		exponent into canonical form:
		
		>>> n**i
		(-1 + 1/x)**i
		>>> signsimp(_)
		-(1 - 1/x)**i
		
		By default, signsimp doesn't leave behind any hollow simplification:
		if making an Add canonical wrt sign didn't change the expression, the
		original Add is restored. If this is not desired then the keyword
		``evaluate`` can be set to False:
		
		>>> e = exp(y - x)
		>>> signsimp(e) == e
		True
		>>> signsimp(e, evaluate=False)
		exp(-(x - y))
	**/
	static public function signsimp(expr:Dynamic, ?evaluate:Dynamic):Dynamic;
	/**
		Simplifies the given expression.
		
		Simplification is not a well defined term and the exact strategies
		this function tries can change in the future versions of SymPy. If
		your algorithm relies on "simplification" (whatever it is), try to
		determine what you need exactly  -  is it powsimp()?, radsimp()?,
		together()?, logcombine()?, or something else? And use this particular
		function directly, because those are well defined and thus your algorithm
		will be robust.
		
		Nonetheless, especially for interactive use, or when you don't know
		anything about the structure of the expression, simplify() tries to apply
		intelligent heuristics to make the input expression "simpler".  For
		example:
		
		>>> from sympy import simplify, cos, sin
		>>> from sympy.abc import x, y
		>>> a = (x + x**2)/(x*sin(y)**2 + x*cos(y)**2)
		>>> a
		(x**2 + x)/(x*sin(y)**2 + x*cos(y)**2)
		>>> simplify(a)
		x + 1
		
		Note that we could have obtained the same result by using specific
		simplification functions:
		
		>>> from sympy import trigsimp, cancel
		>>> trigsimp(a)
		(x**2 + x)/x
		>>> cancel(_)
		x + 1
		
		In some cases, applying :func:`simplify` may actually result in some more
		complicated expression. The default ``ratio=1.7`` prevents more extreme
		cases: if (result length)/(input length) > ratio, then input is returned
		unmodified.  The ``measure`` parameter lets you specify the function used
		to determine how complex an expression is.  The function should take a
		single argument as an expression and return a number such that if
		expression ``a`` is more complex than expression ``b``, then
		``measure(a) > measure(b)``.  The default measure function is
		:func:`count_ops`, which returns the total number of operations in the
		expression.
		
		For example, if ``ratio=1``, ``simplify`` output can't be longer
		than input.
		
		::
		
		    >>> from sympy import sqrt, simplify, count_ops, oo
		    >>> root = 1/(sqrt(2)+3)
		
		Since ``simplify(root)`` would result in a slightly longer expression,
		root is returned unchanged instead::
		
		   >>> simplify(root, ratio=1) == root
		   True
		
		If ``ratio=oo``, simplify will be applied anyway::
		
		    >>> count_ops(simplify(root, ratio=oo)) > count_ops(root)
		    True
		
		Note that the shortest expression is not necessary the simplest, so
		setting ``ratio`` to 1 may not be a good idea.
		Heuristically, the default value ``ratio=1.7`` seems like a reasonable
		choice.
		
		You can easily define your own measure function based on what you feel
		should represent the "size" or "complexity" of the input expression.  Note
		that some choices, such as ``lambda expr: len(str(expr))`` may appear to be
		good metrics, but have other problems (in this case, the measure function
		may slow down simplify too much for very large expressions).  If you don't
		know what a good metric would be, the default, ``count_ops``, is a good
		one.
		
		For example:
		
		>>> from sympy import symbols, log
		>>> a, b = symbols('a b', positive=True)
		>>> g = log(a) + log(b) + log(a)*log(1/b)
		>>> h = simplify(g)
		>>> h
		log(a*b**(-log(a) + 1))
		>>> count_ops(g)
		8
		>>> count_ops(h)
		5
		
		So you can see that ``h`` is simpler than ``g`` using the count_ops metric.
		However, we may not like how ``simplify`` (in this case, using
		``logcombine``) has created the ``b**(log(1/a) + 1)`` term.  A simple way
		to reduce this would be to give more weight to powers as operations in
		``count_ops``.  We can do this by using the ``visual=True`` option:
		
		>>> print(count_ops(g, visual=True))
		2*ADD + DIV + 4*LOG + MUL
		>>> print(count_ops(h, visual=True))
		2*LOG + MUL + POW + SUB
		
		>>> from sympy import Symbol, S
		>>> def my_measure(expr):
		...     POW = Symbol('POW')
		...     # Discourage powers by giving POW a weight of 10
		...     count = count_ops(expr, visual=True).subs(POW, 10)
		...     # Every other operation gets a weight of 1 (the default)
		...     count = count.replace(Symbol, type(S.One))
		...     return count
		>>> my_measure(g)
		8
		>>> my_measure(h)
		14
		>>> 15./8 > 1.7 # 1.7 is the default ratio
		True
		>>> simplify(g, measure=my_measure)
		-log(a)*log(b) + log(a) + log(b)
		
		Note that because ``simplify()`` internally tries many different
		simplification strategies and then compares them using the measure
		function, we get a completely different result that is still different
		from the input expression by doing this.
	**/
	static public function simplify(expr:Dynamic, ?ratio:Dynamic, ?measure:Dynamic, ?fu:Dynamic):Dynamic;
	/**
		This function simplifies a boolean function to its simplified version
		in SOP or POS form. The return type is an Or or And object in SymPy.
		
		Parameters
		==========
		
		expr : string or boolean expression
		form : string ('cnf' or 'dnf') or None (default).
		    If 'cnf' or 'dnf', the simplest expression in the corresponding
		    normal form is returned; if None, the answer is returned
		    according to the form with fewest args (in CNF by default).
		deep : boolean (default True)
		    indicates whether to recursively simplify any
		    non-boolean functions contained within the input.
		
		Examples
		========
		
		>>> from sympy.logic import simplify_logic
		>>> from sympy.abc import x, y, z
		>>> from sympy import S
		>>> b = '(~x & ~y & ~z) | ( ~x & ~y & z)'
		>>> simplify_logic(b)
		And(Not(x), Not(y))
		
		>>> S(b)
		Or(And(Not(x), Not(y), Not(z)), And(Not(x), Not(y), z))
		>>> simplify_logic(_)
		And(Not(x), Not(y))
	**/
	static public function simplify_logic(expr:Dynamic, ?form:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Compute the unitary, ordinary-frequency sine transform of `f`, defined
		as
		
		.. math:: F(k) = \sqrt{\frac{2}{\pi}} \int_{0}^\infty f(x) \sin(2\pi x k) \mathrm{d} x.
		
		If the transform cannot be computed in closed form, this
		function returns an unevaluated :class:`SineTransform` object.
		
		For a description of possible hints, refer to the docstring of
		:func:`sympy.integrals.transforms.IntegralTransform.doit`.
		Note that for this transform, by default ``noconds=True``.
		
		>>> from sympy import sine_transform, exp
		>>> from sympy.abc import x, k, a
		>>> sine_transform(x*exp(-a*x**2), x, k)
		sqrt(2)*k*exp(-k**2/(4*a))/(4*a**(3/2))
		>>> sine_transform(x**(-a), x, k)
		2**(-a + 1/2)*k**(a - 1)*gamma(-a/2 + 1)/gamma(a/2 + 1/2)
		
		See Also
		========
		
		fourier_transform, inverse_fourier_transform
		inverse_sine_transform
		cosine_transform, inverse_cosine_transform
		hankel_transform, inverse_hankel_transform
		mellin_transform, laplace_transform
	**/
	static public function sine_transform(f:Dynamic, x:Dynamic, k:Dynamic, hints:Dynamic):Dynamic;
	/**
		Finds singularities for a function.
		Currently supported functions are:
		- univariate real rational functions
		
		Examples
		========
		
		>>> from sympy.calculus.singularities import singularities
		>>> from sympy import Symbol
		>>> x = Symbol('x', real=True)
		>>> singularities(x**2 + x + 1, x)
		()
		>>> singularities(1/(x + 1), x)
		(-1,)
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Mathematical_singularity
	**/
	static public function singularities(expr:Dynamic, sym:Dynamic):Dynamic;
	/**
		Algebraically solves equations and systems of equations.
		
		Currently supported are:
		    - univariate polynomial,
		    - transcendental
		    - piecewise combinations of the above
		    - systems of linear and polynomial equations
		    - sytems containing relational expressions.
		
		Input is formed as:
		
		* f
		    - a single Expr or Poly that must be zero,
		    - an Equality
		    - a Relational expression or boolean
		    - iterable of one or more of the above
		
		* symbols (object(s) to solve for) specified as
		    - none given (other non-numeric objects will be used)
		    - single symbol
		    - denested list of symbols
		      e.g. solve(f, x, y)
		    - ordered iterable of symbols
		      e.g. solve(f, [x, y])
		
		* flags
		    'dict'=True (default is False)
		        return list (perhaps empty) of solution mappings
		    'set'=True (default is False)
		        return list of symbols and set of tuple(s) of solution(s)
		    'exclude=[] (default)'
		        don't try to solve for any of the free symbols in exclude;
		        if expressions are given, the free symbols in them will
		        be extracted automatically.
		    'check=True (default)'
		        If False, don't do any testing of solutions. This can be
		        useful if one wants to include solutions that make any
		        denominator zero.
		    'numerical=True (default)'
		        do a fast numerical check if ``f`` has only one symbol.
		    'minimal=True (default is False)'
		        a very fast, minimal testing.
		    'warn=True (default is False)'
		        show a warning if checksol() could not conclude.
		    'simplify=True (default)'
		        simplify all but cubic and quartic solutions before
		        returning them and (if check is not False) use the
		        general simplify function on the solutions and the
		        expression obtained when they are substituted into the
		        function which should be zero
		    'force=True (default is False)'
		        make positive all symbols without assumptions regarding sign.
		    'rational=True (default)'
		        recast Floats as Rational; if this option is not used, the
		        system containing floats may fail to solve because of issues
		        with polys. If rational=None, Floats will be recast as
		        rationals but the answer will be recast as Floats. If the
		        flag is False then nothing will be done to the Floats.
		    'manual=True (default is False)'
		        do not use the polys/matrix method to solve a system of
		        equations, solve them one at a time as you might "manually".
		    'implicit=True (default is False)'
		        allows solve to return a solution for a pattern in terms of
		        other functions that contain that pattern; this is only
		        needed if the pattern is inside of some invertible function
		        like cos, exp, ....
		    'particular=True (default is False)'
		        instructs solve to try to find a particular solution to a linear
		        system with as many zeros as possible; this is very expensive
		    'quick=True (default is False)'
		        when using particular=True, use a fast heuristic instead to find a
		        solution with many zeros (instead of using the very slow method
		        guaranteed to find the largest number of zeros possible)
		
		Examples
		========
		
		The output varies according to the input and can be seen by example::
		
		    >>> from sympy import solve, Poly, Eq, Function, exp
		    >>> from sympy.abc import x, y, z, a, b
		    >>> f = Function('f')
		
		* boolean or univariate Relational
		
		    >>> solve(x < 3)
		    And(-oo < re(x), im(x) == 0, re(x) < 3)
		
		* to always get a list of solution mappings, use flag dict=True
		
		    >>> solve(x - 3, dict=True)
		    [{x: 3}]
		    >>> solve([x - 3, y - 1], dict=True)
		    [{x: 3, y: 1}]
		
		* to get a list of symbols and set of solution(s) use flag set=True
		
		    >>> solve([x**2 - 3, y - 1], set=True)
		    ([x, y], set([(-sqrt(3), 1), (sqrt(3), 1)]))
		
		* single expression and single symbol that is in the expression
		
		    >>> solve(x - y, x)
		    [y]
		    >>> solve(x - 3, x)
		    [3]
		    >>> solve(Eq(x, 3), x)
		    [3]
		    >>> solve(Poly(x - 3), x)
		    [3]
		    >>> solve(x**2 - y**2, x, set=True)
		    ([x], set([(-y,), (y,)]))
		    >>> solve(x**4 - 1, x, set=True)
		    ([x], set([(-1,), (1,), (-I,), (I,)]))
		
		* single expression with no symbol that is in the expression
		
		    >>> solve(3, x)
		    []
		    >>> solve(x - 3, y)
		    []
		
		* single expression with no symbol given
		
		      In this case, all free symbols will be selected as potential
		      symbols to solve for. If the equation is univariate then a list
		      of solutions is returned; otherwise -- as is the case when symbols are
		      given as an iterable of length > 1 -- a list of mappings will be returned.
		
		        >>> solve(x - 3)
		        [3]
		        >>> solve(x**2 - y**2)
		        [{x: -y}, {x: y}]
		        >>> solve(z**2*x**2 - z**2*y**2)
		        [{x: -y}, {x: y}, {z: 0}]
		        >>> solve(z**2*x - z**2*y**2)
		        [{x: y**2}, {z: 0}]
		
		* when an object other than a Symbol is given as a symbol, it is
		  isolated algebraically and an implicit solution may be obtained.
		  This is mostly provided as a convenience to save one from replacing
		  the object with a Symbol and solving for that Symbol. It will only
		  work if the specified object can be replaced with a Symbol using the
		  subs method.
		
		      >>> solve(f(x) - x, f(x))
		      [x]
		      >>> solve(f(x).diff(x) - f(x) - x, f(x).diff(x))
		      [x + f(x)]
		      >>> solve(f(x).diff(x) - f(x) - x, f(x))
		      [-x + Derivative(f(x), x)]
		      >>> solve(x + exp(x)**2, exp(x), set=True)
		      ([exp(x)], set([(-sqrt(-x),), (sqrt(-x),)]))
		
		      >>> from sympy import Indexed, IndexedBase, Tuple, sqrt
		      >>> A = IndexedBase('A')
		      >>> eqs = Tuple(A[1] + A[2] - 3, A[1] - A[2] + 1)
		      >>> solve(eqs, eqs.atoms(Indexed))
		      {A[1]: 1, A[2]: 2}
		
		    * To solve for a *symbol* implicitly, use 'implicit=True':
		
		        >>> solve(x + exp(x), x)
		        [-LambertW(1)]
		        >>> solve(x + exp(x), x, implicit=True)
		        [-exp(x)]
		
		    * It is possible to solve for anything that can be targeted with
		      subs:
		
		        >>> solve(x + 2 + sqrt(3), x + 2)
		        [-sqrt(3)]
		        >>> solve((x + 2 + sqrt(3), x + 4 + y), y, x + 2)
		        {y: -2 + sqrt(3), x + 2: -sqrt(3)}
		
		    * Nothing heroic is done in this implicit solving so you may end up
		      with a symbol still in the solution:
		
		        >>> eqs = (x*y + 3*y + sqrt(3), x + 4 + y)
		        >>> solve(eqs, y, x + 2)
		        {y: -sqrt(3)/(x + 3), x + 2: (-2*x - 6 + sqrt(3))/(x + 3)}
		        >>> solve(eqs, y*x, x)
		        {x: -y - 4, x*y: -3*y - sqrt(3)}
		
		    * if you attempt to solve for a number remember that the number
		      you have obtained does not necessarily mean that the value is
		      equivalent to the expression obtained:
		
		        >>> solve(sqrt(2) - 1, 1)
		        [sqrt(2)]
		        >>> solve(x - y + 1, 1)  # /!\ -1 is targeted, too
		        [x/(y - 1)]
		        >>> [_.subs(z, -1) for _ in solve((x - y + 1).subs(-1, z), 1)]
		        [-x + y]
		
		    * To solve for a function within a derivative, use dsolve.
		
		* single expression and more than 1 symbol
		
		    * when there is a linear solution
		
		        >>> solve(x - y**2, x, y)
		        [{x: y**2}]
		        >>> solve(x**2 - y, x, y)
		        [{y: x**2}]
		
		    * when undetermined coefficients are identified
		
		        * that are linear
		
		            >>> solve((a + b)*x - b + 2, a, b)
		            {a: -2, b: 2}
		
		        * that are nonlinear
		
		            >>> solve((a + b)*x - b**2 + 2, a, b, set=True)
		            ([a, b], set([(-sqrt(2), sqrt(2)), (sqrt(2), -sqrt(2))]))
		
		    * if there is no linear solution then the first successful
		      attempt for a nonlinear solution will be returned
		
		        >>> solve(x**2 - y**2, x, y)
		        [{x: -y}, {x: y}]
		        >>> solve(x**2 - y**2/exp(x), x, y)
		        [{x: 2*LambertW(y/2)}]
		        >>> solve(x**2 - y**2/exp(x), y, x)
		        [{y: -x*sqrt(exp(x))}, {y: x*sqrt(exp(x))}]
		
		* iterable of one or more of the above
		
		    * involving relationals or bools
		
		        >>> solve([x < 3, x - 2])
		        And(im(x) == 0, re(x) == 2)
		        >>> solve([x > 3, x - 2])
		        False
		
		    * when the system is linear
		
		        * with a solution
		
		            >>> solve([x - 3], x)
		            {x: 3}
		            >>> solve((x + 5*y - 2, -3*x + 6*y - 15), x, y)
		            {x: -3, y: 1}
		            >>> solve((x + 5*y - 2, -3*x + 6*y - 15), x, y, z)
		            {x: -3, y: 1}
		            >>> solve((x + 5*y - 2, -3*x + 6*y - z), z, x, y)
		            {x: -5*y + 2, z: 21*y - 6}
		
		        * without a solution
		
		            >>> solve([x + 3, x - 3])
		            []
		
		    * when the system is not linear
		
		        >>> solve([x**2 + y -2, y**2 - 4], x, y, set=True)
		        ([x, y], set([(-2, -2), (0, 2), (2, -2)]))
		
		    * if no symbols are given, all free symbols will be selected and a list
		      of mappings returned
		
		        >>> solve([x - 2, x**2 + y])
		        [{x: 2, y: -4}]
		        >>> solve([x - 2, x**2 + f(x)], set([f(x), x]))
		        [{x: 2, f(x): -4}]
		
		    * if any equation doesn't depend on the symbol(s) given it will be
		      eliminated from the equation set and an answer may be given
		      implicitly in terms of variables that were not of interest
		
		        >>> solve([x - y, y - 3], x)
		        {x: y}
		
		Notes
		=====
		
		assumptions aren't checked when `solve()` input involves
		relationals or bools.
		
		When the solutions are checked, those that make any denominator zero
		are automatically excluded. If you do not want to exclude such solutions
		then use the check=False option:
		
		    >>> from sympy import sin, limit
		    >>> solve(sin(x)/x)  # 0 is excluded
		    [pi]
		
		If check=False then a solution to the numerator being zero is found: x = 0.
		In this case, this is a spurious solution since sin(x)/x has the well known
		limit (without dicontinuity) of 1 at x = 0:
		
		    >>> solve(sin(x)/x, check=False)
		    [0, pi]
		
		In the following case, however, the limit exists and is equal to the the
		value of x = 0 that is excluded when check=True:
		
		    >>> eq = x**2*(1/x - z**2/x)
		    >>> solve(eq, x)
		    []
		    >>> solve(eq, x, check=False)
		    [0]
		    >>> limit(eq, x, 0, '-')
		    0
		    >>> limit(eq, x, 0, '+')
		    0
		
		
		See Also
		========
		
		    - rsolve() for solving recurrence relationships
		    - dsolve() for solving differential equations
	**/
	static public function solve(f:Dynamic, symbols:Dynamic, flags:Dynamic):Dynamic;
	/**
		Return a tuple derived from f = lhs - rhs that is either:
		
		    (numerator, denominator) of ``f``
		        If this comes back as (0, 1) it means
		        that ``f`` is independent of the symbols in ``symbols``, e.g::
		
		            y*cos(x)**2 + y*sin(x)**2 - y = y*(0) = 0
		            cos(x)**2 + sin(x)**2 = 1
		
		        If it comes back as (0, 0) there is no solution to the equation
		        amongst the symbols given.
		
		        If the numerator is not zero then the function is guaranteed
		        to be dependent on a symbol in ``symbols``.
		
		    or
		
		    (symbol, solution) where symbol appears linearly in the numerator of
		    ``f``, is in ``symbols`` (if given) and is not in ``exclude`` (if given).
		
		    No simplification is done to ``f`` other than and mul=True expansion,
		    so the solution will correspond strictly to a unique solution.
		
		Examples
		========
		
		>>> from sympy.solvers.solvers import solve_linear
		>>> from sympy.abc import x, y, z
		
		These are linear in x and 1/x:
		
		>>> solve_linear(x + y**2)
		(x, -y**2)
		>>> solve_linear(1/x - y**2)
		(x, y**(-2))
		
		When not linear in x or y then the numerator and denominator are returned.
		
		>>> solve_linear(x**2/y**2 - 3)
		(x**2 - 3*y**2, y**2)
		
		If the numerator is a symbol then (0, 0) is returned if the solution for
		that symbol would have set any denominator to 0:
		
		>>> solve_linear(1/(1/x - 2))
		(0, 0)
		>>> 1/(1/x) # to SymPy, this looks like x ...
		x
		>>> solve_linear(1/(1/x)) # so a solution is given
		(x, 0)
		
		If x is allowed to cancel, then this appears linear, but this sort of
		cancellation is not done so the solution will always satisfy the original
		expression without causing a division by zero error.
		
		>>> solve_linear(x**2*(1/x - z**2/x))
		(x**2*(-z**2 + 1), x)
		
		You can give a list of what you prefer for x candidates:
		
		>>> solve_linear(x + y + z, symbols=[y])
		(y, -x - z)
		
		You can also indicate what variables you don't want to consider:
		
		>>> solve_linear(x + y + z, exclude=[x, z])
		(y, -x - z)
		
		If only x was excluded then a solution for y or z might be obtained.
	**/
	static public function solve_linear(lhs:Dynamic, ?rhs:Dynamic, ?symbols:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Solve system of N linear equations with M variables, which means
		both under- and overdetermined systems are supported. The possible
		number of solutions is zero, one or infinite. Respectively, this
		procedure will return None or a dictionary with solutions. In the
		case of underdetermined systems, all arbitrary parameters are skipped.
		This may cause a situation in which an empty dictionary is returned.
		In that case, all symbols can be assigned arbitrary values.
		
		Input to this functions is a Nx(M+1) matrix, which means it has
		to be in augmented form. If you prefer to enter N equations and M
		unknowns then use `solve(Neqs, *Msymbols)` instead. Note: a local
		copy of the matrix is made by this routine so the matrix that is
		passed will not be modified.
		
		The algorithm used here is fraction-free Gaussian elimination,
		which results, after elimination, in an upper-triangular matrix.
		Then solutions are found using back-substitution. This approach
		is more efficient and compact than the Gauss-Jordan method.
		
		>>> from sympy import Matrix, solve_linear_system
		>>> from sympy.abc import x, y
		
		Solve the following system::
		
		       x + 4 y ==  2
		    -2 x +   y == 14
		
		>>> system = Matrix(( (1, 4, 2), (-2, 1, 14)))
		>>> solve_linear_system(system, x, y)
		{x: -6, y: 2}
		
		A degenerate system returns an empty dictionary.
		
		>>> system = Matrix(( (0,0,0), (0,0,0) ))
		>>> solve_linear_system(system, x, y)
		{}
	**/
	static public function solve_linear_system(system:Dynamic, symbols:Dynamic, flags:Dynamic):Dynamic;
	/**
		Solves the augmented matrix system using LUsolve and returns a dictionary
		in which solutions are keyed to the symbols of syms *as ordered*.
		
		The matrix must be invertible.
		
		Examples
		========
		
		>>> from sympy import Matrix
		>>> from sympy.abc import x, y, z
		>>> from sympy.solvers.solvers import solve_linear_system_LU
		
		>>> solve_linear_system_LU(Matrix([
		... [1, 2, 0, 1],
		... [3, 2, 2, 1],
		... [2, 0, 0, 1]]), [x, y, z])
		{x: 1/2, y: 1/4, z: -1/2}
		
		See Also
		========
		
		sympy.matrices.LUsolve
	**/
	static public function solve_linear_system_LU(matrix:Dynamic, syms:Dynamic):Dynamic;
	/**
		Solve a polynomial inequality with rational coefficients.
		
		Examples
		========
		
		>>> from sympy import Poly
		>>> from sympy.abc import x
		>>> from sympy.solvers.inequalities import solve_poly_inequality
		
		>>> solve_poly_inequality(Poly(x, x, domain='ZZ'), '==')
		[{0}]
		
		>>> solve_poly_inequality(Poly(x**2 - 1, x, domain='ZZ'), '!=')
		[(-oo, -1), (-1, 1), (1, oo)]
		
		>>> solve_poly_inequality(Poly(x**2 - 1, x, domain='ZZ'), '==')
		[{-1}, {1}]
		
		See Also
		========
		solve_poly_inequalities
	**/
	static public function solve_poly_inequality(poly:Dynamic, rel:Dynamic):Dynamic;
	/**
		Solve a system of polynomial equations.
		
		Examples
		========
		
		>>> from sympy import solve_poly_system
		>>> from sympy.abc import x, y
		
		>>> solve_poly_system([x*y - 2*y, 2*y**2 - x**2], x, y)
		[(0, 0), (2, -sqrt(2)), (2, sqrt(2))]
	**/
	static public function solve_poly_system(seq:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Solve a system of rational inequalities with rational coefficients.
		
		Examples
		========
		
		>>> from sympy.abc import x
		>>> from sympy import Poly
		>>> from sympy.solvers.inequalities import solve_rational_inequalities
		
		>>> solve_rational_inequalities([[
		... ((Poly(-x + 1), Poly(1, x)), '>='),
		... ((Poly(-x + 1), Poly(1, x)), '<=')]])
		{1}
		
		>>> solve_rational_inequalities([[
		... ((Poly(x), Poly(1, x)), '!='),
		... ((Poly(-x + 1), Poly(1, x)), '>=')]])
		(-oo, 0) U (0, 1]
		
		See Also
		========
		solve_poly_inequality
	**/
	static public function solve_rational_inequalities(eqs:Dynamic):Dynamic;
	/**
		Solve a polynomial system using Gianni-Kalkbrenner algorithm.
		
		The algorithm proceeds by computing one Groebner basis in the ground
		domain and then by iteratively computing polynomial factorizations in
		appropriately constructed algebraic extensions of the ground domain.
		
		Examples
		========
		
		>>> from sympy.solvers.polysys import solve_triangulated
		>>> from sympy.abc import x, y, z
		
		>>> F = [x**2 + y + z - 1, x + y**2 + z - 1, x + y + z**2 - 1]
		
		>>> solve_triangulated(F, x, y, z)
		[(0, 0, 1), (0, 1, 0), (1, 0, 0)]
		
		References
		==========
		
		1. Patrizia Gianni, Teo Mora, Algebraic Solution of System of
		Polynomial Equations using Groebner Bases, AAECC-5 on Applied Algebra,
		Algebraic Algorithms and Error-Correcting Codes, LNCS 356 247--257, 1989
	**/
	static public function solve_triangulated(polys:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Solve equation of a type p(x; a_1, ..., a_k) == q(x) where both
		p, q are univariate polynomials and f depends on k parameters.
		The result of this functions is a dictionary with symbolic
		values of those parameters with respect to coefficients in q.
		
		This functions accepts both Equations class instances and ordinary
		SymPy expressions. Specification of parameters and variable is
		obligatory for efficiency and simplicity reason.
		
		>>> from sympy import Eq
		>>> from sympy.abc import a, b, c, x
		>>> from sympy.solvers import solve_undetermined_coeffs
		
		>>> solve_undetermined_coeffs(Eq(2*a*x + a+b, x), [a, b], x)
		{a: 1/2, b: -1/2}
		
		>>> solve_undetermined_coeffs(Eq(a*c*x + a+b, x), [a, b], x)
		{a: 1/c, b: -1/c}
	**/
	static public function solve_undetermined_coeffs(equ:Dynamic, coeffs:Dynamic, sym:Dynamic, flags:Dynamic):Dynamic;
	/**
		Solves a real univariate inequality.
		
		Examples
		========
		
		>>> from sympy.solvers.inequalities import solve_univariate_inequality
		>>> from sympy.core.symbol import Symbol
		>>> x = Symbol('x', real=True)
		
		>>> solve_univariate_inequality(x**2 >= 4, x)
		Or(And(-oo < x, x <= -2), And(2 <= x, x < oo))
		
		>>> solve_univariate_inequality(x**2 >= 4, x, relational=False)
		(-oo, -2] U [2, oo)
	**/
	static public function solve_univariate_inequality(expr:Dynamic, gen:Dynamic, ?relational:Dynamic):Dynamic;
	/**
		Prints the source code of a given object.
	**/
	static public function source(object:Dynamic):Dynamic;
	/**
		Compute square-free factorization of ``f``.
		
		Examples
		========
		
		>>> from sympy import sqf
		>>> from sympy.abc import x
		
		>>> sqf(2*x**5 + 16*x**4 + 50*x**3 + 76*x**2 + 56*x + 16)
		2*(x + 1)**2*(x + 2)**3
	**/
	static public function sqf(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute a list of square-free factors of ``f``.
		
		Examples
		========
		
		>>> from sympy import sqf_list
		>>> from sympy.abc import x
		
		>>> sqf_list(2*x**5 + 16*x**4 + 50*x**3 + 76*x**2 + 56*x + 16)
		(2, [(x + 1, 2), (x + 2, 3)])
	**/
	static public function sqf_list(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute square-free norm of ``f``.
		
		Returns ``s``, ``f``, ``r``, such that ``g(x) = f(x-sa)`` and
		``r(x) = Norm(g(x))`` is a square-free polynomial over ``K``,
		where ``a`` is the algebraic extension of the ground domain.
		
		Examples
		========
		
		>>> from sympy import sqf_norm, sqrt
		>>> from sympy.abc import x
		
		>>> sqf_norm(x**2 + 1, extension=[sqrt(3)])
		(1, x**2 - 2*sqrt(3)*x + 4, x**4 - 4*x**2 + 16)
	**/
	static public function sqf_norm(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute square-free part of ``f``.
		
		Examples
		========
		
		>>> from sympy import sqf_part
		>>> from sympy.abc import x
		
		>>> sqf_part(x**3 - 3*x - 2)
		x**2 - x - 2
	**/
	static public function sqf_part(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		The square root function
		
		sqrt(x) -> Returns the principal square root of x.
		
		Examples
		========
		
		>>> from sympy import sqrt, Symbol
		>>> x = Symbol('x')
		
		>>> sqrt(x)
		sqrt(x)
		
		>>> sqrt(x)**2
		x
		
		Note that sqrt(x**2) does not simplify to x.
		
		>>> sqrt(x**2)
		sqrt(x**2)
		
		This is because the two are not equal to each other in general.
		For example, consider x == -1:
		
		>>> from sympy import Eq
		>>> Eq(sqrt(x**2), x).subs(x, -1)
		False
		
		This is because sqrt computes the principal square root, so the square may
		put the argument in a different branch.  This identity does hold if x is
		positive:
		
		>>> y = Symbol('y', positive=True)
		>>> sqrt(y**2)
		y
		
		You can force this simplification by using the powdenest() function with
		the force option set to True:
		
		>>> from sympy import powdenest
		>>> sqrt(x**2)
		sqrt(x**2)
		>>> powdenest(sqrt(x**2), force=True)
		x
		
		To get both branches of the square root you can use the RootOf function:
		
		>>> from sympy import RootOf
		
		>>> [ RootOf(x**2-3,i) for i in (0,1) ]
		[-sqrt(3), sqrt(3)]
		
		See Also
		========
		
		sympy.polys.rootoftools.RootOf, root, real_root
		
		References
		==========
		
		* http://en.wikipedia.org/wiki/Square_root
		* http://en.wikipedia.org/wiki/Principal_value
	**/
	static public function sqrt(arg:Dynamic):Dynamic;
	/**
		find a root of ``x**2 = a mod p``
		
		Parameters
		==========
		
		a : integer
		p : positive integer
		all_roots : if True the list of roots is returned or None
		
		Notes
		=====
		
		If there is no root it is returned None; else the returned root
		is less or equal to ``p // 2``; in general is not the smallest one.
		It is returned ``p // 2`` only if it is the only root.
		
		Use ``all_roots`` only when it is expected that all the roots fit
		in memory; otherwise use ``sqrt_mod_iter``.
		
		Examples
		========
		
		>>> from sympy.ntheory import sqrt_mod
		>>> sqrt_mod(11, 43)
		21
		>>> sqrt_mod(17, 32, True)
		[7, 9, 23, 25]
	**/
	static public function sqrt_mod(a:Dynamic, p:Dynamic, ?all_roots:Dynamic):Dynamic;
	/**
		iterate over solutions to ``x**2 = a mod p``
		
		Parameters
		==========
		
		a : integer
		p : positive integer
		domain : integer domain, ``int``, ``ZZ`` or ``Integer``
		
		Examples
		========
		
		>>> from sympy.ntheory.residue_ntheory import sqrt_mod_iter
		>>> list(sqrt_mod_iter(11, 43))
		[21, 22]
	**/
	static public function sqrt_mod_iter(a:Dynamic, p:Dynamic, ?domain:Dynamic):Dynamic;
	/**
		Denests sqrts in an expression that contain other square roots
		if possible, otherwise returns the expr unchanged. This is based on the
		algorithms of [1].
		
		Examples
		========
		
		>>> from sympy.simplify.sqrtdenest import sqrtdenest
		>>> from sympy import sqrt
		>>> sqrtdenest(sqrt(5 + 2 * sqrt(6)))
		sqrt(2) + sqrt(3)
		
		See Also
		========
		sympy.solvers.solvers.unrad
		
		References
		==========
		[1] http://researcher.watson.ibm.com/researcher/files/us-fagin/symb85.pdf
		
		[2] D. J. Jeffrey and A. D. Rich, 'Symplifying Square Roots of Square Roots
		by Denesting' (available at http://www.cybertester.com/data/denest.pdf)
	**/
	static public function sqrtdenest(expr:Dynamic, ?max_iter:Dynamic):Dynamic;
	/**
		return expr in repr form
	**/
	static public function srepr(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Construct a ring deriving generators and domain from options and input expressions.
		
		Parameters
		----------
		exprs : :class:`Expr` or sequence of :class:`Expr` (sympifiable)
		symbols : sequence of :class:`Symbol`/:class:`Expr`
		options : keyword arguments understood by :class:`Options`
		
		Examples
		--------
		>>> from sympy.core import symbols
		>>> from sympy.polys.rings import sring
		>>> from sympy.polys.domains import ZZ
		>>> from sympy.polys.orderings import lex
		
		>>> x, y, z = symbols("x,y,z")
		>>> R, f = sring(x + 2*y + 3*z)
		>>> R
		Polynomial ring in x, y, z over ZZ with lex order
		>>> f
		x + 2*y + 3*z
		>>> type(_)
		<class 'sympy.polys.rings.PolyElement'>
	**/
	static public function sring(exprs:Dynamic, symbols:Dynamic, options:Dynamic):Dynamic;
	/**
		Returns the expression as a string.
		
		For large expressions where speed is a concern, use the setting
		order='none'.
		
		Examples
		========
		
		>>> from sympy import symbols, Eq, sstr
		>>> a, b = symbols('a b')
		>>> sstr(Eq(a + b, 0))
		'a + b == 0'
	**/
	static public function sstr(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		return expr in mixed str/repr form
		
		i.e. strings are returned in repr form with quotes, and everything else
		is returned in str form.
		
		This function could be useful for hooking into sys.displayhook
	**/
	static public function sstrrepr(expr:Dynamic, settings:Dynamic):Dynamic;
	/**
		Compute Sturm sequence of ``f``.
		
		Examples
		========
		
		>>> from sympy import sturm
		>>> from sympy.abc import x
		
		>>> sturm(x**3 - 2*x**2 + x - 3)
		[x**3 - 2*x**2 + x - 3, 3*x**2 - 4*x + 1, 2*x/9 + 25/9, -2079/4]
	**/
	static public function sturm(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Compute subresultant PRS of ``f`` and ``g``.
		
		Examples
		========
		
		>>> from sympy import subresultants
		>>> from sympy.abc import x
		
		>>> subresultants(x**2 + 1, x**2 - 1)
		[x**2 + 1, x**2 - 1, -2]
	**/
	static public function subresultants(f:Dynamic, g:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Generates all k-subsets (combinations) from an n-element set, seq.
		
		A k-subset of an n-element set is any subset of length exactly k. The
		number of k-subsets of an n-element set is given by binomial(n, k),
		whereas there are 2**n subsets all together. If k is None then all
		2**n subsets will be returned from shortest to longest.
		
		Examples
		========
		
		>>> from sympy.utilities.iterables import subsets
		
		subsets(seq, k) will return the n!/k!/(n - k)! k-subsets (combinations)
		without repetition, i.e. once an item has been removed, it can no
		longer be "taken":
		
		    >>> list(subsets([1, 2], 2))
		    [(1, 2)]
		    >>> list(subsets([1, 2]))
		    [(), (1,), (2,), (1, 2)]
		    >>> list(subsets([1, 2, 3], 2))
		    [(1, 2), (1, 3), (2, 3)]
		
		
		subsets(seq, k, repetition=True) will return the (n - 1 + k)!/k!/(n - 1)!
		combinations *with* repetition:
		
		    >>> list(subsets([1, 2], 2, repetition=True))
		    [(1, 1), (1, 2), (2, 2)]
		
		If you ask for more items than are in the set you get the empty set unless
		you allow repetitions:
		
		    >>> list(subsets([0, 1], 3, repetition=False))
		    []
		    >>> list(subsets([0, 1], 3, repetition=True))
		    [(0, 0, 0), (0, 0, 1), (0, 1, 1), (1, 1, 1)]
	**/
	static public function subsets(seq:Dynamic, ?k:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		Compute the summation of f with respect to symbols.
		
		The notation for symbols is similar to the notation used in Integral.
		summation(f, (i, a, b)) computes the sum of f with respect to i from a to b,
		i.e.,
		
		::
		
		                                b
		                              ____
		                              \   `
		    summation(f, (i, a, b)) =  )    f
		                              /___,
		                              i = a
		
		If it cannot compute the sum, it returns an unevaluated Sum object.
		Repeated sums can be computed by introducing additional symbols tuples::
		
		>>> from sympy import summation, oo, symbols, log
		>>> i, n, m = symbols('i n m', integer=True)
		
		>>> summation(2*i - 1, (i, 1, n))
		n**2
		>>> summation(1/2**i, (i, 0, oo))
		2
		>>> summation(1/log(n)**n, (n, 2, oo))
		Sum(log(n)**(-n), (n, 2, oo))
		>>> summation(i, (i, 0, n), (n, 0, m))
		m**3/6 + m**2/2 + m/3
		
		>>> from sympy.abc import x
		>>> from sympy import factorial
		>>> summation(x**n/factorial(n), (n, 0, oo))
		exp(x)
		
		See Also
		========
		
		Sum
		Product, product
	**/
	static public function summation(f:Dynamic, symbols:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Generates n-th Swinnerton-Dyer polynomial in `x`.  
	**/
	static public function swinnerton_dyer_poly(n:Dynamic, ?x:Dynamic, args:Dynamic):Dynamic;
	/**
		Create a numpy ndarray of symbols (as an object array).
		
		The created symbols are named ``prefix_i1_i2_``...  You should thus provide a
		non-empty prefix if you want your symbols to be unique for different output
		arrays, as SymPy symbols with identical names are the same object.
		
		Parameters
		----------
		
		prefix : string
		  A prefix prepended to the name of every symbol.
		
		shape : int or tuple
		  Shape of the created array.  If an int, the array is one-dimensional; for
		  more than one dimension the shape must be a tuple.
		
		Examples
		--------
		These doctests require numpy.
		
		>>> from sympy import symarray
		>>> symarray('', 3)
		[_0 _1 _2]
		
		If you want multiple symarrays to contain distinct symbols, you *must*
		provide unique prefixes:
		
		>>> a = symarray('', 3)
		>>> b = symarray('', 3)
		>>> a[0] == b[0]
		True
		>>> a = symarray('a', 3)
		>>> b = symarray('b', 3)
		>>> a[0] == b[0]
		False
		
		Creating symarrays with a prefix:
		
		>>> symarray('a', 3)
		[a_0 a_1 a_2]
		
		For more than one dimension, the shape must be given as a tuple:
		
		>>> symarray('a', (2, 3))
		[[a_0_0 a_0_1 a_0_2]
		 [a_1_0 a_1_1 a_1_2]]
		>>> symarray('a', (2, 3, 2))
		[[[a_0_0_0 a_0_0_1]
		  [a_0_1_0 a_0_1_1]
		  [a_0_2_0 a_0_2_1]]
		<BLANKLINE>
		 [[a_1_0_0 a_1_0_1]
		  [a_1_1_0 a_1_1_1]
		  [a_1_2_0 a_1_2_1]]]
	**/
	static public function symarray(prefix:Dynamic, shape:Dynamic):Dynamic;
	/**
		Transform strings into instances of :class:`Symbol` class.
		
		:func:`symbols` function returns a sequence of symbols with names taken
		from ``names`` argument, which can be a comma or whitespace delimited
		string, or a sequence of strings::
		
		    >>> from sympy import symbols, Function
		
		    >>> x, y, z = symbols('x,y,z')
		    >>> a, b, c = symbols('a b c')
		
		The type of output is dependent on the properties of input arguments::
		
		    >>> symbols('x')
		    x
		    >>> symbols('x,')
		    (x,)
		    >>> symbols('x,y')
		    (x, y)
		    >>> symbols(('a', 'b', 'c'))
		    (a, b, c)
		    >>> symbols(['a', 'b', 'c'])
		    [a, b, c]
		    >>> symbols(set(['a', 'b', 'c']))
		    set([a, b, c])
		
		If an iterable container is needed for a single symbol, set the ``seq``
		argument to ``True`` or terminate the symbol name with a comma::
		
		    >>> symbols('x', seq=True)
		    (x,)
		
		To reduce typing, range syntax is supported to create indexed symbols.
		Ranges are indicated by a colon and the type of range is determined by
		the character to the right of the colon. If the character is a digit
		then all contiguous digits to the left are taken as the nonnegative
		starting value (or 0 if there is no digit left of the colon) and all
		contiguous digits to the right are taken as 1 greater than the ending
		value::
		
		    >>> symbols('x:10')
		    (x0, x1, x2, x3, x4, x5, x6, x7, x8, x9)
		
		    >>> symbols('x5:10')
		    (x5, x6, x7, x8, x9)
		    >>> symbols('x5(:2)')
		    (x50, x51)
		
		    >>> symbols('x5:10,y:5')
		    (x5, x6, x7, x8, x9, y0, y1, y2, y3, y4)
		
		    >>> symbols(('x5:10', 'y:5'))
		    ((x5, x6, x7, x8, x9), (y0, y1, y2, y3, y4))
		
		If the character to the right of the colon is a letter, then the single
		letter to the left (or 'a' if there is none) is taken as the start
		and all characters in the lexicographic range *through* the letter to
		the right are used as the range::
		
		    >>> symbols('x:z')
		    (x, y, z)
		    >>> symbols('x:c')  # null range
		    ()
		    >>> symbols('x(:c)')
		    (xa, xb, xc)
		
		    >>> symbols(':c')
		    (a, b, c)
		
		    >>> symbols('a:d, x:z')
		    (a, b, c, d, x, y, z)
		
		    >>> symbols(('a:d', 'x:z'))
		    ((a, b, c, d), (x, y, z))
		
		Multiple ranges are supported; contiguous numerical ranges should be
		separated by parentheses to disambiguate the ending number of one
		range from the starting number of the next::
		
		    >>> symbols('x:2(1:3)')
		    (x01, x02, x11, x12)
		    >>> symbols(':3:2')  # parsing is from left to right
		    (00, 01, 10, 11, 20, 21)
		
		Only one pair of parentheses surrounding ranges are removed, so to
		include parentheses around ranges, double them. And to include spaces,
		commas, or colons, escape them with a backslash::
		
		    >>> symbols('x((a:b))')
		    (x(a), x(b))
		    >>> symbols('x(:1\,:2)')  # or 'x((:1)\,(:2))'
		    (x(0,0), x(0,1))
		
		All newly created symbols have assumptions set according to ``args``::
		
		    >>> a = symbols('a', integer=True)
		    >>> a.is_integer
		    True
		
		    >>> x, y, z = symbols('x,y,z', real=True)
		    >>> x.is_real and y.is_real and z.is_real
		    True
		
		Despite its name, :func:`symbols` can create symbol-like objects like
		instances of Function or Wild classes. To achieve this, set ``cls``
		keyword argument to the desired type::
		
		    >>> symbols('f,g,h', cls=Function)
		    (f, g, h)
		
		    >>> type(_[0])
		    <class 'sympy.core.function.UndefinedFunction'>
	**/
	static public function symbols(names:Dynamic, args:Dynamic):Dynamic;
	/**
		Generates symmetric polynomial of order `n`. 
	**/
	static public function symmetric_poly(n:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Rewrite a polynomial in terms of elementary symmetric polynomials.
		
		A symmetric polynomial is a multivariate polynomial that remains invariant
		under any variable permutation, i.e., if ``f = f(x_1, x_2, ..., x_n)``,
		then ``f = f(x_{i_1}, x_{i_2}, ..., x_{i_n})``, where
		``(i_1, i_2, ..., i_n)`` is a permutation of ``(1, 2, ..., n)`` (an
		element of the group ``S_n``).
		
		Returns a tuple of symmetric polynomials ``(f1, f2, ..., fn)`` such that
		``f = f1 + f2 + ... + fn``.
		
		Examples
		========
		
		>>> from sympy.polys.polyfuncs import symmetrize
		>>> from sympy.abc import x, y
		
		>>> symmetrize(x**2 + y**2)
		(-2*x*y + (x + y)**2, 0)
		
		>>> symmetrize(x**2 + y**2, formal=True)
		(s1**2 - 2*s2, 0, [(s1, x + y), (s2, x*y)])
		
		>>> symmetrize(x**2 - y**2)
		(-2*x*y + (x + y)**2, -2*y**2)
		
		>>> symmetrize(x**2 - y**2, formal=True)
		(s1**2 - 2*s2, -2*y**2, [(s1, x + y), (s2, x*y)])
	**/
	static public function symmetrize(F:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Converts an arbitrary expression to a type that can be used inside SymPy.
		
		For example, it will convert Python ints into instance of sympy.Rational,
		floats into instances of sympy.Float, etc. It is also able to coerce symbolic
		expressions which inherit from Basic. This can be useful in cooperation
		with SAGE.
		
		It currently accepts as arguments:
		   - any object defined in sympy
		   - standard numeric python types: int, long, float, Decimal
		   - strings (like "0.09" or "2e-19")
		   - booleans, including ``None`` (will leave ``None`` unchanged)
		   - lists, sets or tuples containing any of the above
		
		If the argument is already a type that SymPy understands, it will do
		nothing but return that value. This can be used at the beginning of a
		function to ensure you are working with the correct type.
		
		>>> from sympy import sympify
		
		>>> sympify(2).is_integer
		True
		>>> sympify(2).is_real
		True
		
		>>> sympify(2.0).is_real
		True
		>>> sympify("2.0").is_real
		True
		>>> sympify("2e-45").is_real
		True
		
		If the expression could not be converted, a SympifyError is raised.
		
		>>> sympify("x***2")
		Traceback (most recent call last):
		...
		SympifyError: SympifyError: "could not parse u'x***2'"
		
		Locals
		------
		
		The sympification happens with access to everything that is loaded
		by ``from sympy import *``; anything used in a string that is not
		defined by that import will be converted to a symbol. In the following,
		the ``bitcount`` function is treated as a symbol and the ``O`` is
		interpreted as the Order object (used with series) and it raises
		an error when used improperly:
		
		>>> s = 'bitcount(42)'
		>>> sympify(s)
		bitcount(42)
		>>> sympify("O(x)")
		O(x)
		>>> sympify("O + 1")
		Traceback (most recent call last):
		...
		TypeError: unbound method...
		
		In order to have ``bitcount`` be recognized it can be imported into a
		namespace dictionary and passed as locals:
		
		>>> from sympy.core.compatibility import exec_
		>>> ns = {}
		>>> exec_('from sympy.core.evalf import bitcount', ns)
		>>> sympify(s, locals=ns)
		6
		
		In order to have the ``O`` interpreted as a Symbol, identify it as such
		in the namespace dictionary. This can be done in a variety of ways; all
		three of the following are possibilities:
		
		>>> from sympy import Symbol
		>>> ns["O"] = Symbol("O")  # method 1
		>>> exec_('from sympy.abc import O', ns)  # method 2
		>>> ns.update(dict(O=Symbol("O")))  # method 3
		>>> sympify("O + 1", locals=ns)
		O + 1
		
		If you want *all* single-letter and Greek-letter variables to be symbols
		then you can use the clashing-symbols dictionaries that have been defined
		there as private variables: _clash1 (single-letter variables), _clash2
		(the multi-letter Greek names) or _clash (both single and multi-letter
		names that are defined in abc).
		
		>>> from sympy.abc import _clash1
		>>> _clash1
		{'C': C, 'E': E, 'I': I, 'N': N, 'O': O, 'Q': Q, 'S': S}
		>>> sympify('C & Q', _clash1)
		And(C, Q)
		
		Strict
		------
		
		If the option ``strict`` is set to ``True``, only the types for which an
		explicit conversion has been defined are converted. In the other
		cases, a SympifyError is raised.
		
		>>> print(sympify(None))
		None
		>>> sympify(None, strict=True)
		Traceback (most recent call last):
		...
		SympifyError: SympifyError: None
		
		Evaluation
		----------
		
		If the option ``evaluate`` is set to ``False``, then arithmetic and
		operators will be converted into their SymPy equivalents and the
		``evaluate=False`` option will be added. Nested ``Add`` or ``Mul`` will
		be denested first. This is done via an AST transformation that replaces
		operators with their SymPy equivalents, so if an operand redefines any
		of those operations, the redefined operators will not be used.
		
		>>> sympify('2**2 / 3 + 5')
		19/3
		>>> sympify('2**2 / 3 + 5', evaluate=False)
		2**2/3 + 5
		
		Extending
		---------
		
		To extend ``sympify`` to convert custom objects (not derived from ``Basic``),
		just define a ``_sympy_`` method to your class. You can do that even to
		classes that you do not own by subclassing or adding the method at runtime.
		
		>>> from sympy import Matrix
		>>> class MyList1(object):
		...     def __iter__(self):
		...         yield 1
		...         yield 2
		...         raise StopIteration
		...     def __getitem__(self, i): return list(self)[i]
		...     def _sympy_(self): return Matrix(self)
		>>> sympify(MyList1())
		Matrix([
		[1],
		[2]])
		
		If you do not have control over the class definition you could also use the
		``converter`` global dictionary. The key is the class and the value is a
		function that takes a single argument and returns the desired SymPy
		object, e.g. ``converter[MyList] = lambda x: Matrix(x)``.
		
		>>> class MyList2(object):   # XXX Do not do this if you control the class!
		...     def __iter__(self):  #     Use _sympy_!
		...         yield 1
		...         yield 2
		...         raise StopIteration
		...     def __getitem__(self, i): return list(self)[i]
		>>> from sympy.core.sympify import converter
		>>> converter[MyList2] = lambda x: Matrix(x)
		>>> sympify(MyList2())
		Matrix([
		[1],
		[2]])
		
		Notes
		=====
		
		Sometimes autosimplification during sympification results in expressions
		that are very different in structure than what was entered. Until such
		autosimplification is no longer done, the ``kernS`` function might be of
		some use. In the example below you can see how an expression reduces to
		-1 by autosimplification, but does not do so when ``kernS`` is used.
		
		>>> from sympy.core.sympify import kernS
		>>> from sympy.abc import x
		>>> -2*(-(-x + 1/x)/(x*(x - 1/x)**2) - 1/(x*(x - 1/x))) - 1
		-1
		>>> s = '-2*(-(-x + 1/x)/(x*(x - 1/x)**2) - 1/(x*(x - 1/x))) - 1'
		>>> sympify(s)
		-1
		>>> kernS(s)
		-2*(-(-x + 1/x)/(x*(x - 1/x)**2) - 1/(x*(x - 1/x))) - 1
	**/
	static public function sympify(a:Dynamic, ?locals:Dynamic, ?convert_xor:Dynamic, ?strict:Dynamic, ?rational:Dynamic, ?evaluate:Dynamic):Dynamic;
	/**
		Return ``n`` items from ``iter`` iterator. 
	**/
	static public function take(iter:Dynamic, n:Dynamic):Dynamic;
	/**
		Remove GCD of terms from ``f``.
		
		If the ``deep`` flag is True, then the arguments of ``f`` will have
		terms_gcd applied to them.
		
		If a fraction is factored out of ``f`` and ``f`` is an Add, then
		an unevaluated Mul will be returned so that automatic simplification
		does not redistribute it. The hint ``clear``, when set to False, can be
		used to prevent such factoring when all coefficients are not fractions.
		
		Examples
		========
		
		>>> from sympy import terms_gcd, cos
		>>> from sympy.abc import x, y
		>>> terms_gcd(x**6*y**2 + x**3*y, x, y)
		x**3*y*(x**3*y + 1)
		
		The default action of polys routines is to expand the expression
		given to them. terms_gcd follows this behavior:
		
		>>> terms_gcd((3+3*x)*(x+x*y))
		3*x*(x*y + x + y + 1)
		
		If this is not desired then the hint ``expand`` can be set to False.
		In this case the expression will be treated as though it were comprised
		of one or more terms:
		
		>>> terms_gcd((3+3*x)*(x+x*y), expand=False)
		(3*x + 3)*(x*y + x)
		
		In order to traverse factors of a Mul or the arguments of other
		functions, the ``deep`` hint can be used:
		
		>>> terms_gcd((3 + 3*x)*(x + x*y), expand=False, deep=True)
		3*x*(x + 1)*(y + 1)
		>>> terms_gcd(cos(x + x*y), deep=True)
		cos(x*(y + 1))
		
		Rationals are factored out by default:
		
		>>> terms_gcd(x + y/2)
		(2*x + y)/2
		
		Only the y-term had a coefficient that was a fraction; if one
		does not want to factor out the 1/2 in cases like this, the
		flag ``clear`` can be set to False:
		
		>>> terms_gcd(x + y/2, clear=False)
		x + y/2
		>>> terms_gcd(x*y/2 + y**2, clear=False)
		y*(x/2 + y)
		
		The ``clear`` flag is ignored if all coefficients are fractions:
		
		>>> terms_gcd(x/3 + y/2, clear=False)
		(2*x + 3*y)/6
		
		See Also
		========
		sympy.core.exprtools.gcd_terms, sympy.core.exprtools.factor_terms
	**/
	static public function terms_gcd(f:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Run tests in the specified test_*.py files.
		
		Tests in a particular test_*.py file are run if any of the given strings
		in ``paths`` matches a part of the test file's path. If ``paths=[]``,
		tests in all test_*.py files are run.
		
		Notes:
		
		- If sort=False, tests are run in random order (not default).
		- Paths can be entered in native system format or in unix,
		  forward-slash format.
		- Files that are on the blacklist can be tested by providing
		  their path; they are only excluded if no paths are given.
		
		**Explanation of test results**
		
		======  ===============================================================
		Output  Meaning
		======  ===============================================================
		.       passed
		F       failed
		X       XPassed (expected to fail but passed)
		f       XFAILed (expected to fail and indeed failed)
		s       skipped
		w       slow
		T       timeout (e.g., when ``--timeout`` is used)
		K       KeyboardInterrupt (when running the slow tests with ``--slow``,
		        you can interrupt one of them without killing the test runner)
		======  ===============================================================
		
		
		Colors have no additional meaning and are used just to facilitate
		interpreting the output.
		
		Examples
		========
		
		>>> import sympy
		
		Run all tests:
		
		>>> sympy.test()    # doctest: +SKIP
		
		Run one file:
		
		>>> sympy.test("sympy/core/tests/test_basic.py")    # doctest: +SKIP
		>>> sympy.test("_basic")    # doctest: +SKIP
		
		Run all tests in sympy/functions/ and some particular file:
		
		>>> sympy.test("sympy/core/tests/test_basic.py",
		...        "sympy/functions")    # doctest: +SKIP
		
		Run all tests in sympy/core and sympy/utilities:
		
		>>> sympy.test("/core", "/util")    # doctest: +SKIP
		
		Run specific test from a file:
		
		>>> sympy.test("sympy/core/tests/test_basic.py",
		...        kw="test_equality")    # doctest: +SKIP
		
		Run specific test from any file:
		
		>>> sympy.test(kw="subs")    # doctest: +SKIP
		
		Run the tests with verbose mode on:
		
		>>> sympy.test(verbose=True)    # doctest: +SKIP
		
		Don't sort the test output:
		
		>>> sympy.test(sort=False)    # doctest: +SKIP
		
		Turn on post-mortem pdb:
		
		>>> sympy.test(pdb=True)    # doctest: +SKIP
		
		Turn off colors:
		
		>>> sympy.test(colors=False)    # doctest: +SKIP
		
		Force colors, even when the output is not to a terminal (this is useful,
		e.g., if you are piping to ``less -r`` and you still want colors)
		
		>>> sympy.test(force_colors=False)    # doctest: +SKIP
		
		The traceback verboseness can be set to "short" or "no" (default is
		"short")
		
		>>> sympy.test(tb='no')    # doctest: +SKIP
		
		The ``split`` option can be passed to split the test run into parts. The
		split currently only splits the test files, though this may change in the
		future. ``split`` should be a string of the form 'a/b', which will run
		part ``a`` of ``b``. For instance, to run the first half of the test suite:
		
		>>> sympy.test(split='1/2')  # doctest: +SKIP
		
		You can disable running the tests in a separate subprocess using
		``subprocess=False``.  This is done to support seeding hash randomization,
		which is enabled by default in the Python versions where it is supported.
		If subprocess=False, hash randomization is enabled/disabled according to
		whether it has been enabled or not in the calling Python process.
		However, even if it is enabled, the seed cannot be printed unless it is
		called from a new Python process.
		
		Hash randomization was added in the minor Python versions 2.6.8, 2.7.3,
		3.1.5, and 3.2.3, and is enabled by default in all Python versions after
		and including 3.3.0.
		
		If hash randomization is not supported ``subprocess=False`` is used
		automatically.
		
		>>> sympy.test(subprocess=False)     # doctest: +SKIP
		
		To set the hash randomization seed, set the environment variable
		``PYTHONHASHSEED`` before running the tests.  This can be done from within
		Python using
		
		>>> import os
		>>> os.environ['PYTHONHASHSEED'] = '42' # doctest: +SKIP
		
		Or from the command line using
		
		$ PYTHONHASHSEED=42 ./bin/test
		
		If the seed is not set, a random seed will be chosen.
		
		Note that to reproduce the same hash values, you must use both the same seed
		as well as the same architecture (32-bit vs. 64-bit).
	**/
	static public function test(paths:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Print a crude ASCII art plot of the SymPy expression 'expr' (which
		should contain a single symbol, e.g. x or something else) over the
		interval [a, b].
		
		Examples
		========
		
		textplot(sin(t)*t, 0, 15)
	**/
	static public function textplot(expr:Dynamic, a:Dynamic, b:Dynamic, ?W:Dynamic, ?H:Dynamic):Dynamic;
	/**
		Apply ``func`` to sub--elements of an object, including :class:`Add`.
		
		This decorator is intended to make it uniformly possible to apply a
		function to all elements of composite objects, e.g. matrices, lists, tuples
		and other iterable containers, or just expressions.
		
		This version of :func:`threaded` decorator allows threading over
		elements of :class:`Add` class. If this behavior is not desirable
		use :func:`xthreaded` decorator.
		
		Functions using this decorator must have the following signature::
		
		  @threaded
		  def function(expr, *args, **kwargs):
	**/
	static public function threaded(func:Dynamic):Dynamic;
	/**
		Adaptively measure execution time of a function. 
	**/
	static public function timed(func:Dynamic, ?setup:Dynamic, ?limit:Dynamic):Dynamic;
	/**
		Convert a propositional logical sentence s to conjunctive normal form.
		That is, of the form ((A | ~B | ...) & (B | C | ...) & ...)
		If simplify is True, the expr is evaluated to its simplest CNF form.
		
		Examples
		========
		
		>>> from sympy.logic.boolalg import to_cnf
		>>> from sympy.abc import A, B, D
		>>> to_cnf(~(A | B) | D)
		And(Or(D, Not(A)), Or(D, Not(B)))
		>>> to_cnf((A | B) & (A | ~A), True)
		Or(A, B)
	**/
	static public function to_cnf(expr:Dynamic, ?simplify:Dynamic):Dynamic;
	/**
		Convert a propositional logical sentence s to disjunctive normal form.
		That is, of the form ((A & ~B & ...) | (B & C & ...) | ...)
		If simplify is True, the expr is evaluated to its simplest DNF form.
		
		Examples
		========
		
		>>> from sympy.logic.boolalg import to_dnf
		>>> from sympy.abc import A, B, C
		>>> to_dnf(B & (A | C))
		Or(And(A, B), And(B, C))
		>>> to_dnf((A & B) | (A & ~B) | (B & C) | (~B & C), True)
		Or(A, C)
	**/
	static public function to_dnf(expr:Dynamic, ?simplify:Dynamic):Dynamic;
	/**
		Converts expr to Negation Normal Form.
		A logical expression is in Negation Normal Form (NNF) if it
		contains only And, Or and Not, and Not is applied only to literals.
		If simpify is True, the result contains no redundant clauses.
		
		Examples
		========
		
		>>> from sympy.abc import A, B, C, D
		>>> from sympy.logic.boolalg import Not, Equivalent, to_nnf
		>>> to_nnf(Not((~A & ~B) | (C & D)))
		And(Or(A, B), Or(Not(C), Not(D)))
		>>> to_nnf(Equivalent(A >> B, B >> A))
		And(Or(A, And(A, Not(B)), Not(B)), Or(And(B, Not(A)), B, Not(A)))
	**/
	static public function to_nnf(expr:Dynamic, ?simplify:Dynamic):Dynamic;
	/**
		Express `extension` in the field generated by `theta`. 
	**/
	static public function to_number_field(extension:Dynamic, ?theta:Dynamic, args:Dynamic):Dynamic;
	/**
		Denest and combine rational expressions using symbolic methods.
		
		This function takes an expression or a container of expressions
		and puts it (them) together by denesting and combining rational
		subexpressions. No heroic measures are taken to minimize degree
		of the resulting numerator and denominator. To obtain completely
		reduced expression use :func:`cancel`. However, :func:`together`
		can preserve as much as possible of the structure of the input
		expression in the output (no expansion is performed).
		
		A wide variety of objects can be put together including lists,
		tuples, sets, relational objects, integrals and others. It is
		also possible to transform interior of function applications,
		by setting ``deep`` flag to ``True``.
		
		By definition, :func:`together` is a complement to :func:`apart`,
		so ``apart(together(expr))`` should return expr unchanged. Note
		however, that :func:`together` uses only symbolic methods, so
		it might be necessary to use :func:`cancel` to perform algebraic
		simplification and minimise degree of the numerator and denominator.
		
		Examples
		========
		
		>>> from sympy import together, exp
		>>> from sympy.abc import x, y, z
		
		>>> together(1/x + 1/y)
		(x + y)/(x*y)
		>>> together(1/x + 1/y + 1/z)
		(x*y + x*z + y*z)/(x*y*z)
		
		>>> together(1/(x*y) + 1/y**2)
		(x + y)/(x*y**2)
		
		>>> together(1/(1 + 1/x) + 1/(1 + 1/y))
		(x*(y + 1) + y*(x + 1))/((x + 1)*(y + 1))
		
		>>> together(exp(1/x + 1/y))
		exp(1/y + 1/x)
		>>> together(exp(1/x + 1/y), deep=True)
		exp((x + y)/(x*y))
		
		>>> together(1/exp(x) + 1/(x*exp(x)))
		(x + 1)*exp(-x)/x
		
		>>> together(1/exp(2*x) + 1/(x*exp(3*x)))
		(x*exp(x) + 1)*exp(-3*x)/x
	**/
	static public function together(expr:Dynamic, ?deep:Dynamic):Dynamic;
	/**
		Topological sort of graph's vertices.
		
		Parameters
		==========
		
		``graph`` : ``tuple[list, list[tuple[T, T]]``
		    A tuple consisting of a list of vertices and a list of edges of
		    a graph to be sorted topologically.
		
		``key`` : ``callable[T]`` (optional)
		    Ordering key for vertices on the same level. By default the natural
		    (e.g. lexicographic) ordering is used (in this case the base type
		    must implement ordering relations).
		
		Examples
		========
		
		Consider a graph::
		
		    +---+     +---+     +---+
		    | 7 |\    | 5 |     | 3 |
		    +---+ \   +---+     +---+
		      |   _\___/ ____   _/ |
		      |  /  \___/    \ /   |
		      V  V           V V   |
		     +----+         +---+  |
		     | 11 |         | 8 |  |
		     +----+         +---+  |
		      | | \____   ___/ _   |
		      | \      \ /    / \  |
		      V  \     V V   /  V  V
		    +---+ \   +---+ |  +----+
		    | 2 |  |  | 9 | |  | 10 |
		    +---+  |  +---+ |  +----+
		           \________/
		
		where vertices are integers. This graph can be encoded using
		elementary Python's data structures as follows::
		
		    >>> V = [2, 3, 5, 7, 8, 9, 10, 11]
		    >>> E = [(7, 11), (7, 8), (5, 11), (3, 8), (3, 10),
		    ...      (11, 2), (11, 9), (11, 10), (8, 9)]
		
		To compute a topological sort for graph ``(V, E)`` issue::
		
		    >>> from sympy.utilities.iterables import topological_sort
		
		    >>> topological_sort((V, E))
		    [3, 5, 7, 8, 11, 2, 9, 10]
		
		If specific tie breaking approach is needed, use ``key`` parameter::
		
		    >>> topological_sort((V, E), key=lambda v: -v)
		    [7, 5, 11, 3, 10, 8, 9, 2]
		
		Only acyclic graphs can be sorted. If the input graph has a cycle,
		then :py:exc:`ValueError` will be raised::
		
		    >>> topological_sort((V, E + [(10, 7)]))
		    Traceback (most recent call last):
		    ...
		    ValueError: cycle detected
		
		.. seealso:: http://en.wikipedia.org/wiki/Topological_sorting
	**/
	static public function topological_sort(graph:Dynamic, ?key:Dynamic):Dynamic;
	/**
		Trace of a Matrix.  Sum of the diagonal elements
		
		>>> from sympy import trace, Symbol, MatrixSymbol, pprint, eye
		>>> n = Symbol('n')
		>>> X = MatrixSymbol('X', n, n)  # A square matrix
		>>> trace(2*X)
		2*Trace(X)
		
		>>> trace(eye(3))
		3
		
		See Also:
		    Trace
	**/
	static public function trace(expr:Dynamic):Dynamic;
	/**
		Count the number of trailing zero digits in the binary
		representation of n, i.e. determine the largest power of 2
		that divides n.
		
		Examples
		========
		
		>>> from sympy import trailing
		>>> trailing(128)
		7
		>>> trailing(63)
		0
	**/
	static public function trailing(n:Dynamic):Dynamic;
	/**
		The trigamma function is the second derivative of the loggamma function i.e,
		
		.. math::
		    \psi^{(1)}(z) := \frac{\mathrm{d}^{2}}{\mathrm{d} z^{2}} \log\Gamma(z).
		
		In this case, ``trigamma(z) = polygamma(1, z)``.
		
		See Also
		========
		
		gamma: Gamma function.
		lowergamma: Lower incomplete gamma function.
		uppergamma: Upper incomplete gamma function.
		polygamma: Polygamma function.
		loggamma: Log Gamma function.
		digamma: Digamma function.
		sympy.functions.special.beta_functions.beta: Euler Beta function.
		
		References
		==========
		
		.. [1] http://en.wikipedia.org/wiki/Trigamma_function
		.. [2] http://mathworld.wolfram.com/TrigammaFunction.html
		.. [3] http://functions.wolfram.com/GammaBetaErf/PolyGamma2/
	**/
	static public function trigamma(x:Dynamic):Dynamic;
	/**
		reduces expression by using known trig identities
		
		Notes
		=====
		
		method:
		- Determine the method to use. Valid choices are 'matching' (default),
		'groebner', 'combined', and 'fu'. If 'matching', simplify the
		expression recursively by targeting common patterns. If 'groebner', apply
		an experimental groebner basis algorithm. In this case further options
		are forwarded to ``trigsimp_groebner``, please refer to its docstring.
		If 'combined', first run the groebner basis algorithm with small
		default parameters, then run the 'matching' algorithm. 'fu' runs the
		collection of trigonometric transformations described by Fu, et al.
		(see the `fu` docstring).
		
		
		Examples
		========
		
		>>> from sympy import trigsimp, sin, cos, log
		>>> from sympy.abc import x, y
		>>> e = 2*sin(x)**2 + 2*cos(x)**2
		>>> trigsimp(e)
		2
		
		Simplification occurs wherever trigonometric functions are located.
		
		>>> trigsimp(log(e))
		log(2)
		
		Using `method="groebner"` (or `"combined"`) might lead to greater
		simplification.
		
		The old trigsimp routine can be accessed as with method 'old'.
		
		>>> from sympy import coth, tanh
		>>> t = 3*tanh(x)**7 - 2/coth(x)**7
		>>> trigsimp(t, method='old') == t
		True
		>>> trigsimp(t)
		tanh(x)**7
	**/
	static public function trigsimp(expr:Dynamic, opts:Dynamic):Dynamic;
	@:native("true")
	static public var _true : Dynamic;
	/**
		Reduce ``f`` modulo a constant ``p``.
		
		Examples
		========
		
		>>> from sympy import trunc
		>>> from sympy.abc import x
		
		>>> trunc(2*x**3 + 3*x**2 + 5*x + 7, 3)
		-x**3 - x + 1
	**/
	static public function trunc(f:Dynamic, p:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	static public function unbranched_argument(arg:Dynamic):Dynamic;
	/**
		Group ``iter`` into tuples of length ``n``. Raise an error if
		the length of ``iter`` is not a multiple of ``n``.
	**/
	static public function unflatten(iter:Dynamic, ?n:Dynamic):Dynamic;
	/**
		If p denotes the projection from the Riemann surface of the logarithm to
		the complex line, return a simplified version eq' of `eq` such that
		p(eq') == p(eq).
		Also apply the substitution subs in the end. (This is a convenience, since
		``unpolarify``, in a certain sense, undoes polarify.)
		
		>>> from sympy import unpolarify, polar_lift, sin, I
		>>> unpolarify(polar_lift(I + 2))
		2 + I
		>>> unpolarify(sin(polar_lift(I + 7)))
		sin(7 + I)
	**/
	static public function unpolarify(eq:Dynamic, ?subs:Dynamic, ?exponents_only:Dynamic):Dynamic;
	/**
		Use ``func`` to transform ``expr`` at the given level.
		
		Examples
		========
		
		>>> from sympy import use, expand
		>>> from sympy.abc import x, y
		
		>>> f = (x + y)**2*x + 1
		
		>>> use(f, expand, level=2)
		x*(x**2 + 2*x*y + y**2) + 1
		>>> expand(f)
		x**3 + 2*x**2*y + x*y**2 + 1
	**/
	static public function use(expr:Dynamic, func:Dynamic, ?level:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Create symbols and inject them into the global namespace.
		
		This calls :func:`symbols` with the same arguments and puts the results
		into the *global* namespace. It's recommended not to use :func:`var` in
		library code, where :func:`symbols` has to be used::
		
		Examples
		========
		
		>>> from sympy import var
		
		>>> var('x')
		x
		>>> x
		x
		
		>>> var('a,ab,abc')
		(a, ab, abc)
		>>> abc
		abc
		
		>>> var('x,y', real=True)
		(x, y)
		>>> x.is_real and y.is_real
		True
		
		See :func:`symbol` documentation for more details on what kinds of
		arguments can be passed to :func:`var`.
	**/
	@:native("var")
	static public function _var(names:Dynamic, args:Dynamic):Dynamic;
	/**
		Returns a generator of the n-sized variations of ``seq`` (size N).
		``repetition`` controls whether items in ``seq`` can appear more than once;
		
		Examples
		========
		
		variations(seq, n) will return N! / (N - n)! permutations without
		repetition of seq's elements:
		
		    >>> from sympy.utilities.iterables import variations
		    >>> list(variations([1, 2], 2))
		    [(1, 2), (2, 1)]
		
		variations(seq, n, True) will return the N**n permutations obtained
		by allowing repetition of elements:
		
		    >>> list(variations([1, 2], 2, repetition=True))
		    [(1, 1), (1, 2), (2, 1), (2, 2)]
		
		If you ask for more items than are in the set you get the empty set unless
		you allow repetitions:
		
		    >>> list(variations([0, 1], 3, repetition=False))
		    []
		    >>> list(variations([0, 1], 3, repetition=True))[:4]
		    [(0, 0, 0), (0, 0, 1), (0, 1, 0), (0, 1, 1)]
		
		See Also
		========
		
		sympy.core.compatibility.permutations
		sympy.core.compatibility.product
	**/
	static public function variations(seq:Dynamic, n:Dynamic, ?repetition:Dynamic):Dynamic;
	/**
		Construct new rational function field and inject generators into global namespace. 
	**/
	static public function vfield(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Generate Viete's formulas for ``f``.
		
		Examples
		========
		
		>>> from sympy.polys.polyfuncs import viete
		>>> from sympy import symbols
		
		>>> x, a, b, c, r1, r2 = symbols('x,a:c,r1:3')
		
		>>> viete(a*x**2 + b*x + c, [r1, r2], x)
		[(r1 + r2, -b/a), (r1*r2, c/a)]
	**/
	static public function viete(f:Dynamic, ?roots:Dynamic, gens:Dynamic, args:Dynamic):Dynamic;
	/**
		Construct a polynomial ring and inject ``x_1, ..., x_n`` into the global namespace.
		
		Parameters
		----------
		symbols : str, Symbol/Expr or sequence of str, Symbol/Expr (non-empty)
		domain : :class:`Domain` or coercible
		order : :class:`Order` or coercible, optional, defaults to ``lex``
		
		Examples
		--------
		>>> from sympy.polys.rings import vring
		>>> from sympy.polys.domains import ZZ
		>>> from sympy.polys.orderings import lex
		
		>>> vring("x,y,z", ZZ, lex)
		Polynomial ring in x, y, z over ZZ with lex order
		>>> x + y + z
		x + y + z
		>>> type(_)
		<class 'sympy.polys.rings.PolyElement'>
	**/
	static public function vring(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Compute Wronskian for [] of functions
		
		::
		
		                     | f1       f2        ...   fn      |
		                     | f1'      f2'       ...   fn'     |
		                     |  .        .        .      .      |
		    W(f1, ..., fn) = |  .        .         .     .      |
		                     |  .        .          .    .      |
		                     |  (n)      (n)            (n)     |
		                     | D   (f1) D   (f2)  ...  D   (fn) |
		
		see: http://en.wikipedia.org/wiki/Wronskian
		
		See Also
		========
		
		sympy.matrices.mutable.Matrix.jacobian
		hessian
	**/
	static public function wronskian(functions:Dynamic, _var:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Construct new rational function field returning (field, (x1, ..., xn)). 
	**/
	static public function xfield(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Construct a polynomial ring returning ``(ring, (x_1, ..., x_n))``.
		
		Parameters
		----------
		symbols : str, Symbol/Expr or sequence of str, Symbol/Expr (non-empty)
		domain : :class:`Domain` or coercible
		order : :class:`Order` or coercible, optional, defaults to ``lex``
		
		Examples
		--------
		>>> from sympy.polys.rings import xring
		>>> from sympy.polys.domains import ZZ
		>>> from sympy.polys.orderings import lex
		
		>>> R, (x, y, z) = xring("x,y,z", ZZ, lex)
		>>> R
		Polynomial ring in x, y, z over ZZ with lex order
		>>> x + y + z
		x + y + z
		>>> type(_)
		<class 'sympy.polys.rings.PolyElement'>
	**/
	static public function xring(symbols:Dynamic, domain:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Apply ``func`` to sub--elements of an object, excluding :class:`Add`.
		
		This decorator is intended to make it uniformly possible to apply a
		function to all elements of composite objects, e.g. matrices, lists, tuples
		and other iterable containers, or just expressions.
		
		This version of :func:`threaded` decorator disallows threading over
		elements of :class:`Add` class. If this behavior is not desirable
		use :func:`threaded` decorator.
		
		Functions using this decorator must have the following signature::
		
		  @xthreaded
		  def function(expr, *args, **kwargs):
	**/
	static public function xthreaded(func:Dynamic):Dynamic;
	/**
		Returns a matrix of zeros with ``r`` rows and ``c`` columns;
		if ``c`` is omitted a square matrix will be returned.
		
		See Also
		========
		
		ones
		eye
		diag
	**/
	static public function zeros(r:Dynamic, ?c:Dynamic, ?cls:Dynamic):Dynamic;
	static public var zoo : Dynamic;
}