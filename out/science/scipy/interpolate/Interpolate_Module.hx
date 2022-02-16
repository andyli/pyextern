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
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_2d_spline>`.
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
		    A non-negative smoothing factor. If weights correspond
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
		    An integer flag about splrep success. Success is indicated if
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
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_2d_spline>`.
	**/
	static public function bisplrep(x:Dynamic, y:Dynamic, z:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?yb:Dynamic, ?ye:Dynamic, ?kx:Dynamic, ?ky:Dynamic, ?task:Dynamic, ?s:Dynamic, ?eps:Dynamic, ?tx:Dynamic, ?ty:Dynamic, ?full_output:Dynamic, ?nxest:Dynamic, ?nyest:Dynamic, ?quiet:Dynamic):Dynamic;
	/**
		Interpolate unstructured D-D data.
		
		Parameters
		----------
		points : 2-D ndarray of floats with shape (n, D), or length D tuple of 1-D ndarrays with shape (n,).
		    Data point coordinates.
		values : ndarray of float or complex, shape (n,)
		    Data values.
		xi : 2-D ndarray of floats with shape (m, D), or length D tuple of ndarrays broadcastable to the same shape.
		    Points at which to interpolate data.
		method : {'linear', 'nearest', 'cubic'}, optional
		    Method of interpolation. One of
		
		    ``nearest``
		      return the value at the data point closest to
		      the point of interpolation. See `NearestNDInterpolator` for
		      more details.
		
		    ``linear``
		      tessellate the input point set to N-D
		      simplices, and interpolate linearly on each simplex. See
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
		    convex hull of the input points. If not provided, then the
		    default is ``nan``. This option has no effect for the
		    'nearest' method.
		rescale : bool, optional
		    Rescale points to unit cube before performing interpolation.
		    This is useful if some of the input dimensions have
		    incommensurable units and differ by many orders of magnitude.
		
		    .. versionadded:: 0.14.0
		
		Returns
		-------
		ndarray
		    Array of interpolated values.
		
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
		
		>>> rng = np.random.default_rng()
		>>> points = rng.random((1000, 2))
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
		
		See also
		--------
		LinearNDInterpolator :
		    Piecewise linear interpolant in N dimensions.
		NearestNDInterpolator :
		    Nearest-neighbor interpolation in N dimensions.
		CloughTocher2DInterpolator :
		    Piecewise cubic, C1 smooth, curvature-minimizing interpolant in 2D.
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
		tck : a `BSpline` instance or a tuple
		    If tuple, then it is expected to be a tuple (t,c,k) containing
		    the vector of knots, the B-spline coefficients, and the degree of
		    the spline.
		m : int, optional
		    The number of times to insert the given knot (its multiplicity).
		    Default is 1.
		per : int, optional
		    If non-zero, the input spline is considered periodic.
		
		Returns
		-------
		BSpline instance or a tuple
		    A new B-spline with knots t, coefficients c, and degree k.
		    ``t(k+1) <= x <= t(n-k)``, where k is the degree of the spline.
		    In case of a periodic spline (``per != 0``) there must be
		    either at least k interior knots t(j) satisfying ``t(k+1)<t(j)<=x``
		    or at least k interior knots t(j) satisfying ``x<=t(j)<t(n-k)``.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		Notes
		-----
		Based on algorithms from [1]_ and [2]_.
		
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		References
		----------
		.. [1] W. Boehm, "Inserting new knots into b-spline curves.",
		    Computer Aided Design, 12, p.199-201, 1980.
		.. [2] P. Dierckx, "Curve and surface fitting with splines, Monographs on
		    Numerical Analysis", Oxford University Press, 1993.
		
		Examples
		--------
		You can insert knots into a B-spline.
		
		>>> from scipy.interpolate import splrep, insert
		>>> x = np.linspace(0, 10, 5)
		>>> y = np.sin(x)
		>>> tck = splrep(x, y)
		>>> tck[0]
		array([ 0.,  0.,  0.,  0.,  5., 10., 10., 10., 10.])
		
		A knot is inserted:
		
		>>> tck_inserted = insert(3, tck)
		>>> tck_inserted[0]
		array([ 0.,  0.,  0.,  0.,  3.,  5., 10., 10., 10., 10.])
		
		Some knots are inserted:
		
		>>> tck_inserted2 = insert(8, tck, m=3)
		>>> tck_inserted2[0]
		array([ 0.,  0.,  0.,  0.,  5.,  8.,  8.,  8., 10., 10., 10., 10.])
	**/
	static public function insert(x:Dynamic, tck:Dynamic, ?m:Dynamic, ?per:Dynamic):Dynamic;
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
		
		Examples
		--------
		Evaluate a simple example function on the points of a regular 3-D grid:
		
		>>> from scipy.interpolate import interpn
		>>> def value_func_3d(x, y, z):
		...     return 2 * x + 3 * y - z
		>>> x = np.linspace(0, 4, 5)
		>>> y = np.linspace(0, 5, 6)
		>>> z = np.linspace(0, 6, 7)
		>>> points = (x, y, z)
		>>> values = value_func_3d(*np.meshgrid(*points, indexing='ij'))
		
		Evaluate the interpolating function at a point
		
		>>> point = np.array([2.21, 3.12, 1.15])
		>>> print(interpn(points, values, point))
		[12.63]
		
		See also
		--------
		NearestNDInterpolator : Nearest neighbor interpolation on unstructured
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
		    `w` represents the y-coordinates of a set of datapoints, i.e., f(`x`).
		
		Returns
		-------
		lagrange : `numpy.poly1d` instance
		    The Lagrange interpolating polynomial.
		
		Examples
		--------
		Interpolate :math:`f(x) = x^3` by 3 points.
		
		>>> from scipy.interpolate import lagrange
		>>> x = np.array([0, 1, 2])
		>>> y = x**3
		>>> poly = lagrange(x, y)
		
		Since there are only 3 points, Lagrange polynomial has degree 2. Explicitly,
		it is given by
		
		.. math::
		
		    \begin{aligned}
		        L(x) &= 1\times \frac{x (x - 2)}{-1} + 8\times \frac{x (x-1)}{2} \\
		             &= x (-2 + 3x)
		    \end{aligned}
		
		>>> from numpy.polynomial.polynomial import Polynomial
		>>> Polynomial(poly.coef[::-1]).coef
		array([ 0., -2.,  3.])
		
		>>> import matplotlib.pyplot as plt
		>>> x_new = np.arange(0, 2.1, 0.1)
		>>> plt.scatter(x, y, label='data')
		>>> plt.plot(x_new, Polynomial(poly.coef[::-1])(x_new), label='Polynomial')
		>>> plt.plot(x_new, 3*x_new**2 - 2*x_new + 0*x_new,
		...          label=r"$3 x^2 - 2 x$", linestyle='-.')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function lagrange(x:Dynamic, w:Dynamic):Dynamic;
	/**
		Compute the (coefficients of) interpolating B-spline.
		
		Parameters
		----------
		x : array_like, shape (n,)
		    Abscissas.
		y : array_like, shape (n, ...)
		    Ordinates.
		k : int, optional
		    B-spline degree. Default is cubic, k=3.
		t : array_like, shape (nt + k + 1,), optional.
		    Knots.
		    The number of knots needs to agree with the number of datapoints and
		    the number of derivatives at the edges. Specifically, ``nt - n`` must
		    equal ``len(deriv_l) + len(deriv_r)``.
		bc_type : 2-tuple or None
		    Boundary conditions.
		    Default is None, which means choosing the boundary conditions
		    automatically. Otherwise, it must be a length-two tuple where the first
		    element sets the boundary conditions at ``x[0]`` and the second
		    element sets the boundary conditions at ``x[-1]``. Each of these must
		    be an iterable of pairs ``(order, value)`` which gives the values of
		    derivatives of specified orders at the given edge of the interpolation
		    interval.
		    Alternatively, the following string aliases are recognized:
		
		    * ``"clamped"``: The first derivatives at the ends are zero. This is
		       equivalent to ``bc_type=([(1, 0.0)], [(1, 0.0)])``.
		    * ``"natural"``: The second derivatives at ends are zero. This is
		      equivalent to ``bc_type=([(2, 0.0)], [(2, 0.0)])``.
		    * ``"not-a-knot"`` (default): The first and second segments are the
		      same polynomial. This is equivalent to having ``bc_type=None``.
		    * ``"periodic"``: The values and the first ``k-1`` derivatives at the
		      ends are equivalent.
		
		axis : int, optional
		    Interpolation axis. Default is 0.
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		b : a BSpline object of the degree ``k`` and with knots ``t``.
		
		Examples
		--------
		
		Use cubic interpolation on Chebyshev nodes:
		
		>>> def cheb_nodes(N):
		...     jj = 2.*np.arange(N) + 1
		...     x = np.cos(np.pi * jj / 2 / N)[::-1]
		...     return x
		
		>>> x = cheb_nodes(20)
		>>> y = np.sqrt(1 - x**2)
		
		>>> from scipy.interpolate import BSpline, make_interp_spline
		>>> b = make_interp_spline(x, y)
		>>> np.allclose(b(x), y)
		True
		
		Note that the default is a cubic spline with a not-a-knot boundary condition
		
		>>> b.k
		3
		
		Here we use a 'natural' spline, with zero 2nd derivatives at edges:
		
		>>> l, r = [(2, 0.0)], [(2, 0.0)]
		>>> b_n = make_interp_spline(x, y, bc_type=(l, r))  # or, bc_type="natural"
		>>> np.allclose(b_n(x), y)
		True
		>>> x0, x1 = x[0], x[-1]
		>>> np.allclose([b_n(x0, 2), b_n(x1, 2)], [0, 0])
		True
		
		Interpolation of parametric curves is also supported. As an example, we
		compute a discretization of a snail curve in polar coordinates
		
		>>> phi = np.linspace(0, 2.*np.pi, 40)
		>>> r = 0.3 + np.cos(phi)
		>>> x, y = r*np.cos(phi), r*np.sin(phi)  # convert to Cartesian coordinates
		
		Build an interpolating curve, parameterizing it by the angle
		
		>>> from scipy.interpolate import make_interp_spline
		>>> spl = make_interp_spline(phi, np.c_[x, y])
		
		Evaluate the interpolant on a finer grid (note that we transpose the result
		to unpack it into a pair of x- and y-arrays)
		
		>>> phi_new = np.linspace(0, 2.*np.pi, 100)
		>>> x_new, y_new = spl(phi_new).T
		
		Plot the result
		
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(x, y, 'o')
		>>> plt.plot(x_new, y_new, '-')
		>>> plt.show()
		
		Build a B-spline curve with 2 dimensional y
		
		>>> x = np.linspace(0, 2*np.pi, 10)
		>>> y = np.array([np.sin(x), np.cos(x)])
		
		Periodic condition is satisfied because y coordinates of points on the ends
		are equivalent
		
		>>> ax = plt.axes(projection='3d')
		>>> xx = np.linspace(0, 2*np.pi, 100)
		>>> bspl = make_interp_spline(x, y, k=5, bc_type='periodic', axis=1)
		>>> ax.plot3D(xx, *bspl(xx))
		>>> ax.scatter3D(x, *y, color='red')
		>>> plt.show()
		
		See Also
		--------
		BSpline : base class representing the B-spline objects
		CubicSpline : a cubic spline in the polynomial basis
		make_lsq_spline : a similar factory function for spline fitting
		UnivariateSpline : a wrapper over FITPACK spline fitting routines
		splrep : a wrapper over FITPACK spline fitting routines
	**/
	static public function make_interp_spline(x:Dynamic, y:Dynamic, ?k:Dynamic, ?t:Dynamic, ?bc_type:Dynamic, ?axis:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (coefficients of) an LSQ B-spline.
		
		The result is a linear combination
		
		.. math::
		
		        S(x) = \sum_j c_j B_j(x; t)
		
		of the B-spline basis elements, :math:`B_j(x; t)`, which minimizes
		
		.. math::
		
		    \sum_{j} \left( w_j \times (S(x_j) - y_j) \right)^2
		
		Parameters
		----------
		x : array_like, shape (m,)
		    Abscissas.
		y : array_like, shape (m, ...)
		    Ordinates.
		t : array_like, shape (n + k + 1,).
		    Knots.
		    Knots and data points must satisfy Schoenberg-Whitney conditions.
		k : int, optional
		    B-spline degree. Default is cubic, k=3.
		w : array_like, shape (n,), optional
		    Weights for spline fitting. Must be positive. If ``None``,
		    then weights are all equal.
		    Default is ``None``.
		axis : int, optional
		    Interpolation axis. Default is zero.
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		b : a BSpline object of the degree `k` with knots `t`.
		
		Notes
		-----
		
		The number of data points must be larger than the spline degree `k`.
		
		Knots `t` must satisfy the Schoenberg-Whitney conditions,
		i.e., there must be a subset of data points ``x[j]`` such that
		``t[j] < x[j] < t[j+k+1]``, for ``j=0, 1,...,n-k-2``.
		
		Examples
		--------
		Generate some noisy data:
		
		>>> rng = np.random.default_rng()
		>>> x = np.linspace(-3, 3, 50)
		>>> y = np.exp(-x**2) + 0.1 * rng.standard_normal(50)
		
		Now fit a smoothing cubic spline with a pre-defined internal knots.
		Here we make the knot vector (k+1)-regular by adding boundary knots:
		
		>>> from scipy.interpolate import make_lsq_spline, BSpline
		>>> t = [-1, 0, 1]
		>>> k = 3
		>>> t = np.r_[(x[0],)*(k+1),
		...           t,
		...           (x[-1],)*(k+1)]
		>>> spl = make_lsq_spline(x, y, t, k)
		
		For comparison, we also construct an interpolating spline for the same
		set of data:
		
		>>> from scipy.interpolate import make_interp_spline
		>>> spl_i = make_interp_spline(x, y)
		
		Plot both:
		
		>>> import matplotlib.pyplot as plt
		>>> xs = np.linspace(-3, 3, 100)
		>>> plt.plot(x, y, 'ro', ms=5)
		>>> plt.plot(xs, spl(xs), 'g-', lw=3, label='LSQ spline')
		>>> plt.plot(xs, spl_i(xs), 'b-', lw=3, alpha=0.7, label='interp spline')
		>>> plt.legend(loc='best')
		>>> plt.show()
		
		**NaN handling**: If the input arrays contain ``nan`` values, the result is
		not useful since the underlying spline fitting routines cannot deal with
		``nan``. A workaround is to use zero weights for not-a-number data points:
		
		>>> y[8] = np.nan
		>>> w = np.isnan(y)
		>>> y[w] = 0.
		>>> tck = make_lsq_spline(x, y, t, w=~w)
		
		Notice the need to replace a ``nan`` by a numerical value (precise value
		does not matter as long as the corresponding weight is zero.)
		
		See Also
		--------
		BSpline : base class representing the B-spline objects
		make_interp_spline : a similar factory function for interpolating splines
		LSQUnivariateSpline : a FITPACK-based spline fitting routine
		splrep : a FITPACK-based fitting routine
	**/
	static public function make_lsq_spline(x:Dynamic, y:Dynamic, t:Dynamic, ?k:Dynamic, ?w:Dynamic, ?axis:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return Pade approximation to a polynomial as the ratio of two polynomials.
		
		Parameters
		----------
		an : (N,) array_like
		    Taylor series coefficients.
		m : int
		    The order of the returned approximating polynomial `q`.
		n : int, optional
		    The order of the returned approximating polynomial `p`. By default,
		    the order is ``len(an)-1-m``.
		
		Returns
		-------
		p, q : Polynomial class
		    The Pade approximation of the polynomial defined by `an` is
		    ``p(x)/q(x)``.
		
		Examples
		--------
		>>> from scipy.interpolate import pade
		>>> e_exp = [1.0, 1.0, 1.0/2.0, 1.0/6.0, 1.0/24.0, 1.0/120.0]
		>>> p, q = pade(e_exp, 2)
		
		>>> e_exp.reverse()
		>>> e_poly = np.poly1d(e_exp)
		
		Compare ``e_poly(x)`` and the Pade approximation ``p(x)/q(x)``
		
		>>> e_poly(1)
		2.7166666666666668
		
		>>> p(1)/q(1)
		2.7179487179487181
	**/
	static public function pade(an:Dynamic, m:Dynamic, ?n:Dynamic):Dynamic;
	/**
		Convenience function for pchip interpolation.
		
		xi and yi are arrays of values used to approximate some function f,
		with ``yi = f(xi)``. The interpolant uses monotonic cubic splines
		to find the value of new points x and the derivatives there.
		
		See `scipy.interpolate.PchipInterpolator` for details.
		
		Parameters
		----------
		xi : array_like
		    A sorted list of x-coordinates, of length N.
		yi :  array_like
		    A 1-D array of real values. `yi`'s length along the interpolation
		    axis must be equal to the length of `xi`. If N-D array, use axis
		    parameter to select correct axis.
		x : scalar or array_like
		    Of length M.
		der : int or list, optional
		    Derivatives to extract. The 0th derivative can be included to
		    return the function value.
		axis : int, optional
		    Axis in the yi array corresponding to the x-coordinate values.
		
		See Also
		--------
		PchipInterpolator : PCHIP 1-D monotonic cubic interpolator.
		
		Returns
		-------
		y : scalar or array_like
		    The result, of length R or length M or M by R,
		
		Examples
		--------
		We can interpolate 2D observed data using pchip interpolation:
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import pchip_interpolate
		>>> x_observed = np.linspace(0.0, 10.0, 11)
		>>> y_observed = np.sin(x_observed)
		>>> x = np.linspace(min(x_observed), max(x_observed), num=100)
		>>> y = pchip_interpolate(x_observed, y_observed, x)
		>>> plt.plot(x_observed, y_observed, "o", label="observation")
		>>> plt.plot(x, y, label="pchip interpolation")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function pchip_interpolate(xi:Dynamic, yi:Dynamic, x:Dynamic, ?der:Dynamic, ?axis:Dynamic):Dynamic;
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
		    A tuple ``(t, c, k)``, containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline (see `splev`).
		
		Returns
		-------
		results : {ndarray, list of ndarrays}
		    An array (or a list of arrays) containing all derivatives
		    up to order k inclusive for each point `x`.
		
		See Also
		--------
		splprep, splrep, splint, sproot, splev, bisplrep, bisplev,
		BSpline
		
		References
		----------
		.. [1] C. de Boor: On calculating with b-splines, J. Approximation Theory
		   6 (1972) 50-62.
		.. [2] M. G. Cox : The numerical evaluation of b-splines, J. Inst. Maths
		   applics 10 (1972) 134-149.
		.. [3] P. Dierckx : Curve and surface fitting with splines, Monographs on
		   Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_splXXX>`.
	**/
	static public function spalde(x:Dynamic, tck:Dynamic):Dynamic;
	/**
		Compute the spline for the antiderivative (integral) of a given spline.
		
		Parameters
		----------
		tck : BSpline instance or a tuple of (t, c, k)
		    Spline whose antiderivative to compute
		n : int, optional
		    Order of antiderivative to evaluate. Default: 1
		
		Returns
		-------
		BSpline instance or a tuple of (t2, c2, k2)
		    Spline of order k2=k+n representing the antiderivative of the input
		    spline.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		See Also
		--------
		splder, splev, spalde
		BSpline
		
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
		tck : BSpline instance or a tuple of (t, c, k)
		    Spline whose derivative to compute
		n : int, optional
		    Order of derivative to evaluate. Default: 1
		
		Returns
		-------
		`BSpline` instance or tuple
		    Spline of order k2=k-n representing the derivative
		    of the input spline.
		    A tuple is returned iff the input argument `tck` is a tuple, otherwise
		    a BSpline object is constructed and returned.
		
		Notes
		-----
		
		.. versionadded:: 0.13.0
		
		See Also
		--------
		splantider, splev, spalde
		BSpline
		
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
		the value of the smoothing polynomial and its derivatives. This is a
		wrapper around the FORTRAN routines splev and splder of FITPACK.
		
		Parameters
		----------
		x : array_like
		    An array of points at which to return the value of the smoothed
		    spline or its derivatives. If `tck` was returned from `splprep`,
		    then the parameter values, u should be given.
		tck : 3-tuple or a BSpline object
		    If a tuple, then it should be a sequence of length 3 returned by
		    `splrep` or `splprep` containing the knots, coefficients, and degree
		    of the spline. (Also see Notes.)
		der : int, optional
		    The order of derivative of the spline to compute (must be less than
		    or equal to k, the degree of the spline).
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
		    the points in `x`.  If `tck` was returned from `splprep`, then this
		    is a list of arrays representing the curve in an N-D space.
		
		Notes
		-----
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using `BSpline` objects.
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splint
		bisplrep, bisplev
		BSpline
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M. G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_splXXX>`.
	**/
	static public function splev(x:Dynamic, tck:Dynamic, ?der:Dynamic, ?ext:Dynamic):Dynamic;
	/**
		Evaluate the definite integral of a B-spline between two given points.
		
		Parameters
		----------
		a, b : float
		    The end-points of the integration interval.
		tck : tuple or a BSpline instance
		    If a tuple, then it should be a sequence of length 3, containing the
		    vector of knots, the B-spline coefficients, and the degree of the
		    spline (see `splev`).
		full_output : int, optional
		    Non-zero to return optional output.
		
		Returns
		-------
		integral : float
		    The resulting integral.
		wrk : ndarray
		    An array containing the integrals of the normalized B-splines
		    defined on the set of knots.
		    (Only returned if `full_output` is non-zero)
		
		Notes
		-----
		`splint` silently assumes that the spline function is zero outside the data
		interval (`a`, `b`).
		
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		See Also
		--------
		splprep, splrep, sproot, spalde, splev
		bisplrep, bisplev
		BSpline
		
		References
		----------
		.. [1] P.W. Gaffney, The calculation of indefinite integrals of b-splines",
		    J. Inst. Maths Applics, 17, p.37-41, 1976.
		.. [2] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_splXXX>`.
	**/
	static public function splint(a:Dynamic, b:Dynamic, tck:Dynamic, ?full_output:Dynamic):Float;
	/**
		Find the B-spline representation of an N-D curve.
		
		Given a list of N rank-1 arrays, `x`, which represent a curve in
		N-D space parametrized by `u`, find a smooth approximating
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
		    (t,c,k) a tuple containing the vector of knots, the B-spline
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
		BSpline
		make_interp_spline
		
		Notes
		-----
		See `splev` for evaluation of the spline and its derivatives.
		The number of dimensions N must be smaller than 11.
		
		The number of coefficients in the `c` array is ``k+1`` less then the number
		of knots, ``len(t)``. This is in contrast with `splrep`, which zero-pads
		the array of coefficients to have the same length as the array of knots.
		These additional coefficients are ignored by evaluation routines, `splev`
		and `BSpline`.
		
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
		
		Examples
		--------
		Generate a discretization of a limacon curve in the polar coordinates:
		
		>>> phi = np.linspace(0, 2.*np.pi, 40)
		>>> r = 0.5 + np.cos(phi)         # polar coords
		>>> x, y = r * np.cos(phi), r * np.sin(phi)    # convert to cartesian
		
		And interpolate:
		
		>>> from scipy.interpolate import splprep, splev
		>>> tck, u = splprep([x, y], s=0)
		>>> new_points = splev(u, tck)
		
		Notice that (i) we force interpolation by using `s=0`,
		(ii) the parameterization, ``u``, is generated automatically.
		Now plot the result:
		
		>>> import matplotlib.pyplot as plt
		>>> fig, ax = plt.subplots()
		>>> ax.plot(x, y, 'ro')
		>>> ax.plot(new_points[0], new_points[1], 'r-')
		>>> plt.show()
	**/
	static public function splprep(x:Dynamic, ?w:Dynamic, ?u:Dynamic, ?ub:Dynamic, ?ue:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?nest:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the B-spline representation of a 1-D curve.
		
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
		    A tuple (t,c,k) containing the vector of knots, the B-spline
		    coefficients, and the degree of the spline.
		fp : array, optional
		    The weighted sum of squared residuals of the spline approximation.
		ier : int, optional
		    An integer flag about splrep success. Success is indicated if ier<=0.
		    If ier in [1,2,3] an error occurred but was not raised. Otherwise an
		    error is raised.
		msg : str, optional
		    A message corresponding to the integer flag, ier.
		
		See Also
		--------
		UnivariateSpline, BivariateSpline
		splprep, splev, sproot, spalde, splint
		bisplrep, bisplev
		BSpline
		make_interp_spline
		
		Notes
		-----
		See `splev` for evaluation of the spline and its derivatives. Uses the
		FORTRAN routine ``curfit`` from FITPACK.
		
		The user is responsible for assuring that the values of `x` are unique.
		Otherwise, `splrep` will not return sensible results.
		
		If provided, knots `t` must satisfy the Schoenberg-Whitney conditions,
		i.e., there must be a subset of data points ``x[j]`` such that
		``t[j] < x[j] < t[j+k+1]``, for ``j=0, 1,...,n-k-2``.
		
		This routine zero-pads the coefficients array ``c`` to have the same length
		as the array of knots ``t`` (the trailing ``k + 1`` coefficients are ignored
		by the evaluation routines, `splev` and `BSpline`.) This is in contrast with
		`splprep`, which does not zero-pad the coefficients.
		
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
		You can interpolate 1-D points with a B-spline curve.
		Further examples are given in
		:ref:`in the tutorial <tutorial-interpolate_splXXX>`.
		
		>>> import matplotlib.pyplot as plt
		>>> from scipy.interpolate import splev, splrep
		>>> x = np.linspace(0, 10, 10)
		>>> y = np.sin(x)
		>>> spl = splrep(x, y)
		>>> x2 = np.linspace(0, 10, 200)
		>>> y2 = splev(x2, spl)
		>>> plt.plot(x, y, 'o', x2, y2)
		>>> plt.show()
	**/
	static public function splrep(x:Dynamic, y:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?per:Dynamic, ?quiet:Dynamic):python.Tuple<Dynamic>;
	/**
		Find the roots of a cubic B-spline.
		
		Given the knots (>=8) and coefficients of a cubic B-spline return the
		roots of the spline.
		
		Parameters
		----------
		tck : tuple or a BSpline object
		    If a tuple, then it should be a sequence of length 3, containing the
		    vector of knots, the B-spline coefficients, and the degree of the
		    spline.
		    The number of knots must be >= 8, and the degree must be 3.
		    The knots must be a montonically increasing sequence.
		mest : int, optional
		    An estimate of the number of zeros (Default is 10).
		
		Returns
		-------
		zeros : ndarray
		    An array giving the roots of the spline.
		
		Notes
		-----
		Manipulating the tck-tuples directly is not recommended. In new code,
		prefer using the `BSpline` objects.
		
		See also
		--------
		splprep, splrep, splint, spalde, splev
		bisplrep, bisplev
		BSpline
		
		
		References
		----------
		.. [1] C. de Boor, "On calculating with b-splines", J. Approximation
		    Theory, 6, p.50-62, 1972.
		.. [2] M. G. Cox, "The numerical evaluation of b-splines", J. Inst. Maths
		    Applics, 10, p.134-149, 1972.
		.. [3] P. Dierckx, "Curve and surface fitting with splines", Monographs
		    on Numerical Analysis, Oxford University Press, 1993.
		
		Examples
		--------
		Examples are given :ref:`in the tutorial <tutorial-interpolate_splXXX>`.
	**/
	static public function sproot(tck:Dynamic, ?mest:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
}