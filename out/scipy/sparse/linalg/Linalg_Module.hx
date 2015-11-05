/* This file is generated, do not edit! */
package scipy.sparse.linalg;
@:pythonImport("scipy.sparse.linalg") extern class Linalg_Module {
	static public var Inf : Dynamic;
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
		add(x1, x2[, out])
		
		Add arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays to be added.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		add : ndarray or scalar
		    The sum of `x1` and `x2`, element-wise.  Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` + `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.add(1.0, 4.0)
		5.0
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.add(x1, x2)
		array([[  0.,   2.,   4.],
		       [  3.,   5.,   7.],
		       [  6.,   8.,  10.]])
	**/
	static public function add(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amax : ndarray or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amin :
		    The minimum value of an array along a given axis, propagating any NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignoring any NaNs.
		maximum :
		    Element-wise maximum of two arrays, propagating any NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignoring any NaNs.
		argmax :
		    Return the indices of the maximum values.
		
		nanmin, minimum, fmin
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding max value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmax.
		
		Don't use `amax` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``maximum(a[0], a[1])`` is faster than
		``amax(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amax(a)           # Maximum of the flattened array
		3
		>>> np.amax(a, axis=0)   # Maxima along the first axis
		array([2, 3])
		>>> np.amax(a, axis=1)   # Maxima along the second axis
		array([1, 3])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.nanmax(b)
		4.0
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the minimum of an array or minimum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, the minimum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		amin : ndarray or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is an array of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		amax :
		    The maximum value of an array along a given axis, propagating any NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignoring any NaNs.
		minimum :
		    Element-wise minimum of two arrays, propagating any NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignoring any NaNs.
		argmin :
		    Return the indices of the minimum values.
		
		nanmax, maximum, fmax
		
		Notes
		-----
		NaN values are propagated, that is if at least one item is NaN, the
		corresponding min value will be NaN as well. To ignore NaN values
		(MATLAB behavior), please use nanmin.
		
		Don't use `amin` for element-wise comparison of 2 arrays; when
		``a.shape[0]`` is 2, ``minimum(a[0], a[1])`` is faster than
		``amin(a, axis=0)``.
		
		Examples
		--------
		>>> a = np.arange(4).reshape((2,2))
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> np.amin(a)           # Minimum of the flattened array
		0
		>>> np.amin(a, axis=0)   # Minima along the first axis
		array([0, 1])
		>>> np.amin(a, axis=1)   # Minima along the second axis
		array([0, 2])
		
		>>> b = np.arange(5, dtype=np.float)
		>>> b[2] = np.NaN
		>>> np.amin(b)
		nan
		>>> np.nanmin(b)
		0.0
	**/
	static public function amin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Examples
		--------
		>>> from scipy import matrix
		>>> M = matrix( [[1,2,3],[4,5,6]], dtype='int32' )
		>>> aslinearoperator( M )
		<2x3 LinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
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
		Use BIConjugate Gradient iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function bicg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use BIConjugate Gradient STABilized iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    ``A`` must represent a hermitian, positive definite matrix
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function bicgstab(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    ``A`` must represent a hermitian, positive definite matrix
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function cg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient Squared iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function cgs(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
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
		Find k eigenvalues and eigenvectors of the square matrix A.
		
		Solves ``A * x[i] = w[i] * x[i]``, the standard eigenvalue problem
		for w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A * x[i] = w[i] * M * x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i]
		
		Parameters
		----------
		A : ndarray, sparse matrix or LinearOperator
		    An array, sparse matrix, or LinearOperator representing
		    the operation ``A * x``, where A is a real or complex square matrix.
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N. It is not possible to compute all
		    eigenvectors of a matrix.
		M : ndarray, sparse matrix or LinearOperator, optional
		    An array, sparse matrix, or LinearOperator representing
		    the operation M*x for the generalized eigenvalue problem
		
		        A * x = w * M * x.
		
		    M must represent a real, symmetric matrix if A is real, and must
		    represent a complex, hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If `sigma` is None, M is positive definite
		
		        If sigma is specified, M is positive semi-definite
		
		    If sigma is None, eigs requires an operator to compute the solution
		    of the linear equation ``M * x = b``.  This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv * b = M^-1 * b``.
		sigma : real or complex, optional
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    ``[A - sigma * M] * x = b``, where M is the identity matrix if
		    unspecified. This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv * b = [A - sigma * M]^-1 * b``.
		    For a real matrix A, shift-invert can either be done in imaginary
		    mode or real mode, specified by the parameter OPpart ('r' or 'i').
		    Note that when sigma is specified, the keyword 'which' (below)
		    refers to the shifted eigenvalues ``w'[i]`` where:
		
		        If A is real and OPpart == 'r' (default),
		          ``w'[i] = 1/2 * [1/(w[i]-sigma) + 1/(w[i]-conj(sigma))]``.
		
		        If A is real and OPpart == 'i',
		          ``w'[i] = 1/2i * [1/(w[i]-sigma) - 1/(w[i]-conj(sigma))]``.
		
		        If A is complex, ``w'[i] = 1/(w[i]-sigma)``.
		
		v0 : ndarray, optional
		    Starting vector for iteration.
		    Default: random
		ncv : int, optional
		    The number of Lanczos vectors generated
		    `ncv` must be greater than `k`; it is recommended that ``ncv > 2*k``.
		    Default: ``min(n, 2*k + 1)``
		which : str, ['LM' | 'SM' | 'LR' | 'SR' | 'LI' | 'SI'], optional
		    Which `k` eigenvectors and eigenvalues to find:
		
		        'LM' : largest magnitude
		
		        'SM' : smallest magnitude
		
		        'LR' : largest real part
		
		        'SR' : smallest real part
		
		        'LI' : largest imaginary part
		
		        'SI' : smallest imaginary part
		
		    When sigma != None, 'which' refers to the shifted eigenvalues w'[i]
		    (see discussion in 'sigma', above).  ARPACK is generally better
		    at finding large values than small values.  If small eigenvalues are
		    desired, consider using shift-invert mode for better performance.
		maxiter : int, optional
		    Maximum number of Arnoldi update iterations allowed
		    Default: ``n*10``
		tol : float, optional
		    Relative accuracy for eigenvalues (stopping criterion)
		    The default value of 0 implies machine precision.
		return_eigenvectors : bool, optional
		    Return eigenvectors (True) in addition to eigenvalues
		Minv : ndarray, sparse matrix or LinearOperator, optional
		    See notes in M, above.
		OPinv : ndarray, sparse matrix or LinearOperator, optional
		    See notes in sigma, above.
		OPpart : {'r' or 'i'}, optional
		    See notes in sigma, above
		
		Returns
		-------
		w : ndarray
		    Array of k eigenvalues.
		v : ndarray
		    An array of `k` eigenvectors.
		    ``v[:, i]`` is the eigenvector corresponding to the eigenvalue w[i].
		
		Raises
		------
		ArpackNoConvergence
		    When the requested convergence is not obtained.
		    The currently converged eigenvalues and eigenvectors can be found
		    as ``eigenvalues`` and ``eigenvectors`` attributes of the exception
		    object.
		
		See Also
		--------
		eigsh : eigenvalues and eigenvectors for symmetric matrix A
		svds : singular value decomposition for a matrix A
		
		Notes
		-----
		This function is a wrapper to the ARPACK [1]_ SNEUPD, DNEUPD, CNEUPD,
		ZNEUPD, functions which use the Implicitly Restarted Arnoldi Method to
		find the eigenvalues and eigenvectors [2]_.
		
		References
		----------
		.. [1] ARPACK Software, http://www.caam.rice.edu/software/ARPACK/
		.. [2] R. B. Lehoucq, D. C. Sorensen, and C. Yang,  ARPACK USERS GUIDE:
		   Solution of Large Scale Eigenvalue Problems by Implicitly Restarted
		   Arnoldi Methods. SIAM, Philadelphia, PA, 1998.
		
		Examples
		--------
		Find 6 eigenvectors of the identity matrix:
		
		>>> import scipy.sparse as sparse
		>>> id = np.eye(13)
		>>> vals, vecs = sparse.linalg.eigs(id, k=6)
		>>> vals
		array([ 1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j])
		>>> vecs.shape
		(13, 6)
	**/
	static public function eigs(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?OPpart:Dynamic):Dynamic;
	/**
		Find k eigenvalues and eigenvectors of the real symmetric square matrix
		or complex hermitian matrix A.
		
		Solves ``A * x[i] = w[i] * x[i]``, the standard eigenvalue problem for
		w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A * x[i] = w[i] * M * x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i]
		
		Parameters
		----------
		A : An N x N matrix, array, sparse matrix, or LinearOperator representing
		    the operation A * x, where A is a real symmetric matrix
		    For buckling mode (see below) A must additionally be positive-definite
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N. It is not possible to compute all
		    eigenvectors of a matrix.
		
		Returns
		-------
		w : array
		    Array of k eigenvalues
		v : array
		    An array representing the `k` eigenvectors.  The column ``v[:, i]`` is
		    the eigenvector corresponding to the eigenvalue ``w[i]``.
		
		Other Parameters
		----------------
		M : An N x N matrix, array, sparse matrix, or linear operator representing
		    the operation M * x for the generalized eigenvalue problem
		
		        A * x = w * M * x.
		
		    M must represent a real, symmetric matrix if A is real, and must
		    represent a complex, hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If sigma is None, M is symmetric positive definite
		
		        If sigma is specified, M is symmetric positive semi-definite
		
		        In buckling mode, M is symmetric indefinite.
		
		    If sigma is None, eigsh requires an operator to compute the solution
		    of the linear equation ``M * x = b``. This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv * b = M^-1 * b``.
		sigma : real
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    `[A - sigma * M] x = b`, where M is the identity matrix if
		    unspecified.  This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv * b = [A - sigma * M]^-1 * b``.
		    Note that when sigma is specified, the keyword 'which' refers to
		    the shifted eigenvalues ``w'[i]`` where:
		
		        if mode == 'normal', ``w'[i] = 1 / (w[i] - sigma)``.
		
		        if mode == 'cayley', ``w'[i] = (w[i] + sigma) / (w[i] - sigma)``.
		
		        if mode == 'buckling', ``w'[i] = w[i] / (w[i] - sigma)``.
		
		    (see further discussion in 'mode' below)
		v0 : ndarray, optional
		    Starting vector for iteration.
		    Default: random
		ncv : int, optional
		    The number of Lanczos vectors generated ncv must be greater than k and
		    smaller than n; it is recommended that ``ncv > 2*k``.
		    Default: ``min(n, 2*k + 1)``
		which : str ['LM' | 'SM' | 'LA' | 'SA' | 'BE']
		    If A is a complex hermitian matrix, 'BE' is invalid.
		    Which `k` eigenvectors and eigenvalues to find:
		
		        'LM' : Largest (in magnitude) eigenvalues
		
		        'SM' : Smallest (in magnitude) eigenvalues
		
		        'LA' : Largest (algebraic) eigenvalues
		
		        'SA' : Smallest (algebraic) eigenvalues
		
		        'BE' : Half (k/2) from each end of the spectrum
		
		    When k is odd, return one more (k/2+1) from the high end.
		    When sigma != None, 'which' refers to the shifted eigenvalues ``w'[i]``
		    (see discussion in 'sigma', above).  ARPACK is generally better
		    at finding large values than small values.  If small eigenvalues are
		    desired, consider using shift-invert mode for better performance.
		maxiter : int, optional
		    Maximum number of Arnoldi update iterations allowed
		    Default: ``n*10``
		tol : float
		    Relative accuracy for eigenvalues (stopping criterion).
		    The default value of 0 implies machine precision.
		Minv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in M, above
		OPinv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in sigma, above.
		return_eigenvectors : bool
		    Return eigenvectors (True) in addition to eigenvalues
		mode : string ['normal' | 'buckling' | 'cayley']
		    Specify strategy to use for shift-invert mode.  This argument applies
		    only for real-valued A and sigma != None.  For shift-invert mode,
		    ARPACK internally solves the eigenvalue problem
		    ``OP * x'[i] = w'[i] * B * x'[i]``
		    and transforms the resulting Ritz vectors x'[i] and Ritz values w'[i]
		    into the desired eigenvectors and eigenvalues of the problem
		    ``A * x[i] = w[i] * M * x[i]``.
		    The modes are as follows:
		
		        'normal' :
		            OP = [A - sigma * M]^-1 * M,
		            B = M,
		            w'[i] = 1 / (w[i] - sigma)
		
		        'buckling' :
		            OP = [A - sigma * M]^-1 * A,
		            B = A,
		            w'[i] = w[i] / (w[i] - sigma)
		
		        'cayley' :
		            OP = [A - sigma * M]^-1 * [A + sigma * M],
		            B = M,
		            w'[i] = (w[i] + sigma) / (w[i] - sigma)
		
		    The choice of mode will affect which eigenvalues are selected by
		    the keyword 'which', and can also impact the stability of
		    convergence (see [2] for a discussion)
		
		Raises
		------
		ArpackNoConvergence
		    When the requested convergence is not obtained.
		
		    The currently converged eigenvalues and eigenvectors can be found
		    as ``eigenvalues`` and ``eigenvectors`` attributes of the exception
		    object.
		
		See Also
		--------
		eigs : eigenvalues and eigenvectors for a general (nonsymmetric) matrix A
		svds : singular value decomposition for a matrix A
		
		Notes
		-----
		This function is a wrapper to the ARPACK [1]_ SSEUPD and DSEUPD
		functions which use the Implicitly Restarted Lanczos Method to
		find the eigenvalues and eigenvectors [2]_.
		
		References
		----------
		.. [1] ARPACK Software, http://www.caam.rice.edu/software/ARPACK/
		.. [2] R. B. Lehoucq, D. C. Sorensen, and C. Yang,  ARPACK USERS GUIDE:
		   Solution of Large Scale Eigenvalue Problems by Implicitly Restarted
		   Arnoldi Methods. SIAM, Philadelphia, PA, 1998.
		
		Examples
		--------
		>>> import scipy.sparse as sparse
		>>> id = np.eye(13)
		>>> vals, vecs = sparse.linalg.eigsh(id, k=6)
		>>> vals
		array([ 1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j])
		>>> vecs.shape
		(13, 6)
	**/
	static public function eigsh(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?mode:Dynamic):Array<Dynamic>;
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
		empty_like(a, dtype=None, order='K', subok=True)
		
		Return a new array with the same shape and type as a given array.
		
		Parameters
		----------
		a : array_like
		    The shape and data-type of `a` define these same attributes of the
		    returned array.
		dtype : data-type, optional
		    Overrides the data type of the result.
		
		    .. versionadded:: 1.6.0
		order : {'C', 'F', 'A', or 'K'}, optional
		    Overrides the memory layout of the result. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if ``a`` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of ``a`` as closely
		    as possible.
		
		    .. versionadded:: 1.6.0
		subok : bool, optional.
		    If True, then the newly created array will use the sub-class
		    type of 'a', otherwise it will be a base-class array. Defaults
		    to True.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the same
		    shape and type as `a`.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		
		Notes
		-----
		This function does *not* initialize the returned array; to do that use
		`zeros_like` or `ones_like` instead.  It may be marginally faster than
		the functions that do set the array values.
		
		Examples
		--------
		>>> a = ([1,2,3], [4,5,6])                         # a is array-like
		>>> np.empty_like(a)
		array([[-1073741821, -1073741821,           3],    #random
		       [          0,           0, -1073741821]])
		>>> a = np.array([[1., 2., 3.],[4.,5.,6.]])
		>>> np.empty_like(a)
		array([[ -2.00000715e+000,   1.48219694e-323,  -2.00000572e+000],#random
		       [  4.38791518e-305,  -2.00000715e+000,   4.17269252e-309]])
	**/
	static public function empty_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the matrix exponential using Pade approximation.
		
		Parameters
		----------
		A : (M,M) array_like or sparse matrix
		    2D Array or Matrix (sparse or dense) to be exponentiated
		
		Returns
		-------
		expA : (M,M) ndarray
		    Matrix exponential of `A`
		
		Notes
		-----
		This is algorithm (6.1) which is a simplification of algorithm (5.1).
		
		.. versionadded:: 0.12.0
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       "A New Scaling and Squaring Algorithm for the Matrix Exponential."
		       SIAM Journal on Matrix Analysis and Applications.
		       31 (3). pp. 970-989. ISSN 1095-7162
	**/
	static public function expm(A:Dynamic):Dynamic;
	/**
		Compute the action of the matrix exponential of A on B.
		
		Parameters
		----------
		A : transposable linear operator
		    The operator whose exponential is of interest.
		B : ndarray
		    The matrix or vector to be multiplied by the matrix exponential of A.
		start : scalar, optional
		    The starting time point of the sequence.
		stop : scalar, optional
		    The end time point of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced time points, so that `stop` is excluded.
		    Note that the step size changes when `endpoint` is False.
		num : int, optional
		    Number of time points to use.
		endpoint : bool, optional
		    If True, `stop` is the last time point.  Otherwise, it is not included.
		
		Returns
		-------
		expm_A_B : ndarray
		     The result of the action :math:`e^{t_k A} B`.
		
		Notes
		-----
		The optional arguments defining the sequence of evenly spaced time points
		are compatible with the arguments of `numpy.linspace`.
		
		The output ndarray shape is somewhat complicated so I explain it here.
		The ndim of the output could be either 1, 2, or 3.
		It would be 1 if you are computing the expm action on a single vector
		at a single time point.
		It would be 2 if you are computing the expm action on a vector
		at multiple time points, or if you are computing the expm action
		on a matrix at a single time point.
		It would be 3 if you want the action on a matrix with multiple
		columns at multiple time points.
		If multiple time points are requested, expm_A_B[0] will always
		be the action of the expm at the first time point,
		regardless of whether the action is on a vector or a matrix.
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2011)
		       "Computing the Action of the Matrix Exponential,
		       with an Application to Exponential Integrators."
		       SIAM Journal on Scientific Computing,
		       33 (2). pp. 488-511. ISSN 1064-8275
		       http://eprints.ma.man.ac.uk/1591/
		
		.. [2] Nicholas J. Higham and Awad H. Al-Mohy (2010)
		       "Computing Matrix Functions."
		       Acta Numerica,
		       19. 159-208. ISSN 0962-4929
		       http://eprints.ma.man.ac.uk/1451/
	**/
	static public function expm_multiply(A:Dynamic, B:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic):Dynamic;
	/**
		Return a fuction for solving a sparse linear system, with A pre-factorized.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input.
		
		Returns
		-------
		solve : callable
		    To solve the linear system of equations given in `A`, the `solve`
		    callable should be passed an ndarray of shape (N,).
		
		Examples
		--------
		>>> A = np.array([[ 3. ,  2. , -1. ],
		                  [ 2. , -2. ,  4. ],
		                  [-1. ,  0.5, -1. ]])
		
		>>> solve = factorized( A ) # Makes LU decomposition.
		
		>>> rhs1 = np.array([1,-2,0])
		>>> x1 = solve( rhs1 ) # Uses the LU factors.
		array([ 1., -2., -2.])
	**/
	static public function factorized(A:Dynamic):haxe.Constraints.Function;
	/**
		_fastCopyAndTranspose(a)
	**/
	static public function fastCopyAndTranspose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		geterrobj()
		
		Return the current object that defines floating-point error handling.
		
		The error object contains all information that defines the error handling
		behavior in Numpy. `geterrobj` is used internally by the other
		functions that get and set error handling behavior (`geterr`, `seterr`,
		`geterrcall`, `seterrcall`).
		
		Returns
		-------
		errobj : list
		    The error object, a list containing three elements:
		    [internal numpy buffer size, error mask, error callback function].
		
		    The error mask is a single integer that holds the treatment information
		    on all four floating point errors. The information for each error type
		    is contained in three bits of the integer. If we print it in base 8, we
		    can see what treatment is set for "invalid", "under", "over", and
		    "divide" (in that order). The printed string can be interpreted with
		
		    * 0 : 'ignore'
		    * 1 : 'warn'
		    * 2 : 'raise'
		    * 3 : 'call'
		    * 4 : 'print'
		    * 5 : 'log'
		
		See Also
		--------
		seterrobj, seterr, geterr, seterrcall, geterrcall
		getbufsize, setbufsize
		
		Notes
		-----
		For complete documentation of the types of floating-point exceptions and
		treatment options, see `seterr`.
		
		Examples
		--------
		>>> np.geterrobj()  # first get the defaults
		[10000, 0, None]
		
		>>> def err_handler(type, flag):
		...     print "Floating point error (%s), with flag %s" % (type, flag)
		...
		>>> old_bufsize = np.setbufsize(20000)
		>>> old_err = np.seterr(divide='raise')
		>>> old_handler = np.seterrcall(err_handler)
		>>> np.geterrobj()
		[20000, 2, <function err_handler at 0x91dcaac>]
		
		>>> old_err = np.seterr(all='ignore')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'0'
		>>> old_err = np.seterr(divide='warn', over='log', under='call',
		                        invalid='print')
		>>> np.base_repr(np.geterrobj()[1], 8)
		'4351'
	**/
	static public function geterrobj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Use Generalized Minimal RESidual iteration to solve A x = b.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : int
		    Provides convergence information:
		      * 0  : successful exit
		      * >0 : convergence to tolerance not achieved, number of iterations
		      * <0 : illegal input or breakdown
		
		Other parameters
		----------------
		x0 : {array, matrix}
		    Starting guess for the solution (a vector of zeros by default).
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		restart : int, optional
		    Number of iterations between restarts. Larger values increase
		    iteration cost, but may be necessary for convergence.
		    Default is 20.
		maxiter : int, optional
		    Maximum number of iterations (restart cycles).  Iteration will stop
		    after maxiter steps even if the specified tolerance has not been
		    achieved.
		xtype : {'f','d','F','D'}
		    This parameter is DEPRECATED --- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Inverse of the preconditioner of A.  M should approximate the
		    inverse of A and be easy to solve for (see Notes).  Effective
		    preconditioning dramatically improves the rate of convergence,
		    which implies that fewer iterations are needed to reach a given
		    error tolerance.  By default, no preconditioner is used.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(rk), where rk is the current residual vector.
		restrt : int, optional
		    DEPRECATED - use `restart` instead.
		
		See Also
		--------
		LinearOperator
		
		Notes
		-----
		A preconditioner, P, is chosen such that P is close to A but easy to solve
		for. The preconditioner parameter required by this routine is
		``M = P^-1``. The inverse should preferably not be calculated
		explicitly.  Rather, use the following template to produce M::
		
		  # Construct a linear operator that computes P^-1 * x.
		  import scipy.sparse.linalg as spla
		  M_x = lambda x: spla.spsolve(P, x)
		  M = spla.LinearOperator((n, n), M_x)
	**/
	static public function gmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?restart:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?restrt:Dynamic):Dynamic;
	/**
		Compute the inverse of a sparse matrix
		
		Parameters
		----------
		A : (M,M) ndarray or sparse matrix
		    square matrix to be inverted
		
		Returns
		-------
		Ainv : (M,M) ndarray or sparse matrix
		    inverse of `A`
		
		Notes
		-----
		This computes the sparse inverse of `A`.  If the inverse of `A` is expected
		to be non-sparse, it will likely be faster to convert `A` to dense and use
		scipy.linalg.inv.
		
		.. versionadded:: 0.12.0
	**/
	static public function inv(A:Dynamic):Dynamic;
	/**
		isfinite(x[, out])
		
		Test element-wise for finiteness (not infinity or not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		out : ndarray, optional
		    Array into which the output is placed. Its type is preserved and it
		    must be of the right shape to hold the output. See `doc.ufuncs`.
		
		Returns
		-------
		y : ndarray, bool
		    For scalar input, the result is a new boolean with value True
		    if the input is finite; otherwise the value is False (input is
		    either positive infinity, negative infinity or Not a Number).
		
		    For array input, the result is a boolean array with the same
		    dimensions as the input and the values are True if the
		    corresponding element of the input is finite; otherwise the values
		    are False (element is either positive infinity, negative infinity
		    or Not a Number).
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		Numpy uses the IEEE Standard for Binary Floating-Point for Arithmetic
		(IEEE 754). This means that Not a Number is not equivalent to infinity.
		Also that positive infinity is not equivalent to negative infinity. But
		infinity is equivalent to positive infinity.  Errors result if the
		second argument is also supplied when `x` is a scalar input, or if
		first and second arguments have different shapes.
		
		Examples
		--------
		>>> np.isfinite(1)
		True
		>>> np.isfinite(0)
		True
		>>> np.isfinite(np.nan)
		False
		>>> np.isfinite(np.inf)
		False
		>>> np.isfinite(np.NINF)
		False
		>>> np.isfinite([np.log(-1.),1.,np.log(0)])
		array([False,  True, False], dtype=bool)
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function issparse(x:Dynamic):Dynamic;
	/**
		Solve a matrix equation using the LGMRES algorithm.
		
		The LGMRES algorithm [1]_ [2]_ is designed to avoid some problems
		in the convergence in restarted GMRES, and often converges in fewer
		iterations.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float, optional
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : int, optional
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}, optional
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function, optional
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		inner_m : int, optional
		    Number of inner GMRES iterations per each outer iteration.
		outer_k : int, optional
		    Number of vectors to carry between inner GMRES iterations.
		    According to [1]_, good values are in the range of 1...3.
		    However, note that if you want to use the additional vectors to
		    accelerate solving multiple similar problems, larger values may
		    be beneficial.
		outer_v : list of tuples, optional
		    List containing tuples ``(v, Av)`` of vectors and corresponding
		    matrix-vector products, used to augment the Krylov subspace, and
		    carried between inner GMRES iterations. The element ``Av`` can
		    be `None` if the matrix-vector product should be re-evaluated.
		    This parameter is modified in-place by `lgmres`, and can be used
		    to pass "guess" vectors in and out of the algorithm when solving
		    similar problems.
		store_outer_Av : bool, optional
		    Whether LGMRES should store also A*v in addition to vectors `v`
		    in the `outer_v` list. Default is True.
		
		Returns
		-------
		x : array or matrix
		    The converged solution.
		info : int
		    Provides convergence information:
		
		        - 0  : successful exit
		        - >0 : convergence to tolerance not achieved, number of iterations
		        - <0 : illegal input or breakdown
		
		Notes
		-----
		The LGMRES algorithm [1]_ [2]_ is designed to avoid the
		slowing of convergence in restarted GMRES, due to alternating
		residual vectors. Typically, it often outperforms GMRES(m) of
		comparable memory requirements by some measure, or at least is not
		much worse.
		
		Another advantage in this algorithm is that you can supply it with
		'guess' vectors in the `outer_v` argument that augment the Krylov
		subspace. If the solution lies close to the span of these vectors,
		the algorithm converges faster. This can be useful if several very
		similar matrices need to be inverted one after another, such as in
		Newton-Krylov iteration where the Jacobian matrix often changes
		little in the nonlinear steps.
		
		References
		----------
		.. [1] A.H. Baker and E.R. Jessup and T. Manteuffel,
		         SIAM J. Matrix Anal. Appl. 26, 962 (2005).
		.. [2] A.H. Baker, PhD thesis, University of Colorado (2003).
		         http://amath.colorado.edu/activities/thesis/allisonb/Thesis.ps
	**/
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic, ?store_outer_Av:Dynamic):Dynamic;
	/**
		Locally Optimal Block Preconditioned Conjugate Gradient Method (LOBPCG)
		
		LOBPCG is a preconditioned eigensolver for large symmetric positive
		definite (SPD) generalized eigenproblems.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The symmetric linear operator of the problem, usually a
		    sparse matrix.  Often called the "stiffness matrix".
		X : array_like
		    Initial approximation to the k eigenvectors. If A has
		    shape=(n,n) then X should have shape shape=(n,k).
		B : {dense matrix, sparse matrix, LinearOperator}, optional
		    the right hand side operator in a generalized eigenproblem.
		    by default, B = Identity
		    often called the "mass matrix"
		M : {dense matrix, sparse matrix, LinearOperator}, optional
		    preconditioner to A; by default M = Identity
		    M should approximate the inverse of A
		Y : array_like, optional
		    n-by-sizeY matrix of constraints, sizeY < n
		    The iterations will be performed in the B-orthogonal complement
		    of the column-space of Y. Y must be full rank.
		
		Returns
		-------
		w : array
		    Array of k eigenvalues
		v : array
		    An array of k eigenvectors.  V has the same shape as X.
		
		Other Parameters
		----------------
		tol : scalar, optional
		    Solver tolerance (stopping criterion)
		    by default: tol=n*sqrt(eps)
		maxiter : integer, optional
		    maximum number of iterations
		    by default: maxiter=min(n,20)
		largest : bool, optional
		    when True, solve for the largest eigenvalues, otherwise the smallest
		verbosityLevel : integer, optional
		    controls solver output.  default: verbosityLevel = 0.
		retLambdaHistory : boolean, optional
		    whether to return eigenvalue history
		retResidualNormsHistory : boolean, optional
		    whether to return history of residual norms
		
		Examples
		--------
		>>> # Solve A x = lambda B x with constraints and preconditioning.
		>>> n = 100
		>>> vals = [nm.arange( n, dtype = nm.float64 ) + 1]
		>>> # Matrix A.
		>>> operatorA = spdiags( vals, 0, n, n )
		>>> # Matrix B
		>>> operatorB = nm.eye( n, n )
		>>> # Constraints.
		>>> Y = nm.eye( n, 3 )
		>>> # Initial guess for eigenvectors, should have linearly independent
		>>> # columns. Column dimension = number of requested eigenvalues.
		>>> X = sc.rand( n, 3 )
		>>> # Preconditioner - inverse of A.
		>>> ivals = [1./vals[0]]
		>>> def precond( x ):
		    invA = spdiags( ivals, 0, n, n )
		    y = invA  * x
		    if sp.issparse( y ):
		        y = y.toarray()
		
		    return as2d( y )
		
		>>> # Alternative way of providing the same preconditioner.
		>>> #precond = spdiags( ivals, 0, n, n )
		
		>>> tt = time.clock()
		>>> eigs, vecs = lobpcg(X, operatorA, operatorB, blockVectorY=Y,
		>>>                     operatorT=precond,
		>>>                     residualTolerance=1e-4, maxIterations=40,
		>>>                     largest=False, verbosityLevel=1)
		>>> print 'solution time:', time.clock() - tt
		>>> print eigs
		
		
		Notes
		-----
		If both retLambdaHistory and retResidualNormsHistory are True,
		the return tuple has the following format
		(lambda, V, lambda history, residual norms history).
		
		In the following ``n`` denotes the matrix size and ``m`` the number
		of required eigenvalues (smallest or largest).
		
		The LOBPCG code internally solves eigenproblems of the size 3``m`` on every
		iteration by calling the "standard" dense eigensolver, so if ``m`` is not
		small enough compared to ``n``, it does not make sense to call the LOBPCG
		code, but rather one should use the "standard" eigensolver,
		e.g. numpy or scipy function in this case.
		If one calls the LOBPCG algorithm for 5``m``>``n``,
		it will most likely break internally, so the code tries to call the standard
		function instead.
		
		It is not that n should be large for the LOBPCG to work, but rather the
		ratio ``n``/``m`` should be large. It you call the LOBPCG code with ``m``=1
		and ``n``=10, it should work, though ``n`` is small. The method is intended
		for extremely large ``n``/``m``, see e.g., reference [28] in
		http://arxiv.org/abs/0705.2626
		
		The convergence speed depends basically on two factors:
		
		1.  How well relatively separated the seeking eigenvalues are
		    from the rest of the eigenvalues.
		    One can try to vary ``m`` to make this better.
		
		2.  How well conditioned the problem is. This can be changed by using proper
		    preconditioning. For example, a rod vibration test problem (under tests
		    directory) is ill-conditioned for large ``n``, so convergence will be
		    slow, unless efficient preconditioning is used.
		    For this specific problem, a good simple preconditioner function would
		    be a linear solve for A, which is easy to code since A is tridiagonal.
		
		*Acknowledgements*
		
		lobpcg.py code was written by Robert Cimrman.
		Many thanks belong to Andrew Knyazev, the author of the algorithm,
		for lots of advice and support.
		
		References
		----------
		.. [1] A. V. Knyazev (2001),
		       Toward the Optimal Preconditioned Eigensolver: Locally Optimal
		       Block Preconditioned Conjugate Gradient Method.
		       SIAM Journal on Scientific Computing 23, no. 2,
		       pp. 517-541. http://dx.doi.org/10.1137/S1064827500366124
		
		.. [2] A. V. Knyazev, I. Lashuk, M. E. Argentati, and E. Ovchinnikov (2007),
		       Block Locally Optimal Preconditioned Eigenvalue Xolvers (BLOPEX)
		       in hypre and PETSc.  http://arxiv.org/abs/0705.2626
		
		.. [3] A. V. Knyazev's C and MATLAB implementations:
		       http://www-math.cudenver.edu/~aknyazev/software/BLOPEX/
	**/
	static public function lobpcg(A:Dynamic, X:Dynamic, ?B:Dynamic, ?M:Dynamic, ?Y:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?largest:Dynamic, ?verbosityLevel:Dynamic, ?retLambdaHistory:Dynamic, ?retResidualNormsHistory:Dynamic):Array<Dynamic>;
	/**
		Iterative solver for least-squares problems.
		
		lsmr solves the system of linear equations ``Ax = b``. If the system
		is inconsistent, it solves the least-squares problem ``min ||b - Ax||_2``.
		A is a rectangular matrix of dimension m-by-n, where all cases are
		allowed: m = n, m > n, or m < n. B is a vector of length m.
		The matrix A may be dense or sparse (usually sparse).
		
		Parameters
		----------
		A : {matrix, sparse matrix, ndarray, LinearOperator}
		    Matrix A in the linear system.
		b : (m,) ndarray
		    Vector b in the linear system.
		damp : float
		    Damping factor for regularized least-squares. `lsmr` solves
		    the regularized least-squares problem::
		
		     min ||(b) - (  A   )x||
		         ||(0)   (damp*I) ||_2
		
		    where damp is a scalar.  If damp is None or 0, the system
		    is solved without regularization.
		atol, btol : float, optional
		    Stopping tolerances. `lsmr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, ``lsmr`` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, lsmr terminates when ``norm(A^{T} r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (say),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final x will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of A and B respectively.  For example, if the entries
		    of `A` have 7 correct digits, set atol = 1e-7. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    `lsmr` terminates if an estimate of ``cond(A)`` exceeds
		    `conlim`.  For compatible systems ``Ax = b``, conlim could be
		    as large as 1.0e+12 (say).  For least-squares problems,
		    `conlim` should be less than 1.0e+8. If `conlim` is None, the
		    default value is 1e+8.  Maximum precision can be obtained by
		    setting ``atol = btol = conlim = 0``, but the number of
		    iterations may then be excessive.
		maxiter : int, optional
		    `lsmr` terminates if the number of iterations reaches
		    `maxiter`.  The default is ``maxiter = min(m, n)``.  For
		    ill-conditioned systems, a larger value of `maxiter` may be
		    needed.
		show : bool, optional
		    Print iterations logs if ``show=True``.
		
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.
		              = 1 means x is an approximate solution to A*x = B,
		                  according to atol and btol.
		              = 2 means x approximately solves the least-squares problem
		                  according to atol.
		              = 3 means COND(A) seems to be greater than CONLIM.
		              = 4 is the same as 1 with atol = btol = eps (machine
		                  precision)
		              = 5 is the same as 2 with atol = eps.
		              = 6 is the same as 3 with CONLIM = 1/eps.
		              = 7 means ITN reached maxiter before the other stopping
		                  conditions were satisfied.
		
		itn : int
		    Number of iterations used.
		normr : float
		    ``norm(b-Ax)``
		normar : float
		    ``norm(A^T (b - Ax))``
		norma : float
		    ``norm(A)``
		conda : float
		    Condition number of A.
		normx : float
		    ``norm(x)``
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] D. C.-L. Fong and M. A. Saunders,
		       "LSMR: An iterative algorithm for sparse least-squares problems",
		       SIAM J. Sci. Comput., vol. 33, pp. 2950-2971, 2011.
		       http://arxiv.org/abs/1006.0758
		.. [2] LSMR Software, http://web.stanford.edu/group/SOL/software/lsmr/
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic):Dynamic;
	/**
		Find the least-squares solution to a large, sparse, linear system
		of equations.
		
		The function solves ``Ax = b``  or  ``min ||b - Ax||^2`` or
		``min ||Ax - b||^2 + d^2 ||x||^2``.
		
		The matrix A may be square or rectangular (over-determined or
		under-determined), and may have any rank.
		
		::
		
		  1. Unsymmetric equations --    solve  A*x = b
		
		  2. Linear least squares  --    solve  A*x = b
		                                 in the least-squares sense
		
		  3. Damped least squares  --    solve  (   A    )*x = ( b )
		                                        ( damp*I )     ( 0 )
		                                 in the least-squares sense
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    Representation of an m-by-n matrix.  It is required that
		    the linear operator can produce ``Ax`` and ``A^T x``.
		b : (m,) ndarray
		    Right-hand side vector ``b``.
		damp : float
		    Damping coefficient.
		atol, btol : float, optional
		    Stopping tolerances. If both are 1.0e-9 (say), the final
		    residual norm should be accurate to about 9 digits.  (The
		    final x will usually have fewer correct digits, depending on
		    cond(A) and the size of damp.)
		conlim : float, optional
		    Another stopping tolerance.  lsqr terminates if an estimate of
		    ``cond(A)`` exceeds `conlim`.  For compatible systems ``Ax =
		    b``, `conlim` could be as large as 1.0e+12 (say).  For
		    least-squares problems, conlim should be less than 1.0e+8.
		    Maximum precision can be obtained by setting ``atol = btol =
		    conlim = zero``, but the number of iterations may then be
		    excessive.
		iter_lim : int, optional
		    Explicit limitation on number of iterations (for safety).
		show : bool, optional
		    Display an iteration log.
		calc_var : bool, optional
		    Whether to estimate diagonals of ``(A'A + damp^2*I)^{-1}``.
		
		Returns
		-------
		x : ndarray of float
		    The final solution.
		istop : int
		    Gives the reason for termination.
		    1 means x is an approximate solution to Ax = b.
		    2 means x approximately solves the least-squares problem.
		itn : int
		    Iteration number upon termination.
		r1norm : float
		    ``norm(r)``, where ``r = b - Ax``.
		r2norm : float
		    ``sqrt( norm(r)^2  +  damp^2 * norm(x)^2 )``.  Equal to `r1norm` if
		    ``damp == 0``.
		anorm : float
		    Estimate of Frobenius norm of ``Abar = [[A]; [damp*I]]``.
		acond : float
		    Estimate of ``cond(Abar)``.
		arnorm : float
		    Estimate of ``norm(A'*r - damp^2*x)``.
		xnorm : float
		    ``norm(x)``
		var : ndarray of float
		    If ``calc_var`` is True, estimates all diagonals of
		    ``(A'A)^{-1}`` (if ``damp == 0``) or more generally ``(A'A +
		    damp^2*I)^{-1}``.  This is well defined if A has full column
		    rank or ``damp > 0``.  (Not sure what var means if ``rank(A)
		    < n`` and ``damp = 0.``)
		
		Notes
		-----
		LSQR uses an iterative method to approximate the solution.  The
		number of iterations required to reach a certain accuracy depends
		strongly on the scaling of the problem.  Poor scaling of the rows
		or columns of A should therefore be avoided where possible.
		
		For example, in problem 1 the solution is unaltered by
		row-scaling.  If a row of A is very small or large compared to
		the other rows of A, the corresponding row of ( A  b ) should be
		scaled up or down.
		
		In problems 1 and 2, the solution x is easily recovered
		following column-scaling.  Unless better information is known,
		the nonzero columns of A should be scaled so that they all have
		the same Euclidean norm (e.g., 1.0).
		
		In problem 3, there is no freedom to re-scale if damp is
		nonzero.  However, the value of damp should be assigned only
		after attention has been paid to the scaling of A.
		
		The parameter damp is intended to help regularize
		ill-conditioned systems, by preventing the true solution from
		being very large.  Another aid to regularization is provided by
		the parameter acond, which may be used to terminate iterations
		before the computed solution becomes very large.
		
		If some initial estimate ``x0`` is known and if ``damp == 0``,
		one could proceed as follows:
		
		  1. Compute a residual vector ``r0 = b - A*x0``.
		  2. Use LSQR to solve the system  ``A*dx = r0``.
		  3. Add the correction dx to obtain a final solution ``x = x0 + dx``.
		
		This requires that ``x0`` be available before and after the call
		to LSQR.  To judge the benefits, suppose LSQR takes k1 iterations
		to solve A*x = b and k2 iterations to solve A*dx = r0.
		If x0 is "good", norm(r0) will be smaller than norm(b).
		If the same stopping tolerances atol and btol are used for each
		system, k1 and k2 will be similar, but the final solution x0 + dx
		should be more accurate.  The only way to reduce the total work
		is to use a larger stopping tolerance for the second system.
		If some value btol is suitable for A*x = b, the larger value
		btol*norm(b)/norm(r0)  should be suitable for A*dx = r0.
		
		Preconditioning is another way to reduce the number of iterations.
		If it is possible to solve a related system ``M*x = b``
		efficiently, where M approximates A in some helpful way (e.g. M -
		A has low rank or its elements are small relative to those of A),
		LSQR may converge more rapidly on the system ``A*M(inverse)*z =
		b``, after which x can be recovered by solving M*x = z.
		
		If A is symmetric, LSQR should not be used!
		
		Alternatives are the symmetric conjugate-gradient method (cg)
		and/or SYMMLQ.  SYMMLQ is an implementation of symmetric cg that
		applies to any symmetric A and will converge more rapidly than
		LSQR.  If A is positive definite, there are other implementations
		of symmetric cg that require slightly less work per iteration than
		SYMMLQ (but will take the same number of iterations).
		
		References
		----------
		.. [1] C. C. Paige and M. A. Saunders (1982a).
		       "LSQR: An algorithm for sparse linear equations and
		       sparse least squares", ACM TOMS 8(1), 43-71.
		.. [2] C. C. Paige and M. A. Saunders (1982b).
		       "Algorithm 583.  LSQR: Sparse linear equations and least
		       squares problems", ACM TOMS 8(2), 195-209.
		.. [3] M. A. Saunders (1995).  "Solution of sparse rectangular
		       systems using LSQR and CRAIG", BIT 35, 588-604.
	**/
	static public function lsqr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?iter_lim:Dynamic, ?show:Dynamic, ?calc_var:Dynamic):Dynamic;
	/**
		maximum(x1, x2[, out])
		
		Element-wise maximum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		maxima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The maximum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		minimum :
		    Element-wise minimum of two arrays, propagates NaNs.
		fmax :
		    Element-wise maximum of two arrays, ignores NaNs.
		amax :
		    The maximum value of an array along a given axis, propagates NaNs.
		nanmax :
		    The maximum value of an array along a given axis, ignores NaNs.
		
		fmin, amin, nanmin
		
		Notes
		-----
		The maximum is equivalent to ``np.where(x1 >= x2, x1, x2)`` when
		neither x1 nor x2 are nans, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.maximum([2, 3, 4], [1, 5, 2])
		array([2, 5, 4])
		
		>>> np.maximum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 1. ,  2. ],
		       [ 0.5,  2. ]])
		
		>>> np.maximum([np.nan, 0, np.nan], [0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.maximum(np.Inf, 1)
		inf
	**/
	static public function maximum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Use MINimum RESidual iteration to solve Ax=b
		
		MINRES minimizes norm(A*x - b) for a real symmetric matrix A.  Unlike
		the Conjugate Gradient method, A can be indefinite or singular.
		
		If shift != 0 then the method solves (A - shift*I)x = b
		
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real symmetric N-by-N matrix of the linear system
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		
		
		
		Notes
		-----
		THIS FUNCTION IS EXPERIMENTAL AND SUBJECT TO CHANGE!
		
		References
		----------
		Solution of sparse indefinite systems of linear equations,
		    C. C. Paige and M. A. Saunders (1975),
		    SIAM J. Numer. Anal. 12(4), pp. 617-629.
		    http://www.stanford.edu/group/SOL/software/minres.html
		
		This file is a translation of the following MATLAB implementation:
		    http://www.stanford.edu/group/SOL/software/minres/matlab/
	**/
	static public function minres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?shift:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?show:Dynamic, ?check:Dynamic):Dynamic;
	/**
		multiply(x1, x2[, out])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise. Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` * `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.multiply(2.0, 4.0)
		8.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.multiply(x1, x2)
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	/**
		Norm of a sparse matrix
		
		This function is able to return one of seven different matrix norms,
		depending on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : a sparse matrix
		    Input sparse matrix.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		
		Returns
		-------
		n : float or matrix
		
		Notes
		-----
		Some of the ord are not implemented because some associated functions like, 
		_multi_svd_norm, are not yet available for sparse matrix. 
		
		This docstring is modified based on numpy.linalg.norm. 
		https://github.com/numpy/numpy/blob/master/numpy/linalg/linalg.py 
		
		The following norms can be calculated:
		
		=====  ============================  
		ord    norm for sparse matrices             
		=====  ============================  
		None   Frobenius norm                
		'fro'  Frobenius norm                
		inf    max(sum(abs(x), axis=1))      
		-inf   min(sum(abs(x), axis=1))      
		0      abs(x).sum(axis=axis)                           
		1      max(sum(abs(x), axis=0))      
		-1     min(sum(abs(x), axis=0))      
		2      Not implemented  
		-2     Not implemented      
		other  Not implemented                               
		=====  ============================  
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		    Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.sparse import *
		>>> import numpy as np
		>>> from scipy.sparse.linalg import norm
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1, 0, 1, 2, 3, 4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1, 0, 1],
		       [ 2, 3, 4]])
		
		>>> b = csr_matrix(b)
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(b, np.inf)
		9
		>>> norm(b, -np.inf)
		2
		>>> norm(b, 1)
		7
		>>> norm(b, -1)
		6
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic):Dynamic;
	/**
		Compute a lower bound of the 1-norm of a sparse matrix.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can be transposed and that can
		    produce matrix products.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
		
		Notes
		-----
		This is algorithm 2.4 of [1].
		
		In [2] it is described as follows.
		"This algorithm typically requires the evaluation of
		about 4t matrix-vector products and almost invariably
		produces a norm estimate (which is, in fact, a lower
		bound on the norm) correct to within a factor 3."
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Nicholas J. Higham and Francoise Tisseur (2000),
		       "A Block Algorithm for Matrix 1-Norm Estimation,
		       with an Application to 1-Norm Pseudospectra."
		       SIAM J. Matrix Anal. Appl. Vol. 21, No. 4, pp. 1185-1201.
		
		.. [2] Awad H. Al-Mohy and Nicholas J. Higham (2009),
		       "A new scaling and squaring algorithm for the matrix exponential."
		       SIAM J. Matrix Anal. Appl. Vol. 31, No. 3, pp. 970-989.
	**/
	static public function onenormest(A:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Use Quasi-Minimal Residual iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M1 : {sparse matrix, dense matrix, LinearOperator}
		    Left preconditioner for A.
		M2 : {sparse matrix, dense matrix, LinearOperator}
		    Right preconditioner for A. Used together with the left
		    preconditioner M1.  The matrix M1*A*M2 should have better
		    conditioned than A alone.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is DEPRECATED -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		
		See Also
		--------
		LinearOperator
	**/
	static public function qmr(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M1:Dynamic, ?M2:Dynamic, ?callback:Dynamic):Dynamic;
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
		Roll the specified axis backwards, until it lies in a given position.
		
		Parameters
		----------
		a : ndarray
		    Input array.
		axis : int
		    The axis to roll backwards.  The positions of the other axes do not
		    change relative to one another.
		start : int, optional
		    The axis is rolled until it lies before this position.  The default,
		    0, results in a "complete" roll.
		
		Returns
		-------
		res : ndarray
		    For Numpy >= 1.10 a view of `a` is always returned. For earlier
		    Numpy versions a view of `a` is returned only if the order of the
		    axes is changed, otherwise the input array is returned.
		
		See Also
		--------
		roll : Roll the elements of an array by a number of positions along a
		    given axis.
		
		Examples
		--------
		>>> a = np.ones((3,4,5,6))
		>>> np.rollaxis(a, 3, 1).shape
		(3, 6, 4, 5)
		>>> np.rollaxis(a, 2).shape
		(5, 3, 4, 6)
		>>> np.rollaxis(a, 1, 4).shape
		(3, 5, 6, 4)
	**/
	static public function rollaxis(a:Dynamic, axis:Dynamic, ?start:Dynamic):Dynamic;
	/**
		Return the number of elements along a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : int, optional
		    Axis along which the elements are counted.  By default, give
		    the total number of elements.
		
		Returns
		-------
		element_count : int
		    Number of elements along the specified axis.
		
		See Also
		--------
		shape : dimensions of array
		ndarray.shape : dimensions of array
		ndarray.size : number of elements in array
		
		Examples
		--------
		>>> a = np.array([[1,2,3],[4,5,6]])
		>>> np.size(a)
		6
		>>> np.size(a,1)
		3
		>>> np.size(a,0)
		2
	**/
	static public function size(a:Dynamic, ?axis:Dynamic):Int;
	/**
		Compute an incomplete LU decomposition for a sparse, square matrix.
		
		The resulting object is an approximation to the inverse of `A`.
		
		Parameters
		----------
		A : (N, N) array_like
		    Sparse matrix to factorize
		drop_tol : float, optional
		    Drop tolerance (0 <= tol <= 1) for an incomplete LU decomposition.
		    (default: 1e-4)
		fill_factor : float, optional
		    Specifies the fill ratio upper bound (>= 1.0) for ILU. (default: 10)
		drop_rule : str, optional
		    Comma-separated string of drop rules to use.
		    Available rules: ``basic``, ``prows``, ``column``, ``area``,
		    ``secondary``, ``dynamic``, ``interp``. (Default: ``basic,area``)
		
		    See SuperLU documentation for details.
		
		Remaining other options
		    Same as for `splu`
		
		Returns
		-------
		invA_approx : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		splu : complete LU decomposition
		
		Notes
		-----
		To improve the better approximation to the inverse, you may need to
		increase `fill_factor` AND decrease `drop_tol`.
		
		This function uses the SuperLU library.
	**/
	static public function spilu(A:Dynamic, ?drop_tol:Dynamic, ?fill_factor:Dynamic, ?drop_rule:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Compute the LU decomposition of a sparse, square matrix.
		
		Parameters
		----------
		A : sparse matrix
		    Sparse matrix to factorize. Should be in CSR or CSC format.
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		
		diag_pivot_thresh : float, optional
		    Threshold used for a diagonal entry to be an acceptable pivot.
		    See SuperLU user's guide for details [1]_
		drop_tol : float, optional
		    (deprecated) No effect.
		relax : int, optional
		    Expert option for customizing the degree of relaxing supernodes.
		    See SuperLU user's guide for details [1]_
		panel_size : int, optional
		    Expert option for customizing the panel size.
		    See SuperLU user's guide for details [1]_
		options : dict, optional
		    Dictionary containing additional expert options to SuperLU.
		    See SuperLU user guide [1]_ (section 2.4 on the 'Options' argument)
		    for more details. For example, you can specify
		    ``options=dict(Equil=False, IterRefine='SINGLE'))``
		    to turn equilibration off and perform a single iterative refinement.
		
		Returns
		-------
		invA : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		spilu : incomplete LU decomposition
		
		Notes
		-----
		This function uses the SuperLU library.
		
		References
		----------
		.. [1] SuperLU http://crd.lbl.gov/~xiaoye/SuperLU/
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?drop_tol:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Solve the sparse linear system Ax=b, where b may be a vector or a matrix.
		
		Parameters
		----------
		A : ndarray or sparse matrix
		    The square matrix A will be converted into CSC or CSR form
		b : ndarray or sparse matrix
		    The matrix or vector representing the right hand side of the equation.
		    If a vector, b.size must be (n,) or (n, 1)
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		use_umfpack : bool, optional
		    if True (default) then use umfpack for the solution.  This is
		    only referenced if b is a vector and ``scikit-umfpack`` is installed.
		
		Returns
		-------
		x : ndarray or sparse matrix
		    the solution of the sparse linear equation.
		    If b is a vector, then x is a vector of size A.shape[1]
		    If b is a matrix, then x is a matrix of size (A.shape[1], b.shape[1])
		
		Notes
		-----
		For solving the matrix expression AX = B, this solver assumes the resulting
		matrix X is sparse, as is often the case for very sparse inputs.  If the
		resulting X is dense, the construction of this sparse result will be
		relatively expensive.  In that case, consider converting A to a dense
		matrix and using scipy.linalg.solve or its variants.
	**/
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic, ?use_umfpack:Dynamic):Dynamic;
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
		Sum of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Elements to sum.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a sum is performed.
		    The default (`axis` = `None`) is perform a sum over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a sum is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    The type of the returned array and of the accumulator in which
		    the elements are summed.  By default, the dtype of `a` is used.
		    An exception is when `a` has an integer type with less precision
		    than the default platform integer.  In that case, the default
		    platform integer is used instead.
		out : ndarray, optional
		    Array into which the output is placed.  By default, a new array is
		    created.  If `out` is given, it must be of the appropriate shape
		    (the shape of `a` with `axis` removed, i.e.,
		    ``numpy.delete(a.shape, axis)``).  Its type is preserved. See
		    `doc.ufuncs` (Section "Output arguments") for more details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		sum_along_axis : ndarray
		    An array with the same shape as `a`, with the specified
		    axis removed.   If `a` is a 0-d array, or if `axis` is None, a scalar
		    is returned.  If an output array is specified, a reference to
		    `out` is returned.
		
		See Also
		--------
		ndarray.sum : Equivalent method.
		
		cumsum : Cumulative sum of array elements.
		
		trapz : Integration of array values using the composite trapezoidal rule.
		
		mean, average
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		The sum of an empty array is the neutral element 0:
		
		>>> np.sum([])
		0.0
		
		Examples
		--------
		>>> np.sum([0.5, 1.5])
		2.0
		>>> np.sum([0.5, 0.7, 0.2, 1.5], dtype=np.int32)
		1
		>>> np.sum([[0, 1], [0, 5]])
		6
		>>> np.sum([[0, 1], [0, 5]], axis=0)
		array([0, 6])
		>>> np.sum([[0, 1], [0, 5]], axis=1)
		array([1, 5])
		
		If the accumulator is too small, overflow occurs:
		
		>>> np.ones(128, dtype=np.int8).sum(dtype=np.int8)
		-128
	**/
	static public function sum(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the largest k singular values/vectors for a sparse matrix.
		
		Parameters
		----------
		A : {sparse matrix, LinearOperator}
		    Array to compute the SVD on, of shape (M, N)
		k : int, optional
		    Number of singular values and vectors to compute.
		ncv : int, optional
		    The number of Lanczos vectors generated
		    ncv must be greater than k+1 and smaller than n;
		    it is recommended that ncv > 2*k
		    Default: ``min(n, 2*k + 1)``
		tol : float, optional
		    Tolerance for singular values. Zero (default) means machine precision.
		which : str, ['LM' | 'SM'], optional
		    Which `k` singular values to find:
		
		        - 'LM' : largest singular values
		        - 'SM' : smallest singular values
		
		    .. versionadded:: 0.12.0
		v0 : ndarray, optional
		    Starting vector for iteration, of length min(A.shape). Should be an
		    (approximate) right singular vector if N > M and a right singular vector
		    otherwise.
		    Default: random
		
		    .. versionadded:: 0.12.0
		maxiter : int, optional
		    Maximum number of iterations.
		
		    .. versionadded:: 0.12.0
		return_singular_vectors : bool or str, optional
		    - True: return singular vectors (True) in addition to singular values.
		
		    .. versionadded:: 0.12.0
		
		    - "u": only return the u matrix, without computing vh (if N > M).
		    - "vh": only return the vh matrix, without computing u (if N <= M).
		
		    .. versionadded:: 0.16.0
		
		Returns
		-------
		u : ndarray, shape=(M, k)
		    Unitary matrix having left singular vectors as columns.
		    If `return_singular_vectors` is "vh", this variable is not computed,
		    and None is returned instead.
		s : ndarray, shape=(k,)
		    The singular values.
		vt : ndarray, shape=(k, N)
		    Unitary matrix having right singular vectors as rows.
		    If `return_singular_vectors` is "u", this variable is not computed,
		    and None is returned instead.
		
		
		Notes
		-----
		This is a naive implementation using ARPACK as an eigensolver
		on A.H * A or A * A.H, depending on which one is more efficient.
	**/
	static public function svds(A:Dynamic, ?k:Dynamic, ?ncv:Dynamic, ?tol:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?maxiter:Dynamic, ?return_singular_vectors:Dynamic):Dynamic;
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
		Valid keyword arguments with defaults (other ignored)::
		
		  useUmfpack = True
		  assumeSortedIndices = False
		
		The default sparse solver is umfpack when available. This can be changed by
		passing useUmfpack = False, which then causes the always present SuperLU
		based solver to be used.
		
		Umfpack requires a CSR/CSC matrix to have sorted column/row indices. If
		sure that the matrix fulfills this, pass ``assumeSortedIndices=True``
		to gain some speed.
	**/
	static public function use_solver(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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