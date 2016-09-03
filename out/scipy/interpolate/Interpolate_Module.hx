/* This file is generated, do not edit! */
package scipy.interpolate;
@:pythonImport("scipy.interpolate") extern class Interpolate_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	/**
		Evaluate a bivariate B-spline and its derivatives.
		
		Return a rank-2 array of spline function values (or spline derivative
		values) at points given by the cross-product of the rank-1 arrays `x` and
		`y`.  In special cases, return an array or just a float if either `x` or
		`y` or both are floats.  Based on BISPEV from FITPACK.
		
		Parameters
		----------
		x, y : ndarray
		    Rank-1 arrays specifying the domain over which to evaluate the
		    spline or its derivative.
		tck : tuple
		    A sequence of length 5 returned by `bisplrep` containing the knot
		    locations, the coefficients, and the degree of the spline:
		    [tx, ty, c, kx, ky].
		dx, dy : int, optional
		    The orders of the partial derivatives in `x` and `y` respectively.
		
		Returns
		-------
		vals : ndarray
		    The B-spline or its derivative evaluated over the set formed by
		    the cross-product of `x` and `y`.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev
		UnivariateSpline, BivariateSpline
		
		Notes
		-----
		    See `bisplrep` to generate the `tck` representation.
		
		References
		----------
		.. [1] Dierckx P. : An algorithm for surface fitting
		   with spline functions
		   Ima J. Numer. Anal. 1 (1981) 267-283.
		.. [2] Dierckx P. : An algorithm for surface fitting
		   with spline functions
		   report tw50, Dept. Computer Science,K.U.Leuven, 1980.
		.. [3] Dierckx P. : Curve and surface fitting with splines,
		   Monographs on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function bisplev(x:Dynamic, y:Dynamic, tck:Dynamic, ?dx:Dynamic, ?dy:Dynamic):Dynamic;
	/**
		Find a bivariate B-spline representation of a surface.
		
		Given a set of data points (x[i], y[i], z[i]) representing a surface
		z=f(x,y), compute a B-spline representation of the surface. Based on
		the routine SURFIT from FITPACK.
		
		Parameters
		----------
		x, y, z : ndarray
		    Rank-1 arrays of data points.
		w : ndarray, optional
		    Rank-1 array of weights. By default ``w=np.ones(len(x))``.
		xb, xe : float, optional
		    End points of approximation interval in `x`.
		    By default ``xb = x.min(), xe=x.max()``.
		yb, ye : float, optional
		    End points of approximation interval in `y`.
		    By default ``yb=y.min(), ye = y.max()``.
		kx, ky : int, optional
		    The degrees of the spline (1 <= kx, ky <= 5).
		    Third order (kx=ky=3) is recommended.
		task : int, optional
		    If task=0, find knots in x and y and coefficients for a given
		    smoothing factor, s.
		    If task=1, find knots and coefficients for another value of the
		    smoothing factor, s.  bisplrep must have been previously called
		    with task=0 or task=1.
		    If task=-1, find coefficients for a given set of knots tx, ty.
		s : float, optional
		    A non-negative smoothing factor.  If weights correspond
		    to the inverse of the standard-deviation of the errors in z,
		    then a good s-value should be found in the range
		    ``(m-sqrt(2*m),m+sqrt(2*m))`` where m=len(x).
		eps : float, optional
		    A threshold for determining the effective rank of an
		    over-determined linear system of equations (0 < eps < 1).
		    `eps` is not likely to need changing.
		tx, ty : ndarray, optional
		    Rank-1 arrays of the knots of the spline for task=-1
		full_output : int, optional
		    Non-zero to return optional outputs.
		nxest, nyest : int, optional
		    Over-estimates of the total number of knots. If None then
		    ``nxest = max(kx+sqrt(m/2),2*kx+3)``,
		    ``nyest = max(ky+sqrt(m/2),2*ky+3)``.
		quiet : int, optional
		    Non-zero to suppress printing of messages.
		    This parameter is deprecated; use standard Python warning filters
		    instead.
		
		Returns
		-------
		tck : array_like
		    A list [tx, ty, c, kx, ky] containing the knots (tx, ty) and
		    coefficients (c) of the bivariate B-spline representation of the
		    surface along with the degree of the spline.
		fp : ndarray
		    The weighted sum of squared residuals of the spline approximation.
		ier : int
		    An integer flag about splrep success.  Success is indicated if
		    ier<=0. If ier in [1,2,3] an error occurred but was not raised.
		    Otherwise an error is raised.
		msg : str
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev
		UnivariateSpline, BivariateSpline
		
		Notes
		-----
		See `bisplev` to evaluate the value of the B-spline given its tck
		representation.
		
		References
		----------
		.. [1] Dierckx P.:An algorithm for surface fitting with spline functions
		   Ima J. Numer. Anal. 1 (1981) 267-283.
		.. [2] Dierckx P.:An algorithm for surface fitting with spline functions
		   report tw50, Dept. Computer Science,K.U.Leuven, 1980.
		.. [3] Dierckx P.:Curve and surface fitting with splines, Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function bisplrep(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?yb:Dynamic, ?ye:Dynamic, ?kx:Dynamic, ?ky:Dynamic, ?task:Dynamic, ?s:Dynamic, ?eps:Dynamic, ?tx:Dynamic, ?ty:Dynamic, ?full_output:Dynamic, ?nxest:Dynamic, ?nyest:Dynamic, ?quiet:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Interpolate unstructured D-dimensional data.
		
		Parameters
		----------
		points : ndarray of floats, shape (n, D)
		    Data point coordinates. Can either be an array of
		    shape (n, D), or a tuple of `ndim` arrays.
		values : ndarray of float or complex, shape (n,)
		    Data values.
		xi : ndarray of float, shape (M, D)
		    Points at which to interpolate data.
		method : {'linear', 'nearest', 'cubic'}, optional
		    Method of interpolation. One of
		
		    ``nearest``
		      return the value at the data point closest to
		      the point of interpolation.  See `NearestNDInterpolator` for
		      more details.
		
		    ``linear``
		      tesselate the input point set to n-dimensional
		      simplices, and interpolate linearly on each simplex.  See
		      `LinearNDInterpolator` for more details.
		
		    ``cubic`` (1-D)
		      return the value determined from a cubic
		      spline.
		
		    ``cubic`` (2-D)
		      return the value determined from a
		      piecewise cubic, continuously differentiable (C1), and
		      approximately curvature-minimizing polynomial surface. See
		      `CloughTocher2DInterpolator` for more details.
		fill_value : float, optional
		    Value used to fill in for requested points outside of the
		    convex hull of the input points.  If not provided, then the
		    default is ``nan``. This option has no effect for the
		    'nearest' method.
		rescale : bool, optional
		    Rescale points to unit cube before performing interpolation.
		    This is useful if some of the input dimensions have
		    incommensurable units and differ by many orders of magnitude.
		
		    .. versionadded:: 0.14.0
		
		Notes
		-----
		
		.. versionadded:: 0.9
		
		Examples
		--------
		
		Suppose we want to interpolate the 2-D function
		
		>>> def func(x, y):
		...     return x*(1-x)*np.cos(4*np.pi*x) * np.sin(4*np.pi*y**2)**2
		
		on a grid in [0, 1]x[0, 1]
		
		>>> grid_x, grid_y = np.mgrid[0:1:100j, 0:1:200j]
		
		but we only know its values at 1000 data points:
		
		>>> points = np.random.rand(1000, 2)
		>>> values = func(points[:,0], points[:,1])
		
		This can be done with `griddata` -- below we try out all of the
		interpolation methods:
		
		>>> from scipy.interpolate import griddata
		>>> grid_z0 = griddata(points, values, (grid_x, grid_y), method='nearest')
		>>> grid_z1 = griddata(points, values, (grid_x, grid_y), method='linear')
		>>> grid_z2 = griddata(points, values, (grid_x, grid_y), method='cubic')
		
		One can see that the exact result is reproduced by all of the
		methods to some degree, but for this smooth function the piecewise
		cubic interpolant gives the best results:
		
		>>> import matplotlib.pyplot as plt
		>>> plt.subplot(221)
		>>> plt.imshow(func(grid_x, grid_y).T, extent=(0,1,0,1), origin='lower')
		>>> plt.plot(points[:,0], points[:,1], 'k.', ms=1)
		>>> plt.title('Original')
		>>> plt.subplot(222)
		>>> plt.imshow(grid_z0.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Nearest')
		>>> plt.subplot(223)
		>>> plt.imshow(grid_z1.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Linear')
		>>> plt.subplot(224)
		>>> plt.imshow(grid_z2.T, extent=(0,1,0,1), origin='lower')
		>>> plt.title('Cubic')
		>>> plt.gcf().set_size_inches(6, 6)
		>>> plt.show()
	**/
	static public function griddata(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?fill_value:Dynamic, ?rescale:Dynamic):Dynamic;
	/**
		Insert knots into a B-spline.
		
		Given the knots and coefficients of a B-spline representation, create a
		new B-spline with a knot inserted `m` times at point `x`.
		This is a wrapper around the FORTRAN routine insert of FITPACK.
		
		Parameters
		----------
		x (u) : array_like
		    A 1-D point at which to insert a new knot(s).  If `tck` was returned
		    from ``splprep``, then the parameter values, u should be given.
		tck : tuple
		    A tuple (t,c,k) returned by ``splrep`` or ``splprep`` containing
		    the vector of knots, the B-spline coefficients,
		    and the degree of the spline.
		m : int, optional
		    The number of times to insert the given knot (its multiplicity).
		    Default is 1.
		per : int, optional
		    If non-zero, the input spline is considered periodic.
		
		Returns
		-------
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots, the B-spline
		    coefficients, and the degree of the new spline.
		    ``t(k+1) <= x <= t(n-k)``, where k is the degree of the spline.
		    In case of a periodic spline (``per != 0``) there must be
		    either at least k interior knots t(j) satisfying ``t(k+1)<t(j)<=x``
		    or at least k interior knots t(j) satisfying ``x<=t(j)<t(n-k)``.
		
		Notes
		-----
		Based on algorithms from [1]_ and [2]_.
		
		References
		----------
		.. [1] W. Boehm, "Inserting new knots into b-spline curves.",
		    Computer Aided Design, 12, p.199-201, 1980.
		.. [2] P. Dierckx, "Curve and surface fitting with splines, Monographs on
		    Numerical Analysis", Oxford University Press, 1993.
	**/
	static public function insert(x:Dynamic, tck:Dynamic, ?m:Dynamic, ?per:Dynamic):python.Tuple<Dynamic>;
	/**
		Multidimensional interpolation on regular grids.
		
		Parameters
		----------
		points : tuple of ndarray of float, with shapes (m1, ), ..., (mn, )
		    The points defining the regular grid in n dimensions.
		
		values : array_like, shape (m1, ..., mn, ...)
		    The data on the regular grid in n dimensions.
		
		xi : ndarray of shape (..., ndim)
		    The coordinates to sample the gridded data at
		
		method : str, optional
		    The method of interpolation to perform. Supported are "linear" and
		    "nearest", and "splinef2d". "splinef2d" is only supported for
		    2-dimensional data.
		
		bounds_error : bool, optional
		    If True, when interpolated values are requested outside of the
		    domain of the input data, a ValueError is raised.
		    If False, then `fill_value` is used.
		
		fill_value : number, optional
		    If provided, the value to use for points outside of the
		    interpolation domain. If None, values outside
		    the domain are extrapolated.  Extrapolation is not supported by method
		    "splinef2d".
		
		Returns
		-------
		values_x : ndarray, shape xi.shape[:-1] + values.shape[ndim:]
		    Interpolated values at input coordinates.
		
		Notes
		-----
		
		.. versionadded:: 0.14
		
		See also
		--------
		NearestNDInterpolator : Nearest neighbour interpolation on unstructured
		                        data in N dimensions
		
		LinearNDInterpolator : Piecewise linear interpolant on unstructured data
		                       in N dimensions
		
		RegularGridInterpolator : Linear and nearest-neighbor Interpolation on a
		                          regular grid in arbitrary dimensions
		
		RectBivariateSpline : Bivariate spline approximation over a rectangular mesh
	**/
	static public function interpn(points:Dynamic, values:Dynamic, xi:Dynamic, ?method:Dynamic, ?bounds_error:Dynamic, ?fill_value:Dynamic):Dynamic;
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
		Return a Lagrange interpolating polynomial.
		
		Given two 1-D arrays `x` and `w,` returns the Lagrange interpolating
		polynomial through the points ``(x, w)``.
		
		Warning: This implementation is numerically unstable. Do not expect to
		be able to use more than about 20 points even if they are chosen optimally.
		
		Parameters
		----------
		x : array_like
		    `x` represents the x-coordinates of a set of datapoints.
		w : array_like
		    `w` represents the y-coordinates of a set of datapoints, i.e. f(`x`).
		
		Returns
		-------
		lagrange : numpy.poly1d instance
		    The Lagrange interpolating polynomial.
	**/
	static public function lagrange(x:Dynamic, w:Dynamic):Dynamic;
	/**
		Convenience function for pchip interpolation.
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``.  The interpolant uses monotonic cubic splines
		to find the value of new points x and the derivatives there.
		
		See `PchipInterpolator` for details.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates, of length N.
		yi :  array_like
		    A 1-D array of real values.  `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array_like
		    Of length M.
		der : int or list, optional
		    Derivatives to extract.  The 0-th derivative can be included to
		    return the function value.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		See Also
		--------
		PchipInterpolator
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
	**/
	static public function pchip_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Evaluate all derivatives of a B-spline.
		
		Given the knots and coefficients of a cubic B-spline compute all
		derivatives up to order k at a point (or set of points).
		
		Parameters
		----------
		x : array_like
		    A point or a set of points at which to evaluate the derivatives.
		    Note that ``t(k) <= x <= t(n-k+1)`` must hold for each `x`.
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots,
		    the B-spline coefficients, and the degree of the spline.
		
		Returns
		-------
		results : {ndarray, list of ndarrays}
		    An array (or a list of arrays) containing all derivatives
		    up to order k inclusive for each point `x`.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev, bisplrep, bisplev,
		UnivariateSpline, BivariateSpline
		
		References
		----------
		.. [1] de Boor C : On calculating with b-splines, J. Approximation Theory
		   6 (1972) 50-62.
		.. [2] Cox M.G. : The numerical evaluation of b-splines, J. Inst. Maths
		   applics 10 (1972) 134-149.
		.. [3] Dierckx P. : Curve and surface fitting with splines, Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function spalde(x:Dynamic, tck:Dynamic):Dynamic;
	/**
		Compute the spline for the antiderivative (integral) of a given spline.
		
		Parameters
		----------
		tck : tuple of (t, c, k)
		    Spline whose antiderivative to compute
		n : int, optional
		    Order of antiderivative to evaluate. Default: 1
		
		Returns
		-------
		tck_ader : tuple of (t2, c2, k2)
		    Spline of order k2=k+n representing the antiderivative of the input
		    spline.
		
		See Also
		--------
		splder, splev, spalde
		
		Notes
		-----
		The `splder` function is the inverse operation of this function.
		Namely, ``splder(splantider(tck))`` is identical to `tck`, modulo
		rounding error.
		
		.. versionadded:: 0.13.0
		
		Examples
		--------
		>>> from scipy.interpolate import splrep, splder, splantider, splev
		>>> x = np.linspace(0, np.pi/2, 70)
		>>> y = 1 / np.sqrt(1 - 0.8*np.sin(x)**2)
		>>> spl = splrep(x, y)
		
		The derivative is the inverse operation of the antiderivative,
		although some floating point error accumulates:
		
		>>> splev(1.7, spl), splev(1.7, splder(splantider(spl)))
		(array(2.1565429877197317), array(2.1565429877201865))
		
		Antiderivative can be used to evaluate definite integrals:
		
		>>> ispl = splantider(spl)
		>>> splev(np.pi/2, ispl) - splev(0, ispl)
		2.2572053588768486
		
		This is indeed an approximation to the complete elliptic integral
		:math:`K(m) = \int_0^{\pi/2} [1 - m\sin^2 x]^{-1/2} dx`:
		
		>>> from scipy.special import ellipk
		>>> ellipk(0.8)
		2.2572053268208538
	**/
	static public function splantider(tck:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Compute the spline representation of the derivative of a given spline
		
		Parameters
		----------
		tck : tuple of (t, c, k)
		    Spline whose derivative to compute
		n : int, optional
		    Order of derivative to evaluate. Default: 1
		
		Returns
		-------
		tck_der : tuple of (t2, c2, k2)
		    Spline of order k2=k-n representing the derivative
		    of the input spline.
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		See Also
		--------
		splantider, splev, spalde
		
		Examples
		--------
		This can be used for finding maxima of a curve:
		
		>>> from scipy.interpolate import splrep, splder, sproot
		>>> x = np.linspace(0, 10, 70)
		>>> y = np.sin(x)
		>>> spl = splrep(x, y, k=4)
		
		Now, differentiate the spline and find the zeros of the
		derivative. (NB: `sproot` only works for order 3 splines, so we
		fit an order 4 spline):
		
		>>> dspl = splder(spl)
		>>> sproot(dspl) / np.pi
		array([ 0.50000001,  1.5       ,  2.49999998])
		
		This agrees well with roots :math:`\pi/2 + n\pi` of
		:math:`\cos(x) = \sin'(x)`.
	**/
	static public function splder(tck:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Evaluate a B-spline or its derivatives.
		
		Given the knots and coefficients of a B-spline representation, evaluate
		the value of the smoothing polynomial and its derivatives.  This is a
		wrapper around the FORTRAN routines splev and splder of FITPACK.
		
		Parameters
		----------
		x : array_like
		    An array of points at which to return the value of the smoothed
		    spline or its derivatives.  If `tck` was returned from `splprep`,
		    then the parameter values, u should be given.
		tck : tuple
		    A sequence of length 3 returned by `splrep` or `splprep` containing
		    the knots, coefficients, and degree of the spline.
		der : int, optional
		    The order of derivative of the spline to compute (must be less than
		    or equal to k).
		ext : int, optional
		    Controls the value returned for elements of ``x`` not in the
		    interval defined by the knot sequence.
		
		    * if ext=0, return the extrapolated value.
		    * if ext=1, return 0
		    * if ext=2, raise a ValueError
		    * if ext=3, return the boundary value.
		
		    The default value is 0.
		
		Returns
		-------
		y : ndarray or list of ndarrays
		    An array of values representing the spline function evaluated at
		    the points in ``x``.  If `tck` was returned from `splprep`, then this
		    is a list of arrays representing the curve in N-dimensional space.
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splint
		bisplrep, bisplev
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M.G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function splev(x:Dynamic, tck:Dynamic, ?der:Dynamic, ?ext:Dynamic):Dynamic;
	/**
		Evaluate a fixed spline represented by the given tuple at the new x-values
		
		The `xj` values are the interior knot points.  The approximation
		region is `xj[0]` to `xj[-1]`.  If N+1 is the length of `xj`, then `cvals`
		should have length N+k where `k` is the order of the spline.
		
		Parameters
		----------
		(xj, cvals, k) : tuple
		    Parameters that define the fixed spline
		xj : array_like
		    Interior knot points
		cvals : array_like
		    Curvature
		k : int
		    Order of the spline
		xnew : array_like
		    Locations to calculate spline
		deriv : int
		    Deriv
		
		Returns
		-------
		spleval : ndarray
		    If `cvals` represents more than one curve (`cvals.ndim` > 1) and/or
		    `xnew` is N-d, then the result is `xnew.shape` + `cvals.shape[1:]`
		    providing the interpolation of multiple curves.
		
		Notes
		-----
		Internally, an additional `k`-1 knot points are added on either side of
		the spline.
	**/
	static public function spleval(xck:Dynamic, xnew:Dynamic, ?deriv:Dynamic):Dynamic;
	/**
		Interpolate a curve at new points using a spline fit
		
		Parameters
		----------
		xk, yk : array_like
		    The x and y values that define the curve.
		xnew : array_like
		    The x values where spline should estimate the y values.
		order : int
		    Default is 3.
		kind : string
		    One of {'smoothest'}
		conds : Don't know
		    Don't know
		
		Returns
		-------
		spline : ndarray
		    An array of y values; the spline evaluated at the positions `xnew`.
	**/
	static public function spline(xk:Dynamic, yk:Dynamic, xnew:Dynamic, ?order:Dynamic, ?kind:Dynamic, ?conds:Dynamic):Dynamic;
	/**
		Evaluate the definite integral of a B-spline.
		
		Given the knots and coefficients of a B-spline, evaluate the definite
		integral of the smoothing polynomial between two given points.
		
		Parameters
		----------
		a, b : float
		    The end-points of the integration interval.
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline (see `splev`).
		full_output : int, optional
		    Non-zero to return optional output.
		
		Returns
		-------
		integral : float
		    The resulting integral.
		wrk : ndarray
		    An array containing the integrals of the normalized B-splines
		    defined on the set of knots.
		
		Notes
		-----
		splint silently assumes that the spline function is zero outside the data
		interval (a, b).
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splev
		bisplrep, bisplev
		UnivariateSpline, BivariateSpline
		
		References
		----------
		.. [1] P.W. Gaffney, The calculation of indefinite integrals of b-splines",
		    J. Inst. Maths Applics, 17, p.37-41, 1976.
		.. [2] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function splint(a:Dynamic, b:Dynamic, tck:Dynamic, ?full_output:Dynamic):Float;
	/**
		Return a representation of a spline given data-points at internal knots
		
		Parameters
		----------
		xk : array_like
		    The input array of x values of rank 1
		yk : array_like
		    The input array of y values of rank N. `yk` can be an N-d array to
		    represent more than one curve, through the same `xk` points. The first
		    dimension is assumed to be the interpolating dimension and is the same
		    length of `xk`.
		order : int, optional
		    Order of the spline
		kind : str, optional
		    Can be 'smoothest', 'not_a_knot', 'fixed', 'clamped', 'natural',
		    'periodic', 'symmetric', 'user', 'mixed' and it is ignored if order < 2
		conds : optional
		    Conds
		
		Returns
		-------
		splmake : tuple
		    Return a (`xk`, `cvals`, `k`) representation of a spline given
		    data-points where the (internal) knots are at the data-points.
	**/
	static public function splmake(xk:Dynamic, yk:Dynamic, ?order:Dynamic, ?kind:Dynamic, ?conds:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the B-spline representation of an N-dimensional curve.
		
		Given a list of N rank-1 arrays, `x`, which represent a curve in
		N-dimensional space parametrized by `u`, find a smooth approximating
		spline curve g(`u`). Uses the FORTRAN routine parcur from FITPACK.
		
		Parameters
		----------
		x : array_like
		    A list of sample vector arrays representing the curve.
		w : array_like, optional
		    Strictly positive rank-1 array of weights the same length as `x[0]`.
		    The weights are used in computing the weighted least-squares spline
		    fit. If the errors in the `x` values have standard-deviation given by
		    the vector d, then `w` should be 1/d. Default is ``ones(len(x[0]))``.
		u : array_like, optional
		    An array of parameter values. If not given, these values are
		    calculated automatically as ``M = len(x[0])``, where
		
		        v[0] = 0
		
		        v[i] = v[i-1] + distance(`x[i]`, `x[i-1]`)
		
		        u[i] = v[i] / v[M-1]
		
		ub, ue : int, optional
		    The end-points of the parameters interval.  Defaults to
		    u[0] and u[-1].
		k : int, optional
		    Degree of the spline. Cubic splines are recommended.
		    Even values of `k` should be avoided especially with a small s-value.
		    ``1 <= k <= 5``, default is 3.
		task : int, optional
		    If task==0 (default), find t and c for a given smoothing factor, s.
		    If task==1, find t and c for another value of the smoothing factor, s.
		    There must have been a previous call with task=0 or task=1
		    for the same set of data.
		    If task=-1 find the weighted least square spline for a given set of
		    knots, t.
		s : float, optional
		    A smoothing condition.  The amount of smoothness is determined by
		    satisfying the conditions: ``sum((w * (y - g))**2,axis=0) <= s``,
		    where g(x) is the smoothed interpolation of (x,y).  The user can
		    use `s` to control the trade-off between closeness and smoothness
		    of fit.  Larger `s` means more smoothing while smaller values of `s`
		    indicate less smoothing. Recommended values of `s` depend on the
		    weights, w.  If the weights represent the inverse of the
		    standard-deviation of y, then a good `s` value should be found in
		    the range ``(m-sqrt(2*m),m+sqrt(2*m))``, where m is the number of
		    data points in x, y, and w.
		t : int, optional
		    The knots needed for task=-1.
		full_output : int, optional
		    If non-zero, then return optional outputs.
		nest : int, optional
		    An over-estimate of the total number of knots of the spline to
		    help in determining the storage space.  By default nest=m/2.
		    Always large enough is nest=m+k+1.
		per : int, optional
		   If non-zero, data points are considered periodic with period
		   ``x[m-1] - x[0]`` and a smooth periodic spline approximation is
		   returned.  Values of ``y[m-1]`` and ``w[m-1]`` are not used.
		quiet : int, optional
		     Non-zero to suppress messages.
		     This parameter is deprecated; use standard Python warning filters
		     instead.
		
		Returns
		-------
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline.
		u : array
		    An array of the values of the parameter.
		fp : float
		    The weighted sum of squared residuals of the spline approximation.
		ier : int
		    An integer flag about splrep success.  Success is indicated
		    if ier<=0. If ier in [1,2,3] an error occurred but was not raised.
		    Otherwise an error is raised.
		msg : str
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		splrep, splev, sproot, spalde, splint,
		bisplrep, bisplev
		UnivariateSpline, BivariateSpline
		
		Notes
		-----
		See `splev` for evaluation of the spline and its derivatives.
		The number of dimensions N must be smaller than 11.
		
		References
		----------
		.. [1] P. Dierckx, "Algorithms for smoothing data with periodic and
		    parametric splines, Computer Graphics and Image Processing",
		    20 (1982) 171-184.
		.. [2] P. Dierckx, "Algorithms for smoothing data with periodic and
		    parametric splines", report tw55, Dept. Computer Science,
		    K.U.Leuven, 1981.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs on
		    Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function splprep(x:Dynamic, ?w:Dynamic, ?u:Dynamic, ?ub:Dynamic, ?ue:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?nest:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the B-spline representation of 1-D curve.
		
		Given the set of data points ``(x[i], y[i])`` determine a smooth spline
		approximation of degree k on the interval ``xb <= x <= xe``.
		
		Parameters
		----------
		x, y : array_like
		    The data points defining a curve y = f(x).
		w : array_like, optional
		    Strictly positive rank-1 array of weights the same length as x and y.
		    The weights are used in computing the weighted least-squares spline
		    fit. If the errors in the y values have standard-deviation given by the
		    vector d, then w should be 1/d. Default is ones(len(x)).
		xb, xe : float, optional
		    The interval to fit.  If None, these default to x[0] and x[-1]
		    respectively.
		k : int, optional
		    The degree of the spline fit. It is recommended to use cubic splines.
		    Even values of k should be avoided especially with small s values.
		    1 <= k <= 5
		task : {1, 0, -1}, optional
		    If task==0 find t and c for a given smoothing factor, s.
		
		    If task==1 find t and c for another value of the smoothing factor, s.
		    There must have been a previous call with task=0 or task=1 for the same
		    set of data (t will be stored an used internally)
		
		    If task=-1 find the weighted least square spline for a given set of
		    knots, t. These should be interior knots as knots on the ends will be
		    added automatically.
		s : float, optional
		    A smoothing condition. The amount of smoothness is determined by
		    satisfying the conditions: sum((w * (y - g))**2,axis=0) <= s where g(x)
		    is the smoothed interpolation of (x,y). The user can use s to control
		    the tradeoff between closeness and smoothness of fit. Larger s means
		    more smoothing while smaller values of s indicate less smoothing.
		    Recommended values of s depend on the weights, w. If the weights
		    represent the inverse of the standard-deviation of y, then a good s
		    value should be found in the range (m-sqrt(2*m),m+sqrt(2*m)) where m is
		    the number of datapoints in x, y, and w. default : s=m-sqrt(2*m) if
		    weights are supplied. s = 0.0 (interpolating) if no weights are
		    supplied.
		t : array_like, optional
		    The knots needed for task=-1. If given then task is automatically set
		    to -1.
		full_output : bool, optional
		    If non-zero, then return optional outputs.
		per : bool, optional
		    If non-zero, data points are considered periodic with period x[m-1] -
		    x[0] and a smooth periodic spline approximation is returned. Values of
		    y[m-1] and w[m-1] are not used.
		quiet : bool, optional
		    Non-zero to suppress messages.
		    This parameter is deprecated; use standard Python warning filters
		    instead.
		
		Returns
		-------
		tck : tuple
		    (t,c,k) a tuple containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline.
		fp : array, optional
		    The weighted sum of squared residuals of the spline approximation.
		ier : int, optional
		    An integer flag about splrep success. Success is indicated if ier<=0.
		    If ier in [1,2,3] an error occurred but was not raised. Otherwise an
		    error is raised.
		msg : str, optional
		    A message corresponding to the integer flag, ier.
		
		Notes
		-----
		See splev for evaluation of the spline and its derivatives.
		
		The user is responsible for assuring that the values of *x* are unique.
		Otherwise, *splrep* will not return sensible results.
		
		See Also
		--------
		UnivariateSpline, BivariateSpline
		splprep, splev, sproot, spalde, splint
		bisplrep, bisplev
		
		Notes
		-----
		See splev for evaluation of the spline and its derivatives. Uses the
		FORTRAN routine curfit from FITPACK.
		
		If provided, knots `t` must satisfy the Schoenberg-Whitney conditions,
		i.e., there must be a subset of data points ``x[j]`` such that
		``t[j] < x[j] < t[j+k+1]``, for ``j=0, 1,...,n-k-2``.
		
		References
		----------
		Based on algorithms described in [1]_, [2]_, [3]_, and [4]_:
		
		.. [1] P. Dierckx, "An algorithm for smoothing, differentiation and
		   integration of experimental data using spline functions",
		   J.Comp.Appl.Maths 1 (1975) 165-184.
		.. [2] P. Dierckx, "A fast algorithm for smoothing data on a rectangular
		   grid while using spline functions", SIAM J.Numer.Anal. 19 (1982)
		   1286-1304.
		.. [3] P. Dierckx, "An improved algorithm for curve fitting with spline
		   functions", report tw54, Dept. Computer Science,K.U. Leuven, 1981.
		.. [4] P. Dierckx, "Curve and surface fitting with splines", Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import splev, splrep
		>>> x = np.linspace(0, 10, 10)
		>>> y = np.sin(x)
		>>> tck = splrep(x, y)
		>>> x2 = np.linspace(0, 10, 200)
		>>> y2 = splev(x2, tck)
		>>> plt.plot(x, y, 'o', x2, y2)
		>>> plt.show()
	**/
	static public function splrep(x:Dynamic, y:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Return a piece-wise polynomial object from a fixed-spline tuple.
		    
	**/
	static public function spltopp(xk:Dynamic, cvals:Dynamic, k:Dynamic):Dynamic;
	/**
		Find the roots of a cubic B-spline.
		
		Given the knots (>=8) and coefficients of a cubic B-spline return the
		roots of the spline.
		
		Parameters
		----------
		tck : tuple
		    A tuple (t,c,k) containing the vector of knots,
		    the B-spline coefficients, and the degree of the spline.
		    The number of knots must be >= 8, and the degree must be 3.
		    The knots must be a montonically increasing sequence.
		mest : int, optional
		    An estimate of the number of zeros (Default is 10).
		
		Returns
		-------
		zeros : ndarray
		    An array giving the roots of the spline.
		
		See also
		--------
		splprep, splrep, splint, spalde, splev
		bisplrep, bisplev
		UnivariateSpline, BivariateSpline
		
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M.G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
	**/
	static public function sproot(tck:Dynamic, ?mest:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
}