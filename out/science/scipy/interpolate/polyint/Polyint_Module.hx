/* This file is generated, do not edit! */
package scipy.interpolate.polyint;
@:pythonImport("scipy.interpolate.polyint") extern class Polyint_Module {
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
		
		Examples
		--------
		We can calculate Taylor approximation polynomials of sin function with
		various degrees:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import approximate_taylor_polynomial
		>>> x = np.linspace(-10.0, 10.0, num=100)
		>>> plt.plot(x, np.sin(x), label="sin curve")
		>>> for degree in np.arange(1, 15, step=2):
		...     sin_taylor = approximate_taylor_polynomial(np.sin, 0, degree, 1,
		...                                                order=degree + 2)
		...     plt.plot(x, sin_taylor(x), label=f"degree={degree}")
		>>> plt.legend(bbox_to_anchor=(1.05, 1), loc='upper left',
		...            borderaxespad=0.0, shadow=True)
		>>> plt.tight_layout()
		>>> plt.axis([-10, 10, -10, 10])
		>>> plt.show()
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
		carefully - Chebyshev zeros (e.g., cos(i*pi/n)) are a good choice -
		polynomial interpolation itself is a very ill-conditioned process
		due to the Runge phenomenon.
		
		Parameters
		----------
		xi : array_like
		    1-D array of x coordinates of the points the polynomial should
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
		BarycentricInterpolator : Bary centric interpolator
		
		Notes
		-----
		Construction of the interpolation weights is a relatively slow process.
		If you want to call this many times with the same xi (but possibly
		varying yi or x) you should use the class `BarycentricInterpolator`.
		This is what this function uses internally.
		
		Examples
		--------
		We can interpolate 2D observed data using barycentric interpolation:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import barycentric_interpolate
		>>> x_observed = np.linspace(0.0, 10.0, 11)
		>>> y_observed = np.sin(x_observed)
		>>> x = np.linspace(min(x_observed), max(x_observed), num=100)
		>>> y = barycentric_interpolate(x_observed, y_observed, x)
		>>> plt.plot(x_observed, y_observed, "o", label="observation")
		>>> plt.plot(x, y, label="barycentric interpolation")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function barycentric_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?axis:Dynamic):Dynamic;
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
		120
	**/
	static public function factorial(n:Dynamic, ?exact:Dynamic):Dynamic;
	/**
		Compute the factorial and return as a float
		
		Returns infinity when result is too large for a double
	**/
	static public function float_factorial(n:Dynamic):Dynamic;
	/**
		Convenience function for polynomial interpolation.
		
		See `KroghInterpolator` for more details.
		
		Parameters
		----------
		xi : array_like
		    Known x-coordinates.
		yi : array_like
		    Known y-coordinates, of shape ``(xi.size, R)``. Interpreted as
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
		    If the interpolator's values are R-D then the
		    returned array will be the number of derivatives by N by R.
		    If `x` is a scalar, the middle dimension will be dropped; if
		    the `yi` are scalars then the last dimension will be dropped.
		
		See Also
		--------
		KroghInterpolator : Krogh interpolator
		
		Notes
		-----
		Construction of the interpolating polynomial is a relatively expensive
		process. If you want to evaluate it repeatedly consider using the class
		KroghInterpolator (which is what this function uses).
		
		Examples
		--------
		We can interpolate 2D observed data using krogh interpolation:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import krogh_interpolate
		>>> x_observed = np.linspace(0.0, 10.0, 11)
		>>> y_observed = np.sin(x_observed)
		>>> x = np.linspace(min(x_observed), max(x_observed), num=100)
		>>> y = krogh_interpolate(x_observed, y_observed, x)
		>>> plt.plot(x_observed, y_observed, "o", label="observation")
		>>> plt.plot(x, y, label="krogh interpolation")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function krogh_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
}