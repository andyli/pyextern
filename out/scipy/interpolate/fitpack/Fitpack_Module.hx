/* This file is generated, do not edit! */
package scipy.interpolate.fitpack;
@:pythonImport("scipy.interpolate.fitpack") extern class Fitpack_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _curfit_cache : Dynamic;
	static public var _iermess : Dynamic;
	static public var _iermess2 : Dynamic;
	/**
		Cast the value to an intc and raise an OverflowError if the value
		cannot fit.
	**/
	static public function _intc_overflow(x:Dynamic, ?msg:Dynamic):Dynamic;
	static public function _ntlist(l:Dynamic):Dynamic;
	static public var _parcur_cache : Dynamic;
	static public var _surfit_cache : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or
		    column-major (Fortran-style) memory representation.
		    Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or sequence of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
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
	/**
		Evaluate the integral of a spline over area [xa,xb] x [ya,yb].
		
		Parameters
		----------
		xa, xb : float
		    The end-points of the x integration interval.
		ya, yb : float
		    The end-points of the y integration interval.
		tck : list [tx, ty, c, kx, ky]
		    A sequence of length 5 returned by bisplrep containing the knot
		    locations tx, ty, the coefficients c, and the degrees kx, ky
		    of the spline.
		
		Returns
		-------
		integ : float
		    The value of the resulting integral.
	**/
	static public function dblint(xa:Dynamic, xb:Dynamic, ya:Dynamic, yb:Dynamic, tck:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the given
		    shape, dtype, and order.
		
		See Also
		--------
		empty_like, zeros, ones
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function insert(x:Dynamic, tck:Dynamic, ?m:Dynamic, ?per:Dynamic):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return a contiguous flattened array.
		
		A 1-D array, containing the elements of the input, is returned.  A copy is
		made only if needed.
		
		As of NumPy 1.10, the returned array will have the same type as the input
		array. (for example, a masked array will be returned for a masked array
		input)
		
		Parameters
		----------
		a : array_like
		    Input array.  The elements in `a` are read in the order specified by
		    `order`, and packed as a 1-D array.
		order : {'C','F', 'A', 'K'}, optional
		
		    The elements of `a` are read using this index order. 'C' means
		    to index the elements in row-major, C-style order,
		    with the last axis index changing fastest, back to the first
		    axis index changing slowest.  'F' means to index the elements
		    in column-major, Fortran-style order, with the
		    first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of
		    the memory layout of the underlying array, and only refer to
		    the order of axis indexing.  'A' means to read the elements in
		    Fortran-like index order if `a` is Fortran *contiguous* in
		    memory, C-like order otherwise.  'K' means to read the
		    elements in the order they occur in memory, except for
		    reversing the data when strides are negative.  By default, 'C'
		    index order is used.
		
		Returns
		-------
		y : array_like
		    If `a` is a matrix, y is a 1-D ndarray, otherwise y is an array of
		    the same subtype as `a`. The shape of the returned array is
		    ``(a.size,)``. Matrices are special cased for backward
		    compatibility.
		
		See Also
		--------
		ndarray.flat : 1-D iterator over an array.
		ndarray.flatten : 1-D array copy of the elements of an array
		                  in row-major order.
		ndarray.reshape : Change the shape of an array without changing its data.
		
		Notes
		-----
		In row-major, C-style order, in two dimensions, the row index
		varies the slowest, and the column index the quickest.  This can
		be generalized to multiple dimensions, where row-major order
		implies that the index along the first axis varies slowest, and
		the index along the last quickest.  The opposite holds for
		column-major, Fortran-style index ordering.
		
		When a view is desired in as many cases as possible, ``arr.reshape(-1)``
		may be preferable.
		
		Examples
		--------
		It is equivalent to ``reshape(-1, order=order)``.
		
		>>> x = np.array([[1, 2, 3], [4, 5, 6]])
		>>> print np.ravel(x)
		[1 2 3 4 5 6]
		
		>>> print x.reshape(-1)
		[1 2 3 4 5 6]
		
		>>> print np.ravel(x, order='F')
		[1 4 2 5 3 6]
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> print np.ravel(x.T)
		[1 4 2 5 3 6]
		>>> print np.ravel(x.T, order='A')
		[1 2 3 4 5 6]
		
		When ``order`` is 'K', it will preserve orderings that are neither 'C'
		nor 'F', but won't reverse axes:
		
		>>> a = np.arange(3)[::-1]; a
		array([2, 1, 0])
		>>> a.ravel(order='C')
		array([2, 1, 0])
		>>> a.ravel(order='K')
		array([2, 1, 0])
		
		>>> a = np.arange(12).reshape(2,3,2).swapaxes(1,2); a
		array([[[ 0,  2,  4],
		        [ 1,  3,  5]],
		       [[ 6,  8, 10],
		        [ 7,  9, 11]]])
		>>> a.ravel(order='C')
		array([ 0,  2,  4,  1,  3,  5,  6,  8, 10,  7,  9, 11])
		>>> a.ravel(order='K')
		array([ 0,  1,  2,  3,  4,  5,  6,  7,  8,  9, 10, 11])
	**/
	static public function ravel(a:Dynamic, ?order:Dynamic):Dynamic;
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
	static public function splint(a:Dynamic, b:Dynamic, tck:Dynamic, ?full_output:Dynamic):Dynamic;
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
	static public function splprep(x:Dynamic, ?w:Dynamic, ?u:Dynamic, ?ub:Dynamic, ?ue:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?nest:Dynamic, ?per:Dynamic, ?quiet:Dynamic):Dynamic;
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
		    The order of the spline fit. It is recommended to use cubic splines.
		    Even order splines should be avoided especially with small s values.
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
	static public function splrep(x:Dynamic, y:Dynamic, ?w:Dynamic, ?xb:Dynamic, ?xe:Dynamic, ?k:Dynamic, ?task:Dynamic, ?s:Dynamic, ?t:Dynamic, ?full_output:Dynamic, ?per:Dynamic, ?quiet:Dynamic):Dynamic;
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
		Permute the dimensions of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : list of ints, optional
		    By default, reverse the dimensions, otherwise permute the axes
		    according to the values given.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		rollaxis
		argsort
		
		Notes
		-----
		Use `transpose(a, argsort(axes))` to invert the transposition of tensors
		when using the `axes` keyword argument.
		
		Transposing a 1-D array returns an unchanged view of the original array.
		
		Examples
		--------
		>>> x = np.arange(4).reshape((2,2))
		>>> x
		array([[0, 1],
		       [2, 3]])
		
		>>> np.transpose(x)
		array([[0, 2],
		       [1, 3]])
		
		>>> x = np.ones((1, 2, 3))
		>>> np.transpose(x, (1, 0, 2)).shape
		(2, 1, 3)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
}