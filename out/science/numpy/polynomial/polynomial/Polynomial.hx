/* This file is generated, do not edit! */
package numpy.polynomial.polynomial;
@:pythonImport("numpy.polynomial.polynomial", "Polynomial") extern class Polynomial {
	static public var __abstractmethods__ : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_ufunc__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(arg:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(fmt_str:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(coef:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(coef:Dynamic, ?domain:Dynamic, ?window:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(dict:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Add one polynomial to another.
		
		Returns the sum of two polynomials `c1` + `c2`.  The arguments are
		sequences of coefficients from lowest order term to highest, i.e.,
		[1,2,3] represents the polynomial ``1 + 2*x + 3*x**2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of polynomial coefficients ordered from low to high.
		
		Returns
		-------
		out : ndarray
		    The coefficient array representing their sum.
		
		See Also
		--------
		polysub, polymulx, polymul, polydiv, polypow
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> sum = P.polyadd(c1,c2); sum
		array([4.,  4.,  4.])
		>>> P.polyval(2, sum) # 4 + 4(2) + 4(2**2)
		28.0
	**/
	static public function _add(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	/**
		Differentiate a polynomial.
		
		Returns the polynomial coefficients `c` differentiated `m` times along
		`axis`.  At each iteration the result is multiplied by `scl` (the
		scaling factor is for use in a linear change of variable).  The
		argument `c` is an array of coefficients from low to high degree along
		each axis, e.g., [1,2,3] represents the polynomial ``1 + 2*x + 3*x**2``
		while [[1,2],[1,2]] represents ``1 + 1*x + 2*y + 2*x*y`` if axis=0 is
		``x`` and axis=1 is ``y``.
		
		Parameters
		----------
		c : array_like
		    Array of polynomial coefficients. If c is multidimensional the
		    different axis correspond to different variables with the degree
		    in each axis given by the corresponding index.
		m : int, optional
		    Number of derivatives taken, must be non-negative. (Default: 1)
		scl : scalar, optional
		    Each differentiation is multiplied by `scl`.  The end result is
		    multiplication by ``scl**m``.  This is for use in a linear change
		    of variable. (Default: 1)
		axis : int, optional
		    Axis over which the derivative is taken. (Default: 0).
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		der : ndarray
		    Polynomial coefficients of the derivative.
		
		See Also
		--------
		polyint
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c = (1,2,3,4) # 1 + 2x + 3x**2 + 4x**3
		>>> P.polyder(c) # (d/dx)(c) = 2 + 6x + 12x**2
		array([  2.,   6.,  12.])
		>>> P.polyder(c,3) # (d**3/dx**3)(c) = 24
		array([24.])
		>>> P.polyder(c,scl=-1) # (d/d(-x))(c) = -2 - 6x - 12x**2
		array([ -2.,  -6., -12.])
		>>> P.polyder(c,2,-1) # (d**2/d(-x)**2)(c) = 6 + 24x
		array([  6.,  24.])
	**/
	static public function _der(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Divide one polynomial by another.
		
		Returns the quotient-with-remainder of two polynomials `c1` / `c2`.
		The arguments are sequences of coefficients, from lowest order term
		to highest, e.g., [1,2,3] represents ``1 + 2*x + 3*x**2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of polynomial coefficients ordered from low to high.
		
		Returns
		-------
		[quo, rem] : ndarrays
		    Of coefficient series representing the quotient and remainder.
		
		See Also
		--------
		polyadd, polysub, polymulx, polymul, polypow
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> P.polydiv(c1,c2)
		(array([3.]), array([-8., -4.]))
		>>> P.polydiv(c2,c1)
		(array([ 0.33333333]), array([ 2.66666667,  1.33333333])) # may vary
	**/
	static public function _div(c1:Dynamic, c2:Dynamic):Dynamic;
	/**
		Least-squares fit of a polynomial to data.
		
		Return the coefficients of a polynomial of degree `deg` that is the
		least squares fit to the data values `y` given at points `x`. If `y` is
		1-D the returned coefficients will also be 1-D. If `y` is 2-D multiple
		fits are done, one for each column of `y`, and the resulting
		coefficients are stored in the corresponding columns of a 2-D return.
		The fitted polynomial(s) are in the form
		
		.. math::  p(x) = c_0 + c_1 * x + ... + c_n * x^n,
		
		where `n` is `deg`.
		
		Parameters
		----------
		x : array_like, shape (`M`,)
		    x-coordinates of the `M` sample (data) points ``(x[i], y[i])``.
		y : array_like, shape (`M`,) or (`M`, `K`)
		    y-coordinates of the sample points.  Several sets of sample points
		    sharing the same x-coordinates can be (independently) fit with one
		    call to `polyfit` by passing in for `y` a 2-D array that contains
		    one data set per column.
		deg : int or 1-D array_like
		    Degree(s) of the fitting polynomials. If `deg` is a single integer
		    all terms up to and including the `deg`'th term are included in the
		    fit. For NumPy versions >= 1.11.0 a list of integers specifying the
		    degrees of the terms to include may be used instead.
		rcond : float, optional
		    Relative condition number of the fit.  Singular values smaller
		    than `rcond`, relative to the largest singular value, will be
		    ignored.  The default value is ``len(x)*eps``, where `eps` is the
		    relative precision of the platform's float type, about 2e-16 in
		    most cases.
		full : bool, optional
		    Switch determining the nature of the return value.  When ``False``
		    (the default) just the coefficients are returned; when ``True``,
		    diagnostic information from the singular value decomposition (used
		    to solve the fit's matrix equation) is also returned.
		w : array_like, shape (`M`,), optional
		    Weights. If not None, the weight ``w[i]`` applies to the unsquared
		    residual ``y[i] - y_hat[i]`` at ``x[i]``. Ideally the weights are
		    chosen so that the errors of the products ``w[i]*y[i]`` all have the
		    same variance.  When using inverse-variance weighting, use
		    ``w[i] = 1/sigma(y[i])``.  The default value is None.
		
		    .. versionadded:: 1.5.0
		
		Returns
		-------
		coef : ndarray, shape (`deg` + 1,) or (`deg` + 1, `K`)
		    Polynomial coefficients ordered from low to high.  If `y` was 2-D,
		    the coefficients in column `k` of `coef` represent the polynomial
		    fit to the data in `y`'s `k`-th column.
		
		[residuals, rank, singular_values, rcond] : list
		    These values are only returned if ``full == True``
		
		    - residuals -- sum of squared residuals of the least squares fit
		    - rank -- the numerical rank of the scaled Vandermonde matrix
		    - singular_values -- singular values of the scaled Vandermonde matrix
		    - rcond -- value of `rcond`.
		
		    For more details, see `numpy.linalg.lstsq`.
		
		Raises
		------
		RankWarning
		    Raised if the matrix in the least-squares fit is rank deficient.
		    The warning is only raised if ``full == False``.  The warnings can
		    be turned off by:
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', np.RankWarning)
		
		See Also
		--------
		numpy.polynomial.chebyshev.chebfit
		numpy.polynomial.legendre.legfit
		numpy.polynomial.laguerre.lagfit
		numpy.polynomial.hermite.hermfit
		numpy.polynomial.hermite_e.hermefit
		polyval : Evaluates a polynomial.
		polyvander : Vandermonde matrix for powers.
		numpy.linalg.lstsq : Computes a least-squares fit from the matrix.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution is the coefficients of the polynomial `p` that minimizes
		the sum of the weighted squared errors
		
		.. math:: E = \sum_j w_j^2 * |y_j - p(x_j)|^2,
		
		where the :math:`w_j` are the weights. This problem is solved by
		setting up the (typically) over-determined matrix equation:
		
		.. math:: V(x) * c = w * y,
		
		where `V` is the weighted pseudo Vandermonde matrix of `x`, `c` are the
		coefficients to be solved for, `w` are the weights, and `y` are the
		observed values.  This equation is then solved using the singular value
		decomposition of `V`.
		
		If some of the singular values of `V` are so small that they are
		neglected (and `full` == ``False``), a `RankWarning` will be raised.
		This means that the coefficient values may be poorly determined.
		Fitting to a lower order polynomial will usually get rid of the warning
		(but may not be what you want, of course; if you have independent
		reason(s) for choosing the degree which isn't working, you may have to:
		a) reconsider those reasons, and/or b) reconsider the quality of your
		data).  The `rcond` parameter can also be set to a value smaller than
		its default, but the resulting fit may be spurious and have large
		contributions from roundoff error.
		
		Polynomial fits using double precision tend to "fail" at about
		(polynomial) degree 20. Fits using Chebyshev or Legendre series are
		generally better conditioned, but much can still depend on the
		distribution of the sample points and the smoothness of the data.  If
		the quality of the fit is inadequate, splines may be a good
		alternative.
		
		Examples
		--------
		>>> np.random.seed(123)
		>>> from numpy.polynomial import polynomial as P
		>>> x = np.linspace(-1,1,51) # x "data": [-1, -0.96, ..., 0.96, 1]
		>>> y = x**3 - x + np.random.randn(len(x)) # x^3 - x + N(0,1) "noise"
		>>> c, stats = P.polyfit(x,y,3,full=True)
		>>> np.random.seed(123)
		>>> c # c[0], c[2] should be approx. 0, c[1] approx. -1, c[3] approx. 1
		array([ 0.01909725, -1.30598256, -0.00577963,  1.02644286]) # may vary
		>>> stats # note the large SSR, explaining the rather poor results
		 [array([ 38.06116253]), 4, array([ 1.38446749,  1.32119158,  0.50443316, # may vary
		          0.28853036]), 1.1324274851176597e-014]
		
		Same thing without the added noise
		
		>>> y = x**3 - x
		>>> c, stats = P.polyfit(x,y,3,full=True)
		>>> c # c[0], c[2] should be "very close to 0", c[1] ~= -1, c[3] ~= 1
		array([-6.36925336e-18, -1.00000000e+00, -4.08053781e-16,  1.00000000e+00])
		>>> stats # note the minuscule SSR
		[array([  7.46346754e-31]), 4, array([ 1.38446749,  1.32119158, # may vary
		           0.50443316,  0.28853036]), 1.1324274851176597e-014]
	**/
	static public function _fit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Generate a monic polynomial with given roots.
		
		Return the coefficients of the polynomial
		
		.. math:: p(x) = (x - r_0) * (x - r_1) * ... * (x - r_n),
		
		where the ``r_n`` are the roots specified in `roots`.  If a zero has
		multiplicity n, then it must appear in `roots` n times. For instance,
		if 2 is a root of multiplicity three and 3 is a root of multiplicity 2,
		then `roots` looks something like [2, 2, 2, 3, 3]. The roots can appear
		in any order.
		
		If the returned coefficients are `c`, then
		
		.. math:: p(x) = c_0 + c_1 * x + ... +  x^n
		
		The coefficient of the last term is 1 for monic polynomials in this
		form.
		
		Parameters
		----------
		roots : array_like
		    Sequence containing the roots.
		
		Returns
		-------
		out : ndarray
		    1-D array of the polynomial's coefficients If all the roots are
		    real, then `out` is also real, otherwise it is complex.  (see
		    Examples below).
		
		See Also
		--------
		numpy.polynomial.chebyshev.chebfromroots
		numpy.polynomial.legendre.legfromroots
		numpy.polynomial.laguerre.lagfromroots
		numpy.polynomial.hermite.hermfromroots
		numpy.polynomial.hermite_e.hermefromroots
		
		Notes
		-----
		The coefficients are determined by multiplying together linear factors
		of the form ``(x - r_i)``, i.e.
		
		.. math:: p(x) = (x - r_0) (x - r_1) ... (x - r_n)
		
		where ``n == len(roots) - 1``; note that this implies that ``1`` is always
		returned for :math:`a_n`.
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> P.polyfromroots((-1,0,1)) # x(x - 1)(x + 1) = x^3 - x
		array([ 0., -1.,  0.,  1.])
		>>> j = complex(0,1)
		>>> P.polyfromroots((-j,j)) # complex returned, though values are real
		array([1.+0.j,  0.+0.j,  1.+0.j])
	**/
	static public function _fromroots(roots:Dynamic):numpy.Ndarray;
	/**
		Generate the full string representation of the polynomial, using
		``term_method`` to generate each polynomial term.
	**/
	public function _generate_string(term_method:Dynamic):Dynamic;
	/**
		Interpret other as polynomial coefficients.
		
		The `other` argument is checked to see if it is of the same
		class as self with identical domain and window. If so,
		return its coefficients, otherwise return `other`.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		other : anything
		    Object to be checked.
		
		Returns
		-------
		coef
		    The coefficients of`other` if it is a compatible instance,
		    of ABCPolyBase, otherwise `other`.
		
		Raises
		------
		TypeError
		    When `other` is an incompatible instance of ABCPolyBase.
	**/
	public function _get_coefficients(other:Dynamic):Dynamic;
	/**
		Integrate a polynomial.
		
		Returns the polynomial coefficients `c` integrated `m` times from
		`lbnd` along `axis`.  At each iteration the resulting series is
		**multiplied** by `scl` and an integration constant, `k`, is added.
		The scaling factor is for use in a linear change of variable.  ("Buyer
		beware": note that, depending on what one is doing, one may want `scl`
		to be the reciprocal of what one might expect; for more information,
		see the Notes section below.) The argument `c` is an array of
		coefficients, from low to high degree along each axis, e.g., [1,2,3]
		represents the polynomial ``1 + 2*x + 3*x**2`` while [[1,2],[1,2]]
		represents ``1 + 1*x + 2*y + 2*x*y`` if axis=0 is ``x`` and axis=1 is
		``y``.
		
		Parameters
		----------
		c : array_like
		    1-D array of polynomial coefficients, ordered from low to high.
		m : int, optional
		    Order of integration, must be positive. (Default: 1)
		k : {[], list, scalar}, optional
		    Integration constant(s).  The value of the first integral at zero
		    is the first value in the list, the value of the second integral
		    at zero is the second value, etc.  If ``k == []`` (the default),
		    all constants are set to zero.  If ``m == 1``, a single scalar can
		    be given instead of a list.
		lbnd : scalar, optional
		    The lower bound of the integral. (Default: 0)
		scl : scalar, optional
		    Following each integration the result is *multiplied* by `scl`
		    before the integration constant is added. (Default: 1)
		axis : int, optional
		    Axis over which the integral is taken. (Default: 0).
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		S : ndarray
		    Coefficient array of the integral.
		
		Raises
		------
		ValueError
		    If ``m < 1``, ``len(k) > m``, ``np.ndim(lbnd) != 0``, or
		    ``np.ndim(scl) != 0``.
		
		See Also
		--------
		polyder
		
		Notes
		-----
		Note that the result of each integration is *multiplied* by `scl`.  Why
		is this important to note?  Say one is making a linear change of
		variable :math:`u = ax + b` in an integral relative to `x`. Then
		:math:`dx = du/a`, so one will need to set `scl` equal to
		:math:`1/a` - perhaps not what one would have first thought.
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c = (1,2,3)
		>>> P.polyint(c) # should return array([0, 1, 1, 1])
		array([0.,  1.,  1.,  1.])
		>>> P.polyint(c,3) # should return array([0, 0, 0, 1/6, 1/12, 1/20])
		 array([ 0.        ,  0.        ,  0.        ,  0.16666667,  0.08333333, # may vary
		         0.05      ])
		>>> P.polyint(c,k=3) # should return array([3, 1, 1, 1])
		array([3.,  1.,  1.,  1.])
		>>> P.polyint(c,lbnd=-2) # should return array([6, 1, 1, 1])
		array([6.,  1.,  1.,  1.])
		>>> P.polyint(c,scl=-2) # should return array([0, -2, -2, -2])
		array([ 0., -2., -2., -2.])
	**/
	static public function _int(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Returns an array representing a linear polynomial.
		
		Parameters
		----------
		off, scl : scalars
		    The "y-intercept" and "slope" of the line, respectively.
		
		Returns
		-------
		y : ndarray
		    This module's representation of the linear polynomial ``off +
		    scl*x``.
		
		See Also
		--------
		numpy.polynomial.chebyshev.chebline
		numpy.polynomial.legendre.legline
		numpy.polynomial.laguerre.lagline
		numpy.polynomial.hermite.hermline
		numpy.polynomial.hermite_e.hermeline
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> P.polyline(1,-1)
		array([ 1, -1])
		>>> P.polyval(1, P.polyline(1,-1)) # should be 0
		0.0
	**/
	static public function _line(off:Dynamic, scl:Dynamic):numpy.Ndarray;
	/**
		Multiply one polynomial by another.
		
		Returns the product of two polynomials `c1` * `c2`.  The arguments are
		sequences of coefficients, from lowest order term to highest, e.g.,
		[1,2,3] represents the polynomial ``1 + 2*x + 3*x**2.``
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of coefficients representing a polynomial, relative to the
		    "standard" basis, and ordered from lowest order term to highest.
		
		Returns
		-------
		out : ndarray
		    Of the coefficients of their product.
		
		See Also
		--------
		polyadd, polysub, polymulx, polydiv, polypow
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> P.polymul(c1,c2)
		array([  3.,   8.,  14.,   8.,   3.])
	**/
	static public function _mul(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	/**
		Raise a polynomial to a power.
		
		Returns the polynomial `c` raised to the power `pow`. The argument
		`c` is a sequence of coefficients ordered from low to high. i.e.,
		[1,2,3] is the series  ``1 + 2*x + 3*x**2.``
		
		Parameters
		----------
		c : array_like
		    1-D array of array of series coefficients ordered from low to
		    high degree.
		pow : integer
		    Power to which the series will be raised
		maxpower : integer, optional
		    Maximum power allowed. This is mainly to limit growth of the series
		    to unmanageable size. Default is 16
		
		Returns
		-------
		coef : ndarray
		    Power series of power.
		
		See Also
		--------
		polyadd, polysub, polymulx, polymul, polydiv
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> P.polypow([1,2,3], 2)
		array([ 1., 4., 10., 12., 9.])
	**/
	static public function _pow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):numpy.Ndarray;
	public function _repr_latex_():Dynamic;
	static public function _repr_latex_scalar(x:Dynamic):Dynamic;
	static public function _repr_latex_term(i:Dynamic, arg_str:Dynamic, needs_parens:Dynamic):Dynamic;
	/**
		Compute the roots of a polynomial.
		
		Return the roots (a.k.a. "zeros") of the polynomial
		
		.. math:: p(x) = \sum_i c[i] * x^i.
		
		Parameters
		----------
		c : 1-D array_like
		    1-D array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    Array of the roots of the polynomial. If all the roots are real,
		    then `out` is also real, otherwise it is complex.
		
		See Also
		--------
		numpy.polynomial.chebyshev.chebroots
		numpy.polynomial.legendre.legroots
		numpy.polynomial.laguerre.lagroots
		numpy.polynomial.hermite.hermroots
		numpy.polynomial.hermite_e.hermeroots
		
		Notes
		-----
		The root estimates are obtained as the eigenvalues of the companion
		matrix, Roots far from the origin of the complex plane may have large
		errors due to the numerical instability of the power series for such
		values. Roots with multiplicity greater than 1 will also show larger
		errors as the value of the series near such points is relatively
		insensitive to errors in the roots. Isolated roots near the origin can
		be improved by a few iterations of Newton's method.
		
		Examples
		--------
		>>> import numpy.polynomial.polynomial as poly
		>>> poly.polyroots(poly.polyfromroots((-1,0,1)))
		array([-1.,  0.,  1.])
		>>> poly.polyroots(poly.polyfromroots((-1,0,1))).dtype
		dtype('float64')
		>>> j = complex(0,1)
		>>> poly.polyroots(poly.polyfromroots((-j,0,j)))
		array([  0.00000000e+00+0.j,   0.00000000e+00+1.j,   2.77555756e-17-1.j]) # may vary
	**/
	static public function _roots(c:Dynamic):numpy.Ndarray;
	/**
		String representation of a single polynomial term using ** and _ to
		represent superscripts and subscripts, respectively.
	**/
	static public function _str_term_ascii(i:Dynamic, arg_str:Dynamic):Dynamic;
	/**
		String representation of single polynomial term using unicode
		characters for superscripts and subscripts.
	**/
	static public function _str_term_unicode(i:Dynamic, arg_str:Dynamic):Dynamic;
	/**
		Subtract one polynomial from another.
		
		Returns the difference of two polynomials `c1` - `c2`.  The arguments
		are sequences of coefficients from lowest order term to highest, i.e.,
		[1,2,3] represents the polynomial ``1 + 2*x + 3*x**2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of polynomial coefficients ordered from low to
		    high.
		
		Returns
		-------
		out : ndarray
		    Of coefficients representing their difference.
		
		See Also
		--------
		polyadd, polymulx, polymul, polydiv, polypow
		
		Examples
		--------
		>>> from numpy.polynomial import polynomial as P
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> P.polysub(c1,c2)
		array([-2.,  0.,  2.])
		>>> P.polysub(c2,c1) # -P.polysub(c1,c2)
		array([ 2.,  0., -2.])
	**/
	static public function _sub(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	static public var _subscript_mapping : Dynamic;
	static public var _superscript_mapping : Dynamic;
	static public var _use_unicode : Dynamic;
	/**
		Evaluate a polynomial at points x.
		
		If `c` is of length `n + 1`, this function returns the value
		
		.. math:: p(x) = c_0 + c_1 * x + ... + c_n * x^n
		
		The parameter `x` is converted to an array only if it is a tuple or a
		list, otherwise it is treated as a scalar. In either case, either `x`
		or its elements must support multiplication and addition both with
		themselves and with the elements of `c`.
		
		If `c` is a 1-D array, then `p(x)` will have the same shape as `x`.  If
		`c` is multidimensional, then the shape of the result depends on the
		value of `tensor`. If `tensor` is true the shape will be c.shape[1:] +
		x.shape. If `tensor` is false the shape will be c.shape[1:]. Note that
		scalars have shape (,).
		
		Trailing zeros in the coefficients will be used in the evaluation, so
		they should be avoided if efficiency is a concern.
		
		Parameters
		----------
		x : array_like, compatible object
		    If `x` is a list or tuple, it is converted to an ndarray, otherwise
		    it is left unchanged and treated as a scalar. In either case, `x`
		    or its elements must support addition and multiplication with
		    with themselves and with the elements of `c`.
		c : array_like
		    Array of coefficients ordered so that the coefficients for terms of
		    degree n are contained in c[n]. If `c` is multidimensional the
		    remaining indices enumerate multiple polynomials. In the two
		    dimensional case the coefficients may be thought of as stored in
		    the columns of `c`.
		tensor : boolean, optional
		    If True, the shape of the coefficient array is extended with ones
		    on the right, one for each dimension of `x`. Scalars have dimension 0
		    for this action. The result is that every column of coefficients in
		    `c` is evaluated for every element of `x`. If False, `x` is broadcast
		    over the columns of `c` for the evaluation.  This keyword is useful
		    when `c` is multidimensional. The default value is True.
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		values : ndarray, compatible object
		    The shape of the returned array is described above.
		
		See Also
		--------
		polyval2d, polygrid2d, polyval3d, polygrid3d
		
		Notes
		-----
		The evaluation uses Horner's method.
		
		Examples
		--------
		>>> from numpy.polynomial.polynomial import polyval
		>>> polyval(1, [1,2,3])
		6.0
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> polyval(a, [1,2,3])
		array([[ 1.,   6.],
		       [17.,  34.]])
		>>> coef = np.arange(4).reshape(2,2) # multidimensional coefficients
		>>> coef
		array([[0, 1],
		       [2, 3]])
		>>> polyval([1,2], coef, tensor=True)
		array([[2.,  4.],
		       [4.,  7.]])
		>>> polyval([1,2], coef, tensor=False)
		array([2.,  7.])
	**/
	static public function _val(x:Dynamic, c:Dynamic, ?tensor:Dynamic):Dynamic;
	/**
		Series basis polynomial of degree `deg`.
		
		Returns the series representing the basis polynomial of degree `deg`.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		deg : int
		    Degree of the basis polynomial for the series. Must be >= 0.
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		    A series with the coefficient of the `deg` term set to one and
		    all others zero.
	**/
	static public function basis(deg:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	static public var basis_name : Dynamic;
	/**
		Convert series to series of this class.
		
		The `series` is expected to be an instance of some polynomial
		series of one of the types supported by by the numpy.polynomial
		module, but could be some other class that supports the convert
		method.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		series : series
		    The series instance to be converted.
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		    A series of the same kind as the calling class and equal to
		    `series` when evaluated.
		
		See Also
		--------
		convert : similar instance method
	**/
	@:native("cast")
	static public function _cast(series:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Convert series to a different kind and/or domain and/or window.
		
		Parameters
		----------
		domain : array_like, optional
		    The domain of the converted series. If the value is None,
		    the default domain of `kind` is used.
		kind : class, optional
		    The polynomial series type class to which the current instance
		    should be converted. If kind is None, then the class of the
		    current instance is used.
		window : array_like, optional
		    The window of the converted series. If the value is None,
		    the default window of `kind` is used.
		
		Returns
		-------
		new_series : series
		    The returned class can be of different type than the current
		    instance and/or have a different domain and/or different
		    window.
		
		Notes
		-----
		Conversion between domains and class types can result in
		numerically ill defined series.
	**/
	public function convert(?domain:Dynamic, ?kind:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Return a copy.
		
		Returns
		-------
		new_series : series
		    Copy of self.
	**/
	public function copy():Dynamic;
	/**
		Truncate series to the given degree.
		
		Reduce the degree of the series to `deg` by discarding the
		high order terms. If `deg` is greater than the current degree a
		copy of the current series is returned. This can be useful in least
		squares where the coefficients of the high degree terms may be very
		small.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		deg : non-negative int
		    The series is reduced to degree `deg` by discarding the high
		    order terms. The value of `deg` must be a non-negative integer.
		
		Returns
		-------
		new_series : series
		    New instance of series with reduced degree.
	**/
	public function cutdeg(deg:Dynamic):Dynamic;
	/**
		The degree of the series.
		
		.. versionadded:: 1.5.0
		
		Returns
		-------
		degree : int
		    Degree of the series, one less than the number of coefficients.
	**/
	public function degree():Int;
	/**
		Differentiate.
		
		Return a series instance of that is the derivative of the current
		series.
		
		Parameters
		----------
		m : non-negative int
		    Find the derivative of order `m`.
		
		Returns
		-------
		new_series : series
		    A new series representing the derivative. The domain is the same
		    as the domain of the differentiated series.
	**/
	public function deriv(?m:Dynamic):Dynamic;
	static public var domain : Dynamic;
	/**
		Least squares fit to data.
		
		Return a series instance that is the least squares fit to the data
		`y` sampled at `x`. The domain of the returned instance can be
		specified and this will often result in a superior fit with less
		chance of ill conditioning.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,)
		    y-coordinates of the M sample points ``(x[i], y[i])``.
		deg : int or 1-D array_like
		    Degree(s) of the fitting polynomials. If `deg` is a single integer
		    all terms up to and including the `deg`'th term are included in the
		    fit. For NumPy versions >= 1.11.0 a list of integers specifying the
		    degrees of the terms to include may be used instead.
		domain : {None, [beg, end], []}, optional
		    Domain to use for the returned series. If ``None``,
		    then a minimal domain that covers the points `x` is chosen.  If
		    ``[]`` the class domain is used. The default value was the
		    class domain in NumPy 1.4 and ``None`` in later versions.
		    The ``[]`` option was added in numpy 1.5.0.
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller
		    than this relative to the largest singular value will be
		    ignored. The default value is len(x)*eps, where eps is the
		    relative precision of the float type, about 2e-16 in most
		    cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False
		    (the default) just the coefficients are returned, when True
		    diagnostic information from the singular value decomposition is
		    also returned.
		w : array_like, shape (M,), optional
		    Weights. If not None, the weight ``w[i]`` applies to the unsquared
		    residual ``y[i] - y_hat[i]`` at ``x[i]``. Ideally the weights are
		    chosen so that the errors of the products ``w[i]*y[i]`` all have
		    the same variance.  When using inverse-variance weighting, use
		    ``w[i] = 1/sigma(y[i])``.  The default value is None.
		
		    .. versionadded:: 1.5.0
		window : {[beg, end]}, optional
		    Window to use for the returned series. The default
		    value is the default class domain
		
		    .. versionadded:: 1.6.0
		
		Returns
		-------
		new_series : series
		    A series that represents the least squares fit to the data and
		    has the domain and window specified in the call. If the
		    coefficients for the unscaled and unshifted basis polynomials are
		    of interest, do ``new_series.convert().coef``.
		
		[resid, rank, sv, rcond] : list
		    These values are only returned if ``full == True``
		
		    - resid -- sum of squared residuals of the least squares fit
		    - rank -- the numerical rank of the scaled Vandermonde matrix
		    - sv -- singular values of the scaled Vandermonde matrix
		    - rcond -- value of `rcond`.
		
		    For more details, see `linalg.lstsq`.
	**/
	static public function fit(x:Dynamic, y:Dynamic, deg:Dynamic, ?domain:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Return series instance that has the specified roots.
		
		Returns a series representing the product
		``(x - r[0])*(x - r[1])*...*(x - r[n-1])``, where ``r`` is a
		list of roots.
		
		Parameters
		----------
		roots : array_like
		    List of roots.
		domain : {[], None, array_like}, optional
		    Domain for the resulting series. If None the domain is the
		    interval from the smallest root to the largest. If [] the
		    domain is the class domain. The default is [].
		window : {None, array_like}, optional
		    Window for the returned series. If None the class window is
		    used. The default is None.
		
		Returns
		-------
		new_series : series
		    Series with the specified roots.
	**/
	static public function fromroots(roots:Dynamic, ?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Check if coefficients match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``coef`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the coefficients are the same, False otherwise.
	**/
	public function has_samecoef(other:Dynamic):Dynamic;
	/**
		Check if domains match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``domain`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the domains are the same, False otherwise.
	**/
	public function has_samedomain(other:Dynamic):Dynamic;
	/**
		Check if types match.
		
		.. versionadded:: 1.7.0
		
		Parameters
		----------
		other : object
		    Class instance.
		
		Returns
		-------
		bool : boolean
		    True if other is same class as self
	**/
	public function has_sametype(other:Dynamic):Dynamic;
	/**
		Check if windows match.
		
		.. versionadded:: 1.6.0
		
		Parameters
		----------
		other : class instance
		    The other class must have the ``window`` attribute.
		
		Returns
		-------
		bool : boolean
		    True if the windows are the same, False otherwise.
	**/
	public function has_samewindow(other:Dynamic):Dynamic;
	/**
		Identity function.
		
		If ``p`` is the returned series, then ``p(x) == x`` for all
		values of x.
		
		Parameters
		----------
		domain : {None, array_like}, optional
		    If given, the array must be of the form ``[beg, end]``, where
		    ``beg`` and ``end`` are the endpoints of the domain. If None is
		    given then the class domain is used. The default is None.
		window : {None, array_like}, optional
		    If given, the resulting array must be if the form
		    ``[beg, end]``, where ``beg`` and ``end`` are the endpoints of
		    the window. If None is given then the class window is used. The
		    default is None.
		
		Returns
		-------
		new_series : series
		     Series of representing the identity.
	**/
	static public function identity(?domain:Dynamic, ?window:Dynamic):Dynamic;
	/**
		Integrate.
		
		Return a series instance that is the definite integral of the
		current series.
		
		Parameters
		----------
		m : non-negative int
		    The number of integrations to perform.
		k : array_like
		    Integration constants. The first constant is applied to the
		    first integration, the second to the second, and so on. The
		    list of values must less than or equal to `m` in length and any
		    missing values are set to zero.
		lbnd : Scalar
		    The lower bound of the definite integral.
		
		Returns
		-------
		new_series : series
		    A new series representing the integral. The domain is the same
		    as the domain of the integrated series.
	**/
	public function integ(?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic):Dynamic;
	/**
		Return x, y values at equally spaced points in domain.
		
		Returns the x, y values at `n` linearly spaced points across the
		domain.  Here y is the value of the polynomial at the points x. By
		default the domain is the same as that of the series instance.
		This method is intended mostly as a plotting aid.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		n : int, optional
		    Number of point pairs to return. The default value is 100.
		domain : {None, array_like}, optional
		    If not None, the specified domain is used instead of that of
		    the calling instance. It should be of the form ``[beg,end]``.
		    The default is None which case the class domain is used.
		
		Returns
		-------
		x, y : ndarray
		    x is equal to linspace(self.domain[0], self.domain[1], n) and
		    y is the series evaluated at element of x.
	**/
	public function linspace(?n:Dynamic, ?domain:Dynamic):numpy.Ndarray;
	/**
		Return the mapping parameters.
		
		The returned values define a linear map ``off + scl*x`` that is
		applied to the input arguments before the series is evaluated. The
		map depends on the ``domain`` and ``window``; if the current
		``domain`` is equal to the ``window`` the resulting map is the
		identity.  If the coefficients of the series instance are to be
		used by themselves outside this class, then the linear function
		must be substituted for the ``x`` in the standard representation of
		the base polynomials.
		
		Returns
		-------
		off, scl : float or complex
		    The mapping function is defined by ``off + scl*x``.
		
		Notes
		-----
		If the current domain is the interval ``[l1, r1]`` and the window
		is ``[l2, r2]``, then the linear mapping function ``L`` is
		defined by the equations::
		
		    L(l1) = l2
		    L(r1) = r2
	**/
	public function mapparms():Dynamic;
	static public var maxpower : Dynamic;
	/**
		Return the roots of the series polynomial.
		
		Compute the roots for the series. Note that the accuracy of the
		roots decrease the further outside the domain they lie.
		
		Returns
		-------
		roots : ndarray
		    Array containing the roots of the series.
	**/
	public function roots():numpy.Ndarray;
	/**
		Remove trailing coefficients
		
		Remove trailing coefficients until a coefficient is reached whose
		absolute value greater than `tol` or the beginning of the series is
		reached. If all the coefficients would be removed the series is set
		to ``[0]``. A new series instance is returned with the new
		coefficients.  The current instance remains unchanged.
		
		Parameters
		----------
		tol : non-negative number.
		    All trailing coefficients less than `tol` will be removed.
		
		Returns
		-------
		new_series : series
		    New instance of series with trimmed coefficients.
	**/
	public function trim(?tol:Dynamic):Dynamic;
	/**
		Truncate series to length `size`.
		
		Reduce the series to length `size` by discarding the high
		degree terms. The value of `size` must be a positive integer. This
		can be useful in least squares where the coefficients of the
		high degree terms may be very small.
		
		Parameters
		----------
		size : positive int
		    The series is reduced to length `size` by discarding the high
		    degree terms. The value of `size` must be a positive integer.
		
		Returns
		-------
		new_series : series
		    New instance of series with truncated coefficients.
	**/
	public function truncate(size:Dynamic):Dynamic;
	static public var window : Dynamic;
}