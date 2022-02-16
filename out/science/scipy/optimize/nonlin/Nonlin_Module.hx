/* This file is generated, do not edit! */
package scipy.optimize.nonlin;
@:pythonImport("scipy.optimize.nonlin") extern class Nonlin_Module {
	/**
		Find a root of a function, using (extended) Anderson mixing.
		
		The Jacobian is formed by for a 'best' solution in the space
		spanned by last `M` vectors. As a result, only a MxM matrix
		inversions and MxN multiplications are required. [Ey]_
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is (-1/alpha).
		M : float, optional
		    Number of previous vectors to retain. Defaults to 5.
		w0 : float, optional
		    Regularization parameter for numerical stability.
		    Compared to unity, good values of the order of 0.01.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='anderson'`` in particular.
		
		References
		----------
		.. [Ey] V. Eyert, J. Comp. Phys., 124, 271 (1996).
		
		Examples
		--------
		The following functions define a system of nonlinear equations
		
		>>> def fun(x):
		...     return [x[0]  + 0.5 * (x[0] - x[1])**3 - 1.0,
		...             0.5 * (x[1] - x[0])**3 + x[1]]
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.anderson(fun, [0, 0])
		>>> sol
		array([0.84116588, 0.15883789])
	**/
	static public function anderson(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?w0:Dynamic, ?M:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		Convert given object to one suitable for use as a Jacobian.
	**/
	static public function asjacobian(J:Dynamic):Dynamic;
	/**
		Find a root of a function, using Broyden's first Jacobian approximation.
		
		This method is also known as \"Broyden's good method\".
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is ``(-1/alpha)``.
		reduction_method : str or tuple, optional
		    Method used in ensuring that the rank of the Broyden matrix
		    stays low. Can either be a string giving the name of the method,
		    or a tuple of the form ``(method, param1, param2, ...)``
		    that gives the name of the method and values for additional parameters.
		
		    Methods available:
		
		        - ``restart``: drop all matrix columns. Has no extra parameters.
		        - ``simple``: drop oldest matrix column. Has no extra parameters.
		        - ``svd``: keep only the most significant SVD components.
		          Takes an extra parameter, ``to_retain``, which determines the
		          number of SVD components to retain when rank reduction is done.
		          Default is ``max_rank - 2``.
		
		max_rank : int, optional
		    Maximum rank for the Broyden matrix.
		    Default is infinity (i.e., no rank reduction).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='broyden1'`` in particular.
		
		Notes
		-----
		This algorithm implements the inverse Jacobian Quasi-Newton update
		
		.. math:: H_+ = H + (dx - H df) dx^\dagger H / ( dx^\dagger H df)
		
		which corresponds to Broyden's first Jacobian update
		
		.. math:: J_+ = J + (df - J dx) dx^\dagger / dx^\dagger dx
		
		
		References
		----------
		.. [1] B.A. van der Rotten, PhD thesis,
		   \"A limited memory Broyden method to solve high-dimensional
		   systems of nonlinear equations\". Mathematisch Instituut,
		   Universiteit Leiden, The Netherlands (2003).
		
		   https://web.archive.org/web/20161022015821/http://www.math.leidenuniv.nl/scripties/Rotten.pdf
		
		Examples
		--------
		The following functions define a system of nonlinear equations
		
		>>> def fun(x):
		...     return [x[0]  + 0.5 * (x[0] - x[1])**3 - 1.0,
		...             0.5 * (x[1] - x[0])**3 + x[1]]
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.broyden1(fun, [0, 0])
		>>> sol
		array([0.84116396, 0.15883641])
	**/
	static public function broyden1(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?reduction_method:Dynamic, ?max_rank:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find a root of a function, using Broyden's second Jacobian approximation.
		
		This method is also known as "Broyden's bad method".
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is ``(-1/alpha)``.
		reduction_method : str or tuple, optional
		    Method used in ensuring that the rank of the Broyden matrix
		    stays low. Can either be a string giving the name of the method,
		    or a tuple of the form ``(method, param1, param2, ...)``
		    that gives the name of the method and values for additional parameters.
		
		    Methods available:
		
		        - ``restart``: drop all matrix columns. Has no extra parameters.
		        - ``simple``: drop oldest matrix column. Has no extra parameters.
		        - ``svd``: keep only the most significant SVD components.
		          Takes an extra parameter, ``to_retain``, which determines the
		          number of SVD components to retain when rank reduction is done.
		          Default is ``max_rank - 2``.
		
		max_rank : int, optional
		    Maximum rank for the Broyden matrix.
		    Default is infinity (i.e., no rank reduction).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='broyden2'`` in particular.
		
		Notes
		-----
		This algorithm implements the inverse Jacobian Quasi-Newton update
		
		.. math:: H_+ = H + (dx - H df) df^\dagger / ( df^\dagger df)
		
		corresponding to Broyden's second method.
		
		References
		----------
		.. [1] B.A. van der Rotten, PhD thesis,
		   "A limited memory Broyden method to solve high-dimensional
		   systems of nonlinear equations". Mathematisch Instituut,
		   Universiteit Leiden, The Netherlands (2003).
		
		   https://web.archive.org/web/20161022015821/http://www.math.leidenuniv.nl/scripties/Rotten.pdf
		
		Examples
		--------
		The following functions define a system of nonlinear equations
		
		>>> def fun(x):
		...     return [x[0]  + 0.5 * (x[0] - x[1])**3 - 1.0,
		...             0.5 * (x[1] - x[0])**3 + x[1]]
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.broyden2(fun, [0, 0])
		>>> sol
		array([0.84116365, 0.15883529])
	**/
	static public function broyden2(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?reduction_method:Dynamic, ?max_rank:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find a root of a function, using diagonal Broyden Jacobian approximation.
		
		The Jacobian approximation is derived from previous iterations, by
		retaining only the diagonal of Broyden matrices.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial guess for the Jacobian is (-1/alpha).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='diagbroyden'`` in particular.
		
		Examples
		--------
		The following functions define a system of nonlinear equations
		
		>>> def fun(x):
		...     return [x[0]  + 0.5 * (x[0] - x[1])**3 - 1.0,
		...             0.5 * (x[1] - x[0])**3 + x[1]]
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.diagbroyden(fun, [0, 0])
		>>> sol
		array([0.84116403, 0.15883384])
	**/
	static public function diagbroyden(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		Find a root of a function, using a tuned diagonal Jacobian approximation.
		
		The Jacobian matrix is diagonal and is tuned on each iteration.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='excitingmixing'`` in particular.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    Initial Jacobian approximation is (-1/alpha).
		alphamax : float, optional
		    The entries of the diagonal Jacobian are kept in the range
		    ``[alpha, alphamax]``.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
	**/
	static public function excitingmixing(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?alphamax:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return available BLAS function objects from names.
		
		Arrays are used to determine the optimal prefix of BLAS routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of BLAS functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of BLAS
		    routines. If not given, double-precision routines will be
		    used, otherwise the most generic type in arrays will be used.
		
		dtype : str or dtype, optional
		    Data-type specifier. Not used if `arrays` is non-empty.
		
		ilp64 : {True, False, 'preferred'}, optional
		    Whether to return ILP64 routine variant.
		    Choosing 'preferred' returns ILP64 routine if available,
		    and otherwise the 32-bit routine. Default: False
		
		Returns
		-------
		funcs : list
		    List containing the found function(s).
		
		
		Notes
		-----
		This routine automatically chooses between Fortran/C
		interfaces. Fortran code is used whenever possible for arrays with
		column major order. In all other cases, C code is preferred.
		
		In BLAS, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the NumPy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
		
		Examples
		--------
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((3,2))
		>>> x_gemv = LA.get_blas_funcs('gemv', (a,))
		>>> x_gemv.typecode
		'd'
		>>> x_gemv = LA.get_blas_funcs('gemv',(a*1j,))
		>>> x_gemv.typecode
		'z'
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic, ?ilp64:Dynamic):Array<Dynamic>;
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
		Find a root of a function, using a scalar Jacobian approximation.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		alpha : float, optional
		    The Jacobian approximation is (-1/alpha).
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='linearmixing'`` in particular.
	**/
	static public function linearmixing(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function maxnorm(x:Dynamic):Dynamic;
	/**
		Find a root of a function, using Krylov approximation for inverse Jacobian.
		
		This method is suitable for solving large-scale problems.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		rdiff : float, optional
		    Relative step size to use in numerical differentiation.
		method : {'lgmres', 'gmres', 'bicgstab', 'cgs', 'minres'} or function
		    Krylov method to use to approximate the Jacobian.
		    Can be a string, or a function implementing the same interface as
		    the iterative solvers in `scipy.sparse.linalg`.
		
		    The default is `scipy.sparse.linalg.lgmres`.
		inner_maxiter : int, optional
		    Parameter to pass to the "inner" Krylov solver: maximum number of
		    iterations. Iteration will stop after maxiter steps even if the
		    specified tolerance has not been achieved.
		inner_M : LinearOperator or InverseJacobian
		    Preconditioner for the inner Krylov iteration.
		    Note that you can use also inverse Jacobians as (adaptive)
		    preconditioners. For example,
		
		    >>> from scipy.optimize.nonlin import BroydenFirst, KrylovJacobian
		    >>> from scipy.optimize.nonlin import InverseJacobian
		    >>> jac = BroydenFirst()
		    >>> kjac = KrylovJacobian(inner_M=InverseJacobian(jac))
		
		    If the preconditioner has a method named 'update', it will be called
		    as ``update(x, f)`` after each nonlinear step, with ``x`` giving
		    the current point, and ``f`` the current function value.
		outer_k : int, optional
		    Size of the subspace kept across LGMRES nonlinear iterations.
		    See `scipy.sparse.linalg.lgmres` for details.
		inner_kwargs : kwargs
		    Keyword parameters for the "inner" Krylov solver
		    (defined with `method`). Parameter names must start with
		    the `inner_` prefix which will be stripped before passing on
		    the inner method. See, e.g., `scipy.sparse.linalg.gmres` for details.
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		
		See Also
		--------
		root : Interface to root finding algorithms for multivariate
		       functions. See ``method=='krylov'`` in particular.
		scipy.sparse.linalg.gmres
		scipy.sparse.linalg.lgmres
		
		Notes
		-----
		This function implements a Newton-Krylov solver. The basic idea is
		to compute the inverse of the Jacobian with an iterative Krylov
		method. These methods require only evaluating the Jacobian-vector
		products, which are conveniently approximated by a finite difference:
		
		.. math:: J v \approx (f(x + \omega*v/|v|) - f(x)) / \omega
		
		Due to the use of iterative matrix inverses, these methods can
		deal with large nonlinear problems.
		
		SciPy's `scipy.sparse.linalg` module offers a selection of Krylov
		solvers to choose from. The default here is `lgmres`, which is a
		variant of restarted GMRES iteration that reuses some of the
		information obtained in the previous Newton steps to invert
		Jacobians in subsequent steps.
		
		For a review on Newton-Krylov methods, see for example [1]_,
		and for the LGMRES sparse inverse method, see [2]_.
		
		References
		----------
		.. [1] D.A. Knoll and D.E. Keyes, J. Comp. Phys. 193, 357 (2004).
		       :doi:`10.1016/j.jcp.2003.08.010`
		.. [2] A.H. Baker and E.R. Jessup and T. Manteuffel,
		       SIAM J. Matrix Anal. Appl. 26, 962 (2005).
		       :doi:`10.1137/S0895479803422014`
		
		Examples
		--------
		The following functions define a system of nonlinear equations
		
		>>> def fun(x):
		...     return [x[0] + 0.5 * x[1] - 1.0,
		...             0.5 * (x[1] - x[0]) ** 2]
		
		A solution can be obtained as follows.
		
		>>> from scipy import optimize
		>>> sol = optimize.newton_krylov(fun, [0, 0])
		>>> sol
		array([0.66731771, 0.66536458])
	**/
	static public function newton_krylov(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?rdiff:Dynamic, ?method:Dynamic, ?inner_maxiter:Dynamic, ?inner_M:Dynamic, ?outer_k:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find a root of a function, in a way suitable for large-scale problems.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		xin : array_like
		    Initial guess for the solution
		jacobian : Jacobian
		    A Jacobian approximation: `Jacobian` object or something that
		    `asjacobian` can transform to one. Alternatively, a string specifying
		    which of the builtin Jacobian approximations to use:
		
		        krylov, broyden1, broyden2, anderson
		        diagbroyden, linearmixing, excitingmixing
		
		iter : int, optional
		    Number of iterations to make. If omitted (default), make as many
		    as required to meet tolerances.
		verbose : bool, optional
		    Print status to stdout on every iteration.
		maxiter : int, optional
		    Maximum number of iterations to make. If more are needed to
		    meet convergence, `NoConvergence` is raised.
		f_tol : float, optional
		    Absolute tolerance (in max-norm) for the residual.
		    If omitted, default is 6e-6.
		f_rtol : float, optional
		    Relative tolerance for the residual. If omitted, not used.
		x_tol : float, optional
		    Absolute minimum step size, as determined from the Jacobian
		    approximation. If the step size is smaller than this, optimization
		    is terminated as successful. If omitted, not used.
		x_rtol : float, optional
		    Relative minimum step size. If omitted, not used.
		tol_norm : function(vector) -> scalar, optional
		    Norm to use in convergence check. Default is the maximum norm.
		line_search : {None, 'armijo' (default), 'wolfe'}, optional
		    Which type of a line search to use to determine the step size in the
		    direction given by the Jacobian approximation. Defaults to 'armijo'.
		callback : function, optional
		    Optional callback function. It is called on every iteration as
		    ``callback(x, f)`` where `x` is the current solution and `f`
		    the corresponding residual.
		
		Returns
		-------
		sol : ndarray
		    An array (of similar array type as `x0`) containing the final solution.
		
		Raises
		------
		NoConvergence
		    When a solution was not found.
		full_output : bool
		    If true, returns a dictionary `info` containing convergence
		    information.
		raise_exception : bool
		    If True, a `NoConvergence` exception is raise if no solution is found.
		
		See Also
		--------
		asjacobian, Jacobian
		
		Notes
		-----
		This algorithm implements the inexact Newton method, with
		backtracking or full line searches. Several Jacobian
		approximations are available, including Krylov and Quasi-Newton
		methods.
		
		References
		----------
		.. [KIM] C. T. Kelley, "Iterative Methods for Linear and Nonlinear
		   Equations". Society for Industrial and Applied Mathematics. (1995)
		   https://archive.siam.org/books/kelley/fr16/
	**/
	static public function nonlin_solve(F:Dynamic, x0:Dynamic, ?jacobian:Dynamic, ?iter:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?full_output:Dynamic, ?raise_exception:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter. For tensors with rank different from
		1 or 2, only `ord=None` is supported.
		
		Parameters
		----------
		a : array_like
		    Input array. If `axis` is None, `a` must be 1-D or 2-D, unless `ord`
		    is None. If both `axis` and `ord` are None, the 2-norm of
		    ``a.ravel`` will be returned.
		ord : {int, inf, -inf, 'fro', 'nuc', None}, optional
		    Order of the norm (see table under ``Notes``). inf means NumPy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms. If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed. If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one. With this option the result will
		    broadcast correctly against the original `a`.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(a), axis=1))      max(abs(a))
		-inf   min(sum(abs(a), axis=1))      min(abs(a))
		0      --                            sum(a != 0)
		1      max(sum(abs(a), axis=0))      as below
		-1     min(sum(abs(a), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(a)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		Both the Frobenius and nuclear norm orders are only defined for
		matrices.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in `a` is overwritten (may improve performance if
		    `overwrite_a` is set to True by reusing the existing input data
		    structure rather than creating a new one.)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in SciPy 0.11) makes the function return two matrices
		    (Q, TAU) in the internal format used by LAPACK.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition. If pivoting, compute the decomposition
		    ``A P = Q R`` as above, but where P is chosen such that the diagonal
		    of R is non-increasing.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		Q : float or complex ndarray
		    Of shape (M, M), or (M, K) for ``mode='economic'``. Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``. ``K = min(M, N)``.
		P : int ndarray
		    Of shape (N,) for ``pivoting=True``. Not returned if
		    ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dorgqr, zungqr, dgeqp3, and zgeqp3.
		
		If ``mode=economic``, the shapes of Q and R are (M, K) and (K, N) instead
		of (M,M) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> rng = np.random.default_rng()
		>>> a = rng.standard_normal((9, 6))
		
		>>> q, r = linalg.qr(a)
		>>> np.allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> np.allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = np.abs(np.diag(r4))
		>>> np.all(d[1:] <= d[:-1])
		True
		>>> np.allclose(a[:, p4], np.dot(q4, r4))
		True
		>>> q4.shape, r4.shape, p4.shape
		((9, 9), (9, 6), (6,))
		
		>>> q5, r5, p5 = linalg.qr(a, mode='economic', pivoting=True)
		>>> q5.shape, r5.shape, p5.shape
		((9, 6), (6, 6), (6,))
	**/
	static public function qr(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Minimize over alpha, the function ``phi(alpha)``.
		
		Uses the interpolation algorithm (Armijo backtracking) as suggested by
		Wright and Nocedal in 'Numerical Optimization', 1999, pp. 56-57
		
		alpha > 0 is assumed to be a descent direction.
		
		Returns
		-------
		alpha
		phi1
	**/
	static public function scalar_search_armijo(phi:Dynamic, phi0:Dynamic, derphi0:Dynamic, ?c1:Dynamic, ?alpha0:Dynamic, ?amin:Dynamic):Dynamic;
	/**
		Scalar function search for alpha that satisfies strong Wolfe conditions
		
		alpha > 0 is assumed to be a descent direction.
		
		Parameters
		----------
		phi : callable phi(alpha)
		    Function at point `alpha`
		derphi : callable phi'(alpha)
		    Objective function derivative. Returns a scalar.
		phi0 : float, optional
		    Value of phi at 0
		old_phi0 : float, optional
		    Value of phi at previous point
		derphi0 : float, optional
		    Value derphi at 0
		c1 : float, optional
		    Parameter for Armijo condition rule.
		c2 : float, optional
		    Parameter for curvature condition rule.
		amax, amin : float, optional
		    Maximum and minimum step size
		xtol : float, optional
		    Relative tolerance for an acceptable step.
		
		Returns
		-------
		alpha : float
		    Step size, or None if no suitable step was found
		phi : float
		    Value of `phi` at the new point `alpha`
		phi0 : float
		    Value of `phi` at `alpha=0`
		
		Notes
		-----
		Uses routine DCSRCH from MINPACK.
	**/
	static public function scalar_search_wolfe1(phi:Dynamic, derphi:Dynamic, ?phi0:Dynamic, ?old_phi0:Dynamic, ?derphi0:Dynamic, ?c1:Dynamic, ?c2:Dynamic, ?amax:Dynamic, ?amin:Dynamic, ?xtol:Dynamic):Float;
	/**
		Solves the linear equation set ``a * x = b`` for the unknown ``x``
		for square ``a`` matrix.
		
		If the data matrix is known to be a particular type then supplying the
		corresponding string to ``assume_a`` key chooses the dedicated solver.
		The available options are
		
		===================  ========
		 generic matrix       'gen'
		 symmetric            'sym'
		 hermitian            'her'
		 positive definite    'pos'
		===================  ========
		
		If omitted, ``'gen'`` is the default structure.
		
		The datatype of the arrays define which solver is called regardless
		of the values. In other words, even when the complex array entries have
		precisely zero imaginary parts, the complex solver will be called based
		on the data type of the array.
		
		Parameters
		----------
		a : (N, N) array_like
		    Square input data
		b : (N, NRHS) array_like
		    Input data for the right hand side.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite. This key is deprecated
		    and assume_a = 'pos' keyword is recommended instead. The functionality
		    is the same. It will be removed in the future.
		lower : bool, optional
		    If True, only the data contained in the lower triangle of `a`. Default
		    is to use upper triangle. (ignored for ``'gen'``)
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		assume_a : str, optional
		    Valid entries are explained above.
		transposed: bool, optional
		    If True, ``a^T x = b`` for real matrices, raises `NotImplementedError`
		    for complex matrices (only for True).
		
		Returns
		-------
		x : (N, NRHS) ndarray
		    The solution array.
		
		Raises
		------
		ValueError
		    If size mismatches detected or input a is not square.
		LinAlgError
		    If the matrix is singular.
		LinAlgWarning
		    If an ill-conditioned input a is detected.
		NotImplementedError
		    If transposed is True and input a is a complex matrix.
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
		
		Notes
		-----
		If the input b matrix is a 1-D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1-D array.
		
		The generic, symmetric, Hermitian and positive definite solutions are
		obtained via calling ?GESV, ?SYSV, ?HESV, and ?POSV routines of
		LAPACK respectively.
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic, ?assume_a:Dynamic, ?transposed:Dynamic):Dynamic;
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
		vdot(a, b, /)
		
		Return the dot product of two vectors.
		
		The vdot(`a`, `b`) function handles complex numbers differently than
		dot(`a`, `b`).  If the first argument is complex the complex conjugate
		of the first argument is used for the calculation of the dot product.
		
		Note that `vdot` handles multidimensional arrays differently than `dot`:
		it does *not* perform a matrix product, but flattens input arguments
		to 1-D vectors first. Consequently, it should only be used for vectors.
		
		Parameters
		----------
		a : array_like
		    If `a` is complex the complex conjugate is taken before calculation
		    of the dot product.
		b : array_like
		    Second argument to the dot product.
		
		Returns
		-------
		output : ndarray
		    Dot product of `a` and `b`.  Can be an int, float, or
		    complex depending on the types of `a` and `b`.
		
		See Also
		--------
		dot : Return the dot product without using the complex conjugate of the
		      first argument.
		
		Examples
		--------
		>>> a = np.array([1+2j,3+4j])
		>>> b = np.array([5+6j,7+8j])
		>>> np.vdot(a, b)
		(70-8j)
		>>> np.vdot(b, a)
		(70+8j)
		
		Note that higher-dimensional arrays are flattened!
		
		>>> a = np.array([[1, 4], [5, 6]])
		>>> b = np.array([[4, 1], [2, 2]])
		>>> np.vdot(a, b)
		30
		>>> np.vdot(b, a)
		30
		>>> 1*4 + 4*1 + 5*2 + 6*2
		30
	**/
	static public function vdot(args:haxe.extern.Rest<Dynamic>):Dynamic;
}