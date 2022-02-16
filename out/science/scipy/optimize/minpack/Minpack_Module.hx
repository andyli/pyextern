/* This file is generated, do not edit! */
package scipy.optimize.minpack;
@:pythonImport("scipy.optimize.minpack") extern class Minpack_Module {
	static public var LEASTSQ_FAILURE : Dynamic;
	static public var LEASTSQ_SUCCESS : Dynamic;
	/**
		asarray(a, dtype=None, order=None, *, like=None)
		
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F', 'A', 'K'}, optional
		    Memory layout.  'A' and 'K' depend on the order of input array a.
		    'C' row-major (C-style),
		    'F' column-major (Fortran-style) memory representation.
		    'A' (any) means 'F' if `a` is Fortran contiguous, 'C' otherwise
		    'K' (keep) preserve input order
		    Defaults to 'K'.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
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
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[0., 1., 2.],
		       [3., 4., 5.],
		       [6., 7., 8.]])
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
		Compute the Cholesky decomposition of a matrix.
		
		Returns the Cholesky decomposition, :math:`A = L L^*` or
		:math:`A = U^* U` of a Hermitian positive-definite matrix A.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper- or lower-triangular Cholesky
		    factorization.  Default is upper-triangular.
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Upper- or lower-triangular Cholesky factor of `a`.
		
		Raises
		------
		LinAlgError : if decomposition fails.
		
		Examples
		--------
		>>> from scipy.linalg import cholesky
		>>> a = np.array([[1,-2j],[2j,5]])
		>>> L = cholesky(a, lower=True)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> L @ L.T.conj()
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
	**/
	static public function cholesky(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Use non-linear least squares to fit a function, f, to data.
		
		Assumes ``ydata = f(xdata, *params) + eps``.
		
		Parameters
		----------
		f : callable
		    The model function, f(x, ...). It must take the independent
		    variable as the first argument and the parameters to fit as
		    separate remaining arguments.
		xdata : array_like or object
		    The independent variable where the data is measured.
		    Should usually be an M-length sequence or an (k,M)-shaped array for
		    functions with k predictors, but can actually be any object.
		ydata : array_like
		    The dependent data, a length M array - nominally ``f(xdata, ...)``.
		p0 : array_like, optional
		    Initial guess for the parameters (length N). If None, then the
		    initial values will all be 1 (if the number of parameters for the
		    function can be determined using introspection, otherwise a
		    ValueError is raised).
		sigma : None or M-length sequence or MxM array, optional
		    Determines the uncertainty in `ydata`. If we define residuals as
		    ``r = ydata - f(xdata, *popt)``, then the interpretation of `sigma`
		    depends on its number of dimensions:
		
		        - A 1-D `sigma` should contain values of standard deviations of
		          errors in `ydata`. In this case, the optimized function is
		          ``chisq = sum((r / sigma) ** 2)``.
		
		        - A 2-D `sigma` should contain the covariance matrix of
		          errors in `ydata`. In this case, the optimized function is
		          ``chisq = r.T @ inv(sigma) @ r``.
		
		          .. versionadded:: 0.19
		
		    None (default) is equivalent of 1-D `sigma` filled with ones.
		absolute_sigma : bool, optional
		    If True, `sigma` is used in an absolute sense and the estimated parameter
		    covariance `pcov` reflects these absolute values.
		
		    If False (default), only the relative magnitudes of the `sigma` values matter.
		    The returned parameter covariance matrix `pcov` is based on scaling
		    `sigma` by a constant factor. This constant is set by demanding that the
		    reduced `chisq` for the optimal parameters `popt` when using the
		    *scaled* `sigma` equals unity. In other words, `sigma` is scaled to
		    match the sample variance of the residuals after the fit. Default is False.
		    Mathematically,
		    ``pcov(absolute_sigma=False) = pcov(absolute_sigma=True) * chisq(popt)/(M-N)``
		check_finite : bool, optional
		    If True, check that the input arrays do not contain nans of infs,
		    and raise a ValueError if they do. Setting this parameter to
		    False may silently produce nonsensical results if the input arrays
		    do contain nans. Default is True.
		bounds : 2-tuple of array_like, optional
		    Lower and upper bounds on parameters. Defaults to no bounds.
		    Each element of the tuple must be either an array with the length equal
		    to the number of parameters, or a scalar (in which case the bound is
		    taken to be the same for all parameters). Use ``np.inf`` with an
		    appropriate sign to disable bounds on all or some parameters.
		
		    .. versionadded:: 0.17
		method : {'lm', 'trf', 'dogbox'}, optional
		    Method to use for optimization. See `least_squares` for more details.
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
		    Optimal values for the parameters so that the sum of the squared
		    residuals of ``f(xdata, *popt) - ydata`` is minimized.
		pcov : 2-D array
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
		scipy.stats.linregress : Calculate a linear least squares regression for
		                         two sets of measurements.
		
		Notes
		-----
		With ``method='lm'``, the algorithm uses the Levenberg-Marquardt algorithm
		through `leastsq`. Note that this algorithm can only deal with
		unconstrained problems.
		
		Box constraints can be handled by methods 'trf' and 'dogbox'. Refer to
		the docstring of `least_squares` for more information.
		
		Examples
		--------
		>>> import matplotlib.pyplot as plt
		>>> from scipy.optimize import curve_fit
		
		>>> def func(x, a, b, c):
		...     return a * np.exp(-b * x) + c
		
		Define the data to be fit with some noise:
		
		>>> xdata = np.linspace(0, 4, 50)
		>>> y = func(xdata, 2.5, 1.3, 0.5)
		>>> rng = np.random.default_rng()
		>>> y_noise = 0.2 * rng.normal(size=xdata.size)
		>>> ydata = y + y_noise
		>>> plt.plot(xdata, ydata, 'b-', label='data')
		
		Fit for the parameters a, b, c of the function `func`:
		
		>>> popt, pcov = curve_fit(func, xdata, ydata)
		>>> popt
		array([2.56274217, 1.37268521, 0.47427475])
		>>> plt.plot(xdata, func(xdata, *popt), 'r-',
		...          label='fit: a=%5.3f, b=%5.3f, c=%5.3f' % tuple(popt))
		
		Constrain the optimization to the region of ``0 <= a <= 3``,
		``0 <= b <= 1`` and ``0 <= c <= 0.5``:
		
		>>> popt, pcov = curve_fit(func, xdata, ydata, bounds=(0, [3., 1., 0.5]))
		>>> popt
		array([2.43736712, 1.        , 0.34463856])
		>>> plt.plot(xdata, func(xdata, *popt), 'g--',
		...          label='fit: a=%5.3f, b=%5.3f, c=%5.3f' % tuple(popt))
		
		>>> plt.xlabel('x')
		>>> plt.ylabel('y')
		>>> plt.legend()
		>>> plt.show()
	**/
	static public function curve_fit(f:Dynamic, xdata:Dynamic, ydata:Dynamic, ?p0:Dynamic, ?sigma:Dynamic, ?absolute_sigma:Dynamic, ?check_finite:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?jac:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Array<Dynamic>;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays. Specifically,
		
		- If both `a` and `b` are 1-D arrays, it is inner product of vectors
		  (without complex conjugation).
		
		- If both `a` and `b` are 2-D arrays, it is matrix multiplication,
		  but using :func:`matmul` or ``a @ b`` is preferred.
		
		- If either `a` or `b` is 0-D (scalar), it is equivalent to :func:`multiply`
		  and using ``numpy.multiply(a, b)`` or ``a * b`` is preferred.
		
		- If `a` is an N-D array and `b` is a 1-D array, it is a sum product over
		  the last axis of `a` and `b`.
		
		- If `a` is an N-D array and `b` is an M-D array (where ``M>=2``), it is a
		  sum product over the last axis of `a` and the second-to-last axis of `b`::
		
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
		linalg.multi_dot : Chained dot product.
		
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
		order : {'C', 'F'}, optional
		    Whether the output should be stored in row-major (C-style) or
		    column-major (Fortran-style) order in memory.
		
		    .. versionadded:: 1.14.0
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
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
		array([[0.,  1.,  0.],
		       [0.,  0.,  1.],
		       [0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):Dynamic;
	/**
		Find a fixed point of the function.
		
		Given a function of one or more variables and a starting point, find a
		fixed point of the function: i.e., where ``func(x0) == x0``.
		
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
		    Method of finding the fixed-point, defaults to "del2",
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
		    A function that takes at least one (possibly vector) argument,
		    and returns a value of the same length.
		x0 : ndarray
		    The starting estimate for the roots of ``func(x) = 0``.
		args : tuple, optional
		    Any extra arguments to `func`.
		fprime : callable ``f(x, *args)``, optional
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
		    (``factor * || diag * x||``). Should be in the interval
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
		       functions. See the ``method=='hybr'`` in particular.
		
		Notes
		-----
		``fsolve`` is a wrapper around MINPACK's hybrd and hybrj algorithms.
		
		Examples
		--------
		Find a solution to the system of equations:
		``x0*cos(x1) = 4,  x1*x0 - x1 = 5``.
		
		>>> from scipy.optimize import fsolve
		>>> def func(x):
		...     return [x[0] * np.cos(x[1]) - 4,
		...             x[1] * x[0] - x[1] - 5]
		>>> root = fsolve(func, [1, 1])
		>>> root
		array([6.50409711, 0.90841421])
		>>> np.isclose(func(root), [0.0, 0.0])  # func(root) should be almost 0.0.
		array([ True,  True])
	**/
	static public function fsolve(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?fprime:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?xtol:Dynamic, ?maxfev:Dynamic, ?band:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	/**
		greater(x1, x2, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the truth value of (x1 > x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.
		    If ``x1.shape != x2.shape``, they must be broadcastable to a common
		    shape (which becomes the shape of the output).
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
		    Output array, element-wise comparison of `x1` and `x2`.
		    Typically of type bool, unless ``dtype=object`` is passed.
		    This is a scalar if both `x1` and `x2` are scalars.
		
		
		See Also
		--------
		greater_equal, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater([4,2],[2,2])
		array([ True, False])
		
		The ``>`` operator can be used as a shorthand for ``np.greater`` on
		ndarrays.
		
		>>> a = np.array([4, 2])
		>>> b = np.array([2, 2])
		>>> a > b
		array([ True, False])
	**/
	static public function greater(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var inf : Dynamic;
	/**
		Compute the inverse of a matrix.
		
		Parameters
		----------
		a : array_like
		    Square matrix to be inverted.
		overwrite_a : bool, optional
		    Discard data in `a` (may improve performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		ainv : ndarray
		    Inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		ValueError
		    If `a` is not square, or not 2D.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> linalg.inv(a)
		array([[-2. ,  1. ],
		       [ 1.5, -0.5]])
		>>> np.dot(a, linalg.inv(a))
		array([[ 1.,  0.],
		       [ 0.,  1.]])
	**/
	static public function inv(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Returns True if first argument is a typecode lower/equal in type hierarchy.
		
		This is like the builtin :func:`issubclass`, but for `dtype`\ s.
		
		Parameters
		----------
		arg1, arg2 : dtype_like
		    `dtype` or object coercible to one
		
		Returns
		-------
		out : bool
		
		See Also
		--------
		:ref:`arrays.scalars` : Overview of the numpy type hierarchy.
		issubsctype, issubclass_
		
		Examples
		--------
		`issubdtype` can be used to check the type of arrays:
		
		>>> ints = np.array([1, 2, 3], dtype=np.int32)
		>>> np.issubdtype(ints.dtype, np.integer)
		True
		>>> np.issubdtype(ints.dtype, np.floating)
		False
		
		>>> floats = np.array([1, 2, 3], dtype=np.float32)
		>>> np.issubdtype(floats.dtype, np.integer)
		False
		>>> np.issubdtype(floats.dtype, np.floating)
		True
		
		Similar types of different sizes are not subdtypes of each other:
		
		>>> np.issubdtype(np.float64, np.float32)
		False
		>>> np.issubdtype(np.float32, np.float64)
		False
		
		but both are subtypes of `floating`:
		
		>>> np.issubdtype(np.float64, np.floating)
		True
		>>> np.issubdtype(np.float32, np.floating)
		True
		
		For convenience, dtype-like objects are allowed too:
		
		>>> np.issubdtype('S1', np.string_)
		True
		>>> np.issubdtype('i4', np.signedinteger)
		True
	**/
	static public function issubdtype(arg1:Dynamic, arg2:Dynamic):Bool;
	/**
		Solve a nonlinear least-squares problem with bounds on the variables.
		
		Given the residuals f(x) (an m-D real function of n real
		variables) and the loss function rho(s) (a scalar function), `least_squares`
		finds a local minimum of the cost function F(x)::
		
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
		    It must allocate and return a 1-D array_like of shape (m,) or a scalar.
		    If the argument ``x`` is complex or the function ``fun`` returns
		    complex residuals, it must be wrapped in a real function of real
		    arguments, as shown at the end of the Examples section.
		x0 : array_like with shape (n,) or float
		    Initial guess on independent variables. If float, it will be treated
		    as a 1-D array with one element.
		jac : {'2-point', '3-point', 'cs', callable}, optional
		    Method of computing the Jacobian matrix (an m-by-n matrix, where
		    element (i, j) is the partial derivative of f[i] with respect to
		    x[j]). The keywords select a finite difference scheme for numerical
		    estimation. The scheme '3-point' is more accurate, but requires
		    twice as many operations as '2-point' (default). The scheme 'cs'
		    uses complex steps, and while potentially the most accurate, it is
		    applicable only when `fun` correctly handles complex inputs and
		    can be analytically continued to the complex plane. Method 'lm'
		    always uses the '2-point' scheme. If callable, it is used as
		    ``jac(x, *args, **kwargs)`` and should return a good approximation
		    (or the exact value) for the Jacobian as an array_like (np.atleast_2d
		    is applied), a sparse matrix (csr_matrix preferred for performance) or
		    a `scipy.sparse.linalg.LinearOperator`.
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
		ftol : float or None, optional
		    Tolerance for termination by the change of the cost function. Default
		    is 1e-8. The optimization process is stopped when ``dF < ftol * F``,
		    and there was an adequate agreement between a local quadratic model and
		    the true model in the last step.
		
		    If None and 'method' is not 'lm', the termination by this condition is
		    disabled. If 'method' is 'lm', this tolerance must be higher than
		    machine epsilon.
		xtol : float or None, optional
		    Tolerance for termination by the change of the independent variables.
		    Default is 1e-8. The exact condition depends on the `method` used:
		
		        * For 'trf' and 'dogbox' : ``norm(dx) < xtol * (xtol + norm(x))``.
		        * For 'lm' : ``Delta < xtol * norm(xs)``, where ``Delta`` is
		          a trust-region radius and ``xs`` is the value of ``x``
		          scaled according to `x_scale` parameter (see below).
		
		    If None and 'method' is not 'lm', the termination by this condition is
		    disabled. If 'method' is 'lm', this tolerance must be higher than
		    machine epsilon.
		gtol : float or None, optional
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
		
		    If None and 'method' is not 'lm', the termination by this condition is
		    disabled. If 'method' is 'lm', this tolerance must be higher than
		    machine epsilon.
		x_scale : array_like or 'jac', optional
		    Characteristic scale of each variable. Setting `x_scale` is equivalent
		    to reformulating the problem in scaled variables ``xs = x / x_scale``.
		    An alternative view is that the size of a trust region along jth
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
		
		    If callable, it must take a 1-D ndarray ``z=f**2`` and return an
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
		
		    If None (default), the solver is chosen based on the type of Jacobian
		    returned on the first iteration.
		tr_options : dict, optional
		    Keyword options passed to trust-region solver.
		
		        * ``tr_solver='exact'``: `tr_options` are ignored.
		        * ``tr_solver='lsmr'``: options for `scipy.sparse.linalg.lsmr`.
		          Additionally,  ``method='trf'`` supports  'regularize' option
		          (bool, default is True), which adds a regularization term to the
		          normal equation, which improves convergence if the Jacobian is
		          rank-deficient [Byrd]_ (eq. 3.4).
		
		jac_sparsity : {None, array_like, sparse matrix}, optional
		    Defines the sparsity structure of the Jacobian matrix for finite
		    difference estimation, its shape must be (m, n). If the Jacobian has
		    only few non-zero elements in *each* row, providing the sparsity
		    structure will greatly speed up the computations [Curtis]_. A zero
		    entry means that a corresponding element in the Jacobian is identically
		    zero. If provided, forces the use of 'lsmr' trust-region solver.
		    If None (default), then dense differencing will be used. Has no effect
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
		result : OptimizeResult
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
		            First-order optimality measure. In unconstrained problems, it is
		            always the uniform norm of the gradient. In constrained problems,
		            it is the quantity which was compared with `gtol` during iterations.
		        active_mask : ndarray of int, shape (n,)
		            Each component shows whether a corresponding constraint is active
		            (that is, whether a variable is at the bound):
		
		                *  0 : a constraint is not active.
		                * -1 : a lower bound is active.
		                *  1 : an upper bound is active.
		
		            Might be somewhat arbitrary for 'trf' method as it generates a
		            sequence of strictly feasible iterates and `active_mask` is
		            determined within a tolerance threshold.
		        nfev : int
		            Number of function evaluations done. Methods 'trf' and 'dogbox' do
		            not count function calls for numerical Jacobian approximation, as
		            opposed to 'lm' method.
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
		curve_fit : Least-squares minimization applied to a curve-fitting problem.
		
		Notes
		-----
		Method 'lm' (Levenberg-Marquardt) calls a wrapper over least-squares
		algorithms implemented in MINPACK (lmder, lmdif). It runs the
		Levenberg-Marquardt algorithm formulated as a trust-region type algorithm.
		The implementation is based on paper [JJMore]_, it is very robust and
		efficient with a lot of smart tricks. It should be your first choice
		for unconstrained problems. Note that it doesn't support bounds. Also,
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
		of Givens rotation eliminations. For large sparse Jacobians a 2-D subspace
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
		the algorithm proceeds in a normal way, i.e., robust loss functions are
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
		on independent variables.
		
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
		
		>>> from numpy.random import default_rng
		>>> rng = default_rng()
		>>> def gen_data(t, a, b, c, noise=0., n_outliers=0, seed=None):
		...     rng = default_rng(seed)
		...
		...     y = a + b * np.exp(t * c)
		...
		...     error = noise * rng.standard_normal(t.size)
		...     outliers = rng.integers(0, t.size, n_outliers)
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
		
		And, finally, plot all the curves. We see that by selecting an appropriate
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
		
		In the next example, we show how complex-valued residual functions of
		complex variables can be optimized with ``least_squares()``. Consider the
		following function:
		
		>>> def f(z):
		...     return z - (0.5 + 0.5j)
		
		We wrap it into a function of real variables that returns real residuals
		by simply handling the real and imaginary parts as independent variables:
		
		>>> def f_wrap(x):
		...     fx = f(x[0] + 1j*x[1])
		...     return np.array([fx.real, fx.imag])
		
		Thus, instead of the original m-D complex function of n complex
		variables we optimize a 2m-D real function of 2n real variables:
		
		>>> from scipy.optimize import least_squares
		>>> res_wrapped = least_squares(f_wrap, (0.1, 0.1), bounds=([0, 0], [1, 1]))
		>>> z = res_wrapped.x[0] + res_wrapped.x[1]*1j
		>>> z
		(0.49999999999925893+0.49999999999925893j)
	**/
	static public function least_squares(fun:Dynamic, x0:Dynamic, ?jac:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?x_scale:Dynamic, ?loss:Dynamic, ?f_scale:Dynamic, ?diff_step:Dynamic, ?tr_solver:Dynamic, ?tr_options:Dynamic, ?jac_sparsity:Dynamic, ?max_nfev:Dynamic, ?verbose:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Minimize the sum of squares of a set of equations.
		
		::
		
		    x = arg min(sum(func(y)**2,axis=0))
		             y
		
		Parameters
		----------
		func : callable
		    Should take at least one (possibly length ``N`` vector) argument and
		    returns ``M`` floating point numbers. It must not return NaNs or
		    fitting might fail. ``M`` must be greater than or equal to ``N``.
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
		    The maximum number of calls to the function. If `Dfun` is provided,
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
		    The inverse of the Hessian. `fjac` and `ipvt` are used to construct an
		    estimate of the Hessian. A value of None indicates a singular matrix,
		    which means the curvature in parameters `x` is numerically flat. To
		    obtain the covariance matrix of the parameters `x`, `cov_x` must be
		    multiplied by the variance of the residuals -- see curve_fit.
		infodict : dict
		    a dictionary of optional outputs with the keys:
		
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
		    An integer flag. If it is equal to 1, 2, 3 or 4, the solution was
		    found. Otherwise, the solution was not found. In either case, the
		    optional output variable 'mesg' gives more information.
		
		See Also
		--------
		least_squares : Newer interface to solve nonlinear least-squares problems
		    with bounds on the variables. See ``method=='lm'`` in particular.
		
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
		
		The solution, `x`, is always a 1-D array, regardless of the shape of `x0`,
		or whether `x0` is a scalar.
		
		Examples
		--------
		>>> from scipy.optimize import leastsq
		>>> def func(x):
		...     return 2*(x-3)**2+1
		>>> leastsq(func, 0)
		(array([2.99999999]), 1)
	**/
	static public function leastsq(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?Dfun:Dynamic, ?full_output:Dynamic, ?col_deriv:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?maxfev:Dynamic, ?epsfcn:Dynamic, ?factor:Dynamic, ?diag:Dynamic):Dynamic;
	static public function prepare_bounds(bounds:Dynamic, n:Dynamic):Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.  The default,
		    axis=None, will calculate the product of all the elements in the
		    input array. If axis is negative it counts from the last to the
		    first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a product is performed on all of the
		    axes specified in the tuple instead of a single axis or all the
		    axes as before.
		dtype : dtype, optional
		    The type of the returned array, as well as of the accumulator in
		    which the elements are multiplied.  The dtype of `a` is used by
		    default unless `a` has an integer dtype of less precision than the
		    default platform integer.  In that case, if `a` is signed then the
		    platform integer is used while if `a` is unsigned then an unsigned
		    integer of the same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `prod` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to include in the product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.17.0
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x)
		16 # may vary
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		Or select specific elements to include:
		
		>>> np.prod([1., np.nan, 3.], where=[True, False, True])
		3.0
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == int
		True
		
		You can also start the product with a value other than one:
		
		>>> np.prod([1, 2], initial=5)
		10
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
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
		len
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
		Solve the equation `a x = b` for `x`, assuming a is a triangular matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A triangular matrix
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in `a x = b`
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`.
		    Default is to use upper triangle.
		trans : {0, 1, 2, 'N', 'T', 'C'}, optional
		    Type of system to solve:
		
		    ========  =========
		    trans     system
		    ========  =========
		    0 or 'N'  a x  = b
		    1 or 'T'  a^T x = b
		    2 or 'C'  a^H x = b
		    ========  =========
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and
		    will not be referenced.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system `a x = b`.  Shape of return matches `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular
		
		Notes
		-----
		.. versionadded:: 0.9.0
		
		Examples
		--------
		Solve the lower triangular system a x = b, where::
		
		         [3  0  0  0]       [4]
		    a =  [2  1  0  0]   b = [2]
		         [1  0  1  0]       [4]
		         [1  1  1  1]       [2]
		
		>>> from scipy.linalg import solve_triangular
		>>> a = np.array([[3, 0, 0, 0], [2, 1, 0, 0], [1, 0, 1, 0], [1, 1, 1, 1]])
		>>> b = np.array([4, 2, 4, 2])
		>>> x = solve_triangular(a, b, lower=True)
		>>> x
		array([ 1.33333333, -0.66666667,  2.66666667, -1.33333333])
		>>> a.dot(x)  # Check the result
		array([ 4.,  2.,  4.,  2.])
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Singular Value Decomposition.
		
		Factorizes the matrix `a` into two unitary matrices ``U`` and ``Vh``, and
		a 1-D array ``s`` of singular values (real, non-negative) such that
		``a == U @ S @ Vh``, where ``S`` is a suitably shaped matrix of zeros with
		main diagonal ``s``.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to decompose.
		full_matrices : bool, optional
		    If True (default), `U` and `Vh` are of shape ``(M, M)``, ``(N, N)``.
		    If False, the shapes are ``(M, K)`` and ``(K, N)``, where
		    ``K = min(M, N)``.
		compute_uv : bool, optional
		    Whether to compute also ``U`` and ``Vh`` in addition to ``s``.
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
		    Of shape ``(M, M)`` or ``(M, K)``, depending on `full_matrices`.
		s : ndarray
		    The singular values, sorted in non-increasing order.
		    Of shape (K,), with ``K = min(M, N)``.
		Vh : ndarray
		    Unitary matrix having right singular vectors as rows.
		    Of shape ``(N, N)`` or ``(K, N)`` depending on `full_matrices`.
		
		For ``compute_uv=False``, only ``s`` is returned.
		
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
		>>> from numpy.random import default_rng
		>>> rng = default_rng()
		>>> m, n = 9, 6
		>>> a = rng.standard_normal((m, n)) + 1.j*rng.standard_normal((m, n))
		>>> U, s, Vh = linalg.svd(a)
		>>> U.shape,  s.shape, Vh.shape
		((9, 9), (6,), (6, 6))
		
		Reconstruct the original matrix from the decomposition:
		
		>>> sigma = np.zeros((m, n))
		>>> for i in range(min(m, n)):
		...     sigma[i, i] = s[i]
		>>> a1 = np.dot(U, np.dot(sigma, Vh))
		>>> np.allclose(a, a1)
		True
		
		Alternatively, use ``full_matrices=False`` (notice that the shape of
		``U`` is then ``(m, n)`` instead of ``(m, m)``):
		
		>>> U, s, Vh = linalg.svd(a, full_matrices=False)
		>>> U.shape, s.shape, Vh.shape
		((9, 6), (6,), (6, 6))
		>>> S = np.diag(s)
		>>> np.allclose(a, np.dot(U, np.dot(S, Vh)))
		True
		
		>>> s2 = linalg.svd(a, compute_uv=False)
		>>> np.allclose(s, s2)
		True
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Take elements from an array along an axis.
		
		When axis is not None, this function does the same thing as "fancy"
		indexing (indexing arrays using arrays); however, it can be easier to use
		if you need elements along a given axis. A call such as
		``np.take(arr, indices, axis=3)`` is equivalent to
		``arr[:,:,:,indices,...]``.
		
		Explained without fancy indexing, this is equivalent to the following use
		of `ndindex`, which sets each of ``ii``, ``jj``, and ``kk`` to a tuple of
		indices::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    Nj = indices.shape
		    for ii in ndindex(Ni):
		        for jj in ndindex(Nj):
		            for kk in ndindex(Nk):
		                out[ii + jj + kk] = a[ii + (indices[jj],) + kk]
		
		Parameters
		----------
		a : array_like (Ni..., M, Nk...)
		    The source array.
		indices : array_like (Nj...)
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional (Ni..., Nj..., Nk...)
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype. Note that `out` is always
		    buffered if `mode='raise'`; use other modes for better performance.
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
		out : ndarray (Ni..., Nj..., Nk...)
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		take_along_axis : Take elements by matching the array and the index arrays
		
		Notes
		-----
		
		By eliminating the inner loop in the description above, and using `s_` to
		build simple slice objects, `take` can be expressed  in terms of applying
		fancy indexing to each 1-d slice::
		
		    Ni, Nk = a.shape[:axis], a.shape[axis+1:]
		    for ii in ndindex(Ni):
		        for kk in ndindex(Nj):
		            out[ii + s_[...,] + kk] = a[ii + s_[:,] + kk][indices]
		
		For this reason, it is equivalent to (but faster than) the following use
		of `apply_along_axis`::
		
		    out = np.apply_along_axis(lambda a_1d: a_1d[indices], axis, a)
		
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
		Reverse or permute the axes of an array; returns the modified array.
		
		For an array a with two axes, transpose(a) gives the matrix transpose.
		
		Refer to `numpy.ndarray.transpose` for full documentation.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axes : tuple or list of ints, optional
		    If specified, it must be a tuple or list which contains a permutation of
		    [0,1,..,N-1] where N is the number of axes of a.  The i'th axis of the
		    returned array will correspond to the axis numbered ``axes[i]`` of the
		    input.  If not specified, defaults to ``range(a.ndim)[::-1]``, which
		    reverses the order of the axes.
		
		Returns
		-------
		p : ndarray
		    `a` with its axes permuted.  A view is returned whenever
		    possible.
		
		See Also
		--------
		ndarray.transpose : Equivalent method
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
		
		>>> x = np.ones((2, 3, 4, 5))
		>>> np.transpose(x).shape
		(5, 4, 3, 2)
	**/
	static public function transpose(a:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of an array with the elements below the `k`-th diagonal
		zeroed. For arrays with ``ndim`` exceeding 2, `triu` will apply to the final
		two axes.
		
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
		
		>>> np.triu(np.arange(3*4*5).reshape(3, 4, 5))
		array([[[ 0,  1,  2,  3,  4],
		        [ 0,  6,  7,  8,  9],
		        [ 0,  0, 12, 13, 14],
		        [ 0,  0,  0, 18, 19]],
		       [[20, 21, 22, 23, 24],
		        [ 0, 26, 27, 28, 29],
		        [ 0,  0, 32, 33, 34],
		        [ 0,  0,  0, 38, 39]],
		       [[40, 41, 42, 43, 44],
		        [ 0, 46, 47, 48, 49],
		        [ 0,  0, 52, 53, 54],
		        [ 0,  0,  0, 58, 59]]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C', *, like=None)
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		like : array_like
		    Reference object to allow the creation of arrays which are not
		    NumPy arrays. If an array-like passed in as ``like`` supports
		    the ``__array_function__`` protocol, the result will be defined
		    by it. In this case, it ensures the creation of an array object
		    compatible with that passed in via this argument.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
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