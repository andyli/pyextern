/* This file is generated, do not edit! */
package scipy.special;
@:pythonImport("scipy.special.orthogonal") extern class Orthogonal {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for Tricomi initial guesses
		
		For details, see formula 3.1 in lemma 3.1 in the
		original paper.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots :math:`  au_k` to compute
		maxit : int
		    Number of Newton maxit performed, the default
		    value of 5 is sufficient.
		
		Returns
		-------
		tauk : ndarray
		    Roots of equation 3.1
		
		See Also
		--------
		initial_nodes_a
		h_roots_asy
	**/
	static public function _compute_tauk(n:Dynamic, k:Dynamic, ?maxit:Dynamic):Dynamic;
	/**
		gamma(x[, out])
		
		gamma(z)
		
		Gamma function
		
		The gamma function is often referred to as the generalized
		factorial since ``z*gamma(z) = gamma(z+1)`` and ``gamma(n+1) =
		n!`` for natural number *n*.
	**/
	static public function _gam(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[x,w] = gen_roots_and_weights(n,an_func,sqrt_bn_func,mu)
		
		Returns the roots (x) of an nth order orthogonal polynomial,
		and weights (w) to use in appropriate Gaussian quadrature with that
		orthogonal polynomial.
		
		The polynomials have the recurrence relation
		      P_n+1(x) = (x - A_n) P_n(x) - B_n P_n-1(x)
		
		an_func(n)          should return A_n
		sqrt_bn_func(n)     should return sqrt(B_n)
		mu ( = h_0 )        is the integral of the weight over the orthogonal
		                    interval
	**/
	static public function _gen_roots_and_weights(n:Dynamic, mu0:Dynamic, an_func:Dynamic, bn_func:Dynamic, f:Dynamic, df:Dynamic, symmetrize:Dynamic, mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature for large n
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the `n`th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-inf, inf]` with weight function :math:`f(x) = e^{-x^2}`.
		This method relies on asymptotic expansions which work best for n > 150.
		The algorithm has linear runtime making computation for very large n
		feasible.
		
		Parameters
		----------
		n : int
		    quadrature order
		
		Returns
		-------
		nodes : ndarray
		    Quadrature nodes
		weights : ndarray
		    Quadrature weights
		
		See Also
		--------
		h_roots
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. ArXiv 1410.5286.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   doi: 10.1093/imanum/drv002
	**/
	static public function _h_roots_asy(n:Dynamic):Dynamic;
	/**
		Initial guesses for the Hermite roots
		
		Computes an initial approximation to the non-negative
		roots :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The Tricomi and Gatteschi initial
		guesses are used in the region where they are accurate.
		
		Parameters
		----------
		n : int
		    Quadrature order
		
		Returns
		-------
		xk : ndarray
		    Approximate roots
		
		See Also
		--------
		h_roots_asy
	**/
	static public function _initial_nodes(n:Dynamic):Dynamic;
	/**
		Tricomi initial guesses
		
		Computes an initial approximation to the square of the `k`-th
		(positive) root :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The formula is the one from lemma 3.1 in the
		original paper. The guesses are accurate except in the region
		near :math:`\sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots to compute
		
		Returns
		-------
		xksq : ndarray
		    Square of the approximate roots
		
		See Also
		--------
		initial_nodes
		h_roots_asy
	**/
	static public function _initial_nodes_a(n:Dynamic, k:Dynamic):Dynamic;
	/**
		Gatteschi initial guesses
		
		Computes an initial approximation to the square of the `k`-th
		(positive) root :math:`x_k` of the Hermite polynomial :math:`H_n`
		of order :math:`n`. The formula is the one from lemma 3.2 in the
		original paper. The guesses are accurate in the region just
		below :math:`\sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		k : ndarray of type int
		    Index of roots to compute
		
		Returns
		-------
		xksq : ndarray
		    Square of the approximate root
		
		See Also
		--------
		initial_nodes
		h_roots_asy
	**/
	static public function _initial_nodes_b(n:Dynamic, k:Dynamic):Dynamic;
	/**
		Newton iteration for polishing the asymptotic approximation
		to the zeros of the Hermite polynomials.
		
		Parameters
		----------
		n : int
		    Quadrature order
		x_initial : ndarray
		    Initial guesses for the roots
		maxit : int
		    Maximal number of Newton iterations.
		    The default 5 is sufficient, usually
		    only one or two steps are needed.
		
		Returns
		-------
		nodes : ndarray
		    Quadrature nodes
		weights : ndarray
		    Quadrature weights
		
		See Also
		--------
		h_roots_asy
	**/
	static public function _newton(n:Dynamic, x_initial:Dynamic, ?maxit:Dynamic):Dynamic;
	/**
		Asymptotic series expansion of parabolic cylinder function
		
		The implementation is based on sections 3.2 and 3.3 from the
		original paper. Compared to the published version this code
		adds one more term to the asymptotic series. The detailed
		formulas can be found at [parabolic-asymptotics]_. The evaluation
		is done in a transformed variable :math:`   heta := rccos(t)`
		where :math:`t := x / \mu` and :math:`\mu := \sqrt{2n + 1}`.
		
		Parameters
		----------
		n : int
		    Quadrature order
		theta : ndarray
		    Transformed position variable
		
		Returns
		-------
		U : ndarray
		    Value of the parabolic cylinder function :math:`U(a,    heta)`.
		Ud : ndarray
		    Value of the derivative :math:`U^{\prime}(a,    heta)` of
		    the parabolic cylinder function.
		
		See Also
		--------
		h_roots_asy
		
		References
		----------
		.. [parabolic-asymptotics]
		   http://dlmf.nist.gov/12.10#vii
	**/
	static public function _pbcf(n:Dynamic, theta:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		airy(x[, out1, out2, out3, out4])
		
		airy(z)
		
		Airy functions and their derivatives.
		
		Parameters
		----------
		z : float or complex
		    Argument.
		
		Returns
		-------
		Ai, Aip, Bi, Bip
		    Airy functions Ai and Bi, and their derivatives Aip and Bip
		
		Notes
		-----
		The Airy functions Ai and Bi are two independent solutions of y''(x) = x y.
	**/
	static public function airy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Test whether any array element along a given axis evaluates to True.
		
		Returns single boolean unless `axis` is not ``None``
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical OR reduction is performed.
		    The default (`axis` = `None`) is to perform a logical OR over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output and its type is preserved
		    (e.g., if it is of type float, then it will remain so, returning
		    1.0 for True and 0.0 for False, regardless of the type of `a`).
		    See `doc.ufuncs` (Section "Output arguments") for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		any : bool or ndarray
		    A new boolean or `ndarray` is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.any : equivalent method
		
		all : Test whether all elements along a given axis evaluate to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity evaluate
		to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.any([[True, False], [True, True]])
		True
		
		>>> np.any([[True, False], [False, False]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.any([-1, 0, 5])
		True
		
		>>> np.any(np.nan)
		True
		
		>>> o=np.array([False])
		>>> z=np.any([-1, 4, 5], out=o)
		>>> z, o
		(array([ True], dtype=bool), array([ True], dtype=bool))
		>>> # Check now that z is a reference to o
		>>> z is o
		True
		>>> id(z), id(o) # identity of z and o              # doctest: +SKIP
		(191614240, 191614240)
	**/
	static public function any(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arccos(x[, out])
		
		Trigonometric inverse cosine, element-wise.
		
		The inverse of `cos` so that, if ``y = cos(x)``, then ``x = arccos(y)``.
		
		Parameters
		----------
		x : array_like
		    `x`-coordinate on the unit circle.
		    For real arguments, the domain is [-1, 1].
		
		out : ndarray, optional
		    Array of the same shape as `a`, to store results in. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		
		Returns
		-------
		angle : ndarray
		    The angle of the ray intersecting the unit circle at the given
		    `x`-coordinate in radians [0, pi]. If `x` is a scalar then a
		    scalar is returned, otherwise an array of the same shape as `x`
		    is returned.
		
		See Also
		--------
		cos, arctan, arcsin, emath.arccos
		
		Notes
		-----
		`arccos` is a multivalued function: for each `x` there are infinitely
		many numbers `z` such that `cos(z) = x`. The convention is to return
		the angle `z` whose real part lies in `[0, pi]`.
		
		For real-valued input data types, `arccos` always returns real output.
		For each value that cannot be expressed as a real number or infinity,
		it yields ``nan`` and sets the `invalid` floating point error flag.
		
		For complex-valued input, `arccos` is a complex analytic function that
		has branch cuts `[-inf, -1]` and `[1, inf]` and is continuous from
		above on the former and from below on the latter.
		
		The inverse `cos` is also known as `acos` or cos^-1.
		
		References
		----------
		M. Abramowitz and I.A. Stegun, "Handbook of Mathematical Functions",
		10th printing, 1964, pp. 79. http://www.math.sfu.ca/~cbm/aands/
		
		Examples
		--------
		We expect the arccos of 1 to be 0, and of -1 to be pi:
		
		>>> np.arccos([1, -1])
		array([ 0.        ,  3.14159265])
		
		Plot arccos:
		
		>>> import matplotlib.pyplot as plt
		>>> x = np.linspace(-1, 1, num=100)
		>>> plt.plot(x, np.arccos(x))
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function arccos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Evenly round to the given number of decimals.
		
		Parameters
		----------
		a : array_like
		    Input data.
		decimals : int, optional
		    Number of decimal places to round to (default: 0).  If
		    decimals is negative, it specifies the number of positions to
		    the left of the decimal point.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary. See `doc.ufuncs` (Section
		    "Output arguments") for details.
		
		Returns
		-------
		rounded_array : ndarray
		    An array of the same type as `a`, containing the rounded values.
		    Unless `out` was specified, a new array is created.  A reference to
		    the result is returned.
		
		    The real and imaginary parts of complex numbers are rounded
		    separately.  The result of rounding a float is a float.
		
		See Also
		--------
		ndarray.round : equivalent method
		
		ceil, fix, floor, rint, trunc
		
		
		Notes
		-----
		For values exactly halfway between rounded decimal values, Numpy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc. Results may also be surprising due
		to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling
		by powers of ten.
		
		References
		----------
		.. [1] "Lecture Notes on the Status of  IEEE 754", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		.. [2] "How Futile are Mindless Assessments of
		       Roundoff in Floating-Point Computation?", William Kahan,
		       http://www.cs.berkeley.edu/~wkahan/Mindless.pdf
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([ 0.,  2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([ 0.4,  1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([ 0.,  2.,  2.,  4.,  4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		binom(x1, x2[, out])
		
		binom(n, k)
		
		Binomial coefficient
	**/
	static public function binom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree Chebyshev polynomial of
		the first kind, :math:`C_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = 1/\sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function c_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Gegenbauer quadrature
		
		Computes the sample points and weights for Gauss-Gegenbauer quadrature.
		The sample points are the roots of the `n`th degree Gegenbauer polynomial,
		:math:`C^{\alpha}_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = (1-x^2)^{\alpha-1/2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -0.5
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function cg_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of first kind, Cn(x).  Orthogonal
		over [-2,2] with weight function (1-(x/2)**2)**(-1/2).
	**/
	static public function chebyc(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of second kind, Sn(x).  Orthogonal
		over [-2,2] with weight function (1-(x/2)**2)**(1/2).
	**/
	static public function chebys(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of first kind, Tn(x).  Orthogonal
		over [-1,1] with weight function (1-x**2)**(-1/2).
	**/
	static public function chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order Chebyshev polynomial of second kind, Un(x).  Orthogonal
		over [-1,1] with weight function (1-x**2)**(1/2).
	**/
	static public function chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		cos(x[, out])
		
		Cosine element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array in radians.
		out : ndarray, optional
		    Output array of same shape as `x`.
		
		Returns
		-------
		y : ndarray
		    The corresponding cosine values.
		
		Raises
		------
		ValueError: invalid return array shape
		    if `out` is provided and `out.shape` != `x.shape` (See Examples)
		
		Notes
		-----
		If `out` is provided, the function writes the result into it,
		and returns a reference to `out`.  (See Examples)
		
		References
		----------
		M. Abramowitz and I. A. Stegun, Handbook of Mathematical Functions.
		New York, NY: Dover, 1972.
		
		Examples
		--------
		>>> np.cos(np.array([0, np.pi/2, np.pi]))
		array([  1.00000000e+00,   6.12303177e-17,  -1.00000000e+00])
		>>>
		>>> # Example of providing the optional output parameter
		>>> out2 = np.cos([0.1], out1)
		>>> out2 is out1
		True
		>>>
		>>> # Example of ValueError due to provision of shape mis-matched `out`
		>>> np.cos(np.zeros((3,3)),np.zeros((2,2)))
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: invalid return array shape
	**/
	static public function cos(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		eval_chebyc(x1, x2[, out])
		
		eval_chebyc(n, x, out=None)
		
		Evaluate Chebyshev C polynomial at a point.
	**/
	static public function eval_chebyc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebys(x1, x2[, out])
		
		eval_chebys(n, x, out=None)
		
		Evaluate Chebyshev S polynomial at a point.
	**/
	static public function eval_chebys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyt(x1, x2[, out])
		
		eval_chebyt(n, x, out=None)
		
		Evaluate Chebyshev T polynomial at a point.
		
		This routine is numerically stable for `x` in ``[-1, 1]`` at least
		up to order ``10000``.
	**/
	static public function eval_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyu(x1, x2[, out])
		
		eval_chebyu(n, x, out=None)
		
		Evaluate Chebyshev U polynomial at a point.
	**/
	static public function eval_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_gegenbauer(x1, x2, x3[, out])
		
		eval_gegenbauer(n, alpha, x, out=None)
		
		Evaluate Gegenbauer polynomial at a point.
	**/
	static public function eval_gegenbauer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_genlaguerre(x1, x2, x3[, out])
		
		eval_genlaguerre(n, alpha, x, out=None)
		
		Evaluate generalized Laguerre polynomial at a point.
	**/
	static public function eval_genlaguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermite(x1, x2[, out])
		
		eval_hermite(n, x, out=None)
		
		Evaluate Hermite polynomial at a point.
	**/
	static public function eval_hermite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermitenorm(x1, x2[, out])
		
		eval_hermitenorm(n, x, out=None)
		
		Evaluate normalized Hermite polynomial at a point.
	**/
	static public function eval_hermitenorm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_jacobi(x1, x2, x3, x4[, out])
		
		eval_jacobi(n, alpha, beta, x, out=None)
		
		Evaluate Jacobi polynomial at a point.
	**/
	static public function eval_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_laguerre(x1, x2[, out])
		
		eval_laguerre(n, x, out=None)
		
		Evaluate Laguerre polynomial at a point.
	**/
	static public function eval_laguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_legendre(x1, x2[, out])
		
		eval_legendre(n, x, out=None)
		
		Evaluate Legendre polynomial at a point.
	**/
	static public function eval_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyt(x1, x2[, out])
		
		eval_sh_chebyt(n, x, out=None)
		
		Evaluate shifted Chebyshev T polynomial at a point.
	**/
	static public function eval_sh_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyu(x1, x2[, out])
		
		eval_sh_chebyu(n, x, out=None)
		
		Evaluate shifted Chebyshev U polynomial at a point.
	**/
	static public function eval_sh_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_jacobi(x1, x2, x3, x4[, out])
		
		eval_sh_jacobi(n, p, q, x, out=None)
		
		Evaluate shifted Jacobi polynomial at a point.
	**/
	static public function eval_sh_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_legendre(x1, x2[, out])
		
		eval_sh_legendre(n, x, out=None)
		
		Evaluate shifted Legendre polynomial at a point.
	**/
	static public function eval_sh_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x[, out])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		
		See Also
		--------
		ceil, trunc, rint
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", in other
		words ``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the nth order Gegenbauer (ultraspherical) polynomial,
		C^(alpha)_n(x), orthogonal over [-1,1] with weighting function
		(1-x**2)**(alpha-1/2) with alpha > -1/2
	**/
	static public function gegenbauer(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order generalized (associated) Laguerre polynomial,
		L^(alpha)_n(x), orthogonal over [0,inf) with weighting function
		exp(-x) x**alpha with alpha > -1
	**/
	static public function genlaguerre(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicst's) quadrature
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the `n`th degree Hermite polynomial,
		:math:`H_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-inf, inf]` with weight function :math:`f(x) = e^{-x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is applied
		which computes nodes and weights in a numerically stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		   Townsend, A. and Trogdon, T. and Olver, S. (2014)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*. ArXiv 1410.5286.
		
		.. [townsend.trogdon.olver-2015]
		   Townsend, A. and Trogdon, T. and Olver, S. (2015)
		   *Fast computation of Gauss quadrature nodes and
		   weights on the whole real line*.
		   IMA Journal of Numerical Analysis
		   doi: 10.1093/imanum/drv002
	**/
	static public function h_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (statistician's) quadrature
		
		Computes the sample points and weights for Gauss-Hermite quadrature.
		The sample points are the roots of the `n`th degree Hermite polynomial,
		:math:`He_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-inf, inf]` with weight function :math:`f(x) = e^{-(x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		Notes
		-----
		For small n up to 150 a modified version of the Golub-Welsch
		algorithm is used. Nodes are computed from the eigenvalue
		problem and improved by one step of a Newton iteration.
		The weights are computed from the well-known analytical formula.
		
		For n larger than 150 an optimal asymptotic algorithm is used
		which computes nodes and weights in a numerical stable manner.
		The algorithm has linear runtime making computation for very
		large n (several thousand or more) feasible.
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
	**/
	static public function he_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return the nth order Hermite polynomial, H_n(x), orthogonal over
		(-inf,inf) with weighting function exp(-x**2)
	**/
	static public function hermite(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return the nth order normalized Hermite polynomial, He_n(x), orthogonal
		over (-inf,inf) with weighting function exp(-(x/2)**2)
	**/
	static public function hermitenorm(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		Take a sequence of arrays and stack them horizontally to make
		a single array. Rebuild arrays divided by `hsplit`.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    All arrays must have the same shape along all but the second axis.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		stack : Join a sequence of arrays along a new axis.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		concatenate : Join a sequence of arrays along an existing axis.
		hsplit : Split array along second axis.
		
		Notes
		-----
		Equivalent to ``np.concatenate(tup, axis=1)``
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((2,3,4))
		>>> np.hstack((a,b))
		array([1, 2, 3, 2, 3, 4])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[2],[3],[4]])
		>>> np.hstack((a,b))
		array([[1, 2],
		       [2, 3],
		       [3, 4]])
	**/
	static public function hstack(tup:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Gauss-Jacobi quadrature
		
		Computes the sample points and weights for Gauss-Jacobi quadrature. The
		sample points are the roots of the `n`th degree Jacobi polynomial,
		:math:`P^{\alpha, \beta}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2*n - 1` or less over the
		interval :math:`[-1, 1]` with weight function
		:math:`f(x) = (1 - x)^{\alpha} (1 + x)^{\beta}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function j_roots(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Returns the nth order Jacobi polynomial, P^(alpha,beta)_n(x)
		orthogonal over [-1,1] with weighting function
		(1-x)**alpha (1+x)**beta with alpha,beta > -1.
	**/
	static public function jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature
		
		Computes the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the `n`th degree shifted
		Jacobi polynomial, :math:`G^{p,q}_n(x)`.  These sample points and weights
		correctly integrate polynomials of degree :math:`2*n - 1` or less over the
		interval :math:`[0, 1]` with weight function
		:math:`f(x) = (1 - x)^{p-q} x^{q-1}`
		
		Parameters
		----------
		n : int
		    quadrature order
		p1 : float
		    (p1 - q1) must be > -1
		q1 : float
		    q1 must be > 0
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function js_roots(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature
		
		Computes the sample points and weights for Gauss-Laguerre quadrature.
		The sample points are the roots of the `n`th degree Laguerre polynomial,
		:math:`L_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[0, inf]` with weight function :math:`f(x) = e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
	**/
	static public function l_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature
		
		Computes the sample points and weights for Gauss-generalized Laguerre
		quadrature. The sample points are the roots of the `n`th degree generalized
		Laguerre polynomial, :math:`L^{\alpha}_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2*n - 1` or less
		over the interval :math:`[0, inf]` with weight function
		:math:`f(x) = x^{\alpha} e^{-x}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function la_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return the nth order Laguerre polynoimal, L_n(x), orthogonal over
		[0,inf) with weighting function exp(-x)
	**/
	static public function laguerre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Legendre polynomial coefficients
		
		Returns the nth-order Legendre polynomial, P_n(x), orthogonal over
		[-1, 1] with weight function 1.
		
		Parameters
		----------
		n
		    Order of the polynomial
		monic : bool, optional
		    If True, output is a monic polynomial (normalized so the leading
		    coefficient is 1).  Default is False.
		
		Returns
		-------
		P : orthopoly1d
		    The Legendre polynomial object
		
		Examples
		--------
		Generate the 3rd-order Legendre polynomial 1/2*(5x^3 + 0x^2 - 3x + 0):
		
		>>> legendre(3)
		poly1d([ 2.5,  0. , -1.5, -0. ])
	**/
	static public function legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Legendre quadrature
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the `n`th degree Legendre polynomial
		:math:`P_n(x)`.  These sample points and weights correctly integrate
		polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
	**/
	static public function p_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	static public var pi : Dynamic;
	/**
		poch(x1, x2[, out])
		
		poch(z, m)
		
		Rising factorial (z)_m
		
		The Pochhammer symbol (rising factorial), is defined as::
		
		    (z)_m = gamma(z + m) / gamma(z)
		
		For positive integer `m` it reads::
		
		    (z)_m = z * (z + 1) * ... * (z + m - 1)
	**/
	static public function poch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Gauss-Legendre (shifted) quadrature
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		The sample points are the roots of the `n`th degree shifted Legendre
		polynomial :math:`P^*_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[0, 1]` with weight function :math:`f(x) = 1.0`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function ps_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree Chebyshev polynomial of
		the second kind, :math:`S_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-2, 2]` with weight function :math:`f(x) = \sqrt{1 - (x/2)^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function s_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Return nth order shifted Chebyshev polynomial of first kind, Tn(x).
		Orthogonal over [0,1] with weight function (x-x**2)**(-1/2).
	**/
	static public function sh_chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Return nth order shifted Chebyshev polynomial of second kind, Un(x).
		Orthogonal over [0,1] with weight function (x-x**2)**(1/2).
	**/
	static public function sh_chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order Jacobi polynomial, G_n(p,q,x)
		orthogonal over [0,1] with weighting function
		(1-x)**(p-q) (x)**(q-1) with p>q-1 and q > 0.
	**/
	static public function sh_jacobi(n:Dynamic, p:Dynamic, q:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Returns the nth order shifted Legendre polynomial, P^*_n(x), orthogonal
		over [0,1] with weighting function 1.
	**/
	static public function sh_legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		sin(x[, out])
		
		Trigonometric sine, element-wise.
		
		Parameters
		----------
		x : array_like
		    Angle, in radians (:math:`2 \pi` rad equals 360 degrees).
		
		Returns
		-------
		y : array_like
		    The sine of each element of x.
		
		See Also
		--------
		arcsin, sinh, cos
		
		Notes
		-----
		The sine is one of the fundamental functions of trigonometry (the
		mathematical study of triangles).  Consider a circle of radius 1
		centered on the origin.  A ray comes in from the :math:`+x` axis, makes
		an angle at the origin (measured counter-clockwise from that axis), and
		departs from the origin.  The :math:`y` coordinate of the outgoing
		ray's intersection with the unit circle is the sine of that angle.  It
		ranges from -1 for :math:`x=3\pi / 2` to +1 for :math:`\pi / 2.`  The
		function has zeroes where the angle is a multiple of :math:`\pi`.
		Sines of angles between :math:`\pi` and :math:`2\pi` are negative.
		The numerous properties of the sine and related functions are included
		in any standard trigonometry text.
		
		Examples
		--------
		Print sine of one angle:
		
		>>> np.sin(np.pi/2.)
		1.0
		
		Print sines of an array of angles given in degrees:
		
		>>> np.sin(np.array((0., 30., 45., 60., 90.)) * np.pi / 180. )
		array([ 0.        ,  0.5       ,  0.70710678,  0.8660254 ,  1.        ])
		
		Plot the sine function:
		
		>>> import matplotlib.pylab as plt
		>>> x = np.linspace(-np.pi, np.pi, 201)
		>>> plt.plot(x, np.sin(x))
		>>> plt.xlabel('Angle [rad]')
		>>> plt.ylabel('sin(x)')
		>>> plt.axis('tight')
		>>> plt.show()
	**/
	static public function sin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree Chebyshev polynomial of
		the first kind, :math:`T_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = 1/\sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
	**/
	static public function t_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree shifted Chebyshev
		polynomial of the first kind, :math:`T_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2*n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = 1/\sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function ts_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree Chebyshev polynomial of
		the second kind, :math:`U_n(x)`.  These sample points and weights correctly
		integrate polynomials of degree :math:`2*n - 1` or less over the interval
		:math:`[-1, 1]` with weight function :math:`f(x) = \sqrt{1 - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function u_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature
		
		Computes the sample points and weights for Gauss-Chebyshev quadrature.
		The sample points are the roots of the `n`th degree shifted Chebyshev
		polynomial of the second kind, :math:`U_n(x)`.  These sample points and
		weights correctly integrate polynomials of degree :math:`2*n - 1` or less
		over the interval :math:`[0, 1]` with weight function
		:math:`f(x) = \sqrt{x - x^2}`.
		
		Parameters
		----------
		n : int
		    quadrature order
		mu : bool, optional
		    If True, return the sum of the weights, optional.
		
		Returns
		-------
		x : ndarray
		    Sample points
		w : ndarray
		    Weights
		mu : float
		    Sum of the weights
		
		See Also
		--------
		integrate.quadrature
		integrate.fixed_quad
	**/
	static public function us_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
}