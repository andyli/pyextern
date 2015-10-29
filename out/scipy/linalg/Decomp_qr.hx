/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg.decomp_qr") extern class Decomp_qr {
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
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Return available LAPACK function objects from names.
		
		Arrays are used to determine the optimal prefix of LAPACK routines.
		
		Parameters
		----------
		names : str or sequence of str
		    Name(s) of LAPACK functions without type prefix.
		
		arrays : sequence of ndarrays, optional
		    Arrays can be given to determine optimal prefix of LAPACK
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
		
		In LAPACK, the naming convention is that all functions start with a
		type prefix, which depends on the type of the principal
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the numpy
		types {float32, float64, complex64, complex128} respectevely, and
		are stored in attribute `typecode` of the returned functions.
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Calculate the QR decomposition and multiply Q with a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular. Multiply Q with a vector or a matrix c.
		
		Parameters
		----------
		a : array_like, shape (M, N)
		    Matrix to be decomposed
		c : array_like, one- or two-dimensional
		    calculate the product of c and q, depending on the mode:
		mode : {'left', 'right'}, optional
		    ``dot(Q, c)`` is returned if mode is 'left',
		    ``dot(c, Q)`` is returned if mode is 'right'.
		    The shape of c must be appropriate for the matrix multiplications,
		    if mode is 'left', ``min(a.shape) == c.shape[0]``,
		    if mode is 'right', ``a.shape[0] == c.shape[1]``.
		pivoting : bool, optional
		    Whether or not factorization should include pivoting for rank-revealing
		    qr decomposition, see the documentation of qr.
		conjugate : bool, optional
		    Whether Q should be complex-conjugated. This might be faster
		    than explicit conjugation.
		overwrite_a : bool, optional
		    Whether data in a is overwritten (may improve performance)
		overwrite_c : bool, optional
		    Whether data in c is overwritten (may improve performance).
		    If this is used, c must be big enough to keep the result,
		    i.e. c.shape[0] = a.shape[0] if mode is 'left'.
		
		
		Returns
		-------
		CQ : float or complex ndarray
		    the product of Q and c, as defined in mode
		R : float or complex ndarray
		    Of shape (K, N), ``K = min(M, N)``.
		P : ndarray of ints
		    Of shape (N,) for ``pivoting=True``.
		    Not returned if ``pivoting=False``.
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails
		
		Notes
		-----
		This is an interface to the LAPACK routines dgeqrf, zgeqrf,
		dormqr, zunmqr, dgeqp3, and zgeqp3.
		
		.. versionadded:: 0.11.0
	**/
	static public function qr_multiply(a:Dynamic, c:Dynamic, ?mode:Dynamic, ?pivoting:Dynamic, ?conjugate:Dynamic, ?overwrite_a:Dynamic, ?overwrite_c:Dynamic):Dynamic;
	/**
		Compute RQ decomposition of a matrix.
		
		Calculate the decomposition ``A = R Q`` where Q is unitary/orthogonal
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
		mode : {'full', 'r', 'economic'}, optional
		    Determines what information is to be returned: either both Q and R
		    ('full', default), only R ('r') or both Q and R but computed in
		    economy-size ('economic', see Notes).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		R : float or complex ndarray
		    Of shape (M, N) or (M, K) for ``mode='economic'``.  ``K = min(M, N)``.
		Q : float or complex ndarray
		    Of shape (N, N) or (K, N) for ``mode='economic'``.  Not returned
		    if ``mode='r'``.
		
		Raises
		------
		LinAlgError
		    If decomposition fails.
		
		Notes
		-----
		This is an interface to the LAPACK routines sgerqf, dgerqf, cgerqf, zgerqf,
		sorgrq, dorgrq, cungrq and zungrq.
		
		If ``mode=economic``, the shapes of Q and R are (K, N) and (M, K) instead
		of (N,N) and (M,N), with ``K=min(M,N)``.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> from numpy import random, dot, allclose
		>>> a = random.randn(6, 9)
		>>> r, q = linalg.rq(a)
		>>> allclose(a, dot(r, q))
		True
		>>> r.shape, q.shape
		((6, 9), (9, 9))
		>>> r2 = linalg.rq(a, mode='r')
		>>> allclose(r, r2)
		True
		>>> r3, q3 = linalg.rq(a, mode='economic')
		>>> r3.shape, q3.shape
		((6, 6), (6, 9))
	**/
	static public function rq(a:Dynamic, ?overwrite_a:Dynamic, ?lwork:Dynamic, ?mode:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Call a LAPACK routine, determining lwork automatically and handling
		error return values
	**/
	static public function safecall(f:Dynamic, name:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
}