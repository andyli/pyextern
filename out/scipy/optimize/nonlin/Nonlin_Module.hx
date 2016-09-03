/* This file is generated, do not edit! */
package scipy.optimize.nonlin;
@:pythonImport("scipy.optimize.nonlin") extern class Nonlin_Module {
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
		Return ndarray `x` as same array subclass and shape as `x0`
	**/
	static public function _array_like(x:Dynamic, x0:Dynamic):Dynamic;
	/**
		Return `x` as an array, of either floats or complex floats
	**/
	static public function _as_inexact(x:Dynamic):Dynamic;
	static public var _doc_parts : Dynamic;
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
	static public function _nonlin_line_search(func:Dynamic, x:Dynamic, Fx:Dynamic, dx:Dynamic, ?search_type:Dynamic, ?rdiff:Dynamic, ?smin:Dynamic):Dynamic;
	/**
		Construct a solver wrapper with given name and jacobian approx.
		
		It inspects the keyword arguments of ``jac.__init__``, and allows to
		use the same arguments in the wrapper function, in addition to the
		keyword arguments of `nonlin_solve`
	**/
	static public function _nonlin_wrapper(name:Dynamic, jac:Dynamic):Dynamic;
	static public function _safe_norm(v:Dynamic):Dynamic;
	static public function _set_doc(obj:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		x0 : array_like
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
		
		References
		----------
		.. [Ey] V. Eyert, J. Comp. Phys., 124, 271 (1996).
	**/
	static public function anderson(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?w0:Dynamic, ?M:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		x0 : array_like
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
		    Default is infinity (ie., no rank reduction).
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
		
		   http://www.math.leidenuniv.nl/scripties/Rotten.pdf
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
		x0 : array_like
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
		    Default is infinity (ie., no rank reduction).
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
		
		   http://www.math.leidenuniv.nl/scripties/Rotten.pdf
	**/
	static public function broyden2(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?reduction_method:Dynamic, ?max_rank:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function callable(obj:Dynamic):Dynamic;
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
		x0 : array_like
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
	**/
	static public function diagbroyden(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?alpha:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
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
		Find a root of a function, using a tuned diagonal Jacobian approximation.
		
		The Jacobian matrix is diagonal and is tuned on each iteration.
		
		.. warning::
		
		   This algorithm may be useful for specific problems, but whether
		   it will work may depend strongly on the problem.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
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
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
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
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectively.
		The code and the dtype are stored in attributes `typecode` and `dtype`
		of the returned functions.
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
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
		    If `a` is not square, or not 2-dimensional.
		
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
		x0 : array_like
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
		x0 : array_like
		    Initial guess for the solution
		rdiff : float, optional
		    Relative step size to use in numerical differentiation.
		method : {'lgmres', 'gmres', 'bicgstab', 'cgs', 'minres'} or function
		    Krylov method to use to approximate the Jacobian.
		    Can be a string, or a function implementing the same interface as
		    the iterative solvers in `scipy.sparse.linalg`.
		
		    The default is `scipy.sparse.linalg.lgmres`.
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
		inner_tol, inner_maxiter, ...
		    Parameters to pass on to the \"inner\" Krylov solver.
		    See `scipy.sparse.linalg.gmres` for details.
		outer_k : int, optional
		    Size of the subspace kept across LGMRES nonlinear iterations.
		    See `scipy.sparse.linalg.lgmres` for details.
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
		
		Scipy's `scipy.sparse.linalg` module offers a selection of Krylov
		solvers to choose from. The default here is `lgmres`, which is a
		variant of restarted GMRES iteration that reuses some of the
		information obtained in the previous Newton steps to invert
		Jacobians in subsequent steps.
		
		For a review on Newton-Krylov methods, see for example [1]_,
		and for the LGMRES sparse inverse method, see [2]_.
		
		References
		----------
		.. [1] D.A. Knoll and D.E. Keyes, J. Comp. Phys. 193, 357 (2004).
		       doi:10.1016/j.jcp.2003.08.010
		.. [2] A.H. Baker and E.R. Jessup and T. Manteuffel,
		       SIAM J. Matrix Anal. Appl. 26, 962 (2005).
		       doi:10.1137/S0895479803422014
	**/
	static public function newton_krylov(F:Dynamic, xin:Dynamic, ?iter:Dynamic, ?rdiff:Dynamic, ?method:Dynamic, ?inner_maxiter:Dynamic, ?inner_M:Dynamic, ?outer_k:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find a root of a function, in a way suitable for large-scale problems.
		
		Parameters
		----------
		F : function(x) -> f
		    Function whose root to find; should take and return an array-like
		    object.
		x0 : array_like
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
		   http://www.siam.org/books/kelley/
	**/
	static public function nonlin_solve(F:Dynamic, x0:Dynamic, ?jacobian:Dynamic, ?iter:Dynamic, ?verbose:Dynamic, ?maxiter:Dynamic, ?f_tol:Dynamic, ?f_rtol:Dynamic, ?x_tol:Dynamic, ?x_rtol:Dynamic, ?tol_norm:Dynamic, ?line_search:Dynamic, ?callback:Dynamic, ?full_output:Dynamic, ?raise_exception:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
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
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
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
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute QR decomposition of a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be decomposed
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		lwork : int, optional
		    Work array size, lwork >= a.shape[1]. If None or -1, an optimal size
		    is computed.
		mode : {'full', 'r', 'economic', 'raw'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes). The final option 'raw'
		    (added in Scipy 0.11) makes the function return two matrices
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
		    Of shape (M, M), or (M, K) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		R : float or complex ndarray
		    Of shape (M, N), or (K, N) for ``mode='economic'``.  ``K = min(M, N)``.
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
		>>> from scipy import random, linalg, dot, diag, all, allclose
		>>> a = random.randn(9, 6)
		
		>>> q, r = linalg.qr(a)
		>>> allclose(a, np.dot(q, r))
		True
		>>> q.shape, r.shape
		((9, 9), (9, 6))
		
		>>> r2 = linalg.qr(a, mode='r')
		>>> allclose(r, r2)
		True
		
		>>> q3, r3 = linalg.qr(a, mode='economic')
		>>> q3.shape, r3.shape
		((9, 6), (6, 6))
		
		>>> q4, r4, p4 = linalg.qr(a, pivoting=True)
		>>> d = abs(diag(r4))
		>>> all(d[1:] <= d[:-1])
		True
		>>> allclose(a[:, p4], dot(q4, r4))
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
		Wright and Nocedal in 'Numerical Optimization', 1999, pg. 56-57
		
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
		derphi : callable dphi(alpha)
		    Derivative `d phi(alpha)/ds`. Returns a scalar.
		
		phi0 : float, optional
		    Value of `f` at 0
		old_phi0 : float, optional
		    Value of `f` at the previous point
		derphi0 : float, optional
		    Value `derphi` at 0
		c1, c2 : float, optional
		    Wolfe parameters
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
		Solve the equation ``a x = b`` for ``x``.
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``a x = b``.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite.
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`, if `sym_pos` is
		    true.  Default is to use upper triangle.
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
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``a x = b``.  Shape of the return matches the
		    shape of `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular.
		ValueError
		    If `a` is not square
		
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
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		vdot(a, b)
		
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