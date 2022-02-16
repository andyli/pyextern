/* This file is generated, do not edit! */
package scipy.linalg.matfuncs;
@:pythonImport("scipy.linalg.matfuncs") extern class Matfuncs_Module {
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
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the maximum of an array or maximum along an axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which to operate.  By default, flattened input is
		    used.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, the maximum is selected over multiple axes,
		    instead of a single axis or all the axes as before.
		out : ndarray, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		    See :ref:`ufuncs-output-type` for more details.
		
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `amax` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		initial : scalar, optional
		    The minimum value of an output element. Must be present to allow
		    computation on empty slice. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		where : array_like of bool, optional
		    Elements to compare for the maximum. See `~numpy.ufunc.reduce`
		    for details.
		
		    .. versionadded:: 1.17.0
		
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
		>>> np.amax(a, where=[False, True], initial=-1, axis=0)
		array([-1,  3])
		>>> b = np.arange(5, dtype=float)
		>>> b[2] = np.NaN
		>>> np.amax(b)
		nan
		>>> np.amax(b, where=~np.isnan(b), initial=-1)
		4.0
		>>> np.nanmax(b)
		4.0
		
		You can use an initial value to compute the maximum of an empty slice, or
		to initialize it to a different value:
		
		>>> np.amax([[-50], [10]], axis=-1, initial=0)
		array([ 0, 10])
		
		Notice that the initial value is used as one of the elements for which the
		maximum is determined, unlike for the default argument Python's max
		function, which is only used for empty iterables.
		
		>>> np.amax([5], initial=6)
		6
		>>> max([5], default=6)
		5
	**/
	static public function amax(a:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic, ?where:Dynamic):Dynamic;
	/**
		conjugate(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
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
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		`conj` is an alias for `conjugate`:
		
		>>> np.conj is np.conjugate
		True
		
		Examples
		--------
		>>> np.conjugate(1+2j)
		(1-2j)
		
		>>> x = np.eye(2) + 1j * np.eye(2)
		>>> np.conjugate(x)
		array([[ 1.-1.j,  0.-0.j],
		       [ 0.-0.j,  1.-1.j]])
	**/
	static public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the hyperbolic matrix cosine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		coshm : (N, N) ndarray
		    Hyperbolic matrix cosine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> c = coshm(a)
		>>> c
		array([[ 11.24592233,  38.76236492],
		       [ 12.92078831,  50.00828725]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> t = tanhm(a)
		>>> s = sinhm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function coshm(A:Dynamic):Dynamic;
	/**
		Compute the matrix cosine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array
		
		Returns
		-------
		cosm : (N, N) ndarray
		    Matrix cosine of A
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function cosm(A:Dynamic):Dynamic;
	static public var eps : Dynamic;
	/**
		Compute the matrix exponential using Pade approximation.
		
		Parameters
		----------
		A : (N, N) array_like or sparse matrix
		    Matrix to be exponentiated.
		
		Returns
		-------
		expm : (N, N) ndarray
		    Matrix exponential of `A`.
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       "A New Scaling and Squaring Algorithm for the Matrix Exponential."
		       SIAM Journal on Matrix Analysis and Applications.
		       31 (3). pp. 970-989. ISSN 1095-7162
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Matrix version of the formula exp(0) = 1:
		
		>>> expm(np.zeros((2,2)))
		array([[ 1.,  0.],
		       [ 0.,  1.]])
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function expm(A:Dynamic):Dynamic;
	/**
		Relative condition number of the matrix exponential in the Frobenius norm.
		
		Parameters
		----------
		A : 2-D array_like
		    Square input matrix with shape (N, N).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		kappa : float
		    The relative condition number of the matrix exponential
		    in the Frobenius norm
		
		Notes
		-----
		A faster estimate for the condition number in the 1-norm
		has been published but is not yet implemented in SciPy.
		
		.. versionadded:: 0.14.0
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		expm_frechet : Compute the Frechet derivative of the matrix exponential.
		
		Examples
		--------
		>>> from scipy.linalg import expm_cond
		>>> A = np.array([[-0.3, 0.2, 0.6], [0.6, 0.3, -0.1], [-0.7, 1.2, 0.9]])
		>>> k = expm_cond(A)
		>>> k
		1.7787805864469866
	**/
	static public function expm_cond(A:Dynamic, ?check_finite:Dynamic):Float;
	/**
		Frechet derivative of the matrix exponential of A in the direction E.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix of which to take the matrix exponential.
		E : (N, N) array_like
		    Matrix direction in which to take the Frechet derivative.
		method : str, optional
		    Choice of algorithm. Should be one of
		
		    - `SPS` (default)
		    - `blockEnlarge`
		
		compute_expm : bool, optional
		    Whether to compute also `expm_A` in addition to `expm_frechet_AE`.
		    Default is True.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		expm_A : ndarray
		    Matrix exponential of A.
		expm_frechet_AE : ndarray
		    Frechet derivative of the matrix exponential of A in the direction E.
		
		For ``compute_expm = False``, only `expm_frechet_AE` is returned.
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		
		Notes
		-----
		This section describes the available implementations that can be selected
		by the `method` parameter. The default method is *SPS*.
		
		Method *blockEnlarge* is a naive algorithm.
		
		Method *SPS* is Scaling-Pade-Squaring [1]_.
		It is a sophisticated implementation which should take
		only about 3/8 as much time as the naive implementation.
		The asymptotics are the same.
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2009)
		       Computing the Frechet Derivative of the Matrix Exponential,
		       with an application to Condition Number Estimation.
		       SIAM Journal On Matrix Analysis and Applications.,
		       30 (4). pp. 1639-1657. ISSN 1095-7162
		
		Examples
		--------
		>>> import scipy.linalg
		>>> rng = np.random.default_rng()
		>>> A = rng.standard_normal((3, 3))
		>>> E = rng.standard_normal((3, 3))
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> expm_A.shape, expm_frechet_AE.shape
		((3, 3), (3, 3))
		
		>>> import scipy.linalg
		>>> rng = np.random.default_rng()
		>>> A = rng.standard_normal((3, 3))
		>>> E = rng.standard_normal((3, 3))
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> M = np.zeros((6, 6))
		>>> M[:3, :3] = A; M[:3, 3:] = E; M[3:, 3:] = A
		>>> expm_M = scipy.linalg.expm(M)
		>>> np.allclose(expm_A, expm_M[:3, :3])
		True
		>>> np.allclose(expm_frechet_AE, expm_M[:3, 3:])
		True
	**/
	static public function expm_frechet(A:Dynamic, E:Dynamic, ?method:Dynamic, ?compute_expm:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var feps : Dynamic;
	/**
		Compute the fractional power of a matrix.
		
		Proceeds according to the discussion in section (6) of [1]_.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose fractional power to evaluate.
		t : float
		    Fractional power.
		
		Returns
		-------
		X : (N, N) array_like
		    The fractional power of the matrix.
		
		References
		----------
		.. [1] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
		
		Examples
		--------
		>>> from scipy.linalg import fractional_matrix_power
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> b = fractional_matrix_power(a, 0.5)
		>>> b
		array([[ 0.75592895,  1.13389342],
		       [ 0.37796447,  1.88982237]])
		>>> np.dot(b, b)      # Verify square root
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function fractional_matrix_power(A:Dynamic, t:Dynamic):Dynamic;
	/**
		Evaluate a matrix function specified by a callable.
		
		Returns the value of matrix-valued function ``f`` at `A`. The
		function ``f`` is an extension of the scalar-valued function `func`
		to matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix at which to evaluate the function
		func : callable
		    Callable object that evaluates a scalar function f.
		    Must be vectorized (eg. using vectorize).
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		funm : (N, N) ndarray
		    Value of the matrix function specified by func evaluated at `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		Examples
		--------
		>>> from scipy.linalg import funm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> funm(a, lambda x: x*x)
		array([[  4.,  15.],
		       [  5.,  19.]])
		>>> a.dot(a)
		array([[  4.,  15.],
		       [  5.,  19.]])
		
		Notes
		-----
		This function implements the general algorithm based on Schur decomposition
		(Algorithm 9.1.1. in [1]_).
		
		If the input matrix is known to be diagonalizable, then relying on the
		eigendecomposition is likely to be faster. For example, if your matrix is
		Hermitian, you can do
		
		>>> from scipy.linalg import eigh
		>>> def funm_herm(a, func, check_finite=False):
		...     w, v = eigh(a, check_finite=check_finite)
		...     ## if you further know that your matrix is positive semidefinite,
		...     ## you can optionally guard against precision errors by doing
		...     # w = np.maximum(w, 0)
		...     w = func(w)
		...     return (v * w).dot(v.conj().T)
		
		References
		----------
		.. [1] Gene H. Golub, Charles F. van Loan, Matrix Computations 4th ed.
	**/
	static public function funm(A:Dynamic, func:Dynamic, ?disp:Dynamic):Dynamic;
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
		isfinite(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Test element-wise for finiteness (not infinity and not Not a Number).
		
		The result is returned as a boolean array.
		
		Parameters
		----------
		x : array_like
		    Input values.
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
		y : ndarray, bool
		    True where ``x`` is not positive infinity, negative infinity,
		    or NaN; false otherwise.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		isinf, isneginf, isposinf, isnan
		
		Notes
		-----
		Not a Number, positive infinity and negative infinity are considered
		to be non-finite.
		
		NumPy uses the IEEE Standard for Binary Floating-Point for Arithmetic
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
		array([False,  True, False])
		
		>>> x = np.array([-np.inf, 0., np.inf])
		>>> y = np.array([2, 2, 2])
		>>> np.isfinite(x, y)
		array([0, 1, 0])
		>>> y
		array([0, 1, 0])
	**/
	static public function isfinite(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Khatri-rao product
		
		A column-wise Kronecker product of two matrices
		
		Parameters
		----------
		a:  (n, k) array_like
		    Input array
		b:  (m, k) array_like
		    Input array
		
		Returns
		-------
		c:  (n*m, k) ndarray
		    Khatri-rao product of `a` and `b`.
		
		Notes
		-----
		The mathematical definition of the Khatri-Rao product is:
		
		.. math::
		
		    (A_{ij}  \bigotimes B_{ij})_{ij}
		
		which is the Kronecker product of every column of A and B, e.g.::
		
		    c = np.vstack([np.kron(a[:, k], b[:, k]) for k in range(b.shape[1])]).T
		
		See Also
		--------
		kron : Kronecker product
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1, 2, 3], [4, 5, 6]])
		>>> b = np.array([[3, 4, 5], [6, 7, 8], [2, 3, 9]])
		>>> linalg.khatri_rao(a, b)
		array([[ 3,  8, 15],
		       [ 6, 14, 24],
		       [ 2,  6, 27],
		       [12, 20, 30],
		       [24, 35, 48],
		       [ 8, 15, 54]])
	**/
	static public function khatri_rao(a:Dynamic, b:Dynamic):Dynamic;
	/**
		logical_not(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
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
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		    This is a scalar if `x` is a scalar.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False])
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True])
	**/
	static public function logical_not(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute matrix logarithm.
		
		The matrix logarithm is the inverse of
		expm: expm(logm(`A`)) == `A`
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose logarithm to evaluate
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		logm : (N, N) ndarray
		    Matrix logarithm of `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2012)
		       "Improved Inverse Scaling and Squaring Algorithms
		       for the Matrix Logarithm."
		       SIAM Journal on Scientific Computing, 34 (4). C152-C169.
		       ISSN 1095-7197
		
		.. [2] Nicholas J. Higham (2008)
		       "Functions of Matrices: Theory and Computation"
		       ISBN 978-0-898716-46-7
		
		.. [3] Nicholas J. Higham and Lijing lin (2011)
		       "A Schur-Pade Algorithm for Fractional Powers of a Matrix."
		       SIAM Journal on Matrix Analysis and Applications,
		       32 (3). pp. 1056-1078. ISSN 0895-4798
		
		Examples
		--------
		>>> from scipy.linalg import logm, expm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> b = logm(a)
		>>> b
		array([[-1.02571087,  2.05142174],
		       [ 0.68380725,  1.02571087]])
		>>> expm(b)         # Verify expm(logm(a)) returns a
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function logm(A:Dynamic, ?disp:Dynamic):Dynamic;
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
		    y is an array of the same subtype as `a`, with shape ``(a.size,)``.
		    Note that matrices are special cased for backward compatibility, if `a`
		    is a matrix, then y is a 1-D ndarray.
		
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
		>>> np.ravel(x)
		array([1, 2, 3, 4, 5, 6])
		
		>>> x.reshape(-1)
		array([1, 2, 3, 4, 5, 6])
		
		>>> np.ravel(x, order='F')
		array([1, 4, 2, 5, 3, 6])
		
		When ``order`` is 'A', it will preserve the array's 'C' or 'F' ordering:
		
		>>> np.ravel(x.T)
		array([1, 4, 2, 5, 3, 6])
		>>> np.ravel(x.T, order='A')
		array([1, 2, 3, 4, 5, 6])
		
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
		Convert real Schur form to complex Schur form.
		
		Convert a quasi-diagonal real-valued Schur form to the upper-triangular
		complex-valued Schur form.
		
		Parameters
		----------
		T : (M, M) array_like
		    Real Schur form of the original array
		Z : (M, M) array_like
		    Schur transformation matrix
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Complex Schur form of the original array
		Z : (M, M) ndarray
		    Schur transformation matrix corresponding to the complex form
		
		See Also
		--------
		schur : Schur decomposition of an array
		
		Examples
		--------
		>>> from scipy.linalg import schur, rsf2csf
		>>> A = np.array([[0, 2, 2], [0, 1, 2], [1, 0, 1]])
		>>> T, Z = schur(A)
		>>> T
		array([[ 2.65896708,  1.42440458, -1.92933439],
		       [ 0.        , -0.32948354, -0.49063704],
		       [ 0.        ,  1.31178921, -0.32948354]])
		>>> Z
		array([[0.72711591, -0.60156188, 0.33079564],
		       [0.52839428, 0.79801892, 0.28976765],
		       [0.43829436, 0.03590414, -0.89811411]])
		>>> T2 , Z2 = rsf2csf(T, Z)
		>>> T2
		array([[2.65896708+0.j, -1.64592781+0.743164187j, -1.21516887+1.00660462j],
		       [0.+0.j , -0.32948354+8.02254558e-01j, -0.82115218-2.77555756e-17j],
		       [0.+0.j , 0.+0.j, -0.32948354-0.802254558j]])
		>>> Z2
		array([[0.72711591+0.j,  0.28220393-0.31385693j,  0.51319638-0.17258824j],
		       [0.52839428+0.j,  0.24720268+0.41635578j, -0.68079517-0.15118243j],
		       [0.43829436+0.j, -0.76618703+0.01873251j, -0.03063006+0.46857912j]])
	**/
	static public function rsf2csf(T:Dynamic, Z:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute Schur decomposition of a matrix.
		
		The Schur decomposition is::
		
		    A = Z T Z^H
		
		where Z is unitary and T is either upper-triangular, or for real
		Schur decomposition (output='real'), quasi-upper triangular. In
		the quasi-triangular form, 2x2 blocks describing complex-valued
		eigenvalue pairs may extrude from the diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex Schur decomposition (for real matrices).
		lwork : int, optional
		    Work array size. If None or -1, it is automatically computed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance).
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted. A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True).
		    Alternatively, string parameters may be used::
		
		        'lhp'   Left-hand plane (x.real < 0.0)
		        'rhp'   Right-hand plane (x.real > 0.0)
		        'iuc'   Inside the unit circle (x*x.conjugate() <= 1.0)
		        'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Schur form of A. It is real-valued for the real Schur decomposition.
		Z : (M, M) ndarray
		    An unitary Schur transformation matrix for A.
		    It is real-valued for the real Schur decomposition.
		sdim : int
		    If and only if sorting was requested, a third return value will
		    contain the number of eigenvalues satisfying the sort condition.
		
		Raises
		------
		LinAlgError
		    Error raised under three conditions:
		
		    1. The algorithm failed due to a failure of the QR algorithm to
		       compute all eigenvalues.
		    2. If eigenvalue sorting was requested, the eigenvalues could not be
		       reordered due to a failure to separate eigenvalues, usually because
		       of poor conditioning.
		    3. If eigenvalue sorting was requested, roundoff errors caused the
		       leading eigenvalues to no longer satisfy the sorting condition.
		
		See also
		--------
		rsf2csf : Convert real Schur form to complex Schur form
		
		Examples
		--------
		>>> from scipy.linalg import schur, eigvals
		>>> A = np.array([[0, 2, 2], [0, 1, 2], [1, 0, 1]])
		>>> T, Z = schur(A)
		>>> T
		array([[ 2.65896708,  1.42440458, -1.92933439],
		       [ 0.        , -0.32948354, -0.49063704],
		       [ 0.        ,  1.31178921, -0.32948354]])
		>>> Z
		array([[0.72711591, -0.60156188, 0.33079564],
		       [0.52839428, 0.79801892, 0.28976765],
		       [0.43829436, 0.03590414, -0.89811411]])
		
		>>> T2, Z2 = schur(A, output='complex')
		>>> T2
		array([[ 2.65896708, -1.22839825+1.32378589j,  0.42590089+1.51937378j],
		       [ 0.        , -0.32948354+0.80225456j, -0.59877807+0.56192146j],
		       [ 0.        ,  0.                    , -0.32948354-0.80225456j]])
		>>> eigvals(T2)
		array([2.65896708, -0.32948354+0.80225456j, -0.32948354-0.80225456j])
		
		An arbitrary custom eig-sorting condition, having positive imaginary part,
		which is satisfied by only one eigenvalue
		
		>>> T3, Z3, sdim = schur(A, output='complex', sort=lambda x: x.imag > 0)
		>>> sdim
		1
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		sign(x, /, out=None, *, where=True, casting='same_kind', order='K', dtype=None, subok=True[, signature, extobj])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.  nan
		is returned for nan inputs.
		
		For complex inputs, the `sign` function returns
		``sign(x.real) + 0j if x.real != 0 else sign(x.imag) + 0j``.
		
		complex(nan, 0) is returned for complex nan inputs.
		
		Parameters
		----------
		x : array_like
		    Input values.
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
		y : ndarray
		    The sign of `x`.
		    This is a scalar if `x` is a scalar.
		
		Notes
		-----
		There is more than one definition of sign in common use for complex
		numbers.  The definition used here is equivalent to :math:`x/\sqrt{x*x}`
		which is different from a common alternative, :math:`x/|x|`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
		>>> np.sign(5-2j)
		(1+0j)
	**/
	static public function sign(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matrix sign function.
		
		Extension of the scalar sign(x) to matrices.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix at which to evaluate the sign function
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		
		Returns
		-------
		signm : (N, N) ndarray
		    Value of the sign function at `A`
		errest : float
		    (if disp == False)
		
		    1-norm of the estimated error, ||err||_1 / ||A||_1
		
		Examples
		--------
		>>> from scipy.linalg import signm, eigvals
		>>> a = [[1,2,3], [1,2,1], [1,1,1]]
		>>> eigvals(a)
		array([ 4.12488542+0.j, -0.76155718+0.j,  0.63667176+0.j])
		>>> eigvals(signm(a))
		array([-1.+0.j,  1.+0.j,  1.+0.j])
	**/
	static public function signm(A:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Compute the hyperbolic matrix sine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		sinhm : (N, N) ndarray
		    Hyperbolic matrix sine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> s = sinhm(a)
		>>> s
		array([[ 10.57300653,  39.28826594],
		       [ 13.09608865,  49.86127247]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> t = tanhm(a)
		>>> c = coshm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function sinhm(A:Dynamic):Dynamic;
	/**
		Compute the matrix sine.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		sinm : (N, N) ndarray
		    Matrix sine of `A`
		
		Examples
		--------
		>>> from scipy.linalg import expm, sinm, cosm
		
		Euler's identity (exp(i*theta) = cos(theta) + i*sin(theta))
		applied to a matrix:
		
		>>> a = np.array([[1.0, 2.0], [-1.0, 3.0]])
		>>> expm(1j*a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
		>>> cosm(a) + 1j*sinm(a)
		array([[ 0.42645930+1.89217551j, -2.13721484-0.97811252j],
		       [ 1.06860742+0.48905626j, -1.71075555+0.91406299j]])
	**/
	static public function sinm(A:Dynamic):Dynamic;
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
		Matrix square root.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose square root to evaluate
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		blocksize : integer, optional
		    If the blocksize is not degenerate with respect to the
		    size of the input array, then use a blocked algorithm. (Default: 64)
		
		Returns
		-------
		sqrtm : (N, N) ndarray
		    Value of the sqrt function at `A`
		
		errest : float
		    (if disp == False)
		
		    Frobenius norm of the estimated error, ||err||_F / ||A||_F
		
		References
		----------
		.. [1] Edvin Deadman, Nicholas J. Higham, Rui Ralha (2013)
		       "Blocked Schur Algorithms for Computing the Matrix Square Root,
		       Lecture Notes in Computer Science, 7782. pp. 171-182.
		
		Examples
		--------
		>>> from scipy.linalg import sqrtm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> r = sqrtm(a)
		>>> r
		array([[ 0.75592895,  1.13389342],
		       [ 0.37796447,  1.88982237]])
		>>> r.dot(r)
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function sqrtm(A:Dynamic, ?disp:Dynamic, ?blocksize:Dynamic):Dynamic;
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
		Compute the hyperbolic matrix tangent.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array
		
		Returns
		-------
		tanhm : (N, N) ndarray
		    Hyperbolic matrix tangent of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanhm, sinhm, coshm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> t = tanhm(a)
		>>> t
		array([[ 0.3428582 ,  0.51987926],
		       [ 0.17329309,  0.86273746]])
		
		Verify tanhm(a) = sinhm(a).dot(inv(coshm(a)))
		
		>>> s = sinhm(a)
		>>> c = coshm(a)
		>>> t - s.dot(np.linalg.inv(c))
		array([[  2.72004641e-15,   4.55191440e-15],
		       [  0.00000000e+00,  -5.55111512e-16]])
	**/
	static public function tanhm(A:Dynamic):Dynamic;
	/**
		Compute the matrix tangent.
		
		This routine uses expm to compute the matrix exponentials.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input array.
		
		Returns
		-------
		tanm : (N, N) ndarray
		    Matrix tangent of `A`
		
		Examples
		--------
		>>> from scipy.linalg import tanm, sinm, cosm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> t = tanm(a)
		>>> t
		array([[ -2.00876993,  -8.41880636],
		       [ -2.80626879, -10.42757629]])
		
		Verify tanm(a) = sinm(a).dot(inv(cosm(a)))
		
		>>> s = sinm(a)
		>>> c = cosm(a)
		>>> s.dot(np.linalg.inv(c))
		array([[ -2.00876993,  -8.41880636],
		       [ -2.80626879, -10.42757629]])
	**/
	static public function tanm(A:Dynamic):Dynamic;
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
		Make a copy of a matrix with elements below the kth diagonal zeroed.
		
		Parameters
		----------
		m : array_like
		    Matrix whose elements to return
		k : int, optional
		    Diagonal below which to zero elements.
		    `k` == 0 is the main diagonal, `k` < 0 subdiagonal and
		    `k` > 0 superdiagonal.
		
		Returns
		-------
		triu : ndarray
		    Return matrix with zeroed elements below the kth diagonal and has
		    same shape and type as `m`.
		
		Examples
		--------
		>>> from scipy.linalg import triu
		>>> triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
}