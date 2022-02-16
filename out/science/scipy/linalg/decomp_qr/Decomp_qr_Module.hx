/* This file is generated, do not edit! */
package scipy.linalg.decomp_qr;
@:pythonImport("scipy.linalg.decomp_qr") extern class Decomp_qr_Module {
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
		
		ilp64 : {True, False, 'preferred'}, optional
		    Whether to return ILP64 routine variant.
		    Choosing 'preferred' returns ILP64 routine if available, and
		    otherwise the 32-bit routine. Default: False
		
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
		matrix. These can be one of {'s', 'd', 'c', 'z'} for the NumPy
		types {float32, float64, complex64, complex128} respectively, and
		are stored in attribute ``typecode`` of the returned functions.
		
		Examples
		--------
		Suppose we would like to use '?lange' routine which computes the selected
		norm of an array. We pass our array in order to get the correct 'lange'
		flavor.
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((3,2))
		>>> x_lange = LA.get_lapack_funcs('lange', (a,))
		>>> x_lange.typecode
		'd'
		>>> x_lange = LA.get_lapack_funcs('lange',(a*1j,))
		>>> x_lange.typecode
		'z'
		
		Several LAPACK routines work best when its internal WORK array has
		the optimal size (big enough for fast computation and small enough to
		avoid waste of memory). This size is determined also by a dedicated query
		to the function which is often wrapped as a standalone function and
		commonly denoted as ``###_lwork``. Below is an example for ``?sysv``
		
		>>> import scipy.linalg as LA
		>>> rng = np.random.default_rng()
		>>> a = rng.random((1000, 1000))
		>>> b = rng.random((1000, 1)) * 1j
		>>> # We pick up zsysv and zsysv_lwork due to b array
		... xsysv, xlwork = LA.get_lapack_funcs(('sysv', 'sysv_lwork'), (a, b))
		>>> opt_lwork, _ = xlwork(a.shape[0])  # returns a complex for 'z' prefix
		>>> udut, ipiv, x, info = xsysv(a, b, lwork=int(opt_lwork.real))
	**/
	static public function get_lapack_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic, ?ilp64:Dynamic):Array<Dynamic>;
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
		Calculate the QR decomposition and multiply Q with a matrix.
		
		Calculate the decomposition ``A = Q R`` where Q is unitary/orthogonal
		and R upper triangular. Multiply Q with a vector or a matrix c.
		
		Parameters
		----------
		a : (M, N), array_like
		    Input array
		c : array_like
		    Input array to be multiplied by ``q``.
		mode : {'left', 'right'}, optional
		    ``Q @ c`` is returned if mode is 'left', ``c @ Q`` is returned if
		    mode is 'right'.
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
		    i.e. ``c.shape[0]`` = ``a.shape[0]`` if mode is 'left'.
		
		Returns
		-------
		CQ : ndarray
		    The product of ``Q`` and ``c``.
		R : (K, N), ndarray
		    R array of the resulting QR factorization where ``K = min(M, N)``.
		P : (N,) ndarray
		    Integer pivot array. Only returned when ``pivoting=True``.
		
		Raises
		------
		LinAlgError
		    Raised if QR decomposition fails.
		
		Notes
		-----
		This is an interface to the LAPACK routines ``?GEQRF``, ``?ORMQR``,
		``?UNMQR``, and ``?GEQP3``.
		
		.. versionadded:: 0.11.0
		
		Examples
		--------
		>>> from scipy.linalg import qr_multiply, qr
		>>> A = np.array([[1, 3, 3], [2, 3, 2], [2, 3, 3], [1, 3, 2]])
		>>> qc, r1, piv1 = qr_multiply(A, 2*np.eye(4), pivoting=1)
		>>> qc
		array([[-1.,  1., -1.],
		       [-1., -1.,  1.],
		       [-1., -1., -1.],
		       [-1.,  1.,  1.]])
		>>> r1
		array([[-6., -3., -5.            ],
		       [ 0., -1., -1.11022302e-16],
		       [ 0.,  0., -1.            ]])
		>>> piv1
		array([1, 0, 2], dtype=int32)
		>>> q2, r2, piv2 = qr(A, mode='economic', pivoting=1)
		>>> np.allclose(2*q2 - qc, np.zeros((4, 3)))
		True
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
		    Of shape (M, N) or (M, K) for ``mode='economic'``. ``K = min(M, N)``.
		Q : float or complex ndarray
		    Of shape (N, N) or (K, N) for ``mode='economic'``. Not returned
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
		>>> rng = np.random.default_rng()
		>>> a = rng.standard_normal((6, 9))
		>>> r, q = linalg.rq(a)
		>>> np.allclose(a, r @ q)
		True
		>>> r.shape, q.shape
		((6, 9), (9, 9))
		>>> r2 = linalg.rq(a, mode='r')
		>>> np.allclose(r, r2)
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
	static public function safecall(f:Dynamic, name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}