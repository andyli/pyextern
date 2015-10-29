/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate.polyint") extern class Polyint {
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
		The factorial function, n! = special.gamma(n+1).
		
		If exact is 0, then floating point precision is used, otherwise
		exact long integer is computed.
		
		- Array argument accepted only for exact=False case.
		- If n<0, the return value is 0.
		
		Parameters
		----------
		n : int or array_like of ints
		    Calculate ``n!``.  Arrays are only supported with `exact` set
		    to False.  If ``n < 0``, the return value is 0.
		exact : bool, optional
		    The result can be approximated rapidly using the gamma-formula
		    above.  If `exact` is set to True, calculate the
		    answer exactly using integer arithmetic. Default is False.
		
		Returns
		-------
		nf : float or int
		    Factorial of `n`, as an integer or a float depending on `exact`.
		
		Examples
		--------
		>>> from scipy.special import factorial
		>>> arr = np.array([3,4,5])
		>>> factorial(arr, exact=False)
		array([   6.,   24.,  120.])
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
	/**
		Convenience function for piecewise polynomial interpolation.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates.
		yi : list of lists
		    ``yi[i]`` is the list of derivatives known at ``xi[i]``.
		x : scalar or array_like
		    Coordinates at which to evalualte the polynomial.
		orders : int or list of ints, optional
		    A list of polynomial orders, or a single universal order.
		der : int or list, optional
		    How many derivatives to extract; None for all potentially
		    nonzero derivatives (that is a number equal to the number
		    of points), or a list of derivatives to extract. This number
		    includes the function value as 0th derivative.
		axis : int, optional
		    Axis in the `yi` array corresponding to the x-coordinate values.
		
		Returns
		-------
		y : ndarray
		    Interpolated values or derivatives. If multiple derivatives
		    were requested, these are given along the first axis.
		
		See Also
		--------
		PiecewisePolynomial
		
		Notes
		-----
		If `orders` is None, or ``orders[i]`` is None, then the degree of the
		polynomial segment is exactly the degree required to match all i
		available derivatives at both endpoints.  If ``orders[i]`` is not None,
		then some derivatives will be ignored.  The code will try to use an
		equal number of derivatives from each end; if the total number of
		derivatives needed is odd, it will prefer the rightmost endpoint. If
		not enough derivatives are available, an exception is raised.
		
		Construction of these piecewise polynomials can be an expensive process;
		if you repeatedly evaluate the same polynomial, consider using the class
		PiecewisePolynomial (which is what this function does).
	**/
	static public function piecewise_polynomial_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?orders:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}