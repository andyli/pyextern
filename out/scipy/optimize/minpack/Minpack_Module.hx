/* This file is generated, do not edit! */
package scipy.optimize.minpack;
@:pythonImport("scipy.optimize.minpack") extern class Minpack_Module {
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
	static public function _check_func(checker:Dynamic, argname:Dynamic, thefunc:Dynamic, x0:Dynamic, args:Dynamic, numinputs:Dynamic, ?output_shape:Dynamic):Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	static public function _del2(p0:Dynamic, p1:Dynamic, d:Dynamic):Dynamic;
	static public function _fixed_point_helper(func:Dynamic, x0:Dynamic, args:Dynamic, xtol:Dynamic, maxiter:Dynamic, use_accel:Dynamic):Dynamic;
	static public function _initialize_feasible(lb:Dynamic, ub:Dynamic):Dynamic;
	/**
		np.where(cond, x, fillvalue) always evaluates x even where cond is False.
		This one only evaluates f(arr1[cond], arr2[cond], ...).
		For example,
		>>> a, b = np.array([1, 2, 3, 4]), np.array([5, 6, 7, 8])
		>>> def f(a, b):
		    return a*b
		>>> _lazywhere(a > 2, (a, b), f, np.nan)
		array([ nan,  nan,  21.,  32.])
		
		Notice it assumes that all `arrays` are of the same shape, or can be
		broadcasted together.
	**/
	static public function _lazywhere(cond:Dynamic, arrays:Dynamic, f:Dynamic, ?fillvalue:Dynamic, ?f2:Dynamic):Dynamic;
	static public function _relerr(actual:Dynamic, desired:Dynamic):Dynamic;
	/**
		Find the roots of a multivariate function using MINPACK's hybrd and
		hybrj routines (modified Powell method).
		
		Options
		-------
		col_deriv : bool
		    Specify whether the Jacobian function computes derivatives down
		    the columns (faster, because there is no transpose operation).
		xtol : float
		    The calculation will terminate if the relative error between two
		    consecutive iterates is at most `xtol`.
		maxfev : int
		    The maximum number of calls to the function. If zero, then
		    ``100*(N+1)`` is the maximum where N is the number of elements
		    in `x0`.
		band : tuple
		    If set to a two-sequence containing the number of sub- and
		    super-diagonals within the band of the Jacobi matrix, the
		    Jacobi matrix is considered banded (only for ``fprime=None``).
		eps : float
		    A suitable step length for the forward-difference
		    approximation of the Jacobian (for ``fprime=None``). If
		    `eps` is less than the machine precision, it is assumed
		    that the relative errors in the functions are of the order of
		    the machine precision.
		factor : float
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``).  Should be in the interval
		    ``(0.1, 100)``.
		diag : sequence
		    N positive entries that serve as a scale factors for the
		    variables.
	**/
	static public function _root_hybr(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?maxfev:Dynamic, ?band:Dynamic, ?eps:Dynamic, ?factor:Dynamic, ?diag:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	static public function _wrap_func(func:Dynamic, xdata:Dynamic, ydata:Dynamic, weights:Dynamic):Dynamic;
	static public function _wrap_jac(jac:Dynamic, xdata:Dynamic, weights:Dynamic):Dynamic;
	/**
		absolute(x[, out])
		
		Calculate the absolute value element-wise.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		
		Examples
		--------
		>>> x = np.array([-1.2, 1.2])
		>>> np.absolute(x)
		array([ 1.2,  1.2])
		>>> np.absolute(1.2 + 1j)
		1.5620499351813308
		
		Plot the function over ``[-10, 10]``:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(start=-10, stop=10, num=101)
		>>> plt.plot(x, np.absolute(x))
		>>> plt.show()
		
		Plot the function over the complex plane:
		
		>>> xx = x + 1j * x[:, np.newaxis]
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10])
		>>> plt.show()
	**/
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Test whether all array elements along a given axis evaluate to True.
		
		Parameters
		----------
		a : array_like
		    Input array or object that can be converted to an array.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a logical AND reduction is performed.
		    The default (`axis` = `None`) is to perform a logical AND over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a reduction is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternate output array in which to place the result.
		    It must have the same shape as the expected output and its
		    type is preserved (e.g., if ``dtype(out)`` is float, the result
		    will consist of 0.0's and 1.0's).  See `doc.ufuncs` (Section
		    "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		all : ndarray, bool
		    A new boolean or array is returned unless `out` is specified,
		    in which case a reference to `out` is returned.
		
		See Also
		--------
		ndarray.all : equivalent method
		
		any : Test whether any element along a given axis evaluates to True.
		
		Notes
		-----
		Not a Number (NaN), positive infinity and negative infinity
		evaluate to `True` because these are not equal to zero.
		
		Examples
		--------
		>>> np.all([[True,False],[True,True]])
		False
		
		>>> np.all([[True,False],[True,True]], axis=0)
		array([ True, False], dtype=bool)
		
		>>> np.all([-1, 4, 5])
		True
		
		>>> np.all([1.0, np.nan])
		True
		
		>>> o=np.array([False])
		>>> z=np.all([-1, 4, 5], out=o)
		>>> id(z), id(o), z                             # doctest: +SKIP
		(28293632, 28293632, array([ True], dtype=bool))
	**/
	static public function all(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		Perform a simple check on the gradient for correctness.
		
		    
	**/
	static public function check_gradient(fcn:Dynamic, Dfcn:Dynamic, x0:Dynamic, ?args:Dynamic, ?col_deriv:Dynamic):Dynamic;
	/**
		Use non-linear least squares to fit a function, f, to data.
		
		Assumes ``ydata = f(xdata, *params) + eps``
		
		Parameters
		----------
		f : callable
		    The model function, f(x, ...).  It must take the independent
		    variable as the first argument and the parameters to fit as
		    separate remaining arguments.
		xdata : An M-length sequence or an (k,M)-shaped array
		    for functions with k predictors.
		    The independent variable where the data is measured.
		ydata : M-length sequence
		    The dependent data --- nominally f(xdata, ...)
		p0 : None, scalar, or N-length sequence, optional
		    Initial guess for the parameters.  If None, then the initial
		    values will all be 1 (if the number of parameters for the function
		    can be determined using introspection, otherwise a ValueError
		    is raised).
		sigma : None or M-length sequence, optional
		    If not None, the uncertainties in the ydata array. These are used as
		    weights in the least-squares problem
		    i.e. minimising ``np.sum( ((f(xdata, *popt) - ydata) / sigma)**2 )``
		    If None, the uncertainties are assumed to be 1.
		absolute_sigma : bool, optional
		    If False, `sigma` denotes relative weights of the data points.
		    The returned covariance matrix `pcov` is based on *estimated*
		    errors in the data, and is not affected by the overall
		    magnitude of the values in `sigma`. Only the relative
		    magnitudes of the `sigma` values matter.
		
		    If True, `sigma` describes one standard deviation errors of
		    the input data points. The estimated covariance in `pcov` is
		    based on these values.
		check_finite : bool, optional
		    If True, check that the input arrays do not contain nans of infs,
		    and raise a ValueError if they do. Setting this parameter to
		    False may silently produce nonsensical results if the input arrays
		    do contain nans. Default is True.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.        
		    Each element of the tuple must be either an array with the length equal
		    to the number of parameters, or a scalar (in which case the bound is
		    taken to be the same for all parameters.) Use ``np.inf`` with an
		    appropriate sign to disable bounds on all or some parameters.
		
		    .. versionadded:: 0.17
		method : {'lm', 'trf', 'dogbox'}, optional
		    Method to use for optimization.  See `least_squares` for more details.
		    Default is 'lm' for unconstrained problems and 'trf' if `bounds` are
		    provided. The method 'lm' won't work when the number of observations
		    is less than the number of variables, use 'trf' or 'dogbox' in this
		    case.
		
		    .. versionadded:: 0.17
		jac : callable, string or None, optional
		    Function with signature ``jac(x, ...)`` which computes the Jacobian
		    matrix of the model function with respect to parameters as a dense
		    array_like structure. It will be scaled according to provided `sigma`.
		    If None (default), the Jacobian will be estimated numerically.
		    String keywords for 'trf' and 'dogbox' methods can be used to select
		    a finite difference scheme, see `least_squares`.
		
		    .. versionadded:: 0.18
		kwargs
		    Keyword arguments passed to `leastsq` for ``method='lm'`` or
		    `least_squares` otherwise.
		
		Returns
		-------
		popt : array
		    Optimal values for the parameters so that the sum of the squared error
		    of ``f(xdata, *popt) - ydata`` is minimized
		pcov : 2d array
		    The estimated covariance of popt. The diagonals provide the variance
		    of the parameter estimate. To compute one standard deviation errors
		    on the parameters use ``perr = np.sqrt(np.diag(pcov))``.
		
		    How the `sigma` parameter affects the estimated covariance
		    depends on `absolute_sigma` argument, as described above.
		
		    If the Jacobian matrix at the solution doesn't have a full rank, then
		    'lm' method returns a matrix filled with ``np.inf``, on the other hand
		    'trf'  and 'dogbox' methods use Moore-Penrose pseudoinverse to compute
		    the covariance matrix.
		
		Raises
		------
		ValueError
		    if either `ydata` or `xdata` contain NaNs, or if incompatible options
		    are used.
		
		RuntimeError
		    if the least-squares minimization fails.
		
		OptimizeWarning
		    if covariance of the parameters can not be estimated.
		
		See Also
		--------
		least_squares : Minimize the sum of squares of nonlinear functions.
		stats.linregress : Calculate a linear least squares regression for two sets
		                   of measurements.
		
		Notes
		-----
		With ``method='lm'``, the algorithm uses the Levenberg-Marquardt algorithm
		through `leastsq`. Note that this algorithm can only deal with
		unconstrained problems.
		
		Box constraints can be handled by methods 'trf' and 'dogbox'. Refer to
		the docstring of `least_squares` for more information.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.optimize import curve_fit
		>>> def func(x, a, b, c):
		...     return a * np.exp(-b * x) + c
		
		>>> xdata = np.linspace(0, 4, 50)
		>>> y = func(xdata, 2.5, 1.3, 0.5)
		>>> ydata = y + 0.2 * np.random.normal(size=len(xdata))
		
		>>> popt, pcov = curve_fit(func, xdata, ydata)
		
		Constrain the optimization to the region of ``0 < a < 3``, ``0 < b < 2``
		and ``0 < c < 1``:
		
		>>> popt, pcov = curve_fit(func, xdata, ydata, bounds=(0, [3., 2., 1.]))
	**/
	static public function curve_fit(f:Dynamic, xdata:Dynamic, ydata:Dynamic, ?p0:Dynamic, ?sigma:Dynamic, ?absolute_sigma:Dynamic, ?check_finite:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?jac:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Array<Dynamic>;
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays.
		
		For 2-D arrays it is equivalent to matrix multiplication, and for 1-D
		arrays to inner product of vectors (without complex conjugation). For
		N dimensions it is a sum product over the last axis of `a` and
		the second-to-last of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		  Number of rows in the output.
		M : int, optional
		  Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		  Index of the diagonal: 0 (the default) refers to the main diagonal,
		  a positive value refers to an upper diagonal, and a negative value
		  to a lower diagonal.
		dtype : data-type, optional
		  Data-type of the returned array.
		
		Returns
		-------
		I : ndarray of shape (N,M)
		  An array where all elements are equal to zero, except for the `k`-th
		  diagonal, whose values are equal to one.
		
		See Also
		--------
		identity : (almost) equivalent function
		diag : diagonal 2-D array from a 1-D array specified by the user.
		
		Examples
		--------
		>>> np.eye(2, dtype=int)
		array([[1, 0],
		       [0, 1]])
		>>> np.eye(3, k=1)
		array([[ 0.,  1.,  0.],
		       [ 0.,  0.,  1.],
		       [ 0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Find a fixed point of the function.
		
		Given a function of one or more variables and a starting point, find a
		fixed-point of the function: i.e. where ``func(x0) == x0``.
		
		Parameters
		----------
		func : function
		    Function to evaluate.
		x0 : array_like
		    Fixed point of function.
		args : tuple, optional
		    Extra arguments to `func`.
		xtol : float, optional
		    Convergence tolerance, defaults to 1e-08.
		maxiter : int, optional
		    Maximum number of iterations, defaults to 500.
		method : {"del2", "iteration"}, optional
		    Method of finding the fixed-point, defaults to "del2"
		    which uses Steffensen's Method with Aitken's ``Del^2``
		    convergence acceleration [1]_. The "iteration" method simply iterates
		    the function until convergence is detected, without attempting to
		    accelerate the convergence.
		
		References
		----------
		.. [1] Burden, Faires, "Numerical Analysis", 5th edition, pg. 80
		
		Examples
		--------
		>>> from scipy import optimize
		>>> def func(x, c1, c2):
		...    return np.sqrt(c1/(x+c2))
		>>> c1 = np.array([10,12.])
		>>> c2 = np.array([3, 5.])
		>>> optimize.fixed_point(func, [1.2, 1.3], args=(c1,c2))
		array([ 1.4920333 ,  1.37228132])
	**/
	static public function fixed_point(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxiter:Dynamic, ?method:Dynamic):Dynamic;
	/**
		Find the roots of a function.
		
		Return the roots of the (non-linear) equations defined by
		``func(x) = 0`` given a starting estimate.
		
		Parameters
		----------
		func : callable ``f(x, *args)``
		    A function that takes at least one (possibly vector) argument.
		x0 : ndarray
		    The starting estimate for the roots of ``func(x) = 0``.
		args : tuple, optional
		    Any extra arguments to `func`.
		fprime : callable(x), optional
		    A function to compute the Jacobian of `func` with derivatives
		    across the rows. By default, the Jacobian will be estimated.
		full_output : bool, optional
		    If True, return optional outputs.
		col_deriv : bool, optional
		    Specify whether the Jacobian function computes derivatives down
		    the columns (faster, because there is no transpose operation).
		xtol : float, optional
		    The calculation will terminate if the relative error between two
		    consecutive iterates is at most `xtol`.
		maxfev : int, optional
		    The maximum number of calls to the function. If zero, then
		    ``100*(N+1)`` is the maximum where N is the number of elements
		    in `x0`.
		band : tuple, optional
		    If set to a two-sequence containing the number of sub- and
		    super-diagonals within the band of the Jacobi matrix, the
		    Jacobi matrix is considered banded (only for ``fprime=None``).
		epsfcn : float, optional
		    A suitable step length for the forward-difference
		    approximation of the Jacobian (for ``fprime=None``). If
		    `epsfcn` is less than the machine precision, it is assumed
		    that the relative errors in the functions are of the order of
		    the machine precision.
		factor : float, optional
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``).  Should be in the interval
		    ``(0.1, 100)``.
		diag : sequence, optional
		    N positive entries that serve as a scale factors for the
		    variables.
		
		Returns
		-------
		x : ndarray
		    The solution (or the result of the last iteration for
		    an unsuccessful call).
		infodict : dict
		    A dictionary of optional outputs with the keys:
		
		    ``nfev``
		        number of function calls
		    ``njev``
		        number of Jacobian calls
		    ``fvec``
		        function evaluated at the output
		    ``fjac``
		        the orthogonal matrix, q, produced by the QR
		        factorization of the final approximate Jacobian
		        matrix, stored column wise
		    ``r``
		        upper triangular matrix produced by QR factorization
		        of the same matrix
		    ``qtf``
		        the vector ``(transpose(q) * fvec)``
		
		ier : int
		    An integer flag.  Set to 1 if a solution was found, otherwise refer
		    to `mesg` for more information.
		mesg : str
		    If no solution is found, `mesg` details the cause of failure.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		functions. See the 'hybr' `method` in particular.
		
		Notes
		-----
		``fsolve`` is a wrapper around MINPACK's hybrd and hybrj algorithms.
	**/
	static public function fsolve(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?fprime:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?maxfev:Dynamic, ?band:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		greater(x1, x2[, out])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False], dtype=bool)
		
		If the inputs are ndarrays, then np.greater is equivalent to '>'.
		
		>>> a = np.array([4,2])
		>>> b = np.array([2,2])
		>>> a > b
		array([ True, False], dtype=bool)
	**/
	static public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
	/**
		Returns True if the type of `num` is a scalar type.
		
		Parameters
		----------
		num : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `num` is a scalar type, False if it is not.
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
	**/
	static public function isscalar(num:Dynamic):Bool;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    dtype or string representing a typecode.
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		issubsctype, issubclass_
		numpy.core.numerictypes : Overview of numpy type hierarchy.
		
		Examples
		--------
		>>> np.issubdtype('S1', str)
		True
		>>> np.issubdtype(np.float64, np.float32)
		False
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Solve a nonlinear least-squares problem with bounds on the variables.
		
		Given the residuals f(x) (an m-dimensional function of n variables) and
		the loss function rho(s) (a scalar function), `least_squares` finds a
		local minimum of the cost function F(x)::
		
		    minimize F(x) = 0.5 * sum(rho(f_i(x)**2), i = 0, ..., m - 1)
		    subject to lb <= x <= ub
		
		The purpose of the loss function rho(s) is to reduce the influence of
		outliers on the solution.
		
		Parameters
		----------
		fun : callable
		    Function which computes the vector of residuals, with the signature
		    ``fun(x, *args, **kwargs)``, i.e., the minimization proceeds with
		    respect to its first argument. The argument ``x`` passed to this
		    function is an ndarray of shape (n,) (never a scalar, even for n=1).
		    It must return a 1-d array_like of shape (m,) or a scalar.
		x0 : array_like with shape (n,) or float
		    Initial guess on independent variables. If float, it will be treated
		    as a 1-d array with one element.
		jac : {'2-point', '3-point', 'cs', callable}, optional
		    Method of computing the Jacobian matrix (an m-by-n matrix, where
		    element (i, j) is the partial derivative of f[i] with respect to
		    x[j]). The keywords select a finite difference scheme for numerical
		    estimation. The scheme '3-point' is more accurate, but requires
		    twice as much operations compared to '2-point' (default). The
		    scheme 'cs' uses complex steps, and while potentially the most
		    accurate, it is applicable only when `fun` correctly handles
		    complex inputs and can be analytically continued to the complex
		    plane. Method 'lm' always uses the '2-point' scheme. If callable,
		    it is used as ``jac(x, *args, **kwargs)`` and should return a
		    good approximation (or the exact value) for the Jacobian as an
		    array_like (np.atleast_2d is applied), a sparse matrix or a
		    `scipy.sparse.linalg.LinearOperator`.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on independent variables. Defaults to no bounds.
		    Each array must match the size of `x0` or be a scalar, in the latter
		    case a bound will be the same for all variables. Use ``np.inf`` with
		    an appropriate sign to disable bounds on all or some variables.
		method : {'trf', 'dogbox', 'lm'}, optional
		    Algorithm to perform minimization.
		
		        * 'trf' : Trust Region Reflective algorithm, particularly suitable
		          for large sparse problems with bounds. Generally robust method.
		        * 'dogbox' : dogleg algorithm with rectangular trust regions,
		          typical use case is small problems with bounds. Not recommended
		          for problems with rank-deficient Jacobian.
		        * 'lm' : Levenberg-Marquardt algorithm as implemented in MINPACK.
		          Doesn't handle bounds and sparse Jacobians. Usually the most
		          efficient method for small unconstrained problems.
		
		    Default is 'trf'. See Notes for more information.
		ftol : float, optional
		    Tolerance for termination by the change of the cost function. Default
		    is 1e-8. The optimization process is stopped when  ``dF < ftol * F``,
		    and there was an adequate agreement between a local quadratic model and
		    the true model in the last step.
		xtol : float, optional
		    Tolerance for termination by the change of the independent variables.
		    Default is 1e-8. The exact condition depends on the `method` used:
		
		        * For 'trf' and 'dogbox' : ``norm(dx) < xtol * (xtol + norm(x))``
		        * For 'lm' : ``Delta < xtol * norm(xs)``, where ``Delta`` is
		          a trust-region radius and ``xs`` is the value of ``x``
		          scaled according to `x_scale` parameter (see below).
		
		gtol : float, optional
		    Tolerance for termination by the norm of the gradient. Default is 1e-8.
		    The exact condition depends on a `method` used:
		
		        * For 'trf' : ``norm(g_scaled, ord=np.inf) < gtol``, where
		          ``g_scaled`` is the value of the gradient scaled to account for
		          the presence of the bounds [STIR]_.
		        * For 'dogbox' : ``norm(g_free, ord=np.inf) < gtol``, where
		          ``g_free`` is the gradient with respect to the variables which
		          are not in the optimal state on the boundary.
		        * For 'lm' : the maximum absolute value of the cosine of angles
		          between columns of the Jacobian and the residual vector is less
		          than `gtol`, or the residual vector is zero.
		
		x_scale : array_like or 'jac', optional
		    Characteristic scale of each variable. Setting `x_scale` is equivalent
		    to reformulating the problem in scaled variables ``xs = x / x_scale``.
		    An alternative view is that the size of a trust region along j-th
		    dimension is proportional to ``x_scale[j]``. Improved convergence may
		    be achieved by setting `x_scale` such that a step of a given size
		    along any of the scaled variables has a similar effect on the cost
		    function. If set to 'jac', the scale is iteratively updated using the
		    inverse norms of the columns of the Jacobian matrix (as described in
		    [JJMore]_).
		loss : str or callable, optional
		    Determines the loss function. The following keyword values are allowed:
		
		        * 'linear' (default) : ``rho(z) = z``. Gives a standard
		          least-squares problem.
		        * 'soft_l1' : ``rho(z) = 2 * ((1 + z)**0.5 - 1)``. The smooth
		          approximation of l1 (absolute value) loss. Usually a good
		          choice for robust least squares.
		        * 'huber' : ``rho(z) = z if z <= 1 else 2*z**0.5 - 1``. Works
		          similarly to 'soft_l1'.
		        * 'cauchy' : ``rho(z) = ln(1 + z)``. Severely weakens outliers
		          influence, but may cause difficulties in optimization process.
		        * 'arctan' : ``rho(z) = arctan(z)``. Limits a maximum loss on
		          a single residual, has properties similar to 'cauchy'.
		
		    If callable, it must take a 1-d ndarray ``z=f**2`` and return an
		    array_like with shape (3, m) where row 0 contains function values,
		    row 1 contains first derivatives and row 2 contains second
		    derivatives. Method 'lm' supports only 'linear' loss.
		f_scale : float, optional
		    Value of soft margin between inlier and outlier residuals, default
		    is 1.0. The loss function is evaluated as follows
		    ``rho_(f**2) = C**2 * rho(f**2 / C**2)``, where ``C`` is `f_scale`,
		    and ``rho`` is determined by `loss` parameter. This parameter has
		    no effect with ``loss='linear'``, but for other `loss` values it is
		    of crucial importance.
		max_nfev : None or int, optional
		    Maximum number of function evaluations before the termination.
		    If None (default), the value is chosen automatically:
		
		        * For 'trf' and 'dogbox' : 100 * n.
		        * For 'lm' :  100 * n if `jac` is callable and 100 * n * (n + 1)
		          otherwise (because 'lm' counts function calls in Jacobian
		          estimation).
		
		diff_step : None or array_like, optional
		    Determines the relative step size for the finite difference
		    approximation of the Jacobian. The actual step is computed as
		    ``x * diff_step``. If None (default), then `diff_step` is taken to be
		    a conventional "optimal" power of machine epsilon for the finite
		    difference scheme used [NR]_.
		tr_solver : {None, 'exact', 'lsmr'}, optional
		    Method for solving trust-region subproblems, relevant only for 'trf'
		    and 'dogbox' methods.
		
		        * 'exact' is suitable for not very large problems with dense
		          Jacobian matrices. The computational complexity per iteration is
		          comparable to a singular value decomposition of the Jacobian
		          matrix.
		        * 'lsmr' is suitable for problems with sparse and large Jacobian
		          matrices. It uses the iterative procedure
		          `scipy.sparse.linalg.lsmr` for finding a solution of a linear
		          least-squares problem and only requires matrix-vector product
		          evaluations.
		
		    If None (default) the solver is chosen based on the type of Jacobian
		    returned on the first iteration.
		tr_options : dict, optional
		    Keyword options passed to trust-region solver.
		
		        * ``tr_solver='exact'``: `tr_options` are ignored.
		        * ``tr_solver='lsmr'``: options for `scipy.sparse.linalg.lsmr`.
		          Additionally  ``method='trf'`` supports  'regularize' option
		          (bool, default is True) which adds a regularization term to the
		          normal equation, which improves convergence if the Jacobian is
		          rank-deficient [Byrd]_ (eq. 3.4).
		
		jac_sparsity : {None, array_like, sparse matrix}, optional
		    Defines the sparsity structure of the Jacobian matrix for finite
		    difference estimation, its shape must be (m, n). If the Jacobian has
		    only few non-zero elements in *each* row, providing the sparsity
		    structure will greatly speed up the computations [Curtis]_. A zero
		    entry means that a corresponding element in the Jacobian is identically
		    zero. If provided, forces the use of 'lsmr' trust-region solver.
		    If None (default) then dense differencing will be used. Has no effect
		    for 'lm' method.
		verbose : {0, 1, 2}, optional
		    Level of algorithm's verbosity:
		
		        * 0 (default) : work silently.
		        * 1 : display a termination report.
		        * 2 : display progress during iterations (not supported by 'lm'
		          method).
		
		args, kwargs : tuple and dict, optional
		    Additional arguments passed to `fun` and `jac`. Both empty by default.
		    The calling signature is ``fun(x, *args, **kwargs)`` and the same for
		    `jac`.
		
		Returns
		-------
		`OptimizeResult` with the following fields defined:
		x : ndarray, shape (n,)
		    Solution found.
		cost : float
		    Value of the cost function at the solution.
		fun : ndarray, shape (m,)
		    Vector of residuals at the solution.
		jac : ndarray, sparse matrix or LinearOperator, shape (m, n)
		    Modified Jacobian matrix at the solution, in the sense that J^T J
		    is a Gauss-Newton approximation of the Hessian of the cost function.
		    The type is the same as the one used by the algorithm.
		grad : ndarray, shape (m,)
		    Gradient of the cost function at the solution.
		optimality : float
		    First-order optimality measure. In unconstrained problems, it is always
		    the uniform norm of the gradient. In constrained problems, it is the
		    quantity which was compared with `gtol` during iterations.
		active_mask : ndarray of int, shape (n,)
		    Each component shows whether a corresponding constraint is active
		    (that is, whether a variable is at the bound):
		
		        *  0 : a constraint is not active.
		        * -1 : a lower bound is active.
		        *  1 : an upper bound is active.
		
		    Might be somewhat arbitrary for 'trf' method as it generates a sequence
		    of strictly feasible iterates and `active_mask` is determined within a
		    tolerance threshold.
		nfev : int
		    Number of function evaluations done. Methods 'trf' and 'dogbox' do not
		    count function calls for numerical Jacobian approximation, as opposed
		    to 'lm' method.
		njev : int or None
		    Number of Jacobian evaluations done. If numerical Jacobian
		    approximation is used in 'lm' method, it is set to None.
		status : int
		    The reason for algorithm termination:
		
		        * -1 : improper input parameters status returned from MINPACK.
		        *  0 : the maximum number of function evaluations is exceeded.
		        *  1 : `gtol` termination condition is satisfied.
		        *  2 : `ftol` termination condition is satisfied.
		        *  3 : `xtol` termination condition is satisfied.
		        *  4 : Both `ftol` and `xtol` termination conditions are satisfied.
		
		message : str
		    Verbal description of the termination reason.
		success : bool
		    True if one of the convergence criteria is satisfied (`status` > 0).
		
		See Also
		--------
		leastsq : A legacy wrapper for the MINPACK implementation of the
		          Levenberg-Marquadt algorithm.
		curve_fit : Least-squares minimization applied to a curve fitting problem.
		
		Notes
		-----
		Method 'lm' (Levenberg-Marquardt) calls a wrapper over least-squares
		algorithms implemented in MINPACK (lmder, lmdif). It runs the
		Levenberg-Marquardt algorithm formulated as a trust-region type algorithm.
		The implementation is based on paper [JJMore]_, it is very robust and
		efficient with a lot of smart tricks. It should be your first choice
		for unconstrained problems. Note that it doesn't support bounds. Also
		it doesn't work when m < n.
		
		Method 'trf' (Trust Region Reflective) is motivated by the process of
		solving a system of equations, which constitute the first-order optimality
		condition for a bound-constrained minimization problem as formulated in
		[STIR]_. The algorithm iteratively solves trust-region subproblems
		augmented by a special diagonal quadratic term and with trust-region shape
		determined by the distance from the bounds and the direction of the
		gradient. This enhancements help to avoid making steps directly into bounds
		and efficiently explore the whole space of variables. To further improve
		convergence, the algorithm considers search directions reflected from the
		bounds. To obey theoretical requirements, the algorithm keeps iterates
		strictly feasible. With dense Jacobians trust-region subproblems are
		solved by an exact method very similar to the one described in [JJMore]_
		(and implemented in MINPACK). The difference from the MINPACK
		implementation is that a singular value decomposition of a Jacobian
		matrix is done once per iteration, instead of a QR decomposition and series
		of Givens rotation eliminations. For large sparse Jacobians a 2-d subspace
		approach of solving trust-region subproblems is used [STIR]_, [Byrd]_.
		The subspace is spanned by a scaled gradient and an approximate
		Gauss-Newton solution delivered by `scipy.sparse.linalg.lsmr`. When no
		constraints are imposed the algorithm is very similar to MINPACK and has
		generally comparable performance. The algorithm works quite robust in
		unbounded and bounded problems, thus it is chosen as a default algorithm.
		
		Method 'dogbox' operates in a trust-region framework, but considers
		rectangular trust regions as opposed to conventional ellipsoids [Voglis]_.
		The intersection of a current trust region and initial bounds is again
		rectangular, so on each iteration a quadratic minimization problem subject
		to bound constraints is solved approximately by Powell's dogleg method
		[NumOpt]_. The required Gauss-Newton step can be computed exactly for
		dense Jacobians or approximately by `scipy.sparse.linalg.lsmr` for large
		sparse Jacobians. The algorithm is likely to exhibit slow convergence when
		the rank of Jacobian is less than the number of variables. The algorithm
		often outperforms 'trf' in bounded problems with a small number of
		variables.
		
		Robust loss functions are implemented as described in [BA]_. The idea
		is to modify a residual vector and a Jacobian matrix on each iteration
		such that computed gradient and Gauss-Newton Hessian approximation match
		the true gradient and Hessian approximation of the cost function. Then
		the algorithm proceeds in a normal way, i.e. robust loss functions are
		implemented as a simple wrapper over standard least-squares algorithms.
		
		.. versionadded:: 0.17.0
		
		References
		----------
		.. [STIR] M. A. Branch, T. F. Coleman, and Y. Li, "A Subspace, Interior,
		          and Conjugate Gradient Method for Large-Scale Bound-Constrained
		          Minimization Problems," SIAM Journal on Scientific Computing,
		          Vol. 21, Number 1, pp 1-23, 1999.
		.. [NR] William H. Press et. al., "Numerical Recipes. The Art of Scientific
		        Computing. 3rd edition", Sec. 5.7.
		.. [Byrd] R. H. Byrd, R. B. Schnabel and G. A. Shultz, "Approximate
		          solution of the trust region problem by minimization over
		          two-dimensional subspaces", Math. Programming, 40, pp. 247-263,
		          1988.
		.. [Curtis] A. Curtis, M. J. D. Powell, and J. Reid, "On the estimation of
		            sparse Jacobian matrices", Journal of the Institute of
		            Mathematics and its Applications, 13, pp. 117-120, 1974.
		.. [JJMore] J. J. More, "The Levenberg-Marquardt Algorithm: Implementation
		            and Theory," Numerical Analysis, ed. G. A. Watson, Lecture
		            Notes in Mathematics 630, Springer Verlag, pp. 105-116, 1977.
		.. [Voglis] C. Voglis and I. E. Lagaris, "A Rectangular Trust Region
		            Dogleg Approach for Unconstrained and Bound Constrained
		            Nonlinear Optimization", WSEAS International Conference on
		            Applied Mathematics, Corfu, Greece, 2004.
		.. [NumOpt] J. Nocedal and S. J. Wright, "Numerical optimization,
		            2nd edition", Chapter 4.
		.. [BA] B. Triggs et. al., "Bundle Adjustment - A Modern Synthesis",
		        Proceedings of the International Workshop on Vision Algorithms:
		        Theory and Practice, pp. 298-372, 1999.
		
		Examples
		--------
		In this example we find a minimum of the Rosenbrock function without bounds
		on independed variables.
		
		>>> def fun_rosenbrock(x):
		...     return np.array([10 * (x[1] - x[0]**2), (1 - x[0])])
		
		Notice that we only provide the vector of the residuals. The algorithm
		constructs the cost function as a sum of squares of the residuals, which
		gives the Rosenbrock function. The exact minimum is at ``x = [1.0, 1.0]``.
		
		>>> from scipy.optimize import least_squares
		>>> x0_rosenbrock = np.array([2, 2])
		>>> res_1 = least_squares(fun_rosenbrock, x0_rosenbrock)
		>>> res_1.x
		array([ 1.,  1.])
		>>> res_1.cost
		9.8669242910846867e-30
		>>> res_1.optimality
		8.8928864934219529e-14
		
		We now constrain the variables, in such a way that the previous solution
		becomes infeasible. Specifically, we require that ``x[1] >= 1.5``, and
		``x[0]`` left unconstrained. To this end, we specify the `bounds` parameter
		to `least_squares` in the form ``bounds=([-np.inf, 1.5], np.inf)``.
		
		We also provide the analytic Jacobian:
		
		>>> def jac_rosenbrock(x):
		...     return np.array([
		...         [-20 * x[0], 10],
		...         [-1, 0]])
		
		Putting this all together, we see that the new solution lies on the bound:
		
		>>> res_2 = least_squares(fun_rosenbrock, x0_rosenbrock, jac_rosenbrock,
		...                       bounds=([-np.inf, 1.5], np.inf))
		>>> res_2.x
		array([ 1.22437075,  1.5       ])
		>>> res_2.cost
		0.025213093946805685
		>>> res_2.optimality
		1.5885401433157753e-07
		
		Now we solve a system of equations (i.e., the cost function should be zero
		at a minimum) for a Broyden tridiagonal vector-valued function of 100000
		variables:
		
		>>> def fun_broyden(x):
		...     f = (3 - x) * x + 1
		...     f[1:] -= x[:-1]
		...     f[:-1] -= 2 * x[1:]
		...     return f
		
		The corresponding Jacobian matrix is sparse. We tell the algorithm to
		estimate it by finite differences and provide the sparsity structure of
		Jacobian to significantly speed up this process.
		
		>>> from scipy.sparse import lil_matrix
		>>> def sparsity_broyden(n):
		...     sparsity = lil_matrix((n, n), dtype=int)
		...     i = np.arange(n)
		...     sparsity[i, i] = 1
		...     i = np.arange(1, n)
		...     sparsity[i, i - 1] = 1
		...     i = np.arange(n - 1)
		...     sparsity[i, i + 1] = 1
		...     return sparsity
		...
		>>> n = 100000
		>>> x0_broyden = -np.ones(n)
		...
		>>> res_3 = least_squares(fun_broyden, x0_broyden,
		...                       jac_sparsity=sparsity_broyden(n))
		>>> res_3.cost
		4.5687069299604613e-23
		>>> res_3.optimality
		1.1650454296851518e-11
		
		Let's also solve a curve fitting problem using robust loss function to
		take care of outliers in the data. Define the model function as
		``y = a + b * exp(c * t)``, where t is a predictor variable, y is an
		observation and a, b, c are parameters to estimate.
		
		First, define the function which generates the data with noise and
		outliers, define the model parameters, and generate data:
		
		>>> def gen_data(t, a, b, c, noise=0, n_outliers=0, random_state=0):
		...     y = a + b * np.exp(t * c)
		...
		...     rnd = np.random.RandomState(random_state)
		...     error = noise * rnd.randn(t.size)
		...     outliers = rnd.randint(0, t.size, n_outliers)
		...     error[outliers] *= 10
		...
		...     return y + error
		...
		>>> a = 0.5
		>>> b = 2.0
		>>> c = -1
		>>> t_min = 0
		>>> t_max = 10
		>>> n_points = 15
		...
		>>> t_train = np.linspace(t_min, t_max, n_points)
		>>> y_train = gen_data(t_train, a, b, c, noise=0.1, n_outliers=3)
		
		Define function for computing residuals and initial estimate of
		parameters.
		
		>>> def fun(x, t, y):
		...     return x[0] + x[1] * np.exp(x[2] * t) - y
		...
		>>> x0 = np.array([1.0, 1.0, 0.0])
		
		Compute a standard least-squares solution:
		
		>>> res_lsq = least_squares(fun, x0, args=(t_train, y_train))
		
		Now compute two solutions with two different robust loss functions. The
		parameter `f_scale` is set to 0.1, meaning that inlier residuals should
		not significantly exceed 0.1 (the noise level used).
		
		>>> res_soft_l1 = least_squares(fun, x0, loss='soft_l1', f_scale=0.1,
		...                             args=(t_train, y_train))
		>>> res_log = least_squares(fun, x0, loss='cauchy', f_scale=0.1,
		...                         args=(t_train, y_train))
		
		And finally plot all the curves. We see that by selecting an appropriate
		`loss`  we can get estimates close to optimal even in the presence of
		strong outliers. But keep in mind that generally it is recommended to try
		'soft_l1' or 'huber' losses first (if at all necessary) as the other two
		options may cause difficulties in optimization process.
		
		>>> t_test = np.linspace(t_min, t_max, n_points * 10)
		>>> y_true = gen_data(t_test, a, b, c)
		>>> y_lsq = gen_data(t_test, *res_lsq.x)
		>>> y_soft_l1 = gen_data(t_test, *res_soft_l1.x)
		>>> y_log = gen_data(t_test, *res_log.x)
		...
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(t_train, y_train, 'o')
		>>> plt.plot(t_test, y_true, 'k', linewidth=2, label='true')
		>>> plt.plot(t_test, y_lsq, label='linear loss')
		>>> plt.plot(t_test, y_soft_l1, label='soft_l1 loss')
		>>> plt.plot(t_test, y_log, label='cauchy loss')
		>>> plt.xlabel("t")
		>>> plt.ylabel("y")
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function least_squares(fun:Dynamic, x0:Dynamic, ?jac:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?x_scale:Dynamic, ?loss:Dynamic, ?f_scale:Dynamic, ?diff_step:Dynamic, ?tr_solver:Dynamic, ?tr_options:Dynamic, ?jac_sparsity:Dynamic, ?max_nfev:Dynamic, ?verbose:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Float;
	/**
		Minimize the sum of squares of a set of equations.
		
		::
		
		    x = arg min(sum(func(y)**2,axis=0))
		             y
		
		Parameters
		----------
		func : callable
		    should take at least one (possibly length N vector) argument and
		    returns M floating point numbers. It must not return NaNs or
		    fitting might fail.
		x0 : ndarray
		    The starting estimate for the minimization.
		args : tuple, optional
		    Any extra arguments to func are placed in this tuple.
		Dfun : callable, optional
		    A function or method to compute the Jacobian of func with derivatives
		    across the rows. If this is None, the Jacobian will be estimated.
		full_output : bool, optional
		    non-zero to return all optional outputs.
		col_deriv : bool, optional
		    non-zero to specify that the Jacobian function computes derivatives
		    down the columns (faster, because there is no transpose operation).
		ftol : float, optional
		    Relative error desired in the sum of squares.
		xtol : float, optional
		    Relative error desired in the approximate solution.
		gtol : float, optional
		    Orthogonality desired between the function vector and the columns of
		    the Jacobian.
		maxfev : int, optional
		    The maximum number of calls to the function. If `Dfun` is provided
		    then the default `maxfev` is 100*(N+1) where N is the number of elements
		    in x0, otherwise the default `maxfev` is 200*(N+1).
		epsfcn : float, optional
		    A variable used in determining a suitable step length for the forward-
		    difference approximation of the Jacobian (for Dfun=None).
		    Normally the actual step length will be sqrt(epsfcn)*x
		    If epsfcn is less than the machine precision, it is assumed that the
		    relative errors are of the order of the machine precision.
		factor : float, optional
		    A parameter determining the initial step bound
		    (``factor * || diag * x||``). Should be in interval ``(0.1, 100)``.
		diag : sequence, optional
		    N positive entries that serve as a scale factors for the variables.
		
		Returns
		-------
		x : ndarray
		    The solution (or the result of the last iteration for an unsuccessful
		    call).
		cov_x : ndarray
		    Uses the fjac and ipvt optional outputs to construct an
		    estimate of the jacobian around the solution. None if a
		    singular matrix encountered (indicates very flat curvature in
		    some direction).  This matrix must be multiplied by the
		    residual variance to get the covariance of the
		    parameter estimates -- see curve_fit.
		infodict : dict
		    a dictionary of optional outputs with the key s:
		
		    ``nfev``
		        The number of function calls
		    ``fvec``
		        The function evaluated at the output
		    ``fjac``
		        A permutation of the R matrix of a QR
		        factorization of the final approximate
		        Jacobian matrix, stored column wise.
		        Together with ipvt, the covariance of the
		        estimate can be approximated.
		    ``ipvt``
		        An integer array of length N which defines
		        a permutation matrix, p, such that
		        fjac*p = q*r, where r is upper triangular
		        with diagonal elements of nonincreasing
		        magnitude. Column j of p is column ipvt(j)
		        of the identity matrix.
		    ``qtf``
		        The vector (transpose(q) * fvec).
		
		mesg : str
		    A string message giving information about the cause of failure.
		ier : int
		    An integer flag.  If it is equal to 1, 2, 3 or 4, the solution was
		    found.  Otherwise, the solution was not found. In either case, the
		    optional output variable 'mesg' gives more information.
		
		Notes
		-----
		"leastsq" is a wrapper around MINPACK's lmdif and lmder algorithms.
		
		cov_x is a Jacobian approximation to the Hessian of the least squares
		objective function.
		This approximation assumes that the objective function is based on the
		difference between some observed target data (ydata) and a (non-linear)
		function of the parameters `f(xdata, params)` ::
		
		       func(params) = ydata - f(xdata, params)
		
		so that the objective function is ::
		
		       min   sum((ydata - f(xdata, params))**2, axis=0)
		     params
	**/
	static public function leastsq(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?Dfun:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?maxfev:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		Shift a point to the interior of a feasible region.
		
		Each element of the returned vector is at least at a relative distance
		`rstep` from the closest bound. If ``rstep=0`` then `np.nextafter` is used.
	**/
	static public function make_strictly_feasible(x:Dynamic, lb:Dynamic, ub:Dynamic, ?rstep:Dynamic):Dynamic;
	static public function prepare_bounds(bounds:Dynamic, n:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix a into two unitary matrices U and Vh, and
		a 1-D array s of singular values (real, non-negative) such that
		``a == U*S*Vh``, where S is a suitably shaped matrix of zeros with
		main diagonal s.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True, `U` and `Vh` are of shape ``(M,M)``, ``(N,N)``.
		    If False, the shapes are ``(M,K)`` and ``(K,N)``, where
		    ``K = min(M,N)``.
		compute_uv : bool, optional
		    Whether to compute also `U` and `Vh` in addition to `s`.
		    Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : {'gesdd', 'gesvd'}, optional
		    Whether to use the more efficient divide-and-conquer approach
		    (``'gesdd'``) or general rectangular approach (``'gesvd'``)
		    to compute the SVD. MATLAB and Octave use the ``'gesvd'`` approach.
		    Default is ``'gesdd'``.
		
		    .. versionadded:: 0.18
		
		Returns
		-------
		U : ndarray
		    Unitary matrix having left singular vectors as columns.
		    Of shape ``(M,M)`` or ``(M,K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N,N)`` or ``(K,N)`` depending on `full_matrices`.
		
		For ``compute_uv=False``, only `s` is returned.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		See also
		--------
		svdvals : Compute singular values of a matrix.
		diagsvd : Construct the Sigma matrix, given the vector s.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6) + 1.j*np.random.randn(9, 6)
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape, Vh.shape, s.shape
		((9, 9), (6, 6), (6,))
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, Vh.shape, s.shape
		((9, 6), (6, 6), (6,))
		>>> S = linalg.diagsvd(s, 6, 6)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Take elements from an array along an axis.
		
		This function does the same thing as "fancy" indexing (indexing arrays
		using arrays); however, it can be easier to use if you need elements
		along a given axis.
		
		Parameters
		----------
		a : array_like
		    The source array.
		indices : array_like
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		subarray : ndarray
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
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
		moveaxis
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
		Upper triangle of an array.
		
		Return a copy of a matrix with the elements below the `k`-th diagonal
		zeroed.
		
		Please refer to the documentation for `tril` for further details.
		
		See Also
		--------
		tril : lower triangle of an array
		
		Examples
		--------
		>>> np.triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
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