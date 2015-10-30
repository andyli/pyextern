/* This file is generated, do not edit! */
package scipy.linalg.matfuncs;
@:pythonImport("scipy.linalg.matfuncs") extern class Matfuncs_Module {
	static public var Inf : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _array_precision : Dynamic;
	/**
		Wraps asarray with the extra requirement that the input be a square matrix.
		
		The motivation is that the matfuncs module has real functions that have
		been lifted to square matrix functions.
		
		Parameters
		----------
		A : array_like
		    A square matrix.
		
		Returns
		-------
		out : ndarray
		    An ndarray copy or view or other representation of A.
	**/
	static public function _asarray_square(A:Dynamic):Dynamic;
	/**
		Return either B or the real part of B, depending on properties of A and B.
		
		The motivation is that B has been computed as a complicated function of A,
		and B may be perturbed by negligible imaginary components.
		If A is real and B is complex with small imaginary components,
		then return a real copy of B.  The assumption in that case would be that
		the imaginary components of B are numerical artifacts.
		
		Parameters
		----------
		A : ndarray
		    Input array whose type is to be checked as real vs. complex.
		B : ndarray
		    Array to be returned, possibly without its imaginary part.
		tol : float
		    Absolute tolerance.
		
		Returns
		-------
		out : real or complex array
		    Either the input array B or only the real part of the input array B.
	**/
	static public function _maybe_real(A:Dynamic, B:Dynamic, ?tol:Dynamic):Dynamic;
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
	static public function absolute(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
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
	@:native("cast")
	static public var _cast : Dynamic;
	/**
		conjugate(x[, out])
		
		Return the complex conjugate, element-wise.
		
		The complex conjugate of a complex number is obtained by changing the
		sign of its imaginary part.
		
		Parameters
		----------
		x : array_like
		    Input value.
		
		Returns
		-------
		y : ndarray
		    The complex conjugate of `x`, with same dtype as `y`.
		
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
	static public function diag(v:Dynamic, ?k:Dynamic):Dynamic;
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
		Solve an ordinary or generalized eigenvalue problem of a square matrix.
		
		Find eigenvalues w and right or left eigenvectors of a general matrix::
		
		    a   vr[:,i] = w[i]        b   vr[:,i]
		    a.H vl[:,i] = w[i].conj() b.H vl[:,i]
		
		where ``.H`` is the Hermitian conjugation.
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex or real matrix whose eigenvalues and eigenvectors
		    will be computed.
		b : (M, M) array_like, optional
		    Right-hand side matrix in a generalized eigenvalue problem.
		    Default is None, identity matrix is assumed.
		left : bool, optional
		    Whether to calculate and return left eigenvectors.  Default is False.
		right : bool, optional
		    Whether to calculate and return right eigenvectors.  Default is True.
		overwrite_a : bool, optional
		    Whether to overwrite `a`; may improve performance.  Default is False.
		overwrite_b : bool, optional
		    Whether to overwrite `b`; may improve performance.  Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (M,) double or complex ndarray
		    The eigenvalues, each repeated according to its multiplicity.
		vl : (M, M) double or complex ndarray
		    The normalized left eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column vl[:,i]. Only returned if ``left=True``.
		vr : (M, M) double or complex ndarray
		    The normalized right eigenvector corresponding to the eigenvalue
		    ``w[i]`` is the column ``vr[:,i]``.  Only returned if ``right=True``.
		
		Raises
		------
		LinAlgError
		    If eigenvalue computation does not converge.
		
		See Also
		--------
		eigh : Eigenvalues and right eigenvectors for symmetric/Hermitian arrays.
	**/
	static public function eig(a:Dynamic, ?b:Dynamic, ?left:Dynamic, ?right:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var eps : Dynamic;
	/**
		exp(x[, out])
		
		Calculate the exponential of all elements in the input array.
		
		Parameters
		----------
		x : array_like
		    Input values.
		
		Returns
		-------
		out : ndarray
		    Output array, element-wise exponential of `x`.
		
		See Also
		--------
		expm1 : Calculate ``exp(x) - 1`` for all elements in the array.
		exp2  : Calculate ``2**x`` for all elements in the array.
		
		Notes
		-----
		The irrational number ``e`` is also known as Euler's number.  It is
		approximately 2.718281, and is the base of the natural logarithm,
		``ln`` (this means that, if :math:`x = \ln y = \log_e y`,
		then :math:`e^x = y`. For real input, ``exp(x)`` is always positive.
		
		For complex arguments, ``x = a + ib``, we can write
		:math:`e^x = e^a e^{ib}`.  The first term, :math:`e^a`, is already
		known (it is the real argument, described above).  The second term,
		:math:`e^{ib}`, is :math:`\cos b + i \sin b`, a function with
		magnitude 1 and a periodic phase.
		
		References
		----------
		.. [1] Wikipedia, "Exponential function",
		       http://en.wikipedia.org/wiki/Exponential_function
		.. [2] M. Abramovitz and I. A. Stegun, "Handbook of Mathematical Functions
		       with Formulas, Graphs, and Mathematical Tables," Dover, 1964, p. 69,
		       http://www.math.sfu.ca/~cbm/aands/page_69.htm
		
		Examples
		--------
		Plot the magnitude and phase of ``exp(x)`` in the complex plane:
		
		>>> import matplotlib.pyplot as plt
		
		>>> x = np.linspace(-2*np.pi, 2*np.pi, 100)
		>>> xx = x + 1j * x[:, np.newaxis] # a + ib over complex plane
		>>> out = np.exp(xx)
		
		>>> plt.subplot(121)
		>>> plt.imshow(np.abs(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Magnitude of exp(x)')
		
		>>> plt.subplot(122)
		>>> plt.imshow(np.angle(out),
		...            extent=[-2*np.pi, 2*np.pi, -2*np.pi, 2*np.pi])
		>>> plt.title('Phase (angle) of exp(x)')
		>>> plt.show()
	**/
	static public function exp(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function expm(A:Dynamic, ?q:Dynamic):Dynamic;
	/**
		`expm2` is deprecated, use `expm` instead!
		
		
		Compute the matrix exponential using eigenvalue decomposition.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix to be exponentiated
		
		Returns
		-------
		expm2 : (N, N) ndarray
		    Matrix exponential of `A`
	**/
	static public function expm2(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		`expm3` is deprecated, use `expm` instead!
		
		
		Compute the matrix exponential using Taylor series.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix to be exponentiated
		q : int
		    Order of the Taylor series used is `q-1`
		
		Returns
		-------
		expm3 : (N, N) ndarray
		    Matrix exponential of `A`
	**/
	static public function expm3(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		Relative condition number of the matrix exponential in the Frobenius norm.
		
		Parameters
		----------
		A : 2d array_like
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
		has been published but is not yet implemented in scipy.
		
		.. versionadded:: 0.14.0
		
		See also
		--------
		expm : Compute the exponential of a matrix.
		expm_frechet : Compute the Frechet derivative of the matrix exponential.
	**/
	static public function expm_cond(A:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Frechet derivative of the matrix exponential of A in the direction E.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix of which to take the matrix exponential.
		E : (N, N) array_like
		    Matrix direction in which to take the Frechet derivative.
		method : str, optional
		    Choice of algorithm.  Should be one of
		
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
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
		>>> expm_A, expm_frechet_AE = scipy.linalg.expm_frechet(A, E)
		>>> expm_A.shape, expm_frechet_AE.shape
		((3, 3), (3, 3))
		
		>>> import scipy.linalg
		>>> A = np.random.randn(3, 3)
		>>> E = np.random.randn(3, 3)
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
		LinAlgError :
		    If `a` is singular.
		ValueError :
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
	/**
		logical_not(x[, out])
		
		Compute the truth value of NOT x element-wise.
		
		Parameters
		----------
		x : array_like
		    Logical NOT is applied to the elements of `x`.
		
		Returns
		-------
		y : bool or ndarray of bool
		    Boolean result with the same shape as `x` of the NOT operation
		    on elements of `x`.
		
		See Also
		--------
		logical_and, logical_or, logical_xor
		
		Examples
		--------
		>>> np.logical_not(3)
		False
		>>> np.logical_not([True, False, 0, 1])
		array([False,  True,  True, False], dtype=bool)
		
		>>> x = np.arange(5)
		>>> np.logical_not(x<3)
		array([False, False, False,  True,  True], dtype=bool)
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
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		
		Returns
		-------
		norm : float
		    Norm of the matrix or vector.
		
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
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
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
		nan
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		nan
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		See Also
		--------
		prod : equivalent function; see for details.
	**/
	static public function product(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
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
		Convert real Schur form to complex Schur form.
		
		Convert a quasi-diagonal real-valued Schur form to the upper triangular
		complex-valued Schur form.
		
		Parameters
		----------
		T : (M, M) array_like
		    Real Schur form of the original matrix
		Z : (M, M) array_like
		    Schur transformation matrix
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Complex Schur form of the original matrix
		Z : (M, M) ndarray
		    Schur transformation matrix corresponding to the complex form
		
		See also
		--------
		schur : Schur decompose a matrix
	**/
	static public function rsf2csf(T:Dynamic, Z:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute Schur decomposition of a matrix.
		
		The Schur decomposition is::
		
		    A = Z T Z^H
		
		where Z is unitary and T is either upper-triangular, or for real
		Schur decomposition (output='real'), quasi-upper triangular.  In
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
		    Specifies whether the upper eigenvalues should be sorted.  A callable
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
		       compute all eigenvalues
		    2. If eigenvalue sorting was requested, the eigenvalues could not be
		       reordered due to a failure to separate eigenvalues, usually because
		       of poor conditioning
		    3. If eigenvalue sorting was requested, roundoff errors caused the
		       leading eigenvalues to no longer satisfy the sorting condition
		
		See also
		--------
		rsf2csf : Convert real Schur form to complex Schur form
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		sign(x[, out])
		
		Returns an element-wise indication of the sign of a number.
		
		The `sign` function returns ``-1 if x < 0, 0 if x==0, 1 if x > 0``.
		
		Parameters
		----------
		x : array_like
		  Input values.
		
		Returns
		-------
		y : ndarray
		  The sign of `x`.
		
		Examples
		--------
		>>> np.sign([-5., 4.5])
		array([-1.,  1.])
		>>> np.sign(0)
		0
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
		    Matrix cosine of `A`
		
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
		
		For ``compute_uv = False``, only `s` is returned.
		
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
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
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
		Make a copy of a matrix with elements below the k-th diagonal zeroed.
		
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
		    Return matrix with zeroed elements below the k-th diagonal and has
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