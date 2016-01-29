/* This file is generated, do not edit! */
package scipy.optimize.tnc;
@:pythonImport("scipy.optimize.tnc") extern class Tnc_Module {
	static public var CONSTANT : Dynamic;
	static public var FCONVERGED : Dynamic;
	static public var INFEASIBLE : Dynamic;
	static public var LOCALMINIMUM : Dynamic;
	static public var LSFAIL : Dynamic;
	static public var MAXFUN : Dynamic;
	static public var MSGS : Dynamic;
	static public var MSG_ALL : Dynamic;
	static public var MSG_EXIT : Dynamic;
	static public var MSG_INFO : Dynamic;
	static public var MSG_ITER : Dynamic;
	static public var MSG_NONE : Dynamic;
	static public var MSG_VERS : Dynamic;
	static public var NOPROGRESS : Dynamic;
	static public var RCSTRINGS : Dynamic;
	static public var USERABORT : Dynamic;
	static public var XCONVERGED : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Minimize a scalar function of one or more variables using a truncated
		Newton (TNC) algorithm.
		
		Options
		-------
		eps : float
		    Step size used for numerical approximation of the jacobian.
		scale : list of floats
		    Scaling factors to apply to each variable.  If None, the
		    factors are up-low for interval bounded variables and
		    1+|x] fo the others.  Defaults to None
		offset : float
		    Value to subtract from each variable.  If None, the
		    offsets are (up+low)/2 for interval bounded variables
		    and x for the others.
		disp : bool
		   Set to True to print convergence messages.
		maxCGit : int
		    Maximum number of hessian*vector evaluations per main
		    iteration.  If maxCGit == 0, the direction chosen is
		    -gradient if maxCGit < 0, maxCGit is set to
		    max(1,min(50,n/2)).  Defaults to -1.
		maxiter : int
		    Maximum number of function evaluation.  if None, `maxiter` is
		    set to max(100, 10*len(x0)).  Defaults to None.
		eta : float
		    Severity of the line search. if < 0 or > 1, set to 0.25.
		    Defaults to -1.
		stepmx : float
		    Maximum step for the line search.  May be increased during
		    call.  If too small, it will be set to 10.0.  Defaults to 0.
		accuracy : float
		    Relative precision for finite difference calculations.  If
		    <= machine_precision, set to sqrt(machine_precision).
		    Defaults to 0.
		minfev : float
		    Minimum function value estimate.  Defaults to 0.
		ftol : float
		    Precision goal for the value of f in the stoping criterion.
		    If ftol < 0.0, ftol is set to 0.0 defaults to -1.
		xtol : float
		    Precision goal for the value of x in the stopping
		    criterion (after applying x scaling factors).  If xtol <
		    0.0, xtol is set to sqrt(machine_precision).  Defaults to
		    -1.
		gtol : float
		    Precision goal for the value of the projected gradient in
		    the stopping criterion (after applying x scaling factors).
		    If gtol < 0.0, gtol is set to 1e-2 * sqrt(accuracy).
		    Setting it to 0.0 is not recommended.  Defaults to -1.
		rescale : float
		    Scaling factor (in log10) used to trigger f value
		    rescaling.  If 0, rescale at each iteration.  If a large
		    value, never rescale.  If < 0, rescale is set to 1.3.
	**/
	static public function _minimize_tnc(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?bounds:Dynamic, ?eps:Dynamic, ?scale:Dynamic, ?offset:Dynamic, ?mesg_num:Dynamic, ?maxCGit:Dynamic, ?maxiter:Dynamic, ?eta:Dynamic, ?stepmx:Dynamic, ?accuracy:Dynamic, ?minfev:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?rescale:Dynamic, ?disp:Dynamic, ?callback:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Minimize a function with variables subject to bounds, using
		gradient information in a truncated Newton algorithm. This
		method wraps a C implementation of the algorithm.
		
		Parameters
		----------
		func : callable ``func(x, *args)``
		    Function to minimize.  Must do one of:
		
		    1. Return f and g, where f is the value of the function and g its
		       gradient (a list of floats).
		
		    2. Return the function value but supply gradient function
		       separately as `fprime`.
		
		    3. Return the function value and set ``approx_grad=True``.
		
		    If the function returns None, the minimization
		    is aborted.
		x0 : array_like
		    Initial estimate of minimum.
		fprime : callable ``fprime(x, *args)``, optional
		    Gradient of `func`. If None, then either `func` must return the
		    function value and the gradient (``f,g = func(x, *args)``)
		    or `approx_grad` must be True.
		args : tuple, optional
		    Arguments to pass to function.
		approx_grad : bool, optional
		    If true, approximate the gradient numerically.
		bounds : list, optional
		    (min, max) pairs for each element in x0, defining the
		    bounds on that parameter. Use None or +/-inf for one of
		    min or max when there is no bound in that direction.
		epsilon : float, optional
		    Used if approx_grad is True. The stepsize in a finite
		    difference approximation for fprime.
		scale : array_like, optional
		    Scaling factors to apply to each variable.  If None, the
		    factors are up-low for interval bounded variables and
		    1+|x| for the others.  Defaults to None.
		offset : array_like, optional
		    Value to subtract from each variable.  If None, the
		    offsets are (up+low)/2 for interval bounded variables
		    and x for the others.
		messages : int, optional
		    Bit mask used to select messages display during
		    minimization values defined in the MSGS dict.  Defaults to
		    MGS_ALL.
		disp : int, optional
		    Integer interface to messages.  0 = no message, 5 = all messages
		maxCGit : int, optional
		    Maximum number of hessian*vector evaluations per main
		    iteration.  If maxCGit == 0, the direction chosen is
		    -gradient if maxCGit < 0, maxCGit is set to
		    max(1,min(50,n/2)).  Defaults to -1.
		maxfun : int, optional
		    Maximum number of function evaluation.  if None, maxfun is
		    set to max(100, 10*len(x0)).  Defaults to None.
		eta : float, optional
		    Severity of the line search. if < 0 or > 1, set to 0.25.
		    Defaults to -1.
		stepmx : float, optional
		    Maximum step for the line search.  May be increased during
		    call.  If too small, it will be set to 10.0.  Defaults to 0.
		accuracy : float, optional
		    Relative precision for finite difference calculations.  If
		    <= machine_precision, set to sqrt(machine_precision).
		    Defaults to 0.
		fmin : float, optional
		    Minimum function value estimate.  Defaults to 0.
		ftol : float, optional
		    Precision goal for the value of f in the stoping criterion.
		    If ftol < 0.0, ftol is set to 0.0 defaults to -1.
		xtol : float, optional
		    Precision goal for the value of x in the stopping
		    criterion (after applying x scaling factors).  If xtol <
		    0.0, xtol is set to sqrt(machine_precision).  Defaults to
		    -1.
		pgtol : float, optional
		    Precision goal for the value of the projected gradient in
		    the stopping criterion (after applying x scaling factors).
		    If pgtol < 0.0, pgtol is set to 1e-2 * sqrt(accuracy).
		    Setting it to 0.0 is not recommended.  Defaults to -1.
		rescale : float, optional
		    Scaling factor (in log10) used to trigger f value
		    rescaling.  If 0, rescale at each iteration.  If a large
		    value, never rescale.  If < 0, rescale is set to 1.3.
		callback : callable, optional
		    Called after each iteration, as callback(xk), where xk is the
		    current parameter vector.
		
		Returns
		-------
		x : ndarray
		    The solution.
		nfeval : int
		    The number of function evaluations.
		rc : int
		    Return code, see below
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'TNC' `method` in particular.
		
		Notes
		-----
		The underlying algorithm is truncated Newton, also called
		Newton Conjugate-Gradient. This method differs from
		scipy.optimize.fmin_ncg in that
		
		1. It wraps a C implementation of the algorithm
		2. It allows each variable to be given an upper and lower bound.
		
		The algorithm incoporates the bound constraints by determining
		the descent direction as in an unconstrained truncated Newton,
		but never taking a step-size large enough to leave the space
		of feasible x's. The algorithm keeps track of a set of
		currently active constraints, and ignores them when computing
		the minimum allowable step size. (The x's associated with the
		active constraint are kept fixed.) If the maximum allowable
		step size is zero then a new constraint is added. At the end
		of each iteration one of the constraints may be deemed no
		longer active and removed. A constraint is considered
		no longer active is if it is currently active
		but the gradient for that variable points inward from the
		constraint. The specific constraint removed is the one
		associated with the variable of largest index whose
		constraint is no longer active.
		
		Return codes are defined as follows::
		
		    -1 : Infeasible (lower bound > upper bound)
		     0 : Local minimum reached (|pg| ~= 0)
		     1 : Converged (|f_n-f_(n-1)| ~= 0)
		     2 : Converged (|x_n-x_(n-1)| ~= 0)
		     3 : Max. number of function evaluations reached
		     4 : Linear search failed
		     5 : All lower bounds are equal to the upper bounds
		     6 : Unable to progress
		     7 : User requested end of minimization
		
		References
		----------
		Wright S., Nocedal J. (2006), 'Numerical Optimization'
		
		Nash S.G. (1984), "Newton-Type Minimization Via the Lanczos Method",
		SIAM Journal of Numerical Analysis 21, pp. 770-778
	**/
	static public function fmin_tnc(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?approx_grad:Dynamic, ?bounds:Dynamic, ?epsilon:Dynamic, ?scale:Dynamic, ?offset:Dynamic, ?messages:Dynamic, ?maxCGit:Dynamic, ?maxfun:Dynamic, ?eta:Dynamic, ?stepmx:Dynamic, ?accuracy:Dynamic, ?fmin:Dynamic, ?ftol:Dynamic, ?xtol:Dynamic, ?pgtol:Dynamic, ?rescale:Dynamic, ?disp:Dynamic, ?callback:Dynamic):Dynamic;
	static public var inf : Dynamic;
	static public var print_function : Dynamic;
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