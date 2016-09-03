/* This file is generated, do not edit! */
package scipy.interpolate.polyint;
@:pythonImport("scipy.interpolate.polyint") extern class Polyint_Module {
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
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		Check whether x is if a scalar type, or 0-dim
	**/
	static public function _isscalar(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Estimate the Taylor polynomial of f at x by polynomial fitting.
		
		Parameters
		----------
		f : callable
		    The function whose Taylor polynomial is sought. Should accept
		    a vector of `x` values.
		x : scalar
		    The point at which the polynomial is to be evaluated.
		degree : int
		    The degree of the Taylor polynomial
		scale : scalar
		    The width of the interval to use to evaluate the Taylor polynomial.
		    Function values spread over a range this wide are used to fit the
		    polynomial. Must be chosen carefully.
		order : int or None, optional
		    The order of the polynomial to be used in the fitting; `f` will be
		    evaluated ``order+1`` times. If None, use `degree`.
		
		Returns
		-------
		p : poly1d instance
		    The Taylor polynomial (translated to the origin, so that
		    for example p(0)=f(x)).
		
		Notes
		-----
		The appropriate choice of "scale" is a trade-off; too large and the
		function differs from its Taylor polynomial too much to get a good
		answer, too small and round-off errors overwhelm the higher-order terms.
		The algorithm used becomes numerically unstable around order 30 even
		under ideal circumstances.
		
		Choosing order somewhat larger than degree may improve the higher-order
		terms.
	**/
	static public function approximate_taylor_polynomial(f:Dynamic, x:Dynamic, degree:Dynamic, scale:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convenience function for polynomial interpolation.
		
		Constructs a polynomial that passes through a given set of points,
		then evaluates the polynomial. For reasons of numerical stability,
		this function does not compute the coefficients of the polynomial.
		
		This function uses a "barycentric interpolation" method that treats
		the problem as a special case of rational function interpolation.
		This algorithm is quite stable, numerically, but even in a world of
		exact computation, unless the `x` coordinates are chosen very
		carefully - Chebyshev zeros (e.g. cos(i*pi/n)) are a good choice -
		polynomial interpolation itself is a very ill-conditioned process
		due to the Runge phenomenon.
		
		Parameters
		----------
		xi : array_like
		    1-d array of x coordinates of the points the polynomial should
		    pass through
		yi : array_like
		    The y coordinates of the points the polynomial should pass through.
		x : scalar or array_like
		    Points to evaluate the interpolator at.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		Returns
		-------
		y : scalar or array_like
		    Interpolated values. Shape is determined by replacing
		    the interpolation axis in the original array with the shape of x.
		
		See Also
		--------
		BarycentricInterpolator
		
		Notes
		-----
		Construction of the interpolation weights is a relatively slow process.
		If you want to call this many times with the same xi (but possibly
		varying yi or x) you should use the class `BarycentricInterpolator`.
		This is what this function uses internally.
	**/
	static public function barycentric_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		The factorial of a number or array of numbers.
		
		The factorial of non-negative integer `n` is the product of all
		positive integers less than or equal to `n`::
		
		    n! = n * (n - 1) * (n - 2) * ... * 1
		
		Parameters
		----------
		n : int or array_like of ints
		    Input values.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    If True, calculate the answer exactly using long integer arithmetic.
		    If False, result is approximated in floating point rapidly using the
		    `gamma` function.
		    Default is False.
		
		Returns
		-------
		nf : float or int or ndarray
		    Factorial of `n`, as integer or float depending on `exact`.
		
		Notes
		-----
		For arrays with ``exact=True``, the factorial is computed only once, for
		the largest input, with each other result computed in the process.
		The output dtype is increased to ``int64`` or ``object`` if necessary.
		
		With ``exact=False`` the factorial is approximated using the gamma
		function:
		
		.. math:: n! = \Gamma(n+1)
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3, 4, 5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
		>>> factorial(arr, exact=True)
		array([  6,  24, 120])
		>>> factorial(5, exact=True)
		120L
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Convenience function for polynomial interpolation.
		
		See `KroghInterpolator` for more details.
		
		Parameters
		----------
		xi : array_like
		    Known x-coordinates.
		yi : array_like
		    Known y-coordinates, of shape ``(xi.size, R)``.  Interpreted as
		    vectors of length R, or scalars if R=1.
		x : array_like
		    Point or points at which to evaluate the derivatives.
		der : int or list, optional
		    How many derivatives to extract; None for all potentially
		    nonzero derivatives (that is a number equal to the number
		    of points), or a list of derivatives to extract. This number
		    includes the function value as 0th derivative.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		Returns
		-------
		d : ndarray
		    If the interpolator's values are R-dimensional then the
		    returned array will be the number of derivatives by N by R.
		    If `x` is a scalar, the middle dimension will be dropped; if
		    the `yi` are scalars then the last dimension will be dropped.
		
		See Also
		--------
		KroghInterpolator
		
		Notes
		-----
		Construction of the interpolating polynomial is a relatively expensive
		process. If you want to evaluate it repeatedly consider using the class
		KroghInterpolator (which is what this function uses).
	**/
	static public function krogh_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}