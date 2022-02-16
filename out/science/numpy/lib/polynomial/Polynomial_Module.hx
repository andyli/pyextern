/* This file is generated, do not edit! */
package numpy.lib.polynomial;
@:pythonImport("numpy.lib.polynomial") extern class Polynomial_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _binary_op_dispatcher(a1:Dynamic, a2:Dynamic):Dynamic;
	static public function _poly_dispatcher(seq_of_zeros:Dynamic):Dynamic;
	static public var _poly_mat : Dynamic;
	static public function _polyder_dispatcher(p:Dynamic, ?m:Dynamic):Dynamic;
	static public function _polydiv_dispatcher(u:Dynamic, v:Dynamic):Dynamic;
	static public function _polyfit_dispatcher(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?cov:Dynamic):Dynamic;
	static public function _polyint_dispatcher(p:Dynamic, ?m:Dynamic, ?k:Dynamic):Dynamic;
	static public function _polyval_dispatcher(p:Dynamic, x:Dynamic):Dynamic;
	static public function _raise_power(astr:Dynamic, ?wrap:Dynamic):Dynamic;
	static public function _roots_dispatcher(p:Dynamic):Dynamic;
	/**
		absolute(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Calculate the absolute value element-wise.
		
		``np.abs`` is a shorthand for this function.
		
		Parameters
		----------
		x : array_like
		    Input array.
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
		absolute : ndarray
		    An ndarray containing the absolute value of
		    each element in `x`.  For complex input, ``a + ib``, the
		    absolute value is :math:`\sqrt{ a^2 + b^2 }`.
		    This is a scalar if `x` is a scalar.
		
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
		>>> plt.imshow(np.abs(xx), extent=[-10, 10, -10, 10], cmap='gray')
		>>> plt.show()
		
		The `abs` function can be used as a shorthand for ``np.absolute`` on
		ndarrays.
		
		>>> x = np.array([-1.2, 1.2])
		>>> abs(x)
		array([1.2, 1.2])
	**/
	static public function abs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		array(object, dtype=None, *, copy=True, order='K', subok=False, ndmin=0,
		      like=None)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		    If object is a scalar, a 0-dimensional array containing object is
		    returned.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.
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
		    the same as if ``copy=True``, with some exceptions for 'A', see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
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
	static public function array_function_dispatch(dispatcher:Dynamic, ?module:Dynamic, ?verify:Dynamic, ?docs_from_dispatcher:Dynamic):Dynamic;
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
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):numpy.Ndarray;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
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
		Compute the eigenvalues of a general matrix.
		
		Main difference between `eigvals` and `eig`: the eigenvectors aren't
		returned.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    A complex- or real-valued matrix whose eigenvalues will be computed.
		
		Returns
		-------
		w : (..., M,) ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		    They are not necessarily ordered, nor are they necessarily
		    real for real matrices.
		
		Raises
		------
		LinAlgError
		    If the eigenvalue computation does not converge.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors of general arrays
		eigvalsh : eigenvalues of real symmetric or complex Hermitian
		           (conjugate symmetric) arrays.
		eigh : eigenvalues and eigenvectors of real symmetric or complex
		       Hermitian (conjugate symmetric) arrays.
		scipy.linalg.eigvals : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		This is implemented using the ``_geev`` LAPACK routines which compute
		the eigenvalues and eigenvectors of general square arrays.
		
		Examples
		--------
		Illustration, using the fact that the eigenvalues of a diagonal matrix
		are its diagonal elements, that multiplying a matrix on the left
		by an orthogonal matrix, `Q`, and on the right by `Q.T` (the transpose
		of `Q`), preserves the eigenvalues of the "middle" matrix.  In other words,
		if `Q` is orthogonal, then ``Q * A * Q.T`` has the same eigenvalues as
		``A``:
		
		>>> from numpy import linalg as LA
		>>> x = np.random.random()
		>>> Q = np.array([[np.cos(x), -np.sin(x)], [np.sin(x), np.cos(x)]])
		>>> LA.norm(Q[0, :]), LA.norm(Q[1, :]), np.dot(Q[0, :],Q[1, :])
		(1.0, 1.0, 0.0)
		
		Now multiply a diagonal matrix by ``Q`` on one side and by ``Q.T`` on the other:
		
		>>> D = np.diag((-1,1))
		>>> LA.eigvals(D)
		array([-1.,  1.])
		>>> A = np.dot(Q, D)
		>>> A = np.dot(A, Q.T)
		>>> LA.eigvals(A)
		array([ 1., -1.]) # random
	**/
	static public function eigvals(a:Dynamic):Dynamic;
	/**
		Stack arrays in sequence horizontally (column wise).
		
		This is equivalent to concatenation along the second axis, except for 1-D
		arrays where it concatenates along the first axis. Rebuilds arrays divided
		by `hsplit`.
		
		This function makes most sense for arrays with up to 3 dimensions. For
		instance, for pixel-data with a height (first axis), width (second axis),
		and r/g/b channels (third axis). The functions `concatenate`, `stack` and
		`block` provide more general stacking and concatenation operations.
		
		Parameters
		----------
		tup : sequence of ndarrays
		    The arrays must have the same shape along all but the second axis,
		    except 1-D arrays which can be any length.
		
		Returns
		-------
		stacked : ndarray
		    The array formed by stacking the given arrays.
		
		See Also
		--------
		concatenate : Join a sequence of arrays along an existing axis.
		stack : Join a sequence of arrays along a new axis.
		block : Assemble an nd-array from nested lists of blocks.
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third axis).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		hsplit : Split an array into multiple sub-arrays horizontally (column-wise).
		
		Examples
		--------
		>>> a = np.array((1,2,3))
		>>> b = np.array((4,5,6))
		>>> np.hstack((a,b))
		array([1, 2, 3, 4, 5, 6])
		>>> a = np.array([[1],[2],[3]])
		>>> b = np.array([[4],[5],[6]])
		>>> np.hstack((a,b))
		array([[1, 4],
		       [2, 5],
		       [3, 6]])
	**/
	static public function hstack(tup:Dynamic):numpy.Ndarray;
	/**
		Return the imaginary part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The imaginary component of the complex argument. If `val` is real,
		    the type of `val` is used for the output.  If `val` has complex
		    elements, the returned type is float.
		
		See Also
		--------
		real, angle, real_if_close
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.imag
		array([2.,  4.,  6.])
		>>> a.imag = np.array([8, 10, 12])
		>>> a
		array([1. +8.j,  3.+10.j,  5.+12.j])
		>>> np.imag(1 + 1j)
		1.0
	**/
	static public function imag(val:Dynamic):Dynamic;
	/**
		Compute the (multiplicative) inverse of a matrix.
		
		Given a square matrix `a`, return the matrix `ainv` satisfying
		``dot(a, ainv) = dot(ainv, a) = eye(a.shape[0])``.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be inverted.
		
		Returns
		-------
		ainv : (..., M, M) ndarray or matrix
		    (Multiplicative) inverse of the matrix `a`.
		
		Raises
		------
		LinAlgError
		    If `a` is not square or inversion fails.
		
		See Also
		--------
		scipy.linalg.inv : Similar function in SciPy.
		
		Notes
		-----
		
		.. versionadded:: 1.8.0
		
		Broadcasting rules apply, see the `numpy.linalg` documentation for
		details.
		
		Examples
		--------
		>>> from numpy.linalg import inv
		>>> a = np.array([[1., 2.], [3., 4.]])
		>>> ainv = inv(a)
		>>> np.allclose(np.dot(a, ainv), np.eye(2))
		True
		>>> np.allclose(np.dot(ainv, a), np.eye(2))
		True
		
		If a is a matrix object, then the return value is a matrix as well:
		
		>>> ainv = inv(np.matrix(a))
		>>> ainv
		matrix([[-2. ,  1. ],
		        [ 1.5, -0.5]])
		
		Inverses of several matrices can be computed at once:
		
		>>> a = np.array([[[1., 2.], [3., 4.]], [[1, 3], [3, 5]]])
		>>> inv(a)
		array([[[-2.  ,  1.  ],
		        [ 1.5 , -0.5 ]],
		       [[-1.25,  0.75],
		        [ 0.75, -0.25]]])
	**/
	static public function inv(a:Dynamic):Dynamic;
	/**
		Returns a bool array, where True if input element is complex.
		
		What is tested is whether the input has a non-zero imaginary part, not if
		the input type is complex.
		
		Parameters
		----------
		x : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray of bools
		    Output array.
		
		See Also
		--------
		isreal
		iscomplexobj : Return True if x is a complex type or an array of complex
		               numbers.
		
		Examples
		--------
		>>> np.iscomplex([1+1j, 1+0j, 4.5, 3, 2, 2j])
		array([ True, False, False, False, False,  True])
	**/
	static public function iscomplex(x:Dynamic):Dynamic;
	/**
		Returns True if the type of `element` is a scalar type.
		
		Parameters
		----------
		element : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `element` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		If you need a stricter way to identify a *numerical* scalar, use
		``isinstance(x, numbers.Number)``, as that returns ``False`` for most
		non-numerical elements such as strings.
		
		In most cases ``np.ndim(x) == 0`` should be used instead of this function,
		as that will also return true for 0d arrays. This is how numpy overloads
		functions in the style of the ``dx`` arguments to `gradient` and the ``bins``
		argument to `histogram`. Some key differences:
		
		+--------------------------------------+---------------+-------------------+
		| x                                    |``isscalar(x)``|``np.ndim(x) == 0``|
		+======================================+===============+===================+
		| PEP 3141 numeric objects (including  | ``True``      | ``True``          |
		| builtins)                            |               |                   |
		+--------------------------------------+---------------+-------------------+
		| builtin string and buffer objects    | ``True``      | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other builtin objects, like          | ``False``     | ``True``          |
		| `pathlib.Path`, `Exception`,         |               |                   |
		| the result of `re.compile`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| third-party objects like             | ``False``     | ``True``          |
		| `matplotlib.figure.Figure`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| zero-dimensional numpy arrays        | ``False``     | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other numpy arrays                   | ``False``     | ``False``         |
		+--------------------------------------+---------------+-------------------+
		| `list`, `tuple`, and other sequence  | ``False``     | ``False``         |
		| objects                              |               |                   |
		+--------------------------------------+---------------+-------------------+
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar(np.array(3.1))
		False
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
		>>> np.isscalar('numpy')
		True
		
		NumPy supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> np.isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> np.isscalar(Number())
		True
	**/
	static public function isscalar(element:Dynamic):Bool;
	/**
		Return the least-squares solution to a linear matrix equation.
		
		Computes the vector `x` that approximately solves the equation
		``a @ x = b``. The equation may be under-, well-, or over-determined
		(i.e., the number of linearly independent rows of `a` can be less than,
		equal to, or greater than its number of linearly independent columns).
		If `a` is square and of full rank, then `x` (but for round-off error)
		is the "exact" solution of the equation. Else, `x` minimizes the
		Euclidean 2-norm :math:`||b - ax||`. If there are multiple minimizing
		solutions, the one with the smallest 2-norm :math:`||x||` is returned.
		
		Parameters
		----------
		a : (M, N) array_like
		    "Coefficient" matrix.
		b : {(M,), (M, K)} array_like
		    Ordinate or "dependent variable" values. If `b` is two-dimensional,
		    the least-squares solution is calculated for each of the `K` columns
		    of `b`.
		rcond : float, optional
		    Cut-off ratio for small singular values of `a`.
		    For the purposes of rank determination, singular values are treated
		    as zero if they are smaller than `rcond` times the largest singular
		    value of `a`.
		
		    .. versionchanged:: 1.14.0
		       If not set, a FutureWarning is given. The previous default
		       of ``-1`` will use the machine precision as `rcond` parameter,
		       the new default will use the machine precision times `max(M, N)`.
		       To silence the warning and use the new default, use ``rcond=None``,
		       to keep using the old behavior, use ``rcond=-1``.
		
		Returns
		-------
		x : {(N,), (N, K)} ndarray
		    Least-squares solution. If `b` is two-dimensional,
		    the solutions are in the `K` columns of `x`.
		residuals : {(1,), (K,), (0,)} ndarray
		    Sums of squared residuals: Squared Euclidean 2-norm for each column in
		    ``b - a @ x``.
		    If the rank of `a` is < N or M <= N, this is an empty array.
		    If `b` is 1-dimensional, this is a (1,) shape array.
		    Otherwise the shape is (K,).
		rank : int
		    Rank of matrix `a`.
		s : (min(M, N),) ndarray
		    Singular values of `a`.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		See Also
		--------
		scipy.linalg.lstsq : Similar function in SciPy.
		
		Notes
		-----
		If `b` is a matrix, then all array results are returned as matrices.
		
		Examples
		--------
		Fit a line, ``y = mx + c``, through some noisy data-points:
		
		>>> x = np.array([0, 1, 2, 3])
		>>> y = np.array([-1, 0.2, 0.9, 2.1])
		
		By examining the coefficients, we see that the line should have a
		gradient of roughly 1 and cut the y-axis at, more or less, -1.
		
		We can rewrite the line equation as ``y = Ap``, where ``A = [[x 1]]``
		and ``p = [[m], [c]]``.  Now use `lstsq` to solve for `p`:
		
		>>> A = np.vstack([x, np.ones(len(x))]).T
		>>> A
		array([[ 0.,  1.],
		       [ 1.,  1.],
		       [ 2.,  1.],
		       [ 3.,  1.]])
		
		>>> m, c = np.linalg.lstsq(A, y, rcond=None)[0]
		>>> m, c
		(1.0 -0.95) # may vary
		
		Plot the data along with the fitted line:
		
		>>> import matplotlib.pyplot as plt
		>>> _ = plt.plot(x, y, 'o', label='Original data', markersize=10)
		>>> _ = plt.plot(x, m*x + c, 'r', label='Fitted line')
		>>> _ = plt.legend()
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Return the character for the minimum-size type to which given types can
		be safely cast.
		
		The returned type character must represent the smallest size dtype such
		that an array of the returned type can handle the data from an array of
		all types in `typechars` (or if `typechars` is an array, then its
		dtype.char).
		
		Parameters
		----------
		typechars : list of str or array_like
		    If a list of strings, each string should represent a dtype.
		    If array_like, the character representation of the array dtype is used.
		typeset : str or list of str, optional
		    The set of characters that the returned character is chosen from.
		    The default set is 'GDFgdf'.
		default : str, optional
		    The default character, this is returned if none of the characters in
		    `typechars` matches a character in `typeset`.
		
		Returns
		-------
		typechar : str
		    The character representing the minimum-size type that was found.
		
		See Also
		--------
		dtype, sctype2char, maximum_sctype
		
		Examples
		--------
		>>> np.mintypecode(['d', 'f', 'S'])
		'd'
		>>> x = np.array([1.1, 2-3.j])
		>>> np.mintypecode(x)
		'D'
		
		>>> np.mintypecode('abceh', default='G')
		'G'
	**/
	static public function mintypecode(typechars:Dynamic, ?typeset:Dynamic, ?_default:Dynamic):String;
	/**
		Return a new array of given shape and type, filled with ones.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: C
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
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		ones_like : Return an array of ones with shape and type of input.
		empty : Return a new uninitialized array.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Examples
		--------
		>>> np.ones(5)
		array([1., 1., 1., 1., 1.])
		
		>>> np.ones((5,), dtype=int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[1.],
		       [1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[1.,  1.],
		       [1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?like:Dynamic):numpy.Ndarray;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1., 0., 0., 0.])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1)[0], 0, np.random.random(1)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) # random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([1.        , 0.        , 0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):numpy.Ndarray;
	/**
		Find the sum of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Returns the polynomial resulting from the sum of two input polynomials.
		Each input must be either a poly1d object or a 1D sequence of polynomial
		coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The sum of the inputs. If either input is a poly1d object, then the
		    output is also a poly1d object. Otherwise, it is a 1D array of
		    polynomial coefficients from highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		
		Examples
		--------
		>>> np.polyadd([1, 2], [9, 5, 4])
		array([9, 6, 6])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2])
		>>> p2 = np.poly1d([9, 5, 4])
		>>> print(p1)
		1 x + 2
		>>> print(p2)
		   2
		9 x + 5 x + 4
		>>> print(np.polyadd(p1, p2))
		   2
		9 x + 6 x + 6
	**/
	static public function polyadd(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Return the derivative of the specified order of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Parameters
		----------
		p : poly1d or sequence
		    Polynomial to differentiate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of differentiation (default: 1)
		
		Returns
		-------
		der : poly1d
		    A new polynomial representing the derivative.
		
		See Also
		--------
		polyint : Anti-derivative of a polynomial.
		poly1d : Class for one-dimensional polynomials.
		
		Examples
		--------
		The derivative of the polynomial :math:`x^3 + x^2 + x^1 + 1` is:
		
		>>> p = np.poly1d([1,1,1,1])
		>>> p2 = np.polyder(p)
		>>> p2
		poly1d([3, 2, 1])
		
		which evaluates to:
		
		>>> p2(2.)
		17.0
		
		We can verify this, approximating the derivative with
		``(f(x + h) - f(x))/h``:
		
		>>> (p(2. + 0.001) - p(2.)) / 0.001
		17.007000999997857
		
		The fourth-order derivative of a 3rd-order polynomial is zero:
		
		>>> np.polyder(p, 2)
		poly1d([6, 2])
		>>> np.polyder(p, 3)
		poly1d([6])
		>>> np.polyder(p, 4)
		poly1d([0])
	**/
	static public function polyder(p:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Returns the quotient and remainder of polynomial division.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The input arrays are the coefficients (including any coefficients
		equal to zero) of the "numerator" (dividend) and "denominator"
		(divisor) polynomials, respectively.
		
		Parameters
		----------
		u : array_like or poly1d
		    Dividend polynomial's coefficients.
		
		v : array_like or poly1d
		    Divisor polynomial's coefficients.
		
		Returns
		-------
		q : ndarray
		    Coefficients, including those equal to zero, of the quotient.
		r : ndarray
		    Coefficients, including those equal to zero, of the remainder.
		
		See Also
		--------
		poly, polyadd, polyder, polydiv, polyfit, polyint, polymul, polysub
		polyval
		
		Notes
		-----
		Both `u` and `v` must be 0-d or 1-d (ndim = 0 or 1), but `u.ndim` need
		not equal `v.ndim`. In other words, all four possible combinations -
		``u.ndim = v.ndim = 0``, ``u.ndim = v.ndim = 1``,
		``u.ndim = 1, v.ndim = 0``, and ``u.ndim = 0, v.ndim = 1`` - work.
		
		Examples
		--------
		.. math:: \frac{3x^2 + 5x + 2}{2x + 1} = 1.5x + 1.75, remainder 0.25
		
		>>> x = np.array([3.0, 5.0, 2.0])
		>>> y = np.array([2.0, 1.0])
		>>> np.polydiv(x, y)
		(array([1.5 , 1.75]), array([0.25]))
	**/
	static public function polydiv(u:Dynamic, v:Dynamic):numpy.Ndarray;
	/**
		Least squares polynomial fit.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Fit a polynomial ``p(x) = p[0] * x**deg + ... + p[deg]`` of degree `deg`
		to points `(x, y)`. Returns a vector of coefficients `p` that minimises
		the squared error in the order `deg`, `deg-1`, ... `0`.
		
		The `Polynomial.fit <numpy.polynomial.polynomial.Polynomial.fit>` class
		method is recommended for new code as it is more stable numerically. See
		the documentation of the method for more information.
		
		Parameters
		----------
		x : array_like, shape (M,)
		    x-coordinates of the M sample points ``(x[i], y[i])``.
		y : array_like, shape (M,) or (M, K)
		    y-coordinates of the sample points. Several data sets of sample
		    points sharing the same x-coordinates can be fitted at once by
		    passing in a 2D-array that contains one dataset per column.
		deg : int
		    Degree of the fitting polynomial
		rcond : float, optional
		    Relative condition number of the fit. Singular values smaller than
		    this relative to the largest singular value will be ignored. The
		    default value is len(x)*eps, where eps is the relative precision of
		    the float type, about 2e-16 in most cases.
		full : bool, optional
		    Switch determining nature of return value. When it is False (the
		    default) just the coefficients are returned, when True diagnostic
		    information from the singular value decomposition is also returned.
		w : array_like, shape (M,), optional
		    Weights. If not None, the weight ``w[i]`` applies to the unsquared
		    residual ``y[i] - y_hat[i]`` at ``x[i]``. Ideally the weights are
		    chosen so that the errors of the products ``w[i]*y[i]`` all have the
		    same variance.  When using inverse-variance weighting, use
		    ``w[i] = 1/sigma(y[i])``.  The default value is None.
		cov : bool or str, optional
		    If given and not `False`, return not just the estimate but also its
		    covariance matrix. By default, the covariance are scaled by
		    chi2/dof, where dof = M - (deg + 1), i.e., the weights are presumed
		    to be unreliable except in a relative sense and everything is scaled
		    such that the reduced chi2 is unity. This scaling is omitted if
		    ``cov='unscaled'``, as is relevant for the case that the weights are
		    w = 1/sigma, with sigma known to be a reliable estimate of the
		    uncertainty.
		
		Returns
		-------
		p : ndarray, shape (deg + 1,) or (deg + 1, K)
		    Polynomial coefficients, highest power first.  If `y` was 2-D, the
		    coefficients for `k`-th data set are in ``p[:,k]``.
		
		residuals, rank, singular_values, rcond
		    These values are only returned if ``full == True``
		
		    - residuals -- sum of squared residuals of the least squares fit
		    - rank -- the effective rank of the scaled Vandermonde
		       coefficient matrix
		    - singular_values -- singular values of the scaled Vandermonde
		       coefficient matrix
		    - rcond -- value of `rcond`.
		
		    For more details, see `numpy.linalg.lstsq`.
		
		V : ndarray, shape (M,M) or (M,M,K)
		    Present only if ``full == False`` and ``cov == True``.  The covariance
		    matrix of the polynomial coefficient estimates.  The diagonal of
		    this matrix are the variance estimates for each coefficient.  If y
		    is a 2-D array, then the covariance matrix for the `k`-th data set
		    are in ``V[:,:,k]``
		
		
		Warns
		-----
		RankWarning
		    The rank of the coefficient matrix in the least-squares fit is
		    deficient. The warning is only raised if ``full == False``.
		
		    The warnings can be turned off by
		
		    >>> import warnings
		    >>> warnings.simplefilter('ignore', np.RankWarning)
		
		See Also
		--------
		polyval : Compute polynomial values.
		linalg.lstsq : Computes a least-squares fit.
		scipy.interpolate.UnivariateSpline : Computes spline fits.
		
		Notes
		-----
		The solution minimizes the squared error
		
		.. math::
		    E = \sum_{j=0}^k |p(x_j) - y_j|^2
		
		in the equations::
		
		    x[0]**n * p[0] + ... + x[0] * p[n-1] + p[n] = y[0]
		    x[1]**n * p[0] + ... + x[1] * p[n-1] + p[n] = y[1]
		    ...
		    x[k]**n * p[0] + ... + x[k] * p[n-1] + p[n] = y[k]
		
		The coefficient matrix of the coefficients `p` is a Vandermonde matrix.
		
		`polyfit` issues a `RankWarning` when the least-squares fit is badly
		conditioned. This implies that the best fit is not well-defined due
		to numerical error. The results may be improved by lowering the polynomial
		degree or by replacing `x` by `x` - `x`.mean(). The `rcond` parameter
		can also be set to a value smaller than its default, but the resulting
		fit may be spurious: including contributions from the small singular
		values can add numerical noise to the result.
		
		Note that fitting polynomial coefficients is inherently badly conditioned
		when the degree of the polynomial is large or the interval of sample points
		is badly centered. The quality of the fit should always be checked in these
		cases. When polynomial fits are not satisfactory, splines may be a good
		alternative.
		
		References
		----------
		.. [1] Wikipedia, "Curve fitting",
		       https://en.wikipedia.org/wiki/Curve_fitting
		.. [2] Wikipedia, "Polynomial interpolation",
		       https://en.wikipedia.org/wiki/Polynomial_interpolation
		
		Examples
		--------
		>>> import warnings
		>>> x = np.array([0.0, 1.0, 2.0, 3.0,  4.0,  5.0])
		>>> y = np.array([0.0, 0.8, 0.9, 0.1, -0.8, -1.0])
		>>> z = np.polyfit(x, y, 3)
		>>> z
		array([ 0.08703704, -0.81349206,  1.69312169, -0.03968254]) # may vary
		
		It is convenient to use `poly1d` objects for dealing with polynomials:
		
		>>> p = np.poly1d(z)
		>>> p(0.5)
		0.6143849206349179 # may vary
		>>> p(3.5)
		-0.34732142857143039 # may vary
		>>> p(10)
		22.579365079365115 # may vary
		
		High-order polynomials may oscillate wildly:
		
		>>> with warnings.catch_warnings():
		...     warnings.simplefilter('ignore', np.RankWarning)
		...     p30 = np.poly1d(np.polyfit(x, y, 30))
		...
		>>> p30(4)
		-0.80000000000000204 # may vary
		>>> p30(5)
		-0.99999999999999445 # may vary
		>>> p30(4.5)
		-0.10547061179440398 # may vary
		
		Illustration:
		
		>>> import matplotlib.pyplot as plt
		>>> xp = np.linspace(-2, 6, 100)
		>>> _ = plt.plot(x, y, '.', xp, p(xp), '-', xp, p30(xp), '--')
		>>> plt.ylim(-2,2)
		(-2, 2)
		>>> plt.show()
	**/
	static public function polyfit(x:Dynamic, y:Dynamic, deg:Dynamic, ?rcond:Dynamic, ?full:Dynamic, ?w:Dynamic, ?cov:Dynamic):Dynamic;
	/**
		Return an antiderivative (indefinite integral) of a polynomial.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The returned order `m` antiderivative `P` of polynomial `p` satisfies
		:math:`\frac{d^m}{dx^m}P(x) = p(x)` and is defined up to `m - 1`
		integration constants `k`. The constants determine the low-order
		polynomial part
		
		.. math:: \frac{k_{m-1}}{0!} x^0 + \ldots + \frac{k_0}{(m-1)!}x^{m-1}
		
		of `P` so that :math:`P^{(j)}(0) = k_{m-j-1}`.
		
		Parameters
		----------
		p : array_like or poly1d
		    Polynomial to integrate.
		    A sequence is interpreted as polynomial coefficients, see `poly1d`.
		m : int, optional
		    Order of the antiderivative. (Default: 1)
		k : list of `m` scalars or scalar, optional
		    Integration constants. They are given in the order of integration:
		    those corresponding to highest-order terms come first.
		
		    If ``None`` (default), all constants are assumed to be zero.
		    If `m = 1`, a single scalar can be given instead of a list.
		
		See Also
		--------
		polyder : derivative of a polynomial
		poly1d.integ : equivalent method
		
		Examples
		--------
		The defining property of the antiderivative:
		
		>>> p = np.poly1d([1,1,1])
		>>> P = np.polyint(p)
		>>> P
		 poly1d([ 0.33333333,  0.5       ,  1.        ,  0.        ]) # may vary
		>>> np.polyder(P) == p
		True
		
		The integration constants default to zero, but can be specified:
		
		>>> P = np.polyint(p, 3)
		>>> P(0)
		0.0
		>>> np.polyder(P)(0)
		0.0
		>>> np.polyder(P, 2)(0)
		0.0
		>>> P = np.polyint(p, 3, k=[6,5,3])
		>>> P
		poly1d([ 0.01666667,  0.04166667,  0.16666667,  3. ,  5. ,  3. ]) # may vary
		
		Note that 3 = 6 / 2!, and that the constants are given in the order of
		integrations. Constant of the highest-order polynomial term comes first:
		
		>>> np.polyder(P, 2)(0)
		6.0
		>>> np.polyder(P, 1)(0)
		5.0
		>>> P(0)
		3.0
	**/
	static public function polyint(p:Dynamic, ?m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Find the product of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Finds the polynomial resulting from the multiplication of the two input
		polynomials. Each input must be either a poly1d object or a 1D sequence
		of polynomial coefficients, from highest to lowest degree.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d object
		    Input polynomials.
		
		Returns
		-------
		out : ndarray or poly1d object
		    The polynomial resulting from the multiplication of the inputs. If
		    either inputs is a poly1d object, then the output is also a poly1d
		    object. Otherwise, it is a 1D array of polynomial coefficients from
		    highest to lowest degree.
		
		See Also
		--------
		poly1d : A one-dimensional polynomial class.
		poly, polyadd, polyder, polydiv, polyfit, polyint, polysub, polyval
		convolve : Array convolution. Same output as polymul, but has parameter
		           for overlap mode.
		
		Examples
		--------
		>>> np.polymul([1, 2, 3], [9, 5, 1])
		array([ 9, 23, 38, 17,  3])
		
		Using poly1d objects:
		
		>>> p1 = np.poly1d([1, 2, 3])
		>>> p2 = np.poly1d([9, 5, 1])
		>>> print(p1)
		   2
		1 x + 2 x + 3
		>>> print(p2)
		   2
		9 x + 5 x + 1
		>>> print(np.polymul(p1, p2))
		   4      3      2
		9 x + 23 x + 38 x + 17 x + 3
	**/
	static public function polymul(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Difference (subtraction) of two polynomials.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		Given two polynomials `a1` and `a2`, returns ``a1 - a2``.
		`a1` and `a2` can be either array_like sequences of the polynomials'
		coefficients (including coefficients equal to zero), or `poly1d` objects.
		
		Parameters
		----------
		a1, a2 : array_like or poly1d
		    Minuend and subtrahend polynomials, respectively.
		
		Returns
		-------
		out : ndarray or poly1d
		    Array or `poly1d` object of the difference polynomial's coefficients.
		
		See Also
		--------
		polyval, polydiv, polymul, polyadd
		
		Examples
		--------
		.. math:: (2 x^2 + 10 x - 2) - (3 x^2 + 10 x -4) = (-x^2 + 2)
		
		>>> np.polysub([2, 10, -2], [3, 10, -4])
		array([-1,  0,  2])
	**/
	static public function polysub(a1:Dynamic, a2:Dynamic):Dynamic;
	/**
		Evaluate a polynomial at specific values.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		If `p` is of length N, this function returns the value:
		
		    ``p[0]*x**(N-1) + p[1]*x**(N-2) + ... + p[N-2]*x + p[N-1]``
		
		If `x` is a sequence, then ``p(x)`` is returned for each element of ``x``.
		If `x` is another polynomial then the composite polynomial ``p(x(t))``
		is returned.
		
		Parameters
		----------
		p : array_like or poly1d object
		   1D array of polynomial coefficients (including coefficients equal
		   to zero) from highest degree to the constant term, or an
		   instance of poly1d.
		x : array_like or poly1d object
		   A number, an array of numbers, or an instance of poly1d, at
		   which to evaluate `p`.
		
		Returns
		-------
		values : ndarray or poly1d
		   If `x` is a poly1d instance, the result is the composition of the two
		   polynomials, i.e., `x` is "substituted" in `p` and the simplified
		   result is returned. In addition, the type of `x` - array_like or
		   poly1d - governs the type of the output: `x` array_like => `values`
		   array_like, `x` a poly1d object => `values` is also.
		
		See Also
		--------
		poly1d: A polynomial class.
		
		Notes
		-----
		Horner's scheme [1]_ is used to evaluate the polynomial. Even so,
		for polynomials of high degree the values may be inaccurate due to
		rounding errors. Use carefully.
		
		If `x` is a subtype of `ndarray` the return value will be of the same type.
		
		References
		----------
		.. [1] I. N. Bronshtein, K. A. Semendyayev, and K. A. Hirsch (Eng.
		   trans. Ed.), *Handbook of Mathematics*, New York, Van Nostrand
		   Reinhold Co., 1985, pg. 720.
		
		Examples
		--------
		>>> np.polyval([3,0,1], 5)  # 3 * 5**2 + 0 * 5**1 + 1
		76
		>>> np.polyval([3,0,1], np.poly1d(5))
		poly1d([76])
		>>> np.polyval(np.poly1d([3,0,1]), 5)
		76
		>>> np.polyval(np.poly1d([3,0,1]), np.poly1d(5))
		poly1d([76])
	**/
	static public function polyval(p:Dynamic, x:Dynamic):Dynamic;
	/**
		Return the real part of the complex argument.
		
		Parameters
		----------
		val : array_like
		    Input array.
		
		Returns
		-------
		out : ndarray or scalar
		    The real component of the complex argument. If `val` is real, the type
		    of `val` is used for the output.  If `val` has complex elements, the
		    returned type is float.
		
		See Also
		--------
		real_if_close, imag, angle
		
		Examples
		--------
		>>> a = np.array([1+2j, 3+4j, 5+6j])
		>>> a.real
		array([1.,  3.,  5.])
		>>> a.real = 9
		>>> a
		array([9.+2.j,  9.+4.j,  9.+6.j])
		>>> a.real = np.array([9, 8, 7])
		>>> a
		array([9.+2.j,  8.+4.j,  7.+6.j])
		>>> np.real(1 + 1j)
		1.0
	**/
	static public function real(val:Dynamic):Dynamic;
	/**
		Return the roots of a polynomial with coefficients given in p.
		
		.. note::
		   This forms part of the old polynomial API. Since version 1.4, the
		   new polynomial API defined in `numpy.polynomial` is preferred.
		   A summary of the differences can be found in the
		   :doc:`transition guide </reference/routines.polynomials>`.
		
		The values in the rank-1 array `p` are coefficients of a polynomial.
		If the length of `p` is n+1 then the polynomial is described by::
		
		  p[0] * x**n + p[1] * x**(n-1) + ... + p[n-1]*x + p[n]
		
		Parameters
		----------
		p : array_like
		    Rank-1 array of polynomial coefficients.
		
		Returns
		-------
		out : ndarray
		    An array containing the roots of the polynomial.
		
		Raises
		------
		ValueError
		    When `p` cannot be converted to a rank-1 array.
		
		See also
		--------
		poly : Find the coefficients of a polynomial with a given sequence
		       of roots.
		polyval : Compute polynomial values.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		The algorithm relies on computing the eigenvalues of the
		companion matrix [1]_.
		
		References
		----------
		.. [1] R. A. Horn & C. R. Johnson, *Matrix Analysis*.  Cambridge, UK:
		    Cambridge University Press, 1999, pp. 146-7.
		
		Examples
		--------
		>>> coeff = [3.2, 2, 1]
		>>> np.roots(coeff)
		array([-0.3125+0.46351241j, -0.3125-0.46351241j])
	**/
	static public function roots(p:Dynamic):numpy.Ndarray;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
	/**
		Trim the leading and/or trailing zeros from a 1-D array or sequence.
		
		Parameters
		----------
		filt : 1-D array or sequence
		    Input array.
		trim : str, optional
		    A string with 'f' representing trim from front and 'b' to trim from
		    back. Default is 'fb', trim zeros from both front and back of the
		    array.
		
		Returns
		-------
		trimmed : 1-D array or sequence
		    The result of trimming the input. The input data type is preserved.
		
		Examples
		--------
		>>> a = np.array((0, 0, 0, 1, 2, 3, 0, 2, 1, 0))
		>>> np.trim_zeros(a)
		array([1, 2, 3, 0, 2, 1])
		
		>>> np.trim_zeros(a, 'b')
		array([0, 0, 0, ..., 0, 2, 1])
		
		The input data type is preserved, list/tuple in means list/tuple out.
		
		>>> np.trim_zeros([0, 1, 2, 0])
		[1, 2]
	**/
	static public function trim_zeros(filt:Dynamic, ?trim:Dynamic):Dynamic;
	/**
		Generate a Vandermonde matrix.
		
		The columns of the output matrix are powers of the input vector. The
		order of the powers is determined by the `increasing` boolean argument.
		Specifically, when `increasing` is False, the `i`-th output column is
		the input vector raised element-wise to the power of ``N - i - 1``. Such
		a matrix with a geometric progression in each row is named for Alexandre-
		Theophile Vandermonde.
		
		Parameters
		----------
		x : array_like
		    1-D input array.
		N : int, optional
		    Number of columns in the output.  If `N` is not specified, a square
		    array is returned (``N = len(x)``).
		increasing : bool, optional
		    Order of the powers of the columns.  If True, the powers increase
		    from left to right, if False (the default) they are reversed.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : ndarray
		    Vandermonde matrix.  If `increasing` is False, the first column is
		    ``x^(N-1)``, the second ``x^(N-2)`` and so forth. If `increasing` is
		    True, the columns are ``x^0, x^1, ..., x^(N-1)``.
		
		See Also
		--------
		polynomial.polynomial.polyvander
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 5])
		>>> N = 3
		>>> np.vander(x, N)
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> np.column_stack([x**(N-1-i) for i in range(N)])
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> x = np.array([1, 2, 3, 5])
		>>> np.vander(x)
		array([[  1,   1,   1,   1],
		       [  8,   4,   2,   1],
		       [ 27,   9,   3,   1],
		       [125,  25,   5,   1]])
		>>> np.vander(x, increasing=True)
		array([[  1,   1,   1,   1],
		       [  1,   2,   4,   8],
		       [  1,   3,   9,  27],
		       [  1,   5,  25, 125]])
		
		The determinant of a square Vandermonde matrix is the product
		of the differences between the values of the input vector:
		
		>>> np.linalg.det(np.vander(x))
		48.000000000000043 # may vary
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):numpy.Ndarray;
}