/* This file is generated, do not edit! */
package scipy.special.orthogonal;
@:pythonImport("scipy.special.orthogonal") extern class Orthogonal_Module {
	/**
		airy(x[, out1, out2, out3, out4], / [, out=(None, None, None, None)], *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		airy(z)
		
		Airy functions and their derivatives.
		
		Parameters
		----------
		z : array_like
		    Real or complex argument.
		
		Returns
		-------
		Ai, Aip, Bi, Bip : ndarrays
		    Airy functions Ai and Bi, and their derivatives Aip and Bip.
		
		Notes
		-----
		The Airy functions Ai and Bi are two independent solutions of
		
		.. math:: y''(x) = x y(x).
		
		For real `z` in [-10, 10], the computation is carried out by calling
		the Cephes [1]_ `airy` routine, which uses power series summation
		for small `z` and rational minimax approximations for large `z`.
		
		Outside this range, the AMOS [2]_ `zairy` and `zbiry` routines are
		employed.  They are computed using power series for :math:`|z| < 1` and
		the following relations to modified Bessel functions for larger `z`
		(where :math:`t \equiv 2 z^{3/2}/3`):
		
		.. math::
		
		    Ai(z) = \frac{1}{\pi \sqrt{3}} K_{1/3}(t)
		
		    Ai'(z) = -\frac{z}{\pi \sqrt{3}} K_{2/3}(t)
		
		    Bi(z) = \sqrt{\frac{z}{3}} \left(I_{-1/3}(t) + I_{1/3}(t) \right)
		
		    Bi'(z) = \frac{z}{\sqrt{3}} \left(I_{-2/3}(t) + I_{2/3}(t)\right)
		
		See also
		--------
		airye : exponentially scaled Airy functions.
		
		References
		----------
		.. [1] Cephes Mathematical Functions Library,
		       http://www.netlib.org/cephes/
		.. [2] Donald E. Amos, "AMOS, A Portable Package for Bessel Functions
		       of a Complex Argument and Nonnegative Order",
		       http://netlib.org/amos/
		
		Examples
		--------
		Compute the Airy functions on the interval [-15, 5].
		
		>>> from scipy import special
		>>> x = np.linspace(-15, 5, 201)
		>>> ai, aip, bi, bip = special.airy(x)
		
		Plot Ai(x) and Bi(x).
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, ai, 'r', label='Ai(x)')
		>>> plt.plot(x, bi, 'b--', label='Bi(x)')
		>>> plt.ylim(-0.5, 1.0)
		>>> plt.grid()
		>>> plt.legend(loc='upper left')
		>>> plt.show()
	**/
	static public function airy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None, *, like=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range` function, but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, it is often better to use
		`numpy.linspace`. See the warnings section below for more information.
		
		Parameters
		----------
		start : integer or real, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : integer or real
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : integer or real, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified as a position argument,
		    `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		Warnings
		--------
		The length of the output might not be numerically stable.
		
		Another stability issue is due to the internal implementation of
		`numpy.arange`.
		The actual step value used to populate the array is
		``dtype(start + step) - dtype(start)`` and not `step`. Precision loss
		can occur here, due to casting or due to using floating points when
		`start` is much larger than `step`. This can lead to unexpected
		behaviour. For example::
		
		  >>> np.arange(0, 5, 0.5, dtype=int)
		  array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		  >>> np.arange(-3, 3, 0.5, dtype=int)
		  array([-3, -2, -1,  0,  1,  2,  3,  4,  5,  6,  7,  8])
		
		In such cases, the use of `numpy.linspace` should be preferred.
		
		See Also
		--------
		numpy.linspace : Evenly spaced numbers with careful handling of endpoints.
		numpy.ogrid: Arrays of evenly spaced numbers in N-dimensions.
		numpy.mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
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
		    values will be cast if necessary. See :ref:`ufuncs-output-type` for more
		    details.
		
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
		For values exactly halfway between rounded decimal values, NumPy
		rounds to the nearest even value. Thus 1.5 and 2.5 round to 2.0,
		-0.5 and 0.5 round to 0.0, etc.
		
		``np.around`` uses a fast but sometimes inexact algorithm to round
		floating-point datatypes. For positive `decimals` it is equivalent to
		``np.true_divide(np.rint(a * 10**decimals), 10**decimals)``, which has
		error due to the inexact representation of decimal fractions in the IEEE
		floating point standard [1]_ and errors introduced when scaling by powers
		of ten. For instance, note the extra "1" in the following:
		
		    >>> np.round(56294995342131.5, 3)
		    56294995342131.51
		
		If your goal is to print such values with a fixed number of decimals, it is
		preferable to use numpy's float printing routines to limit the number of
		printed decimals:
		
		    >>> np.format_float_positional(56294995342131.5, precision=3)
		    '56294995342131.5'
		
		The float printing routines use an accurate but much more computationally
		demanding algorithm to compute the number of digits after the decimal
		point.
		
		Alternatively, Python's builtin `round` function uses a more accurate
		but slower algorithm for 64-bit floating point values:
		
		    >>> round(56294995342131.5, 3)
		    56294995342131.5
		    >>> np.round(16.055, 2), round(16.055, 2)  # equals 16.0549999999999997
		    (16.06, 16.05)
		
		
		References
		----------
		.. [1] "Lecture Notes on the Status of IEEE 754", William Kahan,
		       https://people.eecs.berkeley.edu/~wkahan/ieee754status/IEEE754.PDF
		
		Examples
		--------
		>>> np.around([0.37, 1.64])
		array([0., 2.])
		>>> np.around([0.37, 1.64], decimals=1)
		array([0.4, 1.6])
		>>> np.around([.5, 1.5, 2.5, 3.5, 4.5]) # rounds to nearest even value
		array([0., 2., 2., 4., 4.])
		>>> np.around([1,2,3,11], decimals=1) # ndarray of ints is returned
		array([ 1,  2,  3, 11])
		>>> np.around([1,2,3,11], decimals=-1)
		array([ 0,  0,  0, 10])
	**/
	static public function around(a:Dynamic, ?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		binom(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		binom(n, k)
		
		Binomial coefficient
		
		See Also
		--------
		comb : The number of combinations of N things taken k at a time.
	**/
	static public function binom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the first kind, :math:`C_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-2, 2]`
		with weight function :math:`w(x) = 1 / \sqrt{1 - (x/2)^2}`. See
		22.2.6 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function c_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Gegenbauer quadrature.
		
		Compute the sample points and weights for Gauss-Gegenbauer
		quadrature. The sample points are the roots of the nth degree
		Gegenbauer polynomial, :math:`C^{\alpha}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[-1, 1]` with
		weight function :math:`w(x) = (1 - x^2)^{\alpha - 1/2}`. See
		22.2.3 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function cg_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the first kind on :math:`[-2, 2]`.
		
		Defined as :math:`C_n(x) = 2T_n(x/2)`, where :math:`T_n` is the
		nth Chebychev polynomial of the first kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		C : orthopoly1d
		    Chebyshev polynomial of the first kind on :math:`[-2, 2]`.
		
		Notes
		-----
		The polynomials :math:`C_n(x)` are orthogonal over :math:`[-2, 2]`
		with weight function :math:`1/\sqrt{1 - (x/2)^2}`.
		
		See Also
		--------
		chebyt : Chebyshev polynomial of the first kind.
		
		References
		----------
		.. [1] Abramowitz and Stegun, "Handbook of Mathematical Functions"
		       Section 22. National Bureau of Standards, 1972.
	**/
	static public function chebyc(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the second kind on :math:`[-2, 2]`.
		
		Defined as :math:`S_n(x) = U_n(x/2)` where :math:`U_n` is the
		nth Chebychev polynomial of the second kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		S : orthopoly1d
		    Chebyshev polynomial of the second kind on :math:`[-2, 2]`.
		
		Notes
		-----
		The polynomials :math:`S_n(x)` are orthogonal over :math:`[-2, 2]`
		with weight function :math:`\sqrt{1 - (x/2)}^2`.
		
		See Also
		--------
		chebyu : Chebyshev polynomial of the second kind
		
		References
		----------
		.. [1] Abramowitz and Stegun, "Handbook of Mathematical Functions"
		       Section 22. National Bureau of Standards, 1972.
	**/
	static public function chebys(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the first kind.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}T_n - x\frac{d}{dx}T_n + n^2T_n = 0;
		
		:math:`T_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		T : orthopoly1d
		    Chebyshev polynomial of the first kind.
		
		Notes
		-----
		The polynomials :math:`T_n` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x^2)^{-1/2}`.
		
		See Also
		--------
		chebyu : Chebyshev polynomial of the second kind.
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		Chebyshev polynomials of the first kind of order :math:`n` can
		be obtained as the determinant of specific :math:`n \times n`
		matrices. As an example we can check how the points obtained from
		the determinant of the following :math:`3 \times 3` matrix
		lay exacty on :math:`T_3`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.linalg import det
		>>> from scipy.special import chebyt
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-2.0, 2.0)
		>>> ax.set_title(r'Chebyshev polynomial $T_3$')
		>>> ax.plot(x, chebyt(3)(x), label=rf'$T_3$')
		>>> for p in np.arange(-1.0, 1.0, 0.1):
		...     ax.plot(p,
		...             det(np.array([[p, 1, 0], [1, 2*p, 1], [0, 1, 2*p]])),
		...             'rx')
		>>> plt.legend(loc='best')
		>>> plt.show()
		
		They are also related to the Jacobi Polynomials
		:math:`P_n^{(-0.5, -0.5)}` through the relation:
		
		.. math::
		    P_n^{(-0.5, -0.5)}(x) = \frac{1}{4^n} \binom{2n}{n} T_n(x)
		
		Let's verify it for :math:`n = 3`:
		
		>>> from scipy.special import binom
		>>> from scipy.special import chebyt
		>>> from scipy.special import jacobi
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> np.allclose(jacobi(3, -0.5, -0.5)(x),
		...             1/64 * binom(6, 3) * chebyt(3)(x))
		True
		
		We can plot the Chebyshev polynomials :math:`T_n` for some values
		of :math:`n`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.special import chebyt
		>>> x = np.arange(-1.5, 1.5, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-4.0, 4.0)
		>>> ax.set_title(r'Chebyshev polynomials $T_n$')
		>>> for n in np.arange(2,5):
		...     ax.plot(x, chebyt(n)(x), label=rf'$T_n={n}$')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Chebyshev polynomial of the second kind.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}U_n - 3x\frac{d}{dx}U_n
		      + n(n + 2)U_n = 0;
		
		:math:`U_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		U : orthopoly1d
		    Chebyshev polynomial of the second kind.
		
		Notes
		-----
		The polynomials :math:`U_n` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x^2)^{1/2}`.
		
		See Also
		--------
		chebyt : Chebyshev polynomial of the first kind.
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		Chebyshev polynomials of the second kind of order :math:`n` can
		be obtained as the determinant of specific :math:`n \times n`
		matrices. As an example we can check how the points obtained from
		the determinant of the following :math:`3 \times 3` matrix
		lay exacty on :math:`U_3`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.linalg import det
		>>> from scipy.special import chebyu
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-2.0, 2.0)
		>>> ax.set_title(r'Chebyshev polynomial $U_3$')
		>>> ax.plot(x, chebyu(3)(x), label=rf'$U_3$')
		>>> for p in np.arange(-1.0, 1.0, 0.1):
		...     ax.plot(p,
		...             det(np.array([[2*p, 1, 0], [1, 2*p, 1], [0, 1, 2*p]])),
		...             'rx')
		>>> plt.legend(loc='best')
		>>> plt.show()
		
		They satisfy the recurrence relation:
		
		.. math::
		    U_{2n-1}(x) = 2 T_n(x)U_{n-1}(x)
		
		where the :math:`T_n` are the Chebyshev polynomial of the first kind.
		Let's verify it for :math:`n = 2`:
		
		>>> from scipy.special import chebyt
		>>> from scipy.special import chebyu
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> np.allclose(chebyu(3)(x), 2 * chebyt(2)(x) * chebyu(1)(x))
		True
		
		We can plot the Chebyshev polynomials :math:`U_n` for some values
		of :math:`n`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.special import chebyu
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-1.5, 1.5)
		>>> ax.set_title(r'Chebyshev polynomials $U_n$')
		>>> for n in np.arange(1,5):
		...     ax.plot(x, chebyu(n)(x), label=rf'$U_n={n}$')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		eval_chebyc(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyc(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the first kind on [-2, 2] at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    C_n(x) = 2 T_n(x/2)
		
		where :math:`T_n` is a Chebyshev polynomial of the first kind. See
		22.5.11 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyt`.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		C : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyc : roots and quadrature weights of Chebyshev
		               polynomials of the first kind on [-2, 2]
		chebyc : Chebyshev polynomial object
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
		eval_chebyt : evaluate Chebycshev polynomials of the first kind
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		>>> import scipy.special as sc
		
		They are a scaled version of the Chebyshev polynomials of the
		first kind.
		
		>>> x = np.linspace(-2, 2, 6)
		>>> sc.eval_chebyc(3, x)
		array([-2.   ,  1.872,  1.136, -1.136, -1.872,  2.   ])
		>>> 2 * sc.eval_chebyt(3, x / 2)
		array([-2.   ,  1.872,  1.136, -1.136, -1.872,  2.   ])
	**/
	static public function eval_chebyc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebys(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebys(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the second kind on [-2, 2] at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    S_n(x) = U_n(x/2)
		
		where :math:`U_n` is a Chebyshev polynomial of the second
		kind. See 22.5.13 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyu`.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		S : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebys : roots and quadrature weights of Chebyshev
		               polynomials of the second kind on [-2, 2]
		chebys : Chebyshev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		>>> import scipy.special as sc
		
		They are a scaled version of the Chebyshev polynomials of the
		second kind.
		
		>>> x = np.linspace(-2, 2, 6)
		>>> sc.eval_chebys(3, x)
		array([-4.   ,  0.672,  0.736, -0.736, -0.672,  4.   ])
		>>> sc.eval_chebyu(3, x / 2)
		array([-4.   ,  0.672,  0.736, -0.736, -0.672,  4.   ])
	**/
	static public function eval_chebys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyt(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyt(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the first kind at a point.
		
		The Chebyshev polynomials of the first kind can be defined via the
		Gauss hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    T_n(x) = {}_2F_1(n, -n; 1/2; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.47 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		T : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyt : roots and quadrature weights of Chebyshev
		               polynomials of the first kind
		chebyu : Chebychev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
		hyp2f1 : Gauss hypergeometric function
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
		
		Notes
		-----
		This routine is numerically stable for `x` in ``[-1, 1]`` at least
		up to order ``10000``.
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_chebyu(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_chebyu(n, x, out=None)
		
		Evaluate Chebyshev polynomial of the second kind at a point.
		
		The Chebyshev polynomials of the second kind can be defined via
		the Gauss hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    U_n(x) = (n + 1) {}_2F_1(-n, n + 2; 3/2; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.48 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Chebyshev polynomial
		
		Returns
		-------
		U : ndarray
		    Values of the Chebyshev polynomial
		
		See Also
		--------
		roots_chebyu : roots and quadrature weights of Chebyshev
		               polynomials of the second kind
		chebyu : Chebyshev polynomial object
		eval_chebyt : evaluate Chebyshev polynomials of the first kind
		hyp2f1 : Gauss hypergeometric function
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_gegenbauer(x1, x2, x3, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_gegenbauer(n, alpha, x, out=None)
		
		Evaluate Gegenbauer polynomial at a point.
		
		The Gegenbauer polynomials can be defined via the Gauss
		hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    C_n^{(\alpha)} = \frac{(2\alpha)_n}{\Gamma(n + 1)}
		      {}_2F_1(-n, 2\alpha + n; \alpha + 1/2; (1 - z)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.46 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		alpha : array_like
		    Parameter
		x : array_like
		    Points at which to evaluate the Gegenbauer polynomial
		
		Returns
		-------
		C : ndarray
		    Values of the Gegenbauer polynomial
		
		See Also
		--------
		roots_gegenbauer : roots and quadrature weights of Gegenbauer
		                   polynomials
		gegenbauer : Gegenbauer polynomial object
		hyp2f1 : Gauss hypergeometric function
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_gegenbauer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_genlaguerre(x1, x2, x3, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_genlaguerre(n, alpha, x, out=None)
		
		Evaluate generalized Laguerre polynomial at a point.
		
		The generalized Laguerre polynomials can be defined via the
		confluent hypergeometric function :math:`{}_1F_1` as
		
		.. math::
		
		    L_n^{(\alpha)}(x) = \binom{n + \alpha}{n}
		      {}_1F_1(-n, \alpha + 1, x).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.54 in [AS]_ for details. The Laguerre
		polynomials are the special case where :math:`\alpha = 0`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the confluent hypergeometric
		    function.
		alpha : array_like
		    Parameter; must have ``alpha > -1``
		x : array_like
		    Points at which to evaluate the generalized Laguerre
		    polynomial
		
		Returns
		-------
		L : ndarray
		    Values of the generalized Laguerre polynomial
		
		See Also
		--------
		roots_genlaguerre : roots and quadrature weights of generalized
		                    Laguerre polynomials
		genlaguerre : generalized Laguerre polynomial object
		hyp1f1 : confluent hypergeometric function
		eval_laguerre : evaluate Laguerre polynomials
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_genlaguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermite(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_hermite(n, x, out=None)
		
		Evaluate physicist's Hermite polynomial at a point.
		
		Defined by
		
		.. math::
		
		    H_n(x) = (-1)^n e^{x^2} \frac{d^n}{dx^n} e^{-x^2};
		
		:math:`H_n` is a polynomial of degree :math:`n`. See 22.11.7 in
		[AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial
		x : array_like
		    Points at which to evaluate the Hermite polynomial
		
		Returns
		-------
		H : ndarray
		    Values of the Hermite polynomial
		
		See Also
		--------
		roots_hermite : roots and quadrature weights of physicist's
		                Hermite polynomials
		hermite : physicist's Hermite polynomial object
		numpy.polynomial.hermite.Hermite : Physicist's Hermite series
		eval_hermitenorm : evaluate Probabilist's Hermite polynomials
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_hermite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_hermitenorm(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_hermitenorm(n, x, out=None)
		
		Evaluate probabilist's (normalized) Hermite polynomial at a
		point.
		
		Defined by
		
		.. math::
		
		    He_n(x) = (-1)^n e^{x^2/2} \frac{d^n}{dx^n} e^{-x^2/2};
		
		:math:`He_n` is a polynomial of degree :math:`n`. See 22.11.8 in
		[AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial
		x : array_like
		    Points at which to evaluate the Hermite polynomial
		
		Returns
		-------
		He : ndarray
		    Values of the Hermite polynomial
		
		See Also
		--------
		roots_hermitenorm : roots and quadrature weights of probabilist's
		                    Hermite polynomials
		hermitenorm : probabilist's Hermite polynomial object
		numpy.polynomial.hermite_e.HermiteE : Probabilist's Hermite series
		eval_hermite : evaluate physicist's Hermite polynomials
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_hermitenorm(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_jacobi(x1, x2, x3, x4, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_jacobi(n, alpha, beta, x, out=None)
		
		Evaluate Jacobi polynomial at a point.
		
		The Jacobi polynomials can be defined via the Gauss hypergeometric
		function :math:`{}_2F_1` as
		
		.. math::
		
		    P_n^{(\alpha, \beta)}(x) = \frac{(\alpha + 1)_n}{\Gamma(n + 1)}
		      {}_2F_1(-n, 1 + \alpha + \beta + n; \alpha + 1; (1 - z)/2)
		
		where :math:`(\cdot)_n` is the Pochhammer symbol; see `poch`. When
		:math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.42 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		alpha : array_like
		    Parameter
		beta : array_like
		    Parameter
		x : array_like
		    Points at which to evaluate the polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the Jacobi polynomial
		
		See Also
		--------
		roots_jacobi : roots and quadrature weights of Jacobi polynomials
		jacobi : Jacobi polynomial object
		hyp2f1 : Gauss hypergeometric function
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_laguerre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_laguerre(n, x, out=None)
		
		Evaluate Laguerre polynomial at a point.
		
		The Laguerre polynomials can be defined via the confluent
		hypergeometric function :math:`{}_1F_1` as
		
		.. math::
		
		    L_n(x) = {}_1F_1(-n, 1, x).
		
		See 22.5.16 and 22.5.54 in [AS]_ for details. When :math:`n` is an
		integer the result is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer the result is
		    determined via the relation to the confluent hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Laguerre polynomial
		
		Returns
		-------
		L : ndarray
		    Values of the Laguerre polynomial
		
		See Also
		--------
		roots_laguerre : roots and quadrature weights of Laguerre
		                 polynomials
		laguerre : Laguerre polynomial object
		numpy.polynomial.laguerre.Laguerre : Laguerre series
		eval_genlaguerre : evaluate generalized Laguerre polynomials
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_laguerre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_legendre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_legendre(n, x, out=None)
		
		Evaluate Legendre polynomial at a point.
		
		The Legendre polynomials can be defined via the Gauss
		hypergeometric function :math:`{}_2F_1` as
		
		.. math::
		
		    P_n(x) = {}_2F_1(-n, n + 1; 1; (1 - x)/2).
		
		When :math:`n` is an integer the result is a polynomial of degree
		:math:`n`. See 22.5.49 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to the Gauss hypergeometric
		    function.
		x : array_like
		    Points at which to evaluate the Legendre polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the Legendre polynomial
		
		See Also
		--------
		roots_legendre : roots and quadrature weights of Legendre
		                 polynomials
		legendre : Legendre polynomial object
		hyp2f1 : Gauss hypergeometric function
		numpy.polynomial.legendre.Legendre : Legendre series
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		>>> from scipy.special import eval_legendre
		
		Evaluate the zero-order Legendre polynomial at x = 0
		
		>>> eval_legendre(0, 0)
		1.0
		
		Evaluate the first-order Legendre polynomial between -1 and 1
		
		>>> X = np.linspace(-1, 1, 5)  # Domain of Legendre polynomials
		>>> eval_legendre(1, X)
		array([-1. , -0.5,  0. ,  0.5,  1. ])
		
		Evaluate Legendre polynomials of order 0 through 4 at x = 0
		
		>>> N = range(0, 5)
		>>> eval_legendre(N, 0)
		array([ 1.   ,  0.   , -0.5  ,  0.   ,  0.375])
		
		Plot Legendre polynomials of order 0 through 4
		
		>>> X = np.linspace(-1, 1)
		
		>>> import matplotlib.pyplot as plt
		>>> for n in range(0, 5):
		...     y = eval_legendre(n, X)
		...     plt.plot(X, y, label=r'$P_{}(x)$'.format(n))
		
		>>> plt.title("Legendre Polynomials")
		>>> plt.xlabel("x")
		>>> plt.ylabel(r'$P_n(x)$')
		>>> plt.legend(loc='lower right')
		>>> plt.show()
	**/
	static public function eval_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyt(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_chebyt(n, x, out=None)
		
		Evaluate shifted Chebyshev polynomial of the first kind at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    T_n^*(x) = T_n(2x - 1)
		
		where :math:`T_n` is a Chebyshev polynomial of the first kind. See
		22.5.14 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyt`.
		x : array_like
		    Points at which to evaluate the shifted Chebyshev polynomial
		
		Returns
		-------
		T : ndarray
		    Values of the shifted Chebyshev polynomial
		
		See Also
		--------
		roots_sh_chebyt : roots and quadrature weights of shifted
		                  Chebyshev polynomials of the first kind
		sh_chebyt : shifted Chebyshev polynomial object
		eval_chebyt : evaluate Chebyshev polynomials of the first kind
		numpy.polynomial.chebyshev.Chebyshev : Chebyshev series
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_sh_chebyt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_chebyu(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_chebyu(n, x, out=None)
		
		Evaluate shifted Chebyshev polynomial of the second kind at a
		point.
		
		These polynomials are defined as
		
		.. math::
		
		    U_n^*(x) = U_n(2x - 1)
		
		where :math:`U_n` is a Chebyshev polynomial of the first kind. See
		22.5.15 in [AS]_ for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `eval_chebyu`.
		x : array_like
		    Points at which to evaluate the shifted Chebyshev polynomial
		
		Returns
		-------
		U : ndarray
		    Values of the shifted Chebyshev polynomial
		
		See Also
		--------
		roots_sh_chebyu : roots and quadrature weights of shifted
		                  Chebychev polynomials of the second kind
		sh_chebyu : shifted Chebyshev polynomial object
		eval_chebyu : evaluate Chebyshev polynomials of the second kind
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_sh_chebyu(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_jacobi(x1, x2, x3, x4, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_jacobi(n, p, q, x, out=None)
		
		Evaluate shifted Jacobi polynomial at a point.
		
		Defined by
		
		.. math::
		
		    G_n^{(p, q)}(x)
		      = \binom{2n + p - 1}{n}^{-1} P_n^{(p - q, q - 1)}(2x - 1),
		
		where :math:`P_n^{(\cdot, \cdot)}` is the n-th Jacobi
		polynomial. See 22.5.2 in [AS]_ for details.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial. If not an integer, the result is
		    determined via the relation to `binom` and `eval_jacobi`.
		p : float
		    Parameter
		q : float
		    Parameter
		
		Returns
		-------
		G : ndarray
		    Values of the shifted Jacobi polynomial.
		
		See Also
		--------
		roots_sh_jacobi : roots and quadrature weights of shifted Jacobi
		                  polynomials
		sh_jacobi : shifted Jacobi polynomial object
		eval_jacobi : evaluate Jacobi polynomials
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_sh_jacobi(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		eval_sh_legendre(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		eval_sh_legendre(n, x, out=None)
		
		Evaluate shifted Legendre polynomial at a point.
		
		These polynomials are defined as
		
		.. math::
		
		    P_n^*(x) = P_n(2x - 1)
		
		where :math:`P_n` is a Legendre polynomial. See 2.2.11 in [AS]_
		for details.
		
		Parameters
		----------
		n : array_like
		    Degree of the polynomial. If not an integer, the value is
		    determined via the relation to `eval_legendre`.
		x : array_like
		    Points at which to evaluate the shifted Legendre polynomial
		
		Returns
		-------
		P : ndarray
		    Values of the shifted Legendre polynomial
		
		See Also
		--------
		roots_sh_legendre : roots and quadrature weights of shifted
		                    Legendre polynomials
		sh_legendre : shifted Legendre polynomial object
		eval_legendre : evaluate Legendre polynomials
		numpy.polynomial.legendre.Legendre : Legendre series
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function eval_sh_legendre(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		exp(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		out : ndarray or scalar
		    Output array, element-wise exponential of `x`.
		    This is a scalar if `x` is a scalar.
		
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
		       https://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       https://personal.math.ubc.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='gray')
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi], cmap='hsv')
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		floor(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the floor of the input, element-wise.
		
		The floor of the scalar `x` is the largest integer `i`, such that
		`i <= x`.  It is often denoted as :math:`\lfloor x \rfloor`.
		
		Parameters
		----------
		x : array_like
		    Input data.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or None,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    This condition is broadcast over the input. At locations where the
		    condition is True, the `out` array will be set to the ufunc result.
		    Elsewhere, the `out` array will retain its original value.
		    Note that if an uninitialized `out` array is created via the default
		    ``out=None``, locations within it where the condition is False will
		    remain uninitialized.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray or scalar
		    The floor of each element in `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		ceil, trunc, rint, fix
		
		Notes
		-----
		Some spreadsheet programs calculate the "floor-towards-zero", where
		``floor(-2.5) == -2``.  NumPy instead uses the definition of
		`floor` where `floor(-2.5) == -3`. The "floor-towards-zero"
		function is called ``fix`` in NumPy.
		
		Examples
		--------
		>>> a = np.array([-1.7, -1.5, -0.2, 0.2, 1.5, 1.7, 2.0])
		>>> np.floor(a)
		array([-2., -2., -1.,  0.,  1.,  1.,  2.])
	**/
	static public function floor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gegenbauer (ultraspherical) polynomial.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}C_n^{(\alpha)}
		      - (2\alpha + 1)x\frac{d}{dx}C_n^{(\alpha)}
		      + n(n + 2\alpha)C_n^{(\alpha)} = 0
		
		for :math:`\alpha > -1/2`; :math:`C_n^{(\alpha)}` is a polynomial
		of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		alpha : float
		    Parameter, must be greater than -0.5.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		C : orthopoly1d
		    Gegenbauer polynomial.
		
		Notes
		-----
		The polynomials :math:`C_n^{(\alpha)}` are orthogonal over
		:math:`[-1,1]` with weight function :math:`(1 - x^2)^{(\alpha -
		1/2)}`.
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		
		We can initialize a variable ``p`` as a Gegenbauer polynomial using the
		`gegenbauer` function and evaluate at a point ``x = 1``.
		
		>>> p = special.gegenbauer(3, 0.5, monic=False)
		>>> p
		poly1d([ 2.5,  0. , -1.5,  0. ])
		>>> p(1)
		1.0
		
		To evaluate ``p`` at various points ``x`` in the interval ``(-3, 3)``,
		simply pass an array ``x`` to ``p`` as follows:
		
		>>> x = np.linspace(-3, 3, 400)
		>>> y = p(x)
		
		We can then visualize ``x, y`` using `matplotlib.pyplot`.
		
		>>> fig, ax = plt.subplots()
		>>> ax.plot(x, y)
		>>> ax.set_title("Gegenbauer (ultraspherical) polynomial of degree 3")
		>>> ax.set_xlabel("x")
		>>> ax.set_ylabel("G_3(x)")
		>>> plt.show()
	**/
	static public function gegenbauer(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Generalized (associated) Laguerre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    x\frac{d^2}{dx^2}L_n^{(\alpha)}
		      + (\alpha + 1 - x)\frac{d}{dx}L_n^{(\alpha)}
		      + nL_n^{(\alpha)} = 0,
		
		where :math:`\alpha > -1`; :math:`L_n^{(\alpha)}` is a polynomial
		of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		alpha : float
		    Parameter, must be greater than -1.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		L : orthopoly1d
		    Generalized Laguerre polynomial.
		
		Notes
		-----
		For fixed :math:`\alpha`, the polynomials :math:`L_n^{(\alpha)}`
		are orthogonal over :math:`[0, \infty)` with weight function
		:math:`e^{-x}x^\alpha`.
		
		The Laguerre polynomials are the special case where :math:`\alpha
		= 0`.
		
		See Also
		--------
		laguerre : Laguerre polynomial.
		hyp1f1 : confluent hypergeometric function
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		The generalized Laguerre polynomials are closely related to the confluent
		hypergeometric function :math:`{}_1F_1`:
		
		    .. math::
		        L_n^{(\alpha)} = \binom{n + \alpha}{n} {}_1F_1(-n, \alpha +1, x)
		
		This can be verified, for example,  for :math:`n = \alpha = 3` over the
		interval :math:`[-1, 1]`:
		
		>>> from scipy.special import binom
		>>> from scipy.special import genlaguerre
		>>> from scipy.special import hyp1f1
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> np.allclose(genlaguerre(3, 3)(x), binom(6, 3) * hyp1f1(-3, 4, x))
		True
		
		This is the plot of the generalized Laguerre polynomials
		:math:`L_3^{(\alpha)}` for some values of :math:`\alpha`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.special import genlaguerre
		>>> x = np.arange(-4.0, 12.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-5.0, 10.0)
		>>> ax.set_title(r'Generalized Laguerre polynomials $L_3^{\alpha}$')
		>>> for alpha in np.arange(0, 5):
		...     ax.plot(x, genlaguerre(3, alpha)(x), label=rf'$L_3^{(alpha)}$')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function genlaguerre(n:Dynamic, alpha:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicist's) quadrature.
		
		Compute the sample points and weights for Gauss-Hermite
		quadrature. The sample points are the roots of the nth degree
		Hermite polynomial, :math:`H_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-\infty, \infty]` with weight
		function :math:`w(x) = e^{-x^2}`. See 22.2.14 in [AS]_ for
		details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		roots_hermitenorm
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		    Townsend, A. and Trogdon, T. and Olver, S. (2014)
		    *Fast computation of Gauss quadrature nodes and
		    weights on the whole real line*. :arXiv:`1410.5286`.
		.. [townsend.trogdon.olver-2015]
		    Townsend, A. and Trogdon, T. and Olver, S. (2015)
		    *Fast computation of Gauss quadrature nodes and
		    weights on the whole real line*.
		    IMA Journal of Numerical Analysis
		    :doi:`10.1093/imanum/drv002`.
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function h_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (statistician's) quadrature.
		
		Compute the sample points and weights for Gauss-Hermite
		quadrature. The sample points are the roots of the nth degree
		Hermite polynomial, :math:`He_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-\infty, \infty]` with weight
		function :math:`w(x) = e^{-x^2/2}`. See 22.2.15 in [AS]_ for more
		details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function he_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Physicist's Hermite polynomial.
		
		Defined by
		
		.. math::
		
		    H_n(x) = (-1)^ne^{x^2}\frac{d^n}{dx^n}e^{-x^2};
		
		:math:`H_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		H : orthopoly1d
		    Hermite polynomial.
		
		Notes
		-----
		The polynomials :math:`H_n` are orthogonal over :math:`(-\infty,
		\infty)` with weight function :math:`e^{-x^2}`.
		
		Examples
		--------
		>>> from scipy import special
		>>> import matplotlib.pyplot as plt
		>>> import numpy as np
		
		>>> p_monic = special.hermite(3, monic=True)
		>>> p_monic
		poly1d([ 1. ,  0. , -1.5,  0. ])
		>>> p_monic(1)
		-0.49999999999999983
		>>> x = np.linspace(-3, 3, 400)
		>>> y = p_monic(x)
		>>> plt.plot(x, y)
		>>> plt.title("Monic Hermite polynomial of degree 3")
		>>> plt.xlabel("x")
		>>> plt.ylabel("H_3(x)")
		>>> plt.show()
	**/
	static public function hermite(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Normalized (probabilist's) Hermite polynomial.
		
		Defined by
		
		.. math::
		
		    He_n(x) = (-1)^ne^{x^2/2}\frac{d^n}{dx^n}e^{-x^2/2};
		
		:math:`He_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		He : orthopoly1d
		    Hermite polynomial.
		
		Notes
		-----
		
		The polynomials :math:`He_n` are orthogonal over :math:`(-\infty,
		\infty)` with weight function :math:`e^{-x^2/2}`.
	**/
	static public function hermitenorm(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		This is equivalent to concatenation along the second axis, except for 1-D
		arrays where it concatenates along the first axis. Rebuilds arrays divided
		by `hsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the second axis,
		    except 1-D arrays which can be any length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		hsplit : Split an array into multiple sub-arrays horizontally (column-wise).
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((4,5,6))
		>>> np.hstack((a,b))
		array([1, 2, 3, 4, 5, 6])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[4],[5],[6]])
		>>> np.hstack((a,b))
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
	**/
	static public function hstack(tup:Dynamic):Dynamic;
	static public var inf : Dynamic;
	/**
		Gauss-Jacobi quadrature.
		
		Compute the sample points and weights for Gauss-Jacobi
		quadrature. The sample points are the roots of the nth degree
		Jacobi polynomial, :math:`P^{\alpha, \beta}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[-1, 1]` with
		weight function :math:`w(x) = (1 - x)^{\alpha} (1 +
		x)^{\beta}`. See 22.2.1 in [AS]_ for details.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > -1
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function j_roots(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Jacobi polynomial.
		
		Defined to be the solution of
		
		.. math::
		    (1 - x^2)\frac{d^2}{dx^2}P_n^{(\alpha, \beta)}
		      + (\beta - \alpha - (\alpha + \beta + 2)x)
		        \frac{d}{dx}P_n^{(\alpha, \beta)}
		      + n(n + \alpha + \beta + 1)P_n^{(\alpha, \beta)} = 0
		
		for :math:`\alpha, \beta > -1`; :math:`P_n^{(\alpha, \beta)}` is a
		polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		alpha : float
		    Parameter, must be greater than -1.
		beta : float
		    Parameter, must be greater than -1.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Jacobi polynomial.
		
		Notes
		-----
		For fixed :math:`\alpha, \beta`, the polynomials
		:math:`P_n^{(\alpha, \beta)}` are orthogonal over :math:`[-1, 1]`
		with weight function :math:`(1 - x)^\alpha(1 + x)^\beta`.
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		The Jacobi polynomials satisfy the recurrence relation:
		
		.. math::
		    P_n^{(\alpha, \beta-1)}(x) - P_n^{(\alpha-1, \beta)}(x)
		      = P_{n-1}^{(\alpha, \beta)}(x)
		
		This can be verified, for example, for :math:`\alpha = \beta = 2`
		and :math:`n = 1` over the interval :math:`[-1, 1]`:
		
		>>> import numpy as np
		>>> from scipy.special import jacobi
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> np.allclose(jacobi(0, 2, 2)(x),
		...             jacobi(1, 2, 1)(x) - jacobi(1, 1, 2)(x))
		True
		
		Plot of the Jacobi polynomial :math:`P_5^{(\alpha, -0.5)}` for
		different values of :math:`\alpha`:
		
		>>> import matplotlib.pyplot as plt
		>>> import numpy as np
		>>> from scipy.special import jacobi
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-2.0, 2.0)
		>>> ax.set_title(r'Jacobi polynomials $P_5^{(\alpha, -0.5)}$')
		>>> for alpha in np.arange(0, 4, 1):
		...     ax.plot(x, jacobi(5, alpha, -0.5)(x), label=rf'$\alpha={alpha}$')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the nth degree
		shifted Jacobi polynomial, :math:`G^{p,q}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[0, 1]` with
		weight function :math:`w(x) = (1 - x)^{p-q} x^{q-1}`. See 22.2.2
		in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function js_roots(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature.
		
		Compute the sample points and weights for Gauss-Laguerre
		quadrature. The sample points are the roots of the nth degree
		Laguerre polynomial, :math:`L_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[0, \infty]` with weight function
		:math:`w(x) = e^{-x}`. See 22.2.13 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function l_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature.
		
		Compute the sample points and weights for Gauss-generalized
		Laguerre quadrature. The sample points are the roots of the nth
		degree generalized Laguerre polynomial, :math:`L^{\alpha}_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0,
		\infty]` with weight function :math:`w(x) = x^{\alpha}
		e^{-x}`. See 22.3.9 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function la_roots(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Laguerre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    x\frac{d^2}{dx^2}L_n + (1 - x)\frac{d}{dx}L_n + nL_n = 0;
		
		:math:`L_n` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		L : orthopoly1d
		    Laguerre Polynomial.
		
		Notes
		-----
		The polynomials :math:`L_n` are orthogonal over :math:`[0,
		\infty)` with weight function :math:`e^{-x}`.
		
		See Also
		--------
		genlaguerre : Generalized (associated) Laguerre polynomial.
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		
		Examples
		--------
		The Laguerre polynomials :math:`L_n` are the special case
		:math:`\alpha = 0` of the generalized Laguerre polynomials
		:math:`L_n^{(\alpha)}`.
		Let's verify it on the interval :math:`[-1, 1]`:
		
		>>> from scipy.special import genlaguerre
		>>> from scipy.special import laguerre
		>>> x = np.arange(-1.0, 1.0, 0.01)
		>>> np.allclose(genlaguerre(3, 0)(x), laguerre(3)(x))
		True
		
		The polynomials :math:`L_n` also satisfy the recurrence relation:
		
		.. math::
		    (n + 1)L_{n+1}(x) = (2n +1 -x)L_n(x) - nL_{n-1}(x)
		
		This can be easily checked on :math:`[0, 1]` for :math:`n = 3`:
		
		>>> from scipy.special import laguerre
		>>> x = np.arange(0.0, 1.0, 0.01)
		>>> np.allclose(4 * laguerre(4)(x),
		...             (7 - x) * laguerre(3)(x) - 3 * laguerre(2)(x))
		True
		
		This is the plot of the first few Laguerre polynomials :math:`L_n`:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.special import laguerre
		>>> x = np.arange(-1.0, 5.0, 0.01)
		>>> fig, ax = plt.subplots()
		>>> ax.set_ylim(-5.0, 5.0)
		>>> ax.set_title(r'Laguerre polynomials $L_n$')
		>>> for n in np.arange(0, 5):
		...     ax.plot(x, laguerre(n)(x), label=rf'$L_{n}$')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function laguerre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Legendre polynomial.
		
		Defined to be the solution of
		
		.. math::
		    \frac{d}{dx}\left[(1 - x^2)\frac{d}{dx}P_n(x)\right]
		      + n(n + 1)P_n(x) = 0;
		
		:math:`P_n(x)` is a polynomial of degree :math:`n`.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Legendre polynomial.
		
		Notes
		-----
		The polynomials :math:`P_n` are orthogonal over :math:`[-1, 1]`
		with weight function 1.
		
		Examples
		--------
		Generate the 3rd-order Legendre polynomial 1/2*(5x^3 + 0x^2 - 3x + 0):
		
		>>> from scipy.special import legendre
		>>> legendre(3)
		poly1d([ 2.5,  0. , -1.5,  0. ])
	**/
	static public function legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
	static public var newfun : Dynamic;
	static public var oldfun : Dynamic;
	/**
		Gauss-Legendre quadrature.
		
		Compute the sample points and weights for Gauss-Legendre
		quadrature [GL]_. The sample points are the roots of the nth degree
		Legendre polynomial :math:`P_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-1, 1]` with weight function
		:math:`w(x) = 1`. See 2.2.10 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		.. [GL] Gauss-Legendre quadrature, Wikipedia,
		    https://en.wikipedia.org/wiki/Gauss%E2%80%93Legendre_quadrature
		
		Examples
		--------
		>>> from scipy.special import roots_legendre, eval_legendre
		>>> roots, weights = roots_legendre(9)
		
		``roots`` holds the roots, and ``weights`` holds the weights for
		Gauss-Legendre quadrature.
		
		>>> roots
		array([-0.96816024, -0.83603111, -0.61337143, -0.32425342,  0.        ,
		        0.32425342,  0.61337143,  0.83603111,  0.96816024])
		>>> weights
		array([0.08127439, 0.18064816, 0.2606107 , 0.31234708, 0.33023936,
		       0.31234708, 0.2606107 , 0.18064816, 0.08127439])
		
		Verify that we have the roots by evaluating the degree 9 Legendre
		polynomial at ``roots``.  All the values are approximately zero:
		
		>>> eval_legendre(9, roots)
		array([-8.88178420e-16, -2.22044605e-16,  1.11022302e-16,  1.11022302e-16,
		        0.00000000e+00, -5.55111512e-17, -1.94289029e-16,  1.38777878e-16,
		       -8.32667268e-17])
		
		Here we'll show how the above values can be used to estimate the
		integral from 1 to 2 of f(t) = t + 1/t with Gauss-Legendre
		quadrature [GL]_.  First define the function and the integration
		limits.
		
		>>> def f(t):
		...    return t + 1/t
		...
		>>> a = 1
		>>> b = 2
		
		We'll use ``integral(f(t), t=a, t=b)`` to denote the definite integral
		of f from t=a to t=b.  The sample points in ``roots`` are from the
		interval [-1, 1], so we'll rewrite the integral with the simple change
		of variable::
		
		    x = 2/(b - a) * t - (a + b)/(b - a)
		
		with inverse::
		
		    t = (b - a)/2 * x + (a + 2)/2
		
		Then::
		
		    integral(f(t), a, b) =
		        (b - a)/2 * integral(f((b-a)/2*x + (a+b)/2), x=-1, x=1)
		
		We can approximate the latter integral with the values returned
		by `roots_legendre`.
		
		Map the roots computed above from [-1, 1] to [a, b].
		
		>>> t = (b - a)/2 * roots + (a + b)/2
		
		Approximate the integral as the weighted sum of the function values.
		
		>>> (b - a)/2 * f(t).dot(weights)
		2.1931471805599276
		
		Compare that to the exact result, which is 3/2 + log(2):
		
		>>> 1.5 + np.log(2)
		2.1931471805599454
	**/
	static public function p_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		poch(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		poch(z, m)
		
		Pochhammer symbol.
		
		The Pochhammer symbol (rising factorial) is defined as
		
		.. math::
		
		    (z)_m = \frac{\Gamma(z + m)}{\Gamma(z)}
		
		For positive integer `m` it reads
		
		.. math::
		
		    (z)_m = z (z + 1) ... (z + m - 1)
		
		See [dlmf]_ for more details.
		
		Parameters
		----------
		z, m : array_like
		    Real-valued arguments.
		
		Returns
		-------
		scalar or ndarray
		    The value of the function.
		
		References
		----------
		.. [dlmf] Nist, Digital Library of Mathematical Functions
		    https://dlmf.nist.gov/5.2#iii
		
		Examples
		--------
		>>> import scipy.special as sc
		
		It is 1 when m is 0.
		
		>>> sc.poch([1, 2, 3, 4], 0)
		array([1., 1., 1., 1.])
		
		For z equal to 1 it reduces to the factorial function.
		
		>>> sc.poch(1, 5)
		120.0
		>>> 1 * 2 * 3 * 4 * 5
		120
		
		It can be expressed in terms of the gamma function.
		
		>>> z, m = 3.7, 2.1
		>>> sc.poch(z, m)
		20.529581933776953
		>>> sc.gamma(z + m) / sc.gamma(z)
		20.52958193377696
	**/
	static public function poch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gauss-Legendre (shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Legendre
		quadrature. The sample points are the roots of the nth degree
		shifted Legendre polynomial :math:`P^*_n(x)`. These sample points
		and weights correctly integrate polynomials of degree :math:`2n -
		1` or less over the interval :math:`[0, 1]` with weight function
		:math:`w(x) = 1.0`. See 2.2.11 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function ps_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the first kind, :math:`C_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-2, 2]`
		with weight function :math:`w(x) = 1 / \sqrt{1 - (x/2)^2}`. See
		22.2.6 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_chebyc(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the second kind, :math:`S_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-2, 2]`
		with weight function :math:`w(x) = \sqrt{1 - (x/2)^2}`. See 22.2.7
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_chebys(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the first kind, :math:`T_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-1, 1]`
		with weight function :math:`w(x) = 1/\sqrt{1 - x^2}`. See 22.2.4
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_chebyt(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the second kind, :math:`U_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-1, 1]`
		with weight function :math:`w(x) = \sqrt{1 - x^2}`. See 22.2.5 in
		[AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_chebyu(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Gegenbauer quadrature.
		
		Compute the sample points and weights for Gauss-Gegenbauer
		quadrature. The sample points are the roots of the nth degree
		Gegenbauer polynomial, :math:`C^{\alpha}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[-1, 1]` with
		weight function :math:`w(x) = (1 - x^2)^{\alpha - 1/2}`. See
		22.2.3 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_gegenbauer(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-generalized Laguerre quadrature.
		
		Compute the sample points and weights for Gauss-generalized
		Laguerre quadrature. The sample points are the roots of the nth
		degree generalized Laguerre polynomial, :math:`L^{\alpha}_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0,
		\infty]` with weight function :math:`w(x) = x^{\alpha}
		e^{-x}`. See 22.3.9 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_genlaguerre(n:Dynamic, alpha:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (physicist's) quadrature.
		
		Compute the sample points and weights for Gauss-Hermite
		quadrature. The sample points are the roots of the nth degree
		Hermite polynomial, :math:`H_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-\infty, \infty]` with weight
		function :math:`w(x) = e^{-x^2}`. See 22.2.14 in [AS]_ for
		details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite.hermgauss
		roots_hermitenorm
		
		References
		----------
		.. [townsend.trogdon.olver-2014]
		    Townsend, A. and Trogdon, T. and Olver, S. (2014)
		    *Fast computation of Gauss quadrature nodes and
		    weights on the whole real line*. :arXiv:`1410.5286`.
		.. [townsend.trogdon.olver-2015]
		    Townsend, A. and Trogdon, T. and Olver, S. (2015)
		    *Fast computation of Gauss quadrature nodes and
		    weights on the whole real line*.
		    IMA Journal of Numerical Analysis
		    :doi:`10.1093/imanum/drv002`.
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_hermite(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Hermite (statistician's) quadrature.
		
		Compute the sample points and weights for Gauss-Hermite
		quadrature. The sample points are the roots of the nth degree
		Hermite polynomial, :math:`He_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-\infty, \infty]` with weight
		function :math:`w(x) = e^{-x^2/2}`. See 22.2.15 in [AS]_ for more
		details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.hermite_e.hermegauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_hermitenorm(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Jacobi quadrature.
		
		Compute the sample points and weights for Gauss-Jacobi
		quadrature. The sample points are the roots of the nth degree
		Jacobi polynomial, :math:`P^{\alpha, \beta}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[-1, 1]` with
		weight function :math:`w(x) = (1 - x)^{\alpha} (1 +
		x)^{\beta}`. See 22.2.1 in [AS]_ for details.
		
		Parameters
		----------
		n : int
		    quadrature order
		alpha : float
		    alpha must be > -1
		beta : float
		    beta must be > -1
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_jacobi(n:Dynamic, alpha:Dynamic, beta:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Laguerre quadrature.
		
		Compute the sample points and weights for Gauss-Laguerre
		quadrature. The sample points are the roots of the nth degree
		Laguerre polynomial, :math:`L_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[0, \infty]` with weight function
		:math:`w(x) = e^{-x}`. See 22.2.13 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.laguerre.laggauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_laguerre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Legendre quadrature.
		
		Compute the sample points and weights for Gauss-Legendre
		quadrature [GL]_. The sample points are the roots of the nth degree
		Legendre polynomial :math:`P_n(x)`. These sample points and
		weights correctly integrate polynomials of degree :math:`2n - 1`
		or less over the interval :math:`[-1, 1]` with weight function
		:math:`w(x) = 1`. See 2.2.10 in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.legendre.leggauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
		.. [GL] Gauss-Legendre quadrature, Wikipedia,
		    https://en.wikipedia.org/wiki/Gauss%E2%80%93Legendre_quadrature
		
		Examples
		--------
		>>> from scipy.special import roots_legendre, eval_legendre
		>>> roots, weights = roots_legendre(9)
		
		``roots`` holds the roots, and ``weights`` holds the weights for
		Gauss-Legendre quadrature.
		
		>>> roots
		array([-0.96816024, -0.83603111, -0.61337143, -0.32425342,  0.        ,
		        0.32425342,  0.61337143,  0.83603111,  0.96816024])
		>>> weights
		array([0.08127439, 0.18064816, 0.2606107 , 0.31234708, 0.33023936,
		       0.31234708, 0.2606107 , 0.18064816, 0.08127439])
		
		Verify that we have the roots by evaluating the degree 9 Legendre
		polynomial at ``roots``.  All the values are approximately zero:
		
		>>> eval_legendre(9, roots)
		array([-8.88178420e-16, -2.22044605e-16,  1.11022302e-16,  1.11022302e-16,
		        0.00000000e+00, -5.55111512e-17, -1.94289029e-16,  1.38777878e-16,
		       -8.32667268e-17])
		
		Here we'll show how the above values can be used to estimate the
		integral from 1 to 2 of f(t) = t + 1/t with Gauss-Legendre
		quadrature [GL]_.  First define the function and the integration
		limits.
		
		>>> def f(t):
		...    return t + 1/t
		...
		>>> a = 1
		>>> b = 2
		
		We'll use ``integral(f(t), t=a, t=b)`` to denote the definite integral
		of f from t=a to t=b.  The sample points in ``roots`` are from the
		interval [-1, 1], so we'll rewrite the integral with the simple change
		of variable::
		
		    x = 2/(b - a) * t - (a + b)/(b - a)
		
		with inverse::
		
		    t = (b - a)/2 * x + (a + 2)/2
		
		Then::
		
		    integral(f(t), a, b) =
		        (b - a)/2 * integral(f((b-a)/2*x + (a+b)/2), x=-1, x=1)
		
		We can approximate the latter integral with the values returned
		by `roots_legendre`.
		
		Map the roots computed above from [-1, 1] to [a, b].
		
		>>> t = (b - a)/2 * roots + (a + b)/2
		
		Approximate the integral as the weighted sum of the function values.
		
		>>> (b - a)/2 * f(t).dot(weights)
		2.1931471805599276
		
		Compare that to the exact result, which is 3/2 + log(2):
		
		>>> 1.5 + np.log(2)
		2.1931471805599454
	**/
	static public function roots_legendre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		shifted Chebyshev polynomial of the first kind, :math:`T_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0, 1]`
		with weight function :math:`w(x) = 1/\sqrt{x - x^2}`. See 22.2.8
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_sh_chebyt(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		shifted Chebyshev polynomial of the second kind, :math:`U_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0, 1]`
		with weight function :math:`w(x) = \sqrt{x - x^2}`. See 22.2.9 in
		[AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_sh_chebyu(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Jacobi (shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Jacobi (shifted)
		quadrature. The sample points are the roots of the nth degree
		shifted Jacobi polynomial, :math:`G^{p,q}_n(x)`. These sample
		points and weights correctly integrate polynomials of degree
		:math:`2n - 1` or less over the interval :math:`[0, 1]` with
		weight function :math:`w(x) = (1 - x)^{p-q} x^{q-1}`. See 22.2.2
		in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_sh_jacobi(n:Dynamic, p1:Dynamic, q1:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Legendre (shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Legendre
		quadrature. The sample points are the roots of the nth degree
		shifted Legendre polynomial :math:`P^*_n(x)`. These sample points
		and weights correctly integrate polynomials of degree :math:`2n -
		1` or less over the interval :math:`[0, 1]` with weight function
		:math:`w(x) = 1.0`. See 2.2.11 in [AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function roots_sh_legendre(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the second kind, :math:`S_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-2, 2]`
		with weight function :math:`w(x) = \sqrt{1 - (x/2)^2}`. See 22.2.7
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function s_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Shifted Chebyshev polynomial of the first kind.
		
		Defined as :math:`T^*_n(x) = T_n(2x - 1)` for :math:`T_n` the nth
		Chebyshev polynomial of the first kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		T : orthopoly1d
		    Shifted Chebyshev polynomial of the first kind.
		
		Notes
		-----
		The polynomials :math:`T^*_n` are orthogonal over :math:`[0, 1]`
		with weight function :math:`(x - x^2)^{-1/2}`.
	**/
	static public function sh_chebyt(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Chebyshev polynomial of the second kind.
		
		Defined as :math:`U^*_n(x) = U_n(2x - 1)` for :math:`U_n` the nth
		Chebyshev polynomial of the second kind.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		U : orthopoly1d
		    Shifted Chebyshev polynomial of the second kind.
		
		Notes
		-----
		The polynomials :math:`U^*_n` are orthogonal over :math:`[0, 1]`
		with weight function :math:`(x - x^2)^{1/2}`.
	**/
	static public function sh_chebyu(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Jacobi polynomial.
		
		Defined by
		
		.. math::
		
		    G_n^{(p, q)}(x)
		      = \binom{2n + p - 1}{n}^{-1}P_n^{(p - q, q - 1)}(2x - 1),
		
		where :math:`P_n^{(\cdot, \cdot)}` is the nth Jacobi polynomial.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		p : float
		    Parameter, must have :math:`p > q - 1`.
		q : float
		    Parameter, must be greater than 0.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		G : orthopoly1d
		    Shifted Jacobi polynomial.
		
		Notes
		-----
		For fixed :math:`p, q`, the polynomials :math:`G_n^{(p, q)}` are
		orthogonal over :math:`[0, 1]` with weight function :math:`(1 -
		x)^{p - q}x^{q - 1}`.
	**/
	static public function sh_jacobi(n:Dynamic, p:Dynamic, q:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Shifted Legendre polynomial.
		
		Defined as :math:`P^*_n(x) = P_n(2x - 1)` for :math:`P_n` the nth
		Legendre polynomial.
		
		Parameters
		----------
		n : int
		    Degree of the polynomial.
		monic : bool, optional
		    If `True`, scale the leading coefficient to be 1. Default is
		    `False`.
		
		Returns
		-------
		P : orthopoly1d
		    Shifted Legendre polynomial.
		
		Notes
		-----
		The polynomials :math:`P^*_n` are orthogonal over :math:`[0, 1]`
		with weight function 1.
	**/
	static public function sh_legendre(n:Dynamic, ?monic:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the first kind, :math:`T_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-1, 1]`
		with weight function :math:`w(x) = 1/\sqrt{1 - x^2}`. See 22.2.4
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		numpy.polynomial.chebyshev.chebgauss
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function t_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (first kind, shifted) quadrature.
		
		Compute the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		shifted Chebyshev polynomial of the first kind, :math:`T_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0, 1]`
		with weight function :math:`w(x) = 1/\sqrt{x - x^2}`. See 22.2.8
		in [AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function ts_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		Chebyshev polynomial of the second kind, :math:`U_n(x)`. These
		sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[-1, 1]`
		with weight function :math:`w(x) = \sqrt{1 - x^2}`. See 22.2.5 in
		[AS]_ for details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function u_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
	/**
		Gauss-Chebyshev (second kind, shifted) quadrature.
		
		Computes the sample points and weights for Gauss-Chebyshev
		quadrature. The sample points are the roots of the nth degree
		shifted Chebyshev polynomial of the second kind, :math:`U_n(x)`.
		These sample points and weights correctly integrate polynomials of
		degree :math:`2n - 1` or less over the interval :math:`[0, 1]`
		with weight function :math:`w(x) = \sqrt{x - x^2}`. See 22.2.9 in
		[AS]_ for more details.
		
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
		scipy.integrate.quadrature
		scipy.integrate.fixed_quad
		
		References
		----------
		.. [AS] Milton Abramowitz and Irene A. Stegun, eds.
		    Handbook of Mathematical Functions with Formulas,
		    Graphs, and Mathematical Tables. New York: Dover, 1972.
	**/
	static public function us_roots(n:Dynamic, ?mu:Dynamic):Dynamic;
}