/* This file is generated, do not edit! */
package scipy.optimize.lbfgsb;
@:pythonImport("scipy.optimize.lbfgsb") extern class Lbfgsb_Module {
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
		See ``approx_fprime``.  An optional initial function value arg is added.
	**/
	static public function _approx_fprime_helper(xk:Dynamic, f:Dynamic, epsilon:Dynamic, ?args:Dynamic, ?f0:Dynamic):Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Minimize a scalar function of one or more variables using the L-BFGS-B
		algorithm.
		
		Options
		-------
		disp : None or int
		    If `disp is None` (the default), then the supplied version of `iprint`
		    is used. If `disp is not None`, then it overrides the supplied version
		    of `iprint` with the behaviour you outlined.
		maxcor : int
		    The maximum number of variable metric corrections used to
		    define the limited memory matrix. (The limited memory BFGS
		    method does not store the full hessian but uses this many terms
		    in an approximation to it.)
		ftol : float
		    The iteration stops when ``(f^k -
		    f^{k+1})/max{|f^k|,|f^{k+1}|,1} <= ftol``.
		gtol : float
		    The iteration will stop when ``max{|proj g_i | i = 1, ..., n}
		    <= gtol`` where ``pg_i`` is the i-th component of the
		    projected gradient.
		eps : float
		    Step size used for numerical approximation of the jacobian.
		maxfun : int
		    Maximum number of function evaluations.
		maxiter : int
		    Maximum number of iterations.
		maxls : int, optional
		    Maximum number of line search steps (per iteration). Default is 20.
		
		Notes
		-----
		The option `ftol` is exposed via the `scipy.optimize.minimize` interface,
		but calling `scipy.optimize.fmin_l_bfgs_b` directly exposes `factr`. The
		relationship between the two is ``ftol = factr * numpy.finfo(float).eps``.
		I.e., `factr` multiplies the default machine floating-point precision to
		arrive at `ftol`.
	**/
	static public function _minimize_lbfgsb(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?bounds:Dynamic, ?disp:Dynamic, ?maxcor:Dynamic, ?ftol:Dynamic, ?gtol:Dynamic, ?eps:Dynamic, ?maxfun:Dynamic, ?maxiter:Dynamic, ?iprint:Dynamic, ?callback:Dynamic, ?maxls:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
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
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
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
	static public var division : Dynamic;
	/**
		Minimize a function func using the L-BFGS-B algorithm.
		
		Parameters
		----------
		func : callable f(x,*args)
		    Function to minimise.
		x0 : ndarray
		    Initial guess.
		fprime : callable fprime(x,*args), optional
		    The gradient of `func`.  If None, then `func` returns the function
		    value and the gradient (``f, g = func(x, *args)``), unless
		    `approx_grad` is True in which case `func` returns only ``f``.
		args : sequence, optional
		    Arguments to pass to `func` and `fprime`.
		approx_grad : bool, optional
		    Whether to approximate the gradient numerically (in which case
		    `func` returns only the function value).
		bounds : list, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None or +-inf for one of ``min`` or
		    ``max`` when there is no bound in that direction.
		m : int, optional
		    The maximum number of variable metric corrections
		    used to define the limited memory matrix. (The limited memory BFGS
		    method does not store the full hessian but uses this many terms in an
		    approximation to it.)
		factr : float, optional
		    The iteration stops when
		    ``(f^k - f^{k+1})/max{|f^k|,|f^{k+1}|,1} <= factr * eps``,
		    where ``eps`` is the machine precision, which is automatically
		    generated by the code. Typical values for `factr` are: 1e12 for
		    low accuracy; 1e7 for moderate accuracy; 10.0 for extremely
		    high accuracy. See Notes for relationship to `ftol`, which is exposed
		    (instead of `factr`) by the `scipy.optimize.minimize` interface to
		    L-BFGS-B.
		pgtol : float, optional
		    The iteration will stop when
		    ``max{|proj g_i | i = 1, ..., n} <= pgtol``
		    where ``pg_i`` is the i-th component of the projected gradient.
		epsilon : float, optional
		    Step size used when `approx_grad` is True, for numerically
		    calculating the gradient
		iprint : int, optional
		    Controls the frequency of output. ``iprint < 0`` means no output;
		    ``iprint = 0``    print only one line at the last iteration;
		    ``0 < iprint < 99`` print also f and ``|proj g|`` every iprint iterations;
		    ``iprint = 99``   print details of every iteration except n-vectors;
		    ``iprint = 100``  print also the changes of active set and final x;
		    ``iprint > 100``  print details of every iteration including x and g.
		disp : int, optional
		    If zero, then no output.  If a positive number, then this over-rides
		    `iprint` (i.e., `iprint` gets the value of `disp`).
		maxfun : int, optional
		    Maximum number of function evaluations.
		maxiter : int, optional
		    Maximum number of iterations.
		callback : callable, optional
		    Called after each iteration, as ``callback(xk)``, where ``xk`` is the
		    current parameter vector.
		maxls : int, optional
		    Maximum number of line search steps (per iteration). Default is 20.
		
		Returns
		-------
		x : array_like
		    Estimated position of the minimum.
		f : float
		    Value of `func` at the minimum.
		d : dict
		    Information dictionary.
		
		    * d['warnflag'] is
		
		      - 0 if converged,
		      - 1 if too many function evaluations or too many iterations,
		      - 2 if stopped for another reason, given in d['task']
		
		    * d['grad'] is the gradient at the minimum (should be 0 ish)
		    * d['funcalls'] is the number of function calls made.
		    * d['nit'] is the number of iterations.
		
		See also
		--------
		minimize: Interface to minimization algorithms for multivariate
		    functions. See the 'L-BFGS-B' `method` in particular. Note that the
		    `ftol` option is made available via that interface, while `factr` is
		    provided via this interface, where `factr` is the factor multiplying
		    the default machine floating-point precision to arrive at `ftol`:
		    ``ftol = factr * numpy.finfo(float).eps``.
		
		Notes
		-----
		License of L-BFGS-B (FORTRAN code):
		
		The version included here (in fortran code) is 3.0
		(released April 25, 2011).  It was written by Ciyou Zhu, Richard Byrd,
		and Jorge Nocedal <nocedal@ece.nwu.edu>. It carries the following
		condition for use:
		
		This software is freely available, but we expect that all publications
		describing work using this software, or all commercial products using it,
		quote at least one of the references given below. This software is released
		under the BSD License.
		
		References
		----------
		* R. H. Byrd, P. Lu and J. Nocedal. A Limited Memory Algorithm for Bound
		  Constrained Optimization, (1995), SIAM Journal on Scientific and
		  Statistical Computing, 16, 5, pp. 1190-1208.
		* C. Zhu, R. H. Byrd and J. Nocedal. L-BFGS-B: Algorithm 778: L-BFGS-B,
		  FORTRAN routines for large scale bound constrained optimization (1997),
		  ACM Transactions on Mathematical Software, 23, 4, pp. 550 - 560.
		* J.L. Morales and J. Nocedal. L-BFGS-B: Remark on Algorithm 778: L-BFGS-B,
		  FORTRAN routines for large scale bound constrained optimization (2011),
		  ACM Transactions on Mathematical Software, 38, 1.
	**/
	static public function fmin_l_bfgs_b(func:Dynamic, x0:Dynamic, ?fprime:Dynamic, ?args:Dynamic, ?approx_grad:Dynamic, ?bounds:Dynamic, ?m:Dynamic, ?factr:Dynamic, ?pgtol:Dynamic, ?epsilon:Dynamic, ?iprint:Dynamic, ?maxfun:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?callback:Dynamic, ?maxls:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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