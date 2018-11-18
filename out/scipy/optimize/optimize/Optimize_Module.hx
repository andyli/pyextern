/* This file is generated, do not edit! */
package scipy.optimize.optimize;
@:pythonImport("scipy.optimize.optimize") extern class Optimize_Module {
	static public var Inf : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		See ``approx_fprime``.  An optional initial function value arg is added.
	**/
	static public function _approx_fprime_helper(xk:Dynamic, f:Dynamic, epsilon:Dynamic, ?args:Dynamic, ?f0:Dynamic):Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	static public function _endprint(x:Dynamic, flag:Dynamic, fval:Dynamic, maxfun:Dynamic, xtol:Dynamic, disp:Dynamic):Dynamic;
	static public var _epsilon : Dynamic;
	/**
		inspect.getargspec replacement using inspect.signature.
		
		inspect.getargspec is deprecated in python 3. This is a replacement
		based on the (new in python 3.3) `inspect.signature`.
		
		Parameters
		----------
		func : callable
		    A callable to inspect
		
		Returns
		-------
		argspec : ArgSpec(args, varargs, varkw, defaults)
		    This is similar to the result of inspect.getargspec(func) under
		    python 2.x.
		    NOTE: if the first argument of `func` is self, it is *not*, I repeat
		    *not* included in argspec.args.
		    This is done for consistency between inspect.getargspec() under
		    python 2.x, and inspect.signature() under python 3.x.
	**/
	static public function _getargspec(func:Dynamic):Dynamic;
	/**
		Same as line_search_wolfe1, but fall back to line_search_wolfe2 if
		suitable step length is not found, and raise an exception if a
		suitable step length is not found.
		
		Raises
		------
		_LineSearchError
		    If no suitable step size is found
	**/
	static public function _line_search_wolfe12(f:Dynamic, fprime:Dynamic, xk:Dynamic, pk:Dynamic, gfk:Dynamic, old_fval:Dynamic, old_old_fval:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Line-search algorithm using fminbound.
		
		Find the minimium of the function ``func(x0+ alpha*direc)``.
	**/
	static public function _linesearch_powell(func:Dynamic, p:Dynamic, xi:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Minimization of scalar function of one or more variables using the
		BFGS algorithm.
		
		Options
		-------
		disp : bool
		    Set to True to print convergence messages.
		maxiter : int
		    Maximum number of iterations to perform.
		gtol : float
		    Gradient norm must be less than `gtol` before successful
		    termination.
		norm : float
		    Order of norm (Inf is max, -Inf is min).
		eps : float or ndarray
		    If `jac` is approximated, use this value for the step size.
	**/
	static public function _minimize_bfgs(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?callback:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?eps:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using the
		conjugate gradient algorithm.
		
		Options
		-------
		disp : bool
		    Set to True to print convergence messages.
		maxiter : int
		    Maximum number of iterations to perform.
		gtol : float
		    Gradient norm must be less than `gtol` before successful
		    termination.
		norm : float
		    Order of norm (Inf is max, -Inf is min).
		eps : float or ndarray
		    If `jac` is approximated, use this value for the step size.
	**/
	static public function _minimize_cg(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?callback:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?eps:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using the
		Nelder-Mead algorithm.
		
		Options
		-------
		disp : bool
		    Set to True to print convergence messages.
		maxiter, maxfev : int
		    Maximum allowed number of iterations and function evaluations.
		    Will default to ``N*200``, where ``N`` is the number of
		    variables, if neither `maxiter` or `maxfev` is set. If both
		    `maxiter` and `maxfev` are set, minimization will stop at the
		    first reached.
		initial_simplex : array_like of shape (N + 1, N)
		    Initial simplex. If given, overrides `x0`.
		    ``initial_simplex[j,:]`` should contain the coordinates of
		    the j-th vertex of the ``N+1`` vertices in the simplex, where
		    ``N`` is the dimension.
		xatol : float, optional
		    Absolute error in xopt between iterations that is acceptable for
		    convergence.
		fatol : number, optional
		    Absolute error in func(xopt) between iterations that is acceptable for
		    convergence.
		adaptive : bool, optional
		    Adapt algorithm parameters to dimensionality of problem. Useful for
		    high-dimensional minimization [1]_.
		
		References
		----------
		.. [1] Gao, F. and Han, L.
		   Implementing the Nelder-Mead simplex algorithm with adaptive
		   parameters. 2012. Computational Optimization and Applications.
		   51:1, pp. 259-277
	**/
	static public function _minimize_neldermead(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?callback:Dynamic, ?maxiter:Dynamic, ?maxfev:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?initial_simplex:Dynamic, ?xatol:Dynamic, ?fatol:Dynamic, ?adaptive:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using the
		Newton-CG algorithm.
		
		Note that the `jac` parameter (Jacobian) is required.
		
		Options
		-------
		disp : bool
		    Set to True to print convergence messages.
		xtol : float
		    Average relative error in solution `xopt` acceptable for
		    convergence.
		maxiter : int
		    Maximum number of iterations to perform.
		eps : float or ndarray
		    If `jac` is approximated, use this value for the step size.
	**/
	static public function _minimize_newtoncg(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic, ?callback:Dynamic, ?xtol:Dynamic, ?eps:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using the
		modified Powell algorithm.
		
		Options
		-------
		disp : bool
		    Set to True to print convergence messages.
		xtol : float
		    Relative error in solution `xopt` acceptable for convergence.
		ftol : float
		    Relative error in ``fun(xopt)`` acceptable for convergence.
		maxiter, maxfev : int
		    Maximum allowed number of iterations and function evaluations.
		    Will default to ``N*1000``, where ``N`` is the number of
		    variables, if neither `maxiter` or `maxfev` is set. If both
		    `maxiter` and `maxfev` are set, minimization will stop at the
		    first reached.
		direc : ndarray
		    Initial set of direction vectors for the Powell method.
	**/
	static public function _minimize_powell(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?callback:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?maxiter:Dynamic, ?maxfev:Dynamic, ?disp:Dynamic, ?direc:Dynamic, ?return_all:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Options
		-------
		maxiter : int
		    Maximum number of iterations to perform.
		disp: int, optional
		    If non-zero, print messages.
		        0 : no message printing.
		        1 : non-convergence notification messages only.
		        2 : print a message on convergence too.
		        3 : print iteration results.
		xatol : float
		    Absolute error in solution `xopt` acceptable for convergence.
	**/
	static public function _minimize_scalar_bounded(func:Dynamic, bounds:Dynamic, ?args:Dynamic, ?xatol:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Options
		-------
		maxiter : int
		    Maximum number of iterations to perform.
		xtol : float
		    Relative error in solution `xopt` acceptable for convergence.
		
		Notes
		-----
		Uses inverse parabolic interpolation when possible to speed up
		convergence of golden section method.
	**/
	static public function _minimize_scalar_brent(func:Dynamic, ?brack:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxiter:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Options
		-------
		maxiter : int
		    Maximum number of iterations to perform.
		xtol : float
		    Relative error in solution `xopt` acceptable for convergence.
	**/
	static public function _minimize_scalar_golden(func:Dynamic, ?brack:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxiter:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	static public var _status_message : Dynamic;
	static public var absolute_import : Dynamic;
	static public function approx_fhess_p(x0:Dynamic, p:Dynamic, fprime:Dynamic, epsilon:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Finite-difference approximation of the gradient of a scalar function.
		
		Parameters
		----------
		xk : array_like
		    The coordinate vector at which to determine the gradient of `f`.
		f : callable
		    The function of which to determine the gradient (partial derivatives).
		    Should take `xk` as first argument, other arguments to `f` can be
		    supplied in ``*args``.  Should return a scalar, the value of the
		    function at `xk`.
		epsilon : array_like
		    Increment to `xk` to use for determining the function gradient.
		    If a scalar, uses the same finite difference delta for all partial
		    derivatives.  If an array, should contain one value per element of
		    `xk`.
		\*args : args, optional
		    Any other arguments that are to be passed to `f`.
		
		Returns
		-------
		grad : ndarray
		    The partial derivatives of `f` to `xk`.
		
		See Also
		--------
		check_grad : Check correctness of gradient function against approx_fprime.
		
		Notes
		-----
		The function gradient is determined by the forward finite difference
		formula::
		
		             f(xk[i] + epsilon[i]) - f(xk[i])
		    f'[i] = ---------------------------------
		                        epsilon[i]
		
		The main use of `approx_fprime` is in scalar function optimizers like
		`fmin_bfgs`, to determine numerically the Jacobian of a function.
		
		Examples
		--------
		>>> from scipy import optimize
		>>> def func(x, c0, c1):
		...     "Coordinate vector `x` should be an array of size two."
		...     return c0 * x[0]**2 + c1*x[1]**2
		
		>>> x = np.ones(2)
		>>> c0, c1 = (1, 200)
		>>> eps = np.sqrt(np.finfo(float).eps)
		>>> optimize.approx_fprime(x, func, [eps, np.sqrt(200) * eps], c0, c1)
		array([   2.        ,  400.00004198])
	**/
	static public function approx_fprime(xk:Dynamic, f:Dynamic, epsilon:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed.
		
		See Also
		--------
		ndarray.argmin, argmax
		amin : The minimum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		
		Notes
		-----
		In case of multiple occurrences of the minimum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argmin(a)
		0
		>>> np.argmin(a, axis=0)
		array([0, 0, 0])
		>>> np.argmin(a, axis=1)
		array([0, 0])
		
		Indices of the minimum elements of a N-dimensional array:
		
		>>> ind = np.unravel_index(np.argmin(a, axis=None), a.shape)
		>>> ind
		(0, 0)
		>>> a[ind]
		0
		
		>>> b = np.arange(6)
		>>> b[4] = 0
		>>> b
		array([0, 1, 2, 3, 0, 5])
		>>> np.argmin(b)  # Only the first occurrence is returned.
		0
	**/
	static public function argmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic):Dynamic;
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
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return an array converted to a float type.
		
		Parameters
		----------
		a : array_like
		    The input array.
		dtype : str or dtype object, optional
		    Float type code to coerce input array `a`.  If `dtype` is one of the
		    'int' dtypes, it is replaced with float64.
		
		Returns
		-------
		out : ndarray
		    The input `a` as a float ndarray.
		
		Examples
		--------
		>>> np.asfarray([2, 3])
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='float')
		array([ 2.,  3.])
		>>> np.asfarray([2, 3], dtype='int8')
		array([ 2.,  3.])
	**/
	static public function asfarray(a:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Bracket the minimum of the function.
		
		Given a function and distinct initial points, search in the
		downhill direction (as defined by the initital points) and return
		new points xa, xb, xc that bracket the minimum of the function
		f(xa) > f(xb) < f(xc). It doesn't always mean that obtained
		solution will satisfy xa<=x<=xb
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to minimize.
		xa, xb : float, optional
		    Bracketing interval. Defaults `xa` to 0.0, and `xb` to 1.0.
		args : tuple, optional
		    Additional arguments (if present), passed to `func`.
		grow_limit : float, optional
		    Maximum grow limit.  Defaults to 110.0
		maxiter : int, optional
		    Maximum number of iterations to perform. Defaults to 1000.
		
		Returns
		-------
		xa, xb, xc : float
		    Bracket.
		fa, fb, fc : float
		    Objective function values in bracket.
		funcalls : int
		    Number of function evaluations made.
	**/
	static public function bracket(func:Dynamic, ?xa:Dynamic, ?xb:Dynamic, ?args:Dynamic, ?grow_limit:Dynamic, ?maxiter:Dynamic):Float;
	/**
		Given a function of one-variable and a possible bracket, return
		the local minimum of the function isolated to a fractional precision
		of tol.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function.
		args : tuple, optional
		    Additional arguments (if present).
		brack : tuple, optional
		    Either a triple (xa,xb,xc) where xa<xb<xc and func(xb) <
		    func(xa), func(xc) or a pair (xa,xb) which are used as a
		    starting interval for a downhill bracket search (see
		    `bracket`). Providing the pair (xa,xb) does not always mean
		    the obtained solution will satisfy xa<=x<=xb.
		tol : float, optional
		    Stop if between iteration change is less than `tol`.
		full_output : bool, optional
		    If True, return all output args (xmin, fval, iter,
		    funcalls).
		maxiter : int, optional
		    Maximum number of iterations in solution.
		
		Returns
		-------
		xmin : ndarray
		    Optimum point.
		fval : float
		    Optimum value.
		iter : int
		    Number of iterations.
		funcalls : int
		    Number of objective function evaluations made.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Brent' `method` in particular.
		
		Notes
		-----
		Uses inverse parabolic interpolation when possible to speed up
		convergence of golden section method.
		
		Does not ensure that the minimum lies in the range specified by
		`brack`. See `fminbound`.
		
		Examples
		--------
		We illustrate the behaviour of the function when `brack` is of
		size 2 and 3 respectively. In the case where `brack` is of the
		form (xa,xb), we can see for the given values, the output need
		not necessarily lie in the range (xa,xb).
		
		>>> def f(x):
		...     return x**2
		
		>>> from scipy import optimize
		
		>>> minimum = optimize.brent(f,brack=(1,2))
		>>> minimum
		0.0
		>>> minimum = optimize.brent(f,brack=(-1,0.5,2))
		>>> minimum
		-2.7755575615628914e-17
	**/
	static public function brent(func:Dynamic, ?args:Dynamic, ?brack:Dynamic, ?tol:Dynamic, ?full_output:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Minimize a function over a given range by brute force.
		
		Uses the "brute force" method, i.e. computes the function's value
		at each point of a multidimensional grid of points, to find the global
		minimum of the function.
		
		The function is evaluated everywhere in the range with the datatype of the
		first call to the function, as enforced by the ``vectorize`` NumPy
		function.  The value and type of the function evaluation returned when
		``full_output=True`` are affected in addition by the ``finish`` argument
		(see Notes).
		
		The brute force approach is inefficient because the number of grid points
		increases exponentially - the number of grid points to evaluate is
		``Ns ** len(x)``. Consequently, even with coarse grid spacing, even
		moderately sized problems can take a long time to run, and/or run into
		memory limitations.
		
		Parameters
		----------
		func : callable
		    The objective function to be minimized. Must be in the
		    form ``f(x, *args)``, where ``x`` is the argument in
		    the form of a 1-D array and ``args`` is a tuple of any
		    additional fixed parameters needed to completely specify
		    the function.
		ranges : tuple
		    Each component of the `ranges` tuple must be either a
		    "slice object" or a range tuple of the form ``(low, high)``.
		    The program uses these to create the grid of points on which
		    the objective function will be computed. See `Note 2` for
		    more detail.
		args : tuple, optional
		    Any additional fixed parameters needed to completely specify
		    the function.
		Ns : int, optional
		    Number of grid points along the axes, if not otherwise
		    specified. See `Note2`.
		full_output : bool, optional
		    If True, return the evaluation grid and the objective function's
		    values on it.
		finish : callable, optional
		    An optimization function that is called with the result of brute force
		    minimization as initial guess.  `finish` should take `func` and
		    the initial guess as positional arguments, and take `args` as
		    keyword arguments.  It may additionally take `full_output`
		    and/or `disp` as keyword arguments.  Use None if no "polishing"
		    function is to be used. See Notes for more details.
		disp : bool, optional
		    Set to True to print convergence messages.
		
		Returns
		-------
		x0 : ndarray
		    A 1-D array containing the coordinates of a point at which the
		    objective function had its minimum value. (See `Note 1` for
		    which point is returned.)
		fval : float
		    Function value at the point `x0`. (Returned when `full_output` is
		    True.)
		grid : tuple
		    Representation of the evaluation grid.  It has the same
		    length as `x0`. (Returned when `full_output` is True.)
		Jout : ndarray
		    Function values at each point of the evaluation
		    grid, `i.e.`, ``Jout = func(*grid)``. (Returned
		    when `full_output` is True.)
		
		See Also
		--------
		basinhopping, differential_evolution
		
		Notes
		-----
		*Note 1*: The program finds the gridpoint at which the lowest value
		of the objective function occurs.  If `finish` is None, that is the
		point returned.  When the global minimum occurs within (or not very far
		outside) the grid's boundaries, and the grid is fine enough, that
		point will be in the neighborhood of the global minimum.
		
		However, users often employ some other optimization program to
		"polish" the gridpoint values, `i.e.`, to seek a more precise
		(local) minimum near `brute's` best gridpoint.
		The `brute` function's `finish` option provides a convenient way to do
		that.  Any polishing program used must take `brute's` output as its
		initial guess as a positional argument, and take `brute's` input values
		for `args` as keyword arguments, otherwise an error will be raised.
		It may additionally take `full_output` and/or `disp` as keyword arguments.
		
		`brute` assumes that the `finish` function returns either an
		`OptimizeResult` object or a tuple in the form:
		``(xmin, Jmin, ... , statuscode)``, where ``xmin`` is the minimizing
		value of the argument, ``Jmin`` is the minimum value of the objective
		function, "..." may be some other returned values (which are not used
		by `brute`), and ``statuscode`` is the status code of the `finish` program.
		
		Note that when `finish` is not None, the values returned are those
		of the `finish` program, *not* the gridpoint ones.  Consequently,
		while `brute` confines its search to the input grid points,
		the `finish` program's results usually will not coincide with any
		gridpoint, and may fall outside the grid's boundary. Thus, if a
		minimum only needs to be found over the provided grid points, make
		sure to pass in `finish=None`.
		
		*Note 2*: The grid of points is a `numpy.mgrid` object.
		For `brute` the `ranges` and `Ns` inputs have the following effect.
		Each component of the `ranges` tuple can be either a slice object or a
		two-tuple giving a range of values, such as (0, 5).  If the component is a
		slice object, `brute` uses it directly.  If the component is a two-tuple
		range, `brute` internally converts it to a slice object that interpolates
		`Ns` points from its low-value to its high-value, inclusive.
		
		Examples
		--------
		We illustrate the use of `brute` to seek the global minimum of a function
		of two variables that is given as the sum of a positive-definite
		quadratic and two deep "Gaussian-shaped" craters.  Specifically, define
		the objective function `f` as the sum of three other functions,
		``f = f1 + f2 + f3``.  We suppose each of these has a signature
		``(z, *params)``, where ``z = (x, y)``,  and ``params`` and the functions
		are as defined below.
		
		>>> params = (2, 3, 7, 8, 9, 10, 44, -1, 2, 26, 1, -2, 0.5)
		>>> def f1(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (a * x**2 + b * x * y + c * y**2 + d*x + e*y + f)
		
		>>> def f2(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (-g*np.exp(-((x-h)**2 + (y-i)**2) / scale))
		
		>>> def f3(z, *params):
		...     x, y = z
		...     a, b, c, d, e, f, g, h, i, j, k, l, scale = params
		...     return (-j*np.exp(-((x-k)**2 + (y-l)**2) / scale))
		
		>>> def f(z, *params):
		...     return f1(z, *params) + f2(z, *params) + f3(z, *params)
		
		Thus, the objective function may have local minima near the minimum
		of each of the three functions of which it is composed.  To
		use `fmin` to polish its gridpoint result, we may then continue as
		follows:
		
		>>> rranges = (slice(-4, 4, 0.25), slice(-4, 4, 0.25))
		>>> from scipy import optimize
		>>> resbrute = optimize.brute(f, rranges, args=params, full_output=True,
		...                           finish=optimize.fmin)
		>>> resbrute[0]  # global minimum
		array([-1.05665192,  1.80834843])
		>>> resbrute[1]  # function value at global minimum
		-3.4085818767
		
		Note that if `finish` had been set to None, we would have gotten the
		gridpoint [-1.0 1.75] where the rounded function value is -2.892.
	**/
	static public function brute(func:Dynamic, ranges:Dynamic, ?args:Dynamic, ?Ns:Dynamic, ?full_output:Dynamic, ?finish:Dynamic, ?disp:Dynamic):Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
	/**
		Check the correctness of a gradient function by comparing it against a
		(forward) finite-difference approximation of the gradient.
		
		Parameters
		----------
		func : callable ``func(x0, *args)``
		    Function whose derivative is to be checked.
		grad : callable ``grad(x0, *args)``
		    Gradient of `func`.
		x0 : ndarray
		    Points to check `grad` against forward difference approximation of grad
		    using `func`.
		args : \*args, optional
		    Extra arguments passed to `func` and `grad`.
		epsilon : float, optional
		    Step size used for the finite difference approximation. It defaults to
		    ``sqrt(numpy.finfo(float).eps)``, which is approximately 1.49e-08.
		
		Returns
		-------
		err : float
		    The square root of the sum of squares (i.e. the 2-norm) of the
		    difference between ``grad(x0, *args)`` and the finite difference
		    approximation of `grad` using func at the points `x0`.
		
		See Also
		--------
		approx_fprime
		
		Examples
		--------
		>>> def func(x):
		...     return x[0]**2 - 0.5 * x[1]**3
		>>> def grad(x):
		...     return [2 * x[0], -1.5 * x[1]**2]
		>>> from scipy.optimize import check_grad
		>>> check_grad(func, grad, [1.5, -1.5])
		2.9802322387695312e-08
	**/
	static public function check_grad(func:Dynamic, grad:Dynamic, x0:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
	static public var division : Dynamic;
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
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Minimize a function using the downhill simplex algorithm.
		
		This algorithm only uses function values, not derivatives or second
		derivatives.
		
		Parameters
		----------
		func : callable func(x,*args)
		    The objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to func, i.e. ``f(x,*args)``.
		xtol : float, optional
		    Absolute error in xopt between iterations that is acceptable for
		    convergence.
		ftol : number, optional
		    Absolute error in func(xopt) between iterations that is acceptable for
		    convergence.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		maxfun : number, optional
		    Maximum number of function evaluations to make.
		full_output : bool, optional
		    Set to True if fopt and warnflag outputs are desired.
		disp : bool, optional
		    Set to True to print convergence messages.
		retall : bool, optional
		    Set to True to return list of solutions at each iteration.
		callback : callable, optional
		    Called after each iteration, as callback(xk), where xk is the
		    current parameter vector.
		initial_simplex : array_like of shape (N + 1, N), optional
		    Initial simplex. If given, overrides `x0`.
		    ``initial_simplex[j,:]`` should contain the coordinates of
		    the j-th vertex of the ``N+1`` vertices in the simplex, where
		    ``N`` is the dimension.
		
		Returns
		-------
		xopt : ndarray
		    Parameter that minimizes function.
		fopt : float
		    Value of function at minimum: ``fopt = func(xopt)``.
		iter : int
		    Number of iterations performed.
		funcalls : int
		    Number of function calls made.
		warnflag : int
		    1 : Maximum number of function evaluations made.
		    2 : Maximum number of iterations reached.
		allvecs : list
		    Solution at each iteration.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'Nelder-Mead' `method` in particular.
		
		Notes
		-----
		Uses a Nelder-Mead simplex algorithm to find the minimum of function of
		one or more variables.
		
		This algorithm has a long history of successful use in applications.
		But it will usually be slower than an algorithm that uses first or
		second derivative information. In practice it can have poor
		performance in high-dimensional problems and is not robust to
		minimizing complicated functions. Additionally, there currently is no
		complete theory describing when the algorithm will successfully
		converge to the minimum, or how fast it will if it does. Both the ftol and
		xtol criteria must be met for convergence.
		
		Examples
		--------
		>>> def f(x):
		...     return x**2
		
		>>> from scipy import optimize
		
		>>> minimum = optimize.fmin(f, 1)
		Optimization terminated successfully.
		         Current function value: 0.000000
		         Iterations: 17
		         Function evaluations: 34
		>>> minimum[0]
		-8.8817841970012523e-16
		
		References
		----------
		.. [1] Nelder, J.A. and Mead, R. (1965), "A simplex method for function
		       minimization", The Computer Journal, 7, pp. 308-313
		
		.. [2] Wright, M.H. (1996), "Direct Search Methods: Once Scorned, Now
		       Respectable", in Numerical Analysis 1995, Proceedings of the
		       1995 Dundee Biennial Conference in Numerical Analysis, D.F.
		       Griffiths and G.A. Watson (Eds.), Addison Wesley Longman,
		       Harlow, UK, pp. 191-208.
	**/
	static public function fmin(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?maxiter:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic, ?initial_simplex:Dynamic):Dynamic;
	/**
		Minimize a function using the BFGS algorithm.
		
		Parameters
		----------
		f : callable f(x,*args)
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		fprime : callable f'(x,*args), optional
		    Gradient of f.
		args : tuple, optional
		    Extra arguments passed to f and fprime.
		gtol : float, optional
		    Gradient norm must be less than gtol before successful termination.
		norm : float, optional
		    Order of norm (Inf is max, -Inf is min)
		epsilon : int or ndarray, optional
		    If fprime is approximated, use this value for the step size.
		callback : callable, optional
		    An optional user-supplied function to call after each
		    iteration.  Called as callback(xk), where xk is the
		    current parameter vector.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		full_output : bool, optional
		    If True,return fopt, func_calls, grad_calls, and warnflag
		    in addition to xopt.
		disp : bool, optional
		    Print convergence message if True.
		retall : bool, optional
		    Return a list of results at each iteration if True.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. f(xopt) == fopt.
		fopt : float
		    Minimum value.
		gopt : ndarray
		    Value of gradient at minimum, f'(xopt), which should be near 0.
		Bopt : ndarray
		    Value of 1/f''(xopt), i.e. the inverse hessian matrix.
		func_calls : int
		    Number of function_calls made.
		grad_calls : int
		    Number of gradient calls made.
		warnflag : integer
		    1 : Maximum number of iterations exceeded.
		    2 : Gradient and/or function calls not changing.
		allvecs  :  list
		    The value of xopt at each iteration.  Only returned if retall is True.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'BFGS' `method` in particular.
		
		Notes
		-----
		Optimize the function, f, whose gradient is given by fprime
		using the quasi-Newton method of Broyden, Fletcher, Goldfarb,
		and Shanno (BFGS)
		
		References
		----------
		Wright, and Nocedal 'Numerical Optimization', 1999, pg. 198.
	**/
	static public function fmin_bfgs(f:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using a nonlinear conjugate gradient algorithm.
		
		Parameters
		----------
		f : callable, ``f(x, *args)``
		    Objective function to be minimized.  Here `x` must be a 1-D array of
		    the variables that are to be changed in the search for a minimum, and
		    `args` are the other (fixed) parameters of `f`.
		x0 : ndarray
		    A user-supplied initial estimate of `xopt`, the optimal value of `x`.
		    It must be a 1-D array of values.
		fprime : callable, ``fprime(x, *args)``, optional
		    A function that returns the gradient of `f` at `x`. Here `x` and `args`
		    are as described above for `f`. The returned value must be a 1-D array.
		    Defaults to None, in which case the gradient is approximated
		    numerically (see `epsilon`, below).
		args : tuple, optional
		    Parameter values passed to `f` and `fprime`. Must be supplied whenever
		    additional fixed parameters are needed to completely specify the
		    functions `f` and `fprime`.
		gtol : float, optional
		    Stop when the norm of the gradient is less than `gtol`.
		norm : float, optional
		    Order to use for the norm of the gradient
		    (``-np.Inf`` is min, ``np.Inf`` is max).
		epsilon : float or ndarray, optional
		    Step size(s) to use when `fprime` is approximated numerically. Can be a
		    scalar or a 1-D array.  Defaults to ``sqrt(eps)``, with eps the
		    floating point machine precision.  Usually ``sqrt(eps)`` is about
		    1.5e-8.
		maxiter : int, optional
		    Maximum number of iterations to perform. Default is ``200 * len(x0)``.
		full_output : bool, optional
		    If True, return `fopt`, `func_calls`, `grad_calls`, and `warnflag` in
		    addition to `xopt`.  See the Returns section below for additional
		    information on optional return values.
		disp : bool, optional
		    If True, return a convergence message, followed by `xopt`.
		retall : bool, optional
		    If True, add to the returned values the results of each iteration.
		callback : callable, optional
		    An optional user-supplied function, called after each iteration.
		    Called as ``callback(xk)``, where ``xk`` is the current value of `x0`.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. ``f(xopt) == fopt``.
		fopt : float, optional
		    Minimum value found, f(xopt).  Only returned if `full_output` is True.
		func_calls : int, optional
		    The number of function_calls made.  Only returned if `full_output`
		    is True.
		grad_calls : int, optional
		    The number of gradient calls made. Only returned if `full_output` is
		    True.
		warnflag : int, optional
		    Integer value with warning status, only returned if `full_output` is
		    True.
		
		    0 : Success.
		
		    1 : The maximum number of iterations was exceeded.
		
		    2 : Gradient and/or function calls were not changing.  May indicate
		        that precision was lost, i.e., the routine did not converge.
		
		allvecs : list of ndarray, optional
		    List of arrays, containing the results at each iteration.
		    Only returned if `retall` is True.
		
		See Also
		--------
		minimize : common interface to all `scipy.optimize` algorithms for
		           unconstrained and constrained minimization of multivariate
		           functions.  It provides an alternative way to call
		           ``fmin_cg``, by specifying ``method='CG'``.
		
		Notes
		-----
		This conjugate gradient algorithm is based on that of Polak and Ribiere
		[1]_.
		
		Conjugate gradient methods tend to work better when:
		
		1. `f` has a unique global minimizing point, and no local minima or
		   other stationary points,
		2. `f` is, at least locally, reasonably well approximated by a
		   quadratic function of the variables,
		3. `f` is continuous and has a continuous gradient,
		4. `fprime` is not too large, e.g., has a norm less than 1000,
		5. The initial guess, `x0`, is reasonably close to `f` 's global
		   minimizing point, `xopt`.
		
		References
		----------
		.. [1] Wright & Nocedal, "Numerical Optimization", 1999, pp. 120-122.
		
		Examples
		--------
		Example 1: seek the minimum value of the expression
		``a*u**2 + b*u*v + c*v**2 + d*u + e*v + f`` for given values
		of the parameters and an initial guess ``(u, v) = (0, 0)``.
		
		>>> args = (2, 3, 7, 8, 9, 10)  # parameter values
		>>> def f(x, *args):
		...     u, v = x
		...     a, b, c, d, e, f = args
		...     return a*u**2 + b*u*v + c*v**2 + d*u + e*v + f
		>>> def gradf(x, *args):
		...     u, v = x
		...     a, b, c, d, e, f = args
		...     gu = 2*a*u + b*v + d     # u-component of the gradient
		...     gv = b*u + 2*c*v + e     # v-component of the gradient
		...     return np.asarray((gu, gv))
		>>> x0 = np.asarray((0, 0))  # Initial guess.
		>>> from scipy import optimize
		>>> res1 = optimize.fmin_cg(f, x0, fprime=gradf, args=args)
		Optimization terminated successfully.
		         Current function value: 1.617021
		         Iterations: 4
		         Function evaluations: 8
		         Gradient evaluations: 8
		>>> res1
		array([-1.80851064, -0.25531915])
		
		Example 2: solve the same problem using the `minimize` function.
		(This `myopts` dictionary shows all of the available options,
		although in practice only non-default values would be needed.
		The returned value will be a dictionary.)
		
		>>> opts = {'maxiter' : None,    # default value.
		...         'disp' : True,    # non-default value.
		...         'gtol' : 1e-5,    # default value.
		...         'norm' : np.inf,  # default value.
		...         'eps' : 1.4901161193847656e-08}  # default value.
		>>> res2 = optimize.minimize(f, x0, jac=gradf, args=args,
		...                          method='CG', options=opts)
		Optimization terminated successfully.
		        Current function value: 1.617021
		        Iterations: 4
		        Function evaluations: 8
		        Gradient evaluations: 8
		>>> res2.x  # minimum found
		array([-1.80851064, -0.25531915])
	**/
	static public function fmin_cg(f:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?gtol:Dynamic, ?norm:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Unconstrained minimization of a function using the Newton-CG method.
		
		Parameters
		----------
		f : callable ``f(x, *args)``
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		fprime : callable ``f'(x, *args)``
		    Gradient of f.
		fhess_p : callable ``fhess_p(x, p, *args)``, optional
		    Function which computes the Hessian of f times an
		    arbitrary vector, p.
		fhess : callable ``fhess(x, *args)``, optional
		    Function to compute the Hessian matrix of f.
		args : tuple, optional
		    Extra arguments passed to f, fprime, fhess_p, and fhess
		    (the same set of extra arguments is supplied to all of
		    these functions).
		epsilon : float or ndarray, optional
		    If fhess is approximated, use this value for the step size.
		callback : callable, optional
		    An optional user-supplied function which is called after
		    each iteration.  Called as callback(xk), where xk is the
		    current parameter vector.
		avextol : float, optional
		    Convergence is assumed when the average relative error in
		    the minimizer falls below this amount.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		full_output : bool, optional
		    If True, return the optional outputs.
		disp : bool, optional
		    If True, print convergence message.
		retall : bool, optional
		    If True, return a list of results at each iteration.
		
		Returns
		-------
		xopt : ndarray
		    Parameters which minimize f, i.e. ``f(xopt) == fopt``.
		fopt : float
		    Value of the function at xopt, i.e. ``fopt = f(xopt)``.
		fcalls : int
		    Number of function calls made.
		gcalls : int
		    Number of gradient calls made.
		hcalls : int
		    Number of hessian calls made.
		warnflag : int
		    Warnings generated by the algorithm.
		    1 : Maximum number of iterations exceeded.
		allvecs : list
		    The result at each iteration, if retall is True (see below).
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'Newton-CG' `method` in particular.
		
		Notes
		-----
		Only one of `fhess_p` or `fhess` need to be given.  If `fhess`
		is provided, then `fhess_p` will be ignored.  If neither `fhess`
		nor `fhess_p` is provided, then the hessian product will be
		approximated using finite differences on `fprime`. `fhess_p`
		must compute the hessian times an arbitrary vector. If it is not
		given, finite-differences on `fprime` are used to compute
		it.
		
		Newton-CG methods are also called truncated Newton methods. This
		function differs from scipy.optimize.fmin_tnc because
		
		1. scipy.optimize.fmin_ncg is written purely in python using numpy
		    and scipy while scipy.optimize.fmin_tnc calls a C function.
		2. scipy.optimize.fmin_ncg is only for unconstrained minimization
		    while scipy.optimize.fmin_tnc is for unconstrained minimization
		    or box constrained minimization. (Box constraints give
		    lower and upper bounds for each variable separately.)
		
		References
		----------
		Wright & Nocedal, 'Numerical Optimization', 1999, pg. 140.
	**/
	static public function fmin_ncg(f:Dynamic, x0:Dynamic, fprime:Dynamic, ?fhess_p:Dynamic, ?fhess:Dynamic, ?args:Dynamic, ?avextol:Dynamic, ?epsilon:Dynamic, ?maxiter:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Minimize a function using modified Powell's method. This method
		only uses function values, not derivatives.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to be minimized.
		x0 : ndarray
		    Initial guess.
		args : tuple, optional
		    Extra arguments passed to func.
		callback : callable, optional
		    An optional user-supplied function, called after each
		    iteration.  Called as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		direc : ndarray, optional
		    Initial direction set.
		xtol : float, optional
		    Line-search error tolerance.
		ftol : float, optional
		    Relative error in ``func(xopt)`` acceptable for convergence.
		maxiter : int, optional
		    Maximum number of iterations to perform.
		maxfun : int, optional
		    Maximum number of function evaluations to make.
		full_output : bool, optional
		    If True, fopt, xi, direc, iter, funcalls, and
		    warnflag are returned.
		disp : bool, optional
		    If True, print convergence messages.
		retall : bool, optional
		    If True, return a list of the solution at each iteration.
		
		Returns
		-------
		xopt : ndarray
		    Parameter which minimizes `func`.
		fopt : number
		    Value of function at minimum: ``fopt = func(xopt)``.
		direc : ndarray
		    Current direction set.
		iter : int
		    Number of iterations.
		funcalls : int
		    Number of function calls made.
		warnflag : int
		    Integer warning flag:
		        1 : Maximum number of function evaluations.
		        2 : Maximum number of iterations.
		allvecs : list
		    List of solutions at each iteration.
		
		See also
		--------
		minimize: Interface to unconstrained minimization algorithms for
		    multivariate functions. See the 'Powell' `method` in particular.
		
		Notes
		-----
		Uses a modification of Powell's method to find the minimum of
		a function of N variables. Powell's method is a conjugate
		direction method.
		
		The algorithm has two loops. The outer loop
		merely iterates over the inner loop. The inner loop minimizes
		over each current direction in the direction set. At the end
		of the inner loop, if certain conditions are met, the direction
		that gave the largest decrease is dropped and replaced with
		the difference between the current estimated x and the estimated
		x from the beginning of the inner-loop.
		
		The technical conditions for replacing the direction of greatest
		increase amount to checking that
		
		1. No further gain can be made along the direction of greatest increase
		   from that iteration.
		2. The direction of greatest increase accounted for a large sufficient
		   fraction of the decrease in the function value from that iteration of
		   the inner loop.
		
		Examples
		--------
		>>> def f(x):
		...     return x**2
		
		>>> from scipy import optimize
		
		>>> minimum = optimize.fmin_powell(f, -1)
		Optimization terminated successfully.
		         Current function value: 0.000000
		         Iterations: 2
		         Function evaluations: 18
		>>> minimum
		array(0.0)
		
		References
		----------
		Powell M.J.D. (1964) An efficient method for finding the minimum of a
		function of several variables without calculating derivatives,
		Computer Journal, 7 (2):155-162.
		
		Press W., Teukolsky S.A., Vetterling W.T., and Flannery B.P.:
		Numerical Recipes (any edition), Cambridge University Press
	**/
	static public function fmin_powell(func:Dynamic, x0:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?ftol:Dynamic, ?maxiter:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic, ?retall:Dynamic, ?callback:Dynamic, ?direc:Dynamic):Dynamic;
	/**
		Bounded minimization for scalar functions.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Objective function to be minimized (must accept and return scalars).
		x1, x2 : float or array scalar
		    The optimization bounds.
		args : tuple, optional
		    Extra arguments passed to function.
		xtol : float, optional
		    The convergence tolerance.
		maxfun : int, optional
		    Maximum number of function evaluations allowed.
		full_output : bool, optional
		    If True, return optional outputs.
		disp : int, optional
		    If non-zero, print messages.
		        0 : no message printing.
		        1 : non-convergence notification messages only.
		        2 : print a message on convergence too.
		        3 : print iteration results.
		
		
		Returns
		-------
		xopt : ndarray
		    Parameters (over given interval) which minimize the
		    objective function.
		fval : number
		    The function value at the minimum point.
		ierr : int
		    An error flag (0 if converged, 1 if maximum number of
		    function calls reached).
		numfunc : int
		  The number of function calls made.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Bounded' `method` in particular.
		
		Notes
		-----
		Finds a local minimizer of the scalar function `func` in the
		interval x1 < xopt < x2 using Brent's method.  (See `brent`
		for auto-bracketing).
		
		Examples
		--------
		`fminbound` finds the minimum of the function in the given range.
		The following examples illustrate the same
		
		>>> def f(x):
		...     return x**2
		
		>>> from scipy import optimize
		
		>>> minimum = optimize.fminbound(f, -1, 2)
		>>> minimum
		0.0
		>>> minimum = optimize.fminbound(f, 1, 2)
		>>> minimum
		1.0000059608609866
	**/
	static public function fminbound(func:Dynamic, x1:Dynamic, x2:Dynamic, ?args:Dynamic, ?xtol:Dynamic, ?maxfun:Dynamic, ?full_output:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Return the minimum of a function of one variable using golden section
		method.
		
		Given a function of one variable and a possible bracketing interval,
		return the minimum of the function isolated to a fractional precision of
		tol.
		
		Parameters
		----------
		func : callable func(x,*args)
		    Objective function to minimize.
		args : tuple, optional
		    Additional arguments (if present), passed to func.
		brack : tuple, optional
		    Triple (a,b,c), where (a<b<c) and func(b) <
		    func(a),func(c).  If bracket consists of two numbers (a,
		    c), then they are assumed to be a starting interval for a
		    downhill bracket search (see `bracket`); it doesn't always
		    mean that obtained solution will satisfy a<=x<=c.
		tol : float, optional
		    x tolerance stop criterion
		full_output : bool, optional
		    If True, return optional outputs.
		maxiter : int
		    Maximum number of iterations to perform.
		
		See also
		--------
		minimize_scalar: Interface to minimization algorithms for scalar
		    univariate functions. See the 'Golden' `method` in particular.
		
		Notes
		-----
		Uses analog of bisection method to decrease the bracketed
		interval.
		
		Examples
		--------
		We illustrate the behaviour of the function when `brack` is of
		size 2 and 3 respectively. In the case where `brack` is of the
		form (xa,xb), we can see for the given values, the output need
		not necessarily lie in the range ``(xa, xb)``.
		
		>>> def f(x):
		...     return x**2
		
		>>> from scipy import optimize
		
		>>> minimum = optimize.golden(f, brack=(1, 2))
		>>> minimum
		1.5717277788484873e-162
		>>> minimum = optimize.golden(f, brack=(-1, 0.5, 2))
		>>> minimum
		-1.5717277788484873e-162
	**/
	static public function golden(func:Dynamic, ?args:Dynamic, ?brack:Dynamic, ?tol:Dynamic, ?full_output:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		Test whether `x` is either a scalar or an array scalar.
		
		    
	**/
	static public function is_array_scalar(x:Dynamic):Dynamic;
	/**
		isinf(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for positive or negative infinity.
		
		Returns a boolean array of the same shape as `x`, True where ``x ==
		+/-inf``, otherwise False.
		
		Parameters
		----------
		x : array_like
		    Input values
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : bool (scalar) or boolean ndarray
		    True where ``x`` is positive or negative infinity, false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isneginf, isposinf, isnan, isfinite
		
		Notes
		-----
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754).
		
		Errors result if the second argument is supplied when the first
		argument is a scalar, or if the first and second arguments have
		different shapes.
		
		Examples
		--------
		>>> np.isinf(np.inf)
		True
		>>> np.isinf(np.nan)
		False
		>>> np.isinf(np.NINF)
		True
		>>> np.isinf([np.inf, -np.inf, 1.0, np.nan])
		array([ True,  True, False, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isinf(x, y)
		array([1, 0, 1])
		>>> y
		array([1, 0, 1])
	**/
	static public function isinf(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find alpha that satisfies strong Wolfe conditions.
		
		Parameters
		----------
		f : callable f(x,*args)
		    Objective function.
		myfprime : callable f'(x,*args)
		    Objective function gradient.
		xk : ndarray
		    Starting point.
		pk : ndarray
		    Search direction.
		gfk : ndarray, optional
		    Gradient value for x=xk (xk being the current parameter
		    estimate). Will be recomputed if omitted.
		old_fval : float, optional
		    Function value for x=xk. Will be recomputed if omitted.
		old_old_fval : float, optional
		    Function value for the point preceding x=xk
		args : tuple, optional
		    Additional arguments passed to objective function.
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax : float, optional
		    Maximum step size
		extra_condition : callable, optional
		    A callable of the form ``extra_condition(alpha, x, f, g)``
		    returning a boolean. Arguments are the proposed step ``alpha``
		    and the corresponding ``x``, ``f`` and ``g`` values. The line search 
		    accepts the value of ``alpha`` only if this 
		    callable returns ``True``. If the callable returns ``False`` 
		    for the step length, the algorithm will continue with 
		    new iterates. The callable is only called for iterates 
		    satisfying the strong Wolfe conditions.
		maxiter : int, optional
		    Maximum number of iterations to perform
		
		Returns
		-------
		alpha : float or None
		    Alpha for which ``x_new = x0 + alpha * pk``,
		    or None if the line search algorithm did not converge.
		fc : int
		    Number of function evaluations made.
		gc : int
		    Number of gradient evaluations made.
		new_fval : float or None
		    New function value ``f(x_new)=f(x0+alpha*pk)``,
		    or None if the line search algorithm did not converge.
		old_fval : float
		    Old function value ``f(x0)``.
		new_slope : float or None
		    The local slope along the search direction at the
		    new value ``<myfprime(x_new), pk>``,
		    or None if the line search algorithm did not converge.
		
		
		Notes
		-----
		Uses the line search algorithm to enforce strong Wolfe
		conditions.  See Wright and Nocedal, 'Numerical Optimization',
		1999, pg. 59-60.
		
		For the zoom phase it uses an algorithm by [...].
	**/
	static public function line_search(f:Dynamic, myfprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?extra_condition:Dynamic, ?maxiter:Dynamic):Dynamic;
	/**
		As `scalar_search_wolfe1` but do a line search to direction `pk`
		
		Parameters
		----------
		f : callable
		    Function `f(x)`
		fprime : callable
		    Gradient of `f`
		xk : array_like
		    Current point
		pk : array_like
		    Search direction
		
		gfk : array_like, optional
		    Gradient of `f` at point `xk`
		old_fval : float, optional
		    Value of `f` at point `xk`
		old_old_fval : float, optional
		    Value of `f` at point preceding `xk`
		
		The rest of the parameters are the same as for `scalar_search_wolfe1`.
		
		Returns
		-------
		stp, f_count, g_count, fval, old_fval
		    As in `line_search_wolfe1`
		gval : array
		    Gradient of `f` at the final point
	**/
	static public function line_search_wolfe1(f:Dynamic, fprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?amin:Dynamic, ?xtol:Dynamic):Dynamic;
	/**
		Find alpha that satisfies strong Wolfe conditions.
		
		Parameters
		----------
		f : callable f(x,*args)
		    Objective function.
		myfprime : callable f'(x,*args)
		    Objective function gradient.
		xk : ndarray
		    Starting point.
		pk : ndarray
		    Search direction.
		gfk : ndarray, optional
		    Gradient value for x=xk (xk being the current parameter
		    estimate). Will be recomputed if omitted.
		old_fval : float, optional
		    Function value for x=xk. Will be recomputed if omitted.
		old_old_fval : float, optional
		    Function value for the point preceding x=xk
		args : tuple, optional
		    Additional arguments passed to objective function.
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax : float, optional
		    Maximum step size
		extra_condition : callable, optional
		    A callable of the form ``extra_condition(alpha, x, f, g)``
		    returning a boolean. Arguments are the proposed step ``alpha``
		    and the corresponding ``x``, ``f`` and ``g`` values. The line search 
		    accepts the value of ``alpha`` only if this 
		    callable returns ``True``. If the callable returns ``False`` 
		    for the step length, the algorithm will continue with 
		    new iterates. The callable is only called for iterates 
		    satisfying the strong Wolfe conditions.
		maxiter : int, optional
		    Maximum number of iterations to perform
		
		Returns
		-------
		alpha : float or None
		    Alpha for which ``x_new = x0 + alpha * pk``,
		    or None if the line search algorithm did not converge.
		fc : int
		    Number of function evaluations made.
		gc : int
		    Number of gradient evaluations made.
		new_fval : float or None
		    New function value ``f(x_new)=f(x0+alpha*pk)``,
		    or None if the line search algorithm did not converge.
		old_fval : float
		    Old function value ``f(x0)``.
		new_slope : float or None
		    The local slope along the search direction at the
		    new value ``<myfprime(x_new), pk>``,
		    or None if the line search algorithm did not converge.
		
		
		Notes
		-----
		Uses the line search algorithm to enforce strong Wolfe
		conditions.  See Wright and Nocedal, 'Numerical Optimization',
		1999, pg. 59-60.
		
		For the zoom phase it uses an algorithm by [...].
	**/
	static public function line_search_wolfe2(f:Dynamic, myfprime:Dynamic, xk:Dynamic, pk:Dynamic, ?gfk:Dynamic, ?old_fval:Dynamic, ?old_old_fval:Dynamic, ?args:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?extra_condition:Dynamic, ?maxiter:Dynamic):Dynamic;
	static public function main():Dynamic;
	/**
		`nd_grid` instance which returns a dense multi-dimensional "meshgrid".
		
		An instance of `numpy.lib.index_tricks.nd_grid` which returns an dense
		(or fleshed out) mesh-grid when indexed, so that each returned argument
		has the same shape.  The dimensions and number of the output arrays are
		equal to the number of indexing dimensions.  If the step length is not a
		complex number, then the stop is not inclusive.
		
		However, if the step length is a **complex number** (e.g. 5j), then
		the integer part of its magnitude is interpreted as specifying the
		number of points to create between the start and stop values, where
		the stop value **is inclusive**.
		
		Returns
		----------
		mesh-grid `ndarrays` all of the same dimensions
		
		See Also
		--------
		numpy.lib.index_tricks.nd_grid : class of `ogrid` and `mgrid` objects
		ogrid : like mgrid but returns open (not fleshed out) mesh grids
		r_ : array concatenator
		
		Examples
		--------
		>>> np.mgrid[0:5,0:5]
		array([[[0, 0, 0, 0, 0],
		        [1, 1, 1, 1, 1],
		        [2, 2, 2, 2, 2],
		        [3, 3, 3, 3, 3],
		        [4, 4, 4, 4, 4]],
		       [[0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4],
		        [0, 1, 2, 3, 4]]])
		>>> np.mgrid[-1:1:5j]
		array([-1. , -0.5,  0. ,  0.5,  1. ])
	**/
	static public var mgrid : Dynamic;
	static public var print_function : Dynamic;
	/**
		The Rosenbrock function.
		
		The function computed is::
		
		    sum(100.0*(x[1:] - x[:-1]**2.0)**2.0 + (1 - x[:-1])**2.0)
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Rosenbrock function is to be computed.
		
		Returns
		-------
		f : float
		    The value of the Rosenbrock function.
		
		See Also
		--------
		rosen_der, rosen_hess, rosen_hess_prod
	**/
	static public function rosen(x:Dynamic):Float;
	/**
		The derivative (i.e. gradient) of the Rosenbrock function.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the derivative is to be computed.
		
		Returns
		-------
		rosen_der : (N,) ndarray
		    The gradient of the Rosenbrock function at `x`.
		
		See Also
		--------
		rosen, rosen_hess, rosen_hess_prod
	**/
	static public function rosen_der(x:Dynamic):Dynamic;
	/**
		The Hessian matrix of the Rosenbrock function.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Hessian matrix is to be computed.
		
		Returns
		-------
		rosen_hess : ndarray
		    The Hessian matrix of the Rosenbrock function at `x`.
		
		See Also
		--------
		rosen, rosen_der, rosen_hess_prod
	**/
	static public function rosen_hess(x:Dynamic):Dynamic;
	/**
		Product of the Hessian matrix of the Rosenbrock function with a vector.
		
		Parameters
		----------
		x : array_like
		    1-D array of points at which the Hessian matrix is to be computed.
		p : array_like
		    1-D array, the vector to be multiplied by the Hessian matrix.
		
		Returns
		-------
		rosen_hess_prod : ndarray
		    The Hessian matrix of the Rosenbrock function at `x` multiplied
		    by the vector `p`.
		
		See Also
		--------
		rosen, rosen_der, rosen_hess
	**/
	static public function rosen_hess_prod(x:Dynamic, p:Dynamic):Dynamic;
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
		Show documentation for additional options of optimization solvers.
		
		These are method-specific options that can be supplied through the
		``options`` dict.
		
		Parameters
		----------
		solver : str
		    Type of optimization solver. One of 'minimize', 'minimize_scalar',
		    'root', or 'linprog'.
		method : str, optional
		    If not given, shows all methods of the specified solver. Otherwise,
		    show only the options for the specified method. Valid values
		    corresponds to methods' names of respective solver (e.g. 'BFGS' for
		    'minimize').
		disp : bool, optional
		    Whether to print the result rather than returning it.
		
		Returns
		-------
		text
		    Either None (for disp=False) or the text string (disp=True)
		
		Notes
		-----
		The solver-specific methods are:
		
		`scipy.optimize.minimize`
		
		- :ref:`Nelder-Mead <optimize.minimize-neldermead>`
		- :ref:`Powell      <optimize.minimize-powell>`
		- :ref:`CG          <optimize.minimize-cg>`
		- :ref:`BFGS        <optimize.minimize-bfgs>`
		- :ref:`Newton-CG   <optimize.minimize-newtoncg>`
		- :ref:`L-BFGS-B    <optimize.minimize-lbfgsb>`
		- :ref:`TNC         <optimize.minimize-tnc>`
		- :ref:`COBYLA      <optimize.minimize-cobyla>`
		- :ref:`SLSQP       <optimize.minimize-slsqp>`
		- :ref:`dogleg      <optimize.minimize-dogleg>`
		- :ref:`trust-ncg   <optimize.minimize-trustncg>`
		
		`scipy.optimize.root`
		
		- :ref:`hybr              <optimize.root-hybr>`
		- :ref:`lm                <optimize.root-lm>`
		- :ref:`broyden1          <optimize.root-broyden1>`
		- :ref:`broyden2          <optimize.root-broyden2>`
		- :ref:`anderson          <optimize.root-anderson>`
		- :ref:`linearmixing      <optimize.root-linearmixing>`
		- :ref:`diagbroyden       <optimize.root-diagbroyden>`
		- :ref:`excitingmixing    <optimize.root-excitingmixing>`
		- :ref:`krylov            <optimize.root-krylov>`
		- :ref:`df-sane           <optimize.root-dfsane>`
		
		`scipy.optimize.minimize_scalar`
		
		- :ref:`brent       <optimize.minimize_scalar-brent>`
		- :ref:`golden      <optimize.minimize_scalar-golden>`
		- :ref:`bounded     <optimize.minimize_scalar-bounded>`
		
		`scipy.optimize.linprog`
		
		- :ref:`simplex         <optimize.linprog-simplex>`
		- :ref:`interior-point  <optimize.linprog-interior-point>`
	**/
	static public function show_options(?solver:Dynamic, ?method:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		sqrt(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the non-negative square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, None, or tuple of ndarray and None, optional
		    A location into which the result is stored. If provided, it must have
		    a shape that the inputs broadcast to. If not provided or `None`,
		    a freshly-allocated array is returned. A tuple (possible only as a
		    keyword argument) must have length equal to the number of outputs.
		where : array_like, optional
		    Values of True indicate to calculate the ufunc at that position, values
		    of False indicate to leave the value in the output alone.
		**kwargs
		    For other keyword-only arguments, see the
		    :ref:`ufunc docs <ufuncs.kwargs>`.
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		    This is a scalar if `x` is a scalar.
		
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
		Remove single-dimensional entries from the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    .. versionadded:: 1.7.0
		
		    Selects a subset of the single-dimensional entries in the
		    shape. If an axis is selected with shape entry greater than
		    one, an error is raised.
		
		Returns
		-------
		squeezed : ndarray
		    The input array, but with all or a subset of the
		    dimensions of length 1 removed. This is always `a` itself
		    or a view into `a`.
		
		Raises
		------
		ValueError
		    If `axis` is not `None`, and an axis being squeezed is not of length 1
		
		See Also
		--------
		expand_dims : The inverse operation, adding singleton dimensions
		reshape : Insert, remove, and combine dimensions, and resize existing ones
		
		Examples
		--------
		>>> x = np.array([[[0], [1], [2]]])
		>>> x.shape
		(1, 3, 1)
		>>> np.squeeze(x).shape
		(3,)
		>>> np.squeeze(x, axis=0).shape
		(3, 1)
		>>> np.squeeze(x, axis=1).shape
		Traceback (most recent call last):
		...
		ValueError: cannot select an axis to squeeze out which has size not equal to one
		>>> np.squeeze(x, axis=2).shape
		(1, 3)
	**/
	static public function squeeze(a:Dynamic, ?axis:Dynamic):Dynamic;
	static public function vecnorm(x:Dynamic, ?ord:Dynamic):Dynamic;
	static public function wrap_function(_function:Dynamic, args:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
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