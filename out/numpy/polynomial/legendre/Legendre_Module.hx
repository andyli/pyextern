/* This file is generated, do not edit! */
package numpy.polynomial.legendre;
@:pythonImport("numpy.polynomial.legendre") extern class Legendre_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Convert a Legendre series to a polynomial.
		
		Convert an array representing the coefficients of a Legendre series,
		ordered from lowest degree to highest, to an array of the coefficients
		of the equivalent polynomial (relative to the "standard" basis) ordered
		from lowest to highest degree.
		
		Parameters
		----------
		c : array_like
		    1-D array containing the Legendre series coefficients, ordered
		    from lowest order term to highest.
		
		Returns
		-------
		pol : ndarray
		    1-D array containing the coefficients of the equivalent polynomial
		    (relative to the "standard" basis) ordered from lowest order term
		    to highest.
		
		See Also
		--------
		poly2leg
		
		Notes
		-----
		The easy way to do conversions between polynomial basis sets
		is to use the convert method of a class instance.
		
		Examples
		--------
		>>> c = P.Legendre(range(4))
		>>> c
		Legendre([ 0.,  1.,  2.,  3.], [-1.,  1.])
		>>> p = c.convert(kind=P.Polynomial)
		>>> p
		Polynomial([-1. , -3.5,  3. ,  7.5], [-1.,  1.])
		>>> P.leg2poly(range(4))
		array([-1. , -3.5,  3. ,  7.5])
	**/
	static public function leg2poly(c:Dynamic):numpy.Ndarray;
	/**
		Add one Legendre series to another.
		
		Returns the sum of two Legendre series `c1` + `c2`.  The arguments
		are sequences of coefficients ordered from lowest order term to
		highest, i.e., [1,2,3] represents the series ``P_0 + 2*P_1 + 3*P_2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of Legendre series coefficients ordered from low to
		    high.
		
		Returns
		-------
		out : ndarray
		    Array representing the Legendre series of their sum.
		
		See Also
		--------
		legsub, legmul, legdiv, legpow
		
		Notes
		-----
		Unlike multiplication, division, etc., the sum of two Legendre series
		is a Legendre series (without having to "reproject" the result onto
		the basis set) so addition, just like that of "standard" polynomials,
		is simply "component-wise."
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> L.legadd(c1,c2)
		array([ 4.,  4.,  4.])
	**/
	static public function legadd(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	/**
		Return the scaled companion matrix of c.
		
		The basis polynomials are scaled so that the companion matrix is
		symmetric when `c` is an Legendre basis polynomial. This provides
		better eigenvalue estimates than the unscaled case and for basis
		polynomials the eigenvalues are guaranteed to be real if
		`numpy.linalg.eigvalsh` is used to obtain them.
		
		Parameters
		----------
		c : array_like
		    1-D array of Legendre series coefficients ordered from low to high
		    degree.
		
		Returns
		-------
		mat : ndarray
		    Scaled companion matrix of dimensions (deg, deg).
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legcompanion(c:Dynamic):numpy.Ndarray;
	/**
		Differentiate a Legendre series.
		
		Returns the Legendre series coefficients `c` differentiated `m` times
		along `axis`.  At each iteration the result is multiplied by `scl` (the
		scaling factor is for use in a linear change of variable). The argument
		`c` is an array of coefficients from low to high degree along each
		axis, e.g., [1,2,3] represents the series ``1*L_0 + 2*L_1 + 3*L_2``
		while [[1,2],[1,2]] represents ``1*L_0(x)*L_0(y) + 1*L_1(x)*L_0(y) +
		2*L_0(x)*L_1(y) + 2*L_1(x)*L_1(y)`` if axis=0 is ``x`` and axis=1 is
		``y``.
		
		Parameters
		----------
		c : array_like
		    Array of Legendre series coefficients. If c is multidimensional the
		    different axis correspond to different variables with the degree in
		    each axis given by the corresponding index.
		m : int, optional
		    Number of derivatives taken, must be non-negative. (Default: 1)
		scl : scalar, optional
		    Each differentiation is multiplied by `scl`.  The end result is
		    multiplication by ``scl**m``.  This is for use in a linear change of
		    variable. (Default: 1)
		axis : int, optional
		    Axis over which the derivative is taken. (Default: 0).
		
		    .. versionadded:: 1.7.0
		
		Returns
		-------
		der : ndarray
		    Legendre series of the derivative.
		
		See Also
		--------
		legint
		
		Notes
		-----
		In general, the result of differentiating a Legendre series does not
		resemble the same operation on a power series. Thus the result of this
		function may be "unintuitive," albeit correct; see Examples section
		below.
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c = (1,2,3,4)
		>>> L.legder(c)
		array([  6.,   9.,  20.])
		>>> L.legder(c, 3)
		array([ 60.])
		>>> L.legder(c, scl=-1)
		array([ -6.,  -9., -20.])
		>>> L.legder(c, 2,-1)
		array([  9.,  60.])
	**/
	static public function legder(c:Dynamic, ?m:Dynamic, ?scl:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Divide one Legendre series by another.
		
		Returns the quotient-with-remainder of two Legendre series
		`c1` / `c2`.  The arguments are sequences of coefficients from lowest
		order "term" to highest, e.g., [1,2,3] represents the series
		``P_0 + 2*P_1 + 3*P_2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of Legendre series coefficients ordered from low to
		    high.
		
		Returns
		-------
		quo, rem : ndarrays
		    Of Legendre series coefficients representing the quotient and
		    remainder.
		
		See Also
		--------
		legadd, legsub, legmul, legpow
		
		Notes
		-----
		In general, the (polynomial) division of one Legendre series by another
		results in quotient and remainder terms that are not in the Legendre
		polynomial basis set.  Thus, to express these results as a Legendre
		series, it is necessary to "reproject" the results onto the Legendre
		basis set, which may produce "unintuitive" (but correct) results; see
		Examples section below.
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> L.legdiv(c1,c2) # quotient "intuitive," remainder not
		(array([ 3.]), array([-8., -4.]))
		>>> c2 = (0,1,2,3)
		>>> L.legdiv(c2,c1) # neither "intuitive"
		(array([-0.07407407,  1.66666667]), array([-1.03703704, -2.51851852]))
	**/
	static public function legdiv(c1:Dynamic, c2:Dynamic):Dynamic;
	static public var legdomain : Dynamic;
	/**
		Least squares fit of Legendre series to data.
		
		Return the coefficients of a Legendre series of degree `deg` that is the
		least squares fit to the data values `y` given at points `x`. If `y` is
		1-D the returned coefficients will also be 1-D. If `y` is 2-D multiple
		fits are done, one for each column of `y`, and the resulting
		coefficients are stored in the corresponding columns of a 2-D return.
		The fitted polynomial(s) are in the form
		
		.. math::  p(x) = c_0 + c_1 * L_1(x) + ... + c_n * L_n(x),
		
		where `n` is `deg`.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,) or (M, K)
		    y-coordinates of the sample points. Several data sets of sample
		    points sharing the same x-coordinates can be fitted at once by
		    passing in a 2D-array that contains one dataset per column.
		deg : int or 1-D array_like
		    Degree(s) of the fitting polynomials. If `deg` is a single integer
		    all terms up to and including the `deg`'th term are included in the
		    fit. For Numpy versions >= 1.11 a list of integers specifying the
		    degrees of the terms to include may be used instead.
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller than
		    this relative to the largest singular value will be ignored. The
		    default value is len(x)*eps, where eps is the relative precision of
		    the float type, about 2e-16 in most cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False (the
		    default) just the coefficients are returned, when True diagnostic
		    information from the singular value decomposition is also returned.
		w : array_like, shape (`M`,), optional
		    Weights. If not None, the contribution of each point
		    ``(x[i],y[i])`` to the fit is weighted by `w[i]`. Ideally the
		    weights are chosen so that the errors of the products ``w[i]*y[i]``
		    all have the same variance.  The default value is None.
		
		    .. versionadded:: 1.5.0
		
		Returns
		-------
		coef : ndarray, shape (M,) or (M, K)
		    Legendre coefficients ordered from low to high. If `y` was
		    2-D, the coefficients for the data in column k of `y` are in
		    column `k`. If `deg` is specified as a list, coefficients for
		    terms not included in the fit are set equal to zero in the
		    returned `coef`.
		
		[residuals, rank, singular_values, rcond] : list
		    These values are only returned if `full` = True
		
		    resid -- sum of squared residuals of the least squares fit
		    rank -- the numerical rank of the scaled Vandermonde matrix
		    sv -- singular values of the scaled Vandermonde matrix
		    rcond -- value of `rcond`.
		
		    For more details, see `linalg.lstsq`.
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if `full` = False.  The
		    warnings can be turned off by
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', RankWarning)
		
		See Also
		--------
		chebfit, polyfit, lagfit, hermfit, hermefit
		legval : Evaluates a Legendre series.
		legvander : Vandermonde matrix of Legendre series.
		legweight : Legendre weight function (= 1).
		linalg.lstsq : Computes a least-squares fit from the matrix.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution is the coefficients of the Legendre series `p` that
		minimizes the sum of the weighted squared errors
		
		.. math:: E = \sum_j w_j^2 * |y_j - p(x_j)|^2,
		
		where :math:`w_j` are the weights. This problem is solved by setting up
		as the (typically) overdetermined matrix equation
		
		.. math:: V(x) * c = w * y,
		
		where `V` is the weighted pseudo Vandermonde matrix of `x`, `c` are the
		coefficients to be solved for, `w` are the weights, and `y` are the
		observed values.  This equation is then solved using the singular value
		decomposition of `V`.
		
		If some of the singular values of `V` are so small that they are
		neglected, then a `RankWarning` will be issued. This means that the
		coefficient values may be poorly determined. Using a lower order fit
		will usually get rid of the warning.  The `rcond` parameter can also be
		set to a value smaller than its default, but the resulting fit may be
		spurious and have large contributions from roundoff error.
		
		Fits using Legendre series are usually better conditioned than fits
		using power series, but much can depend on the distribution of the
		sample points and the smoothness of the data. If the quality of the fit
		is inadequate splines may be a good alternative.
		
		References
		----------
		.. [1] Wikipedia, "Curve fitting",
		       http://en.wikipedia.org/wiki/Curve_fitting
		
		Examples
		--------
	**/
	static public function legfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic):Dynamic;
	/**
		Generate a Legendre series with given roots.
		
		The function returns the coefficients of the polynomial
		
		.. math:: p(x) = (x - r_0) * (x - r_1) * ... * (x - r_n),
		
		in Legendre form, where the `r_n` are the roots specified in `roots`.
		If a zero has multiplicity n, then it must appear in `roots` n times.
		For instance, if 2 is a root of multiplicity three and 3 is a root of
		multiplicity 2, then `roots` looks something like [2, 2, 2, 3, 3]. The
		roots can appear in any order.
		
		If the returned coefficients are `c`, then
		
		.. math:: p(x) = c_0 + c_1 * L_1(x) + ... +  c_n * L_n(x)
		
		The coefficient of the last term is not generally 1 for monic
		polynomials in Legendre form.
		
		Parameters
		----------
		roots : array_like
		    Sequence containing the roots.
		
		Returns
		-------
		out : ndarray
		    1-D array of coefficients.  If all roots are real then `out` is a
		    real array, if some of the roots are complex, then `out` is complex
		    even if all the coefficients in the result are real (see Examples
		    below).
		
		See Also
		--------
		polyfromroots, chebfromroots, lagfromroots, hermfromroots,
		hermefromroots.
		
		Examples
		--------
		>>> import numpy.polynomial.legendre as L
		>>> L.legfromroots((-1,0,1)) # x^3 - x relative to the standard basis
		array([ 0. , -0.4,  0. ,  0.4])
		>>> j = complex(0,1)
		>>> L.legfromroots((-j,j)) # x^2 + 1 relative to the standard basis
		array([ 1.33333333+0.j,  0.00000000+0.j,  0.66666667+0.j])
	**/
	static public function legfromroots(roots:Dynamic):numpy.Ndarray;
	/**
		Gauss-Legendre quadrature.
		
		Computes the sample points and weights for Gauss-Legendre quadrature.
		These sample points and weights will correctly integrate polynomials of
		degree :math:`2*deg - 1` or less over the interval :math:`[-1, 1]` with
		the weight function :math:`f(x) = 1`.
		
		Parameters
		----------
		deg : int
		    Number of sample points and weights. It must be >= 1.
		
		Returns
		-------
		x : ndarray
		    1-D ndarray containing the sample points.
		y : ndarray
		    1-D ndarray containing the weights.
		
		Notes
		-----
		
		.. versionadded::1.7.0
		
		The results have only been tested up to degree 100, higher degrees may
		be problematic. The weights are determined by using the fact that
		
		.. math:: w_k = c / (L'_n(x_k) * L_{n-1}(x_k))
		
		where :math:`c` is a constant independent of :math:`k` and :math:`x_k`
		is the k'th root of :math:`L_n`, and then scaling the results to get
		the right value when integrating 1.
	**/
	static public function leggauss(deg:Dynamic):numpy.Ndarray;
	/**
		Evaluate a 2-D Legendre series on the Cartesian product of x and y.
		
		This function returns the values:
		
		.. math:: p(a,b) = \sum_{i,j} c_{i,j} * L_i(a) * L_j(b)
		
		where the points `(a, b)` consist of all pairs formed by taking
		`a` from `x` and `b` from `y`. The resulting points form a grid with
		`x` in the first dimension and `y` in the second.
		
		The parameters `x` and `y` are converted to arrays only if they are
		tuples or a lists, otherwise they are treated as a scalars. In either
		case, either `x` and `y` or their elements must support multiplication
		and addition both with themselves and with the elements of `c`.
		
		If `c` has fewer than two dimensions, ones are implicitly appended to
		its shape to make it 2-D. The shape of the result will be c.shape[2:] +
		x.shape + y.shape.
		
		Parameters
		----------
		x, y : array_like, compatible objects
		    The two dimensional series is evaluated at the points in the
		    Cartesian product of `x` and `y`.  If `x` or `y` is a list or
		    tuple, it is first converted to an ndarray, otherwise it is left
		    unchanged and, if it isn't an ndarray, it is treated as a scalar.
		c : array_like
		    Array of coefficients ordered so that the coefficient of the term of
		    multi-degree i,j is contained in `c[i,j]`. If `c` has dimension
		    greater than two the remaining indices enumerate multiple sets of
		    coefficients.
		
		Returns
		-------
		values : ndarray, compatible object
		    The values of the two dimensional Chebyshev series at points in the
		    Cartesian product of `x` and `y`.
		
		See Also
		--------
		legval, legval2d, legval3d, leggrid3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function leggrid2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	/**
		Evaluate a 3-D Legendre series on the Cartesian product of x, y, and z.
		
		This function returns the values:
		
		.. math:: p(a,b,c) = \sum_{i,j,k} c_{i,j,k} * L_i(a) * L_j(b) * L_k(c)
		
		where the points `(a, b, c)` consist of all triples formed by taking
		`a` from `x`, `b` from `y`, and `c` from `z`. The resulting points form
		a grid with `x` in the first dimension, `y` in the second, and `z` in
		the third.
		
		The parameters `x`, `y`, and `z` are converted to arrays only if they
		are tuples or a lists, otherwise they are treated as a scalars. In
		either case, either `x`, `y`, and `z` or their elements must support
		multiplication and addition both with themselves and with the elements
		of `c`.
		
		If `c` has fewer than three dimensions, ones are implicitly appended to
		its shape to make it 3-D. The shape of the result will be c.shape[3:] +
		x.shape + y.shape + z.shape.
		
		Parameters
		----------
		x, y, z : array_like, compatible objects
		    The three dimensional series is evaluated at the points in the
		    Cartesian product of `x`, `y`, and `z`.  If `x`,`y`, or `z` is a
		    list or tuple, it is first converted to an ndarray, otherwise it is
		    left unchanged and, if it isn't an ndarray, it is treated as a
		    scalar.
		c : array_like
		    Array of coefficients ordered so that the coefficients for terms of
		    degree i,j are contained in ``c[i,j]``. If `c` has dimension
		    greater than two the remaining indices enumerate multiple sets of
		    coefficients.
		
		Returns
		-------
		values : ndarray, compatible object
		    The values of the two dimensional polynomial at points in the Cartesian
		    product of `x` and `y`.
		
		See Also
		--------
		legval, legval2d, leggrid2d, legval3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function leggrid3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	/**
		Integrate a Legendre series.
		
		Returns the Legendre series coefficients `c` integrated `m` times from
		`lbnd` along `axis`. At each iteration the resulting series is
		**multiplied** by `scl` and an integration constant, `k`, is added.
		The scaling factor is for use in a linear change of variable.  ("Buyer
		beware": note that, depending on what one is doing, one may want `scl`
		to be the reciprocal of what one might expect; for more information,
		see the Notes section below.)  The argument `c` is an array of
		coefficients from low to high degree along each axis, e.g., [1,2,3]
		represents the series ``L_0 + 2*L_1 + 3*L_2`` while [[1,2],[1,2]]
		represents ``1*L_0(x)*L_0(y) + 1*L_1(x)*L_0(y) + 2*L_0(x)*L_1(y) +
		2*L_1(x)*L_1(y)`` if axis=0 is ``x`` and axis=1 is ``y``.
		
		Parameters
		----------
		c : array_like
		    Array of Legendre series coefficients. If c is multidimensional the
		    different axis correspond to different variables with the degree in
		    each axis given by the corresponding index.
		m : int, optional
		    Order of integration, must be positive. (Default: 1)
		k : {[], list, scalar}, optional
		    Integration constant(s).  The value of the first integral at
		    ``lbnd`` is the first value in the list, the value of the second
		    integral at ``lbnd`` is the second value, etc.  If ``k == []`` (the
		    default), all constants are set to zero.  If ``m == 1``, a single
		    scalar can be given instead of a list.
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
		    Legendre series coefficient array of the integral.
		
		Raises
		------
		ValueError
		    If ``m < 0``, ``len(k) > m``, ``np.isscalar(lbnd) == False``, or
		    ``np.isscalar(scl) == False``.
		
		See Also
		--------
		legder
		
		Notes
		-----
		Note that the result of each integration is *multiplied* by `scl`.
		Why is this important to note?  Say one is making a linear change of
		variable :math:`u = ax + b` in an integral relative to `x`.  Then
		.. math::`dx = du/a`, so one will need to set `scl` equal to
		:math:`1/a` - perhaps not what one would have first thought.
		
		Also note that, in general, the result of integrating a C-series needs
		to be "reprojected" onto the C-series basis set.  Thus, typically,
		the result of this function is "unintuitive," albeit correct; see
		Examples section below.
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c = (1,2,3)
		>>> L.legint(c)
		array([ 0.33333333,  0.4       ,  0.66666667,  0.6       ])
		>>> L.legint(c, 3)
		array([  1.66666667e-02,  -1.78571429e-02,   4.76190476e-02,
		        -1.73472348e-18,   1.90476190e-02,   9.52380952e-03])
		>>> L.legint(c, k=3)
		array([ 3.33333333,  0.4       ,  0.66666667,  0.6       ])
		>>> L.legint(c, lbnd=-2)
		array([ 7.33333333,  0.4       ,  0.66666667,  0.6       ])
		>>> L.legint(c, scl=2)
		array([ 0.66666667,  0.8       ,  1.33333333,  1.2       ])
	**/
	static public function legint(c:Dynamic, ?m:Dynamic, ?k:Dynamic, ?lbnd:Dynamic, ?scl:Dynamic, ?axis:Dynamic):numpy.Ndarray;
	/**
		Legendre series whose graph is a straight line.
		
		
		
		Parameters
		----------
		off, scl : scalars
		    The specified line is given by ``off + scl*x``.
		
		Returns
		-------
		y : ndarray
		    This module's representation of the Legendre series for
		    ``off + scl*x``.
		
		See Also
		--------
		polyline, chebline
		
		Examples
		--------
		>>> import numpy.polynomial.legendre as L
		>>> L.legline(3,2)
		array([3, 2])
		>>> L.legval(-3, L.legline(3,2)) # should be -3
		-3.0
	**/
	static public function legline(off:Dynamic, scl:Dynamic):numpy.Ndarray;
	/**
		Multiply one Legendre series by another.
		
		Returns the product of two Legendre series `c1` * `c2`.  The arguments
		are sequences of coefficients, from lowest order "term" to highest,
		e.g., [1,2,3] represents the series ``P_0 + 2*P_1 + 3*P_2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of Legendre series coefficients ordered from low to
		    high.
		
		Returns
		-------
		out : ndarray
		    Of Legendre series coefficients representing their product.
		
		See Also
		--------
		legadd, legsub, legdiv, legpow
		
		Notes
		-----
		In general, the (polynomial) product of two C-series results in terms
		that are not in the Legendre polynomial basis set.  Thus, to express
		the product as a Legendre series, it is necessary to "reproject" the
		product onto said basis set, which may produce "unintuitive" (but
		correct) results; see Examples section below.
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c1 = (1,2,3)
		>>> c2 = (3,2)
		>>> P.legmul(c1,c2) # multiplication requires "reprojection"
		array([  4.33333333,  10.4       ,  11.66666667,   3.6       ])
	**/
	static public function legmul(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	/**
		Multiply a Legendre series by x.
		
		Multiply the Legendre series `c` by x, where x is the independent
		variable.
		
		
		Parameters
		----------
		c : array_like
		    1-D array of Legendre series coefficients ordered from low to
		    high.
		
		Returns
		-------
		out : ndarray
		    Array representing the result of the multiplication.
		
		Notes
		-----
		The multiplication uses the recursion relationship for Legendre
		polynomials in the form
		
		.. math::
		
		  xP_i(x) = ((i + 1)*P_{i + 1}(x) + i*P_{i - 1}(x))/(2i + 1)
	**/
	static public function legmulx(c:Dynamic):numpy.Ndarray;
	static public var legone : Dynamic;
	/**
		Raise a Legendre series to a power.
		
		Returns the Legendre series `c` raised to the power `pow`. The
		arguement `c` is a sequence of coefficients ordered from low to high.
		i.e., [1,2,3] is the series  ``P_0 + 2*P_1 + 3*P_2.``
		
		Parameters
		----------
		c : array_like
		    1-D array of Legendre series coefficients ordered from low to
		    high.
		pow : integer
		    Power to which the series will be raised
		maxpower : integer, optional
		    Maximum power allowed. This is mainly to limit growth of the series
		    to unmanageable size. Default is 16
		
		Returns
		-------
		coef : ndarray
		    Legendre series of power.
		
		See Also
		--------
		legadd, legsub, legmul, legdiv
		
		Examples
		--------
	**/
	static public function legpow(c:Dynamic, pow:Dynamic, ?maxpower:Dynamic):numpy.Ndarray;
	/**
		Compute the roots of a Legendre series.
		
		Return the roots (a.k.a. "zeros") of the polynomial
		
		.. math:: p(x) = \sum_i c[i] * L_i(x).
		
		Parameters
		----------
		c : 1-D array_like
		    1-D array of coefficients.
		
		Returns
		-------
		out : ndarray
		    Array of the roots of the series. If all the roots are real,
		    then `out` is also real, otherwise it is complex.
		
		See Also
		--------
		polyroots, chebroots, lagroots, hermroots, hermeroots
		
		Notes
		-----
		The root estimates are obtained as the eigenvalues of the companion
		matrix, Roots far from the origin of the complex plane may have large
		errors due to the numerical instability of the series for such values.
		Roots with multiplicity greater than 1 will also show larger errors as
		the value of the series near such points is relatively insensitive to
		errors in the roots. Isolated roots near the origin can be improved by
		a few iterations of Newton's method.
		
		The Legendre series basis polynomials aren't powers of ``x`` so the
		results of this function may seem unintuitive.
		
		Examples
		--------
		>>> import numpy.polynomial.legendre as leg
		>>> leg.legroots((1, 2, 3, 4)) # 4L_3 + 3L_2 + 2L_1 + 1L_0, all real roots
		array([-0.85099543, -0.11407192,  0.51506735])
	**/
	static public function legroots(c:Dynamic):numpy.Ndarray;
	/**
		Subtract one Legendre series from another.
		
		Returns the difference of two Legendre series `c1` - `c2`.  The
		sequences of coefficients are from lowest order term to highest, i.e.,
		[1,2,3] represents the series ``P_0 + 2*P_1 + 3*P_2``.
		
		Parameters
		----------
		c1, c2 : array_like
		    1-D arrays of Legendre series coefficients ordered from low to
		    high.
		
		Returns
		-------
		out : ndarray
		    Of Legendre series coefficients representing their difference.
		
		See Also
		--------
		legadd, legmul, legdiv, legpow
		
		Notes
		-----
		Unlike multiplication, division, etc., the difference of two Legendre
		series is a Legendre series (without having to "reproject" the result
		onto the basis set) so subtraction, just like that of "standard"
		polynomials, is simply "component-wise."
		
		Examples
		--------
		>>> from numpy.polynomial import legendre as L
		>>> c1 = (1,2,3)
		>>> c2 = (3,2,1)
		>>> L.legsub(c1,c2)
		array([-2.,  0.,  2.])
		>>> L.legsub(c2,c1) # -C.legsub(c1,c2)
		array([ 2.,  0., -2.])
	**/
	static public function legsub(c1:Dynamic, c2:Dynamic):numpy.Ndarray;
	/**
		Remove "small" "trailing" coefficients from a polynomial.
		
		"Small" means "small in absolute value" and is controlled by the
		parameter `tol`; "trailing" means highest order coefficient(s), e.g., in
		``[0, 1, 1, 0, 0]`` (which represents ``0 + x + x**2 + 0*x**3 + 0*x**4``)
		both the 3-rd and 4-th order coefficients would be "trimmed."
		
		Parameters
		----------
		c : array_like
		    1-d array of coefficients, ordered from lowest order to highest.
		tol : number, optional
		    Trailing (i.e., highest order) elements with absolute value less
		    than or equal to `tol` (default value is zero) are removed.
		
		Returns
		-------
		trimmed : ndarray
		    1-d array with trailing zeros removed.  If the resulting series
		    would be empty, a series containing a single zero is returned.
		
		Raises
		------
		ValueError
		    If `tol` < 0
		
		See Also
		--------
		trimseq
		
		Examples
		--------
		>>> from numpy import polynomial as P
		>>> P.trimcoef((0,0,3,0,5,0,0))
		array([ 0.,  0.,  3.,  0.,  5.])
		>>> P.trimcoef((0,0,1e-3,0,1e-5,0,0),1e-3) # item == tol is trimmed
		array([ 0.])
		>>> i = complex(0,1) # works for complex
		>>> P.trimcoef((3e-4,1e-3*(1-i),5e-4,2e-5*(1+i)), 1e-3)
		array([ 0.0003+0.j   ,  0.0010-0.001j])
	**/
	static public function legtrim(c:Dynamic, ?tol:Dynamic):numpy.Ndarray;
	/**
		Evaluate a Legendre series at points x.
		
		If `c` is of length `n + 1`, this function returns the value:
		
		.. math:: p(x) = c_0 * L_0(x) + c_1 * L_1(x) + ... + c_n * L_n(x)
		
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
		values : ndarray, algebra_like
		    The shape of the return value is described above.
		
		See Also
		--------
		legval2d, leggrid2d, legval3d, leggrid3d
		
		Notes
		-----
		The evaluation uses Clenshaw recursion, aka synthetic division.
		
		Examples
		--------
	**/
	static public function legval(x:Dynamic, c:Dynamic, ?tensor:Dynamic):Dynamic;
	/**
		Evaluate a 2-D Legendre series at points (x, y).
		
		This function returns the values:
		
		.. math:: p(x,y) = \sum_{i,j} c_{i,j} * L_i(x) * L_j(y)
		
		The parameters `x` and `y` are converted to arrays only if they are
		tuples or a lists, otherwise they are treated as a scalars and they
		must have the same shape after conversion. In either case, either `x`
		and `y` or their elements must support multiplication and addition both
		with themselves and with the elements of `c`.
		
		If `c` is a 1-D array a one is implicitly appended to its shape to make
		it 2-D. The shape of the result will be c.shape[2:] + x.shape.
		
		Parameters
		----------
		x, y : array_like, compatible objects
		    The two dimensional series is evaluated at the points `(x, y)`,
		    where `x` and `y` must have the same shape. If `x` or `y` is a list
		    or tuple, it is first converted to an ndarray, otherwise it is left
		    unchanged and if it isn't an ndarray it is treated as a scalar.
		c : array_like
		    Array of coefficients ordered so that the coefficient of the term
		    of multi-degree i,j is contained in ``c[i,j]``. If `c` has
		    dimension greater than two the remaining indices enumerate multiple
		    sets of coefficients.
		
		Returns
		-------
		values : ndarray, compatible object
		    The values of the two dimensional Legendre series at points formed
		    from pairs of corresponding values from `x` and `y`.
		
		See Also
		--------
		legval, leggrid2d, legval3d, leggrid3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legval2d(x:Dynamic, y:Dynamic, c:Dynamic):Dynamic;
	/**
		Evaluate a 3-D Legendre series at points (x, y, z).
		
		This function returns the values:
		
		.. math:: p(x,y,z) = \sum_{i,j,k} c_{i,j,k} * L_i(x) * L_j(y) * L_k(z)
		
		The parameters `x`, `y`, and `z` are converted to arrays only if
		they are tuples or a lists, otherwise they are treated as a scalars and
		they must have the same shape after conversion. In either case, either
		`x`, `y`, and `z` or their elements must support multiplication and
		addition both with themselves and with the elements of `c`.
		
		If `c` has fewer than 3 dimensions, ones are implicitly appended to its
		shape to make it 3-D. The shape of the result will be c.shape[3:] +
		x.shape.
		
		Parameters
		----------
		x, y, z : array_like, compatible object
		    The three dimensional series is evaluated at the points
		    `(x, y, z)`, where `x`, `y`, and `z` must have the same shape.  If
		    any of `x`, `y`, or `z` is a list or tuple, it is first converted
		    to an ndarray, otherwise it is left unchanged and if it isn't an
		    ndarray it is  treated as a scalar.
		c : array_like
		    Array of coefficients ordered so that the coefficient of the term of
		    multi-degree i,j,k is contained in ``c[i,j,k]``. If `c` has dimension
		    greater than 3 the remaining indices enumerate multiple sets of
		    coefficients.
		
		Returns
		-------
		values : ndarray, compatible object
		    The values of the multidimensional polynomial on points formed with
		    triples of corresponding values from `x`, `y`, and `z`.
		
		See Also
		--------
		legval, legval2d, leggrid2d, leggrid3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legval3d(x:Dynamic, y:Dynamic, z:Dynamic, c:Dynamic):Dynamic;
	/**
		Pseudo-Vandermonde matrix of given degree.
		
		Returns the pseudo-Vandermonde matrix of degree `deg` and sample points
		`x`. The pseudo-Vandermonde matrix is defined by
		
		.. math:: V[..., i] = L_i(x)
		
		where `0 <= i <= deg`. The leading indices of `V` index the elements of
		`x` and the last index is the degree of the Legendre polynomial.
		
		If `c` is a 1-D array of coefficients of length `n + 1` and `V` is the
		array ``V = legvander(x, n)``, then ``np.dot(V, c)`` and
		``legval(x, c)`` are the same up to roundoff. This equivalence is
		useful both for least squares fitting and for the evaluation of a large
		number of Legendre series of the same degree and sample points.
		
		Parameters
		----------
		x : array_like
		    Array of points. The dtype is converted to float64 or complex128
		    depending on whether any of the elements are complex. If `x` is
		    scalar it is converted to a 1-D array.
		deg : int
		    Degree of the resulting matrix.
		
		Returns
		-------
		vander : ndarray
		    The pseudo-Vandermonde matrix. The shape of the returned matrix is
		    ``x.shape + (deg + 1,)``, where The last index is the degree of the
		    corresponding Legendre polynomial.  The dtype will be the same as
		    the converted `x`.
	**/
	static public function legvander(x:Dynamic, deg:Dynamic):numpy.Ndarray;
	/**
		Pseudo-Vandermonde matrix of given degrees.
		
		Returns the pseudo-Vandermonde matrix of degrees `deg` and sample
		points `(x, y)`. The pseudo-Vandermonde matrix is defined by
		
		.. math:: V[..., deg[1]*i + j] = L_i(x) * L_j(y),
		
		where `0 <= i <= deg[0]` and `0 <= j <= deg[1]`. The leading indices of
		`V` index the points `(x, y)` and the last index encodes the degrees of
		the Legendre polynomials.
		
		If ``V = legvander2d(x, y, [xdeg, ydeg])``, then the columns of `V`
		correspond to the elements of a 2-D coefficient array `c` of shape
		(xdeg + 1, ydeg + 1) in the order
		
		.. math:: c_{00}, c_{01}, c_{02} ... , c_{10}, c_{11}, c_{12} ...
		
		and ``np.dot(V, c.flat)`` and ``legval2d(x, y, c)`` will be the same
		up to roundoff. This equivalence is useful both for least squares
		fitting and for the evaluation of a large number of 2-D Legendre
		series of the same degrees and sample points.
		
		Parameters
		----------
		x, y : array_like
		    Arrays of point coordinates, all of the same shape. The dtypes
		    will be converted to either float64 or complex128 depending on
		    whether any of the elements are complex. Scalars are converted to
		    1-D arrays.
		deg : list of ints
		    List of maximum degrees of the form [x_deg, y_deg].
		
		Returns
		-------
		vander2d : ndarray
		    The shape of the returned matrix is ``x.shape + (order,)``, where
		    :math:`order = (deg[0]+1)*(deg([1]+1)`.  The dtype will be the same
		    as the converted `x` and `y`.
		
		See Also
		--------
		legvander, legvander3d. legval2d, legval3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legvander2d(x:Dynamic, y:Dynamic, deg:Dynamic):numpy.Ndarray;
	/**
		Pseudo-Vandermonde matrix of given degrees.
		
		Returns the pseudo-Vandermonde matrix of degrees `deg` and sample
		points `(x, y, z)`. If `l, m, n` are the given degrees in `x, y, z`,
		then The pseudo-Vandermonde matrix is defined by
		
		.. math:: V[..., (m+1)(n+1)i + (n+1)j + k] = L_i(x)*L_j(y)*L_k(z),
		
		where `0 <= i <= l`, `0 <= j <= m`, and `0 <= j <= n`.  The leading
		indices of `V` index the points `(x, y, z)` and the last index encodes
		the degrees of the Legendre polynomials.
		
		If ``V = legvander3d(x, y, z, [xdeg, ydeg, zdeg])``, then the columns
		of `V` correspond to the elements of a 3-D coefficient array `c` of
		shape (xdeg + 1, ydeg + 1, zdeg + 1) in the order
		
		.. math:: c_{000}, c_{001}, c_{002},... , c_{010}, c_{011}, c_{012},...
		
		and ``np.dot(V, c.flat)`` and ``legval3d(x, y, z, c)`` will be the
		same up to roundoff. This equivalence is useful both for least squares
		fitting and for the evaluation of a large number of 3-D Legendre
		series of the same degrees and sample points.
		
		Parameters
		----------
		x, y, z : array_like
		    Arrays of point coordinates, all of the same shape. The dtypes will
		    be converted to either float64 or complex128 depending on whether
		    any of the elements are complex. Scalars are converted to 1-D
		    arrays.
		deg : list of ints
		    List of maximum degrees of the form [x_deg, y_deg, z_deg].
		
		Returns
		-------
		vander3d : ndarray
		    The shape of the returned matrix is ``x.shape + (order,)``, where
		    :math:`order = (deg[0]+1)*(deg([1]+1)*(deg[2]+1)`.  The dtype will
		    be the same as the converted `x`, `y`, and `z`.
		
		See Also
		--------
		legvander, legvander3d. legval2d, legval3d
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legvander3d(x:Dynamic, y:Dynamic, z:Dynamic, deg:Dynamic):numpy.Ndarray;
	/**
		Weight function of the Legendre polynomials.
		
		The weight function is :math:`1` and the interval of integration is
		:math:`[-1, 1]`. The Legendre polynomials are orthogonal, but not
		normalized, with respect to this weight function.
		
		Parameters
		----------
		x : array_like
		   Values at which the weight function will be computed.
		
		Returns
		-------
		w : ndarray
		   The weight function at `x`.
		
		Notes
		-----
		
		.. versionadded::1.7.0
	**/
	static public function legweight(x:Dynamic):numpy.Ndarray;
	static public var legx : Dynamic;
	static public var legzero : Dynamic;
	/**
		Convert a polynomial to a Legendre series.
		
		Convert an array representing the coefficients of a polynomial (relative
		to the "standard" basis) ordered from lowest degree to highest, to an
		array of the coefficients of the equivalent Legendre series, ordered
		from lowest to highest degree.
		
		Parameters
		----------
		pol : array_like
		    1-D array containing the polynomial coefficients
		
		Returns
		-------
		c : ndarray
		    1-D array containing the coefficients of the equivalent Legendre
		    series.
		
		See Also
		--------
		leg2poly
		
		Notes
		-----
		The easy way to do conversions between polynomial basis sets
		is to use the convert method of a class instance.
		
		Examples
		--------
		>>> from numpy import polynomial as P
		>>> p = P.Polynomial(np.arange(4))
		>>> p
		Polynomial([ 0.,  1.,  2.,  3.], [-1.,  1.])
		>>> c = P.Legendre(P.poly2leg(p.coef))
		>>> c
		Legendre([ 1.  ,  3.25,  1.  ,  0.75], [-1.,  1.])
	**/
	static public function poly2leg(pol:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
}