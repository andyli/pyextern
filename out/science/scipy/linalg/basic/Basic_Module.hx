/* This file is generated, do not edit! */
package scipy.linalg.basic;
@:pythonImport("scipy.linalg.basic") extern class Basic_Module {
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
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[0., 1., 2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Compute the determinant of a matrix
		
		The determinant of a square matrix is a value derived arithmetically
		from the coefficients of the matrix.
		
		The determinant for a 3x3 matrix, for example, is computed as follows::
		
		    a    b    c
		    d    e    f = A
		    g    h    i
		
		    det(A) = a*e*i + b*f*g + c*d*h - c*e*g - b*d*i - a*f*h
		
		Parameters
		----------
		a : (M, M) array_like
		    A square matrix.
		overwrite_a : bool, optional
		    Allow overwriting data in a (may enhance performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		det : float or complex
		    Determinant of `a`.
		
		Notes
		-----
		The determinant is computed via LU factorization, LAPACK routine z/dgetrf.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[1,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		0.0
		>>> a = np.array([[0,2,3], [4,5,6], [7,8,9]])
		>>> linalg.det(a)
		3.0
	**/
	static public function det(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Return optimal available _flinalg function objects with
		names. Arrays are used to determine optimal prefix.
	**/
	static public function get_flinalg_funcs(names:Dynamic, ?arrays:Dynamic, ?debug:Dynamic):Dynamic;
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
		Solve a linear Toeplitz system using Levinson recursion.
		
		Parameters
		----------
		a : array, dtype=double or complex128, shape=(2n-1,)
		    The first column of the matrix in reverse order (without the diagonal)
		    followed by the first (see below)
		b : array, dtype=double  or complex128, shape=(n,)
		    The right hand side vector. Both a and b must have the same type
		    (double or complex128).
		
		Notes
		-----
		For example, the 5x5 toeplitz matrix below should be represented as
		the linear array ``a`` on the right ::
		
		    [ a0    a1   a2  a3  a4 ]
		    [ a-1   a0   a1  a2  a3 ]
		    [ a-2  a-1   a0  a1  a2 ] -> [a-4  a-3  a-2  a-1  a0  a1  a2  a3  a4]
		    [ a-3  a-2  a-1  a0  a1 ]
		    [ a-4  a-3  a-2  a-1 a0 ]
		
		Returns
		-------
		x : arrray, shape=(n,)
		    The solution vector
		reflection_coeff : array, shape=(n+1,)
		    Toeplitz reflection coefficients. When a is symmetric Toeplitz and
		    ``b`` is ``a[n:]``, as in the solution of autoregressive systems,
		    then ``reflection_coeff`` also correspond to the partial
		    autocorrelation function.
	**/
	static public function levinson(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left-hand side array
		b : (M,) or (M, K) array_like
		    Right hand side array
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``cond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		lapack_driver : str, optional
		    Which LAPACK driver is used to solve the least-squares problem.
		    Options are ``'gelsd'``, ``'gelsy'``, ``'gelss'``. Default
		    (``'gelsd'``) is a good choice.  However, ``'gelsy'`` can be slightly
		    faster on many problems.  ``'gelss'`` was used historically.  It is
		    generally slow but uses less memory.
		
		    .. versionadded:: 0.17.0
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.
		residues : (K,) ndarray or float
		    Square of the 2-norm for each column in ``b - a x``, if ``M > N`` and
		    ``ndim(A) == n`` (returns a scalar if ``b`` is 1-D). Otherwise a
		    (0,)-shaped array is returned.
		rank : int
		    Effective rank of `a`.
		s : (min(M, N),) ndarray or None
		    Singular values of `a`. The condition number of ``a`` is
		    ``s[0] / s[-1]``.
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		ValueError
		    When parameters are not compatible.
		
		See Also
		--------
		scipy.optimize.nnls : linear least squares with non-negativity constraint
		
		Notes
		-----
		When ``'gelsy'`` is used as a driver, `residues` is set to a (0,)-shaped
		array and `s` is always ``None``.
		
		Examples
		--------
		>>> from scipy.linalg import lstsq
		>>> import matplotlib.pyplot as plt
		
		Suppose we have the following data:
		
		>>> x = np.array([1, 2.5, 3.5, 4, 5, 7, 8.5])
		>>> y = np.array([0.3, 1.1, 1.5, 2.0, 3.2, 6.6, 8.6])
		
		We want to fit a quadratic polynomial of the form ``y = a + b*x**2``
		to this data.  We first form the "design matrix" M, with a constant
		column of 1s and a column containing ``x**2``:
		
		>>> M = x[:, np.newaxis]**[0, 2]
		>>> M
		array([[  1.  ,   1.  ],
		       [  1.  ,   6.25],
		       [  1.  ,  12.25],
		       [  1.  ,  16.  ],
		       [  1.  ,  25.  ],
		       [  1.  ,  49.  ],
		       [  1.  ,  72.25]])
		
		We want to find the least-squares solution to ``M.dot(p) = y``,
		where ``p`` is a vector with length 2 that holds the parameters
		``a`` and ``b``.
		
		>>> p, res, rnk, s = lstsq(M, y)
		>>> p
		array([ 0.20925829,  0.12013861])
		
		Plot the data and the fitted curve.
		
		>>> plt.plot(x, y, 'o', label='data')
		>>> xx = np.linspace(0, 9, 101)
		>>> yy = p[0] + p[1]*xx**2
		>>> plt.plot(xx, yy, label='least squares fit, $y = a + bx^2$')
		>>> plt.xlabel('x')
		>>> plt.ylabel('y')
		>>> plt.legend(framealpha=1, shadow=True)
		>>> plt.grid(alpha=0.25)
		>>> plt.show()
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic, ?lapack_driver:Dynamic):Dynamic;
	/**
		Efficient Toeplitz Matrix-Matrix Multiplication using FFT
		
		This function returns the matrix multiplication between a Toeplitz
		matrix and a dense matrix.
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row. If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c_or_cr : array_like or tuple of (array_like, array_like)
		    The vector ``c``, or a tuple of arrays (``c``, ``r``). Whatever the
		    actual shape of ``c``, it will be converted to a 1-D array. If not
		    supplied, ``r = conjugate(c)`` is assumed; in this case, if c[0] is
		    real, the Toeplitz matrix is Hermitian. r[0] is ignored; the first row
		    of the Toeplitz matrix is ``[c[0], r[1:]]``. Whatever the actual shape
		    of ``r``, it will be converted to a 1-D array.
		x : (M,) or (M, K) array_like
		    Matrix with which to multiply.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (result entirely NaNs) if the inputs do contain infinities or NaNs.
		workers : int, optional
		    To pass to scipy.fft.fft and ifft. Maximum number of workers to use
		    for parallel computation. If negative, the value wraps around from
		    ``os.cpu_count()``. See scipy.fft.fft for more details.
		
		Returns
		-------
		T @ x : (M,) or (M, K) ndarray
		    The result of the matrix multiplication ``T @ x``. Shape of return
		    matches shape of `x`.
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		solve_toeplitz : Solve a Toeplitz system using Levinson Recursion
		
		Notes
		-----
		The Toeplitz matrix is embedded in a circulant matrix and the FFT is used
		to efficiently calculate the matrix-matrix product.
		
		Because the computation is based on the FFT, integer inputs will
		result in floating point outputs.  This is unlike NumPy's `matmul`,
		which preserves the data type of the input.
		
		This is partly based on the implementation that can be found in [1]_,
		licensed under the MIT license. More information about the method can be
		found in reference [2]_. References [3]_ and [4]_ have more reference
		implementations in Python.
		
		.. versionadded:: 1.6.0
		
		References
		----------
		.. [1] Jacob R Gardner, Geoff Pleiss, David Bindel, Kilian
		   Q Weinberger, Andrew Gordon Wilson, "GPyTorch: Blackbox Matrix-Matrix
		   Gaussian Process Inference with GPU Acceleration" with contributions
		   from Max Balandat and Ruihan Wu. Available online:
		   https://github.com/cornellius-gp/gpytorch
		
		.. [2] J. Demmel, P. Koev, and X. Li, "A Brief Survey of Direct Linear
		   Solvers". In Z. Bai, J. Demmel, J. Dongarra, A. Ruhe, and H. van der
		   Vorst, editors. Templates for the Solution of Algebraic Eigenvalue
		   Problems: A Practical Guide. SIAM, Philadelphia, 2000. Available at:
		   http://www.netlib.org/utk/people/JackDongarra/etemplates/node384.html
		
		.. [3] R. Scheibler, E. Bezzam, I. Dokmanic, Pyroomacoustics: A Python
		   package for audio room simulations and array processing algorithms,
		   Proc. IEEE ICASSP, Calgary, CA, 2018.
		   https://github.com/LCAV/pyroomacoustics/blob/pypi-release/
		   pyroomacoustics/adaptive/util.py
		
		.. [4] Marano S, Edwards B, Ferrari G and Fah D (2017), "Fitting
		   Earthquake Spectra: Colored Noise and Incomplete Data", Bulletin of
		   the Seismological Society of America., January, 2017. Vol. 107(1),
		   pp. 276-291.
		
		Examples
		--------
		Multiply the Toeplitz matrix T with matrix x::
		
		        [ 1 -1 -2 -3]       [1 10]
		    T = [ 3  1 -1 -2]   x = [2 11]
		        [ 6  3  1 -1]       [2 11]
		        [10  6  3  1]       [5 19]
		
		To specify the Toeplitz matrix, only the first column and the first
		row are needed.
		
		>>> c = np.array([1, 3, 6, 10])    # First column of T
		>>> r = np.array([1, -1, -2, -3])  # First row of T
		>>> x = np.array([[1, 10], [2, 11], [2, 11], [5, 19]])
		
		>>> from scipy.linalg import toeplitz, matmul_toeplitz
		>>> matmul_toeplitz((c, r), x)
		array([[-20., -80.],
		       [ -7.,  -8.],
		       [  9.,  85.],
		       [ 33., 218.]])
		
		Check the result by creating the full Toeplitz matrix and
		multiplying it by ``x``.
		
		>>> toeplitz(c, r) @ x
		array([[-20, -80],
		       [ -7,  -8],
		       [  9,  85],
		       [ 33, 218]])
		
		The full matrix is never formed explicitly, so this routine
		is suitable for very large Toeplitz matrices.
		
		>>> n = 1000000
		>>> matmul_toeplitz([1] + [0]*(n-1), np.ones(n))
		array([1., 1., 1., ..., 1., 1., 1.])
	**/
	static public function matmul_toeplitz(c_or_cr:Dynamic, x:Dynamic, ?check_finite:Dynamic, ?workers:Dynamic):Dynamic;
	/**
		Compute a diagonal similarity transformation for row/column balancing.
		
		The balancing tries to equalize the row and column 1-norms by applying
		a similarity transformation such that the magnitude variation of the
		matrix entries is reflected to the scaling matrices.
		
		Moreover, if enabled, the matrix is first permuted to isolate the upper
		triangular parts of the matrix and, again if scaling is also enabled,
		only the remaining subblocks are subjected to scaling.
		
		The balanced matrix satisfies the following equality
		
		.. math::
		
		                    B = T^{-1} A T
		
		The scaling coefficients are approximated to the nearest power of 2
		to avoid round-off errors.
		
		Parameters
		----------
		A : (n, n) array_like
		    Square data matrix for the balancing.
		permute : bool, optional
		    The selector to define whether permutation of A is also performed
		    prior to scaling.
		scale : bool, optional
		    The selector to turn on and off the scaling. If False, the matrix
		    will not be scaled.
		separate : bool, optional
		    This switches from returning a full matrix of the transformation
		    to a tuple of two separate 1-D permutation and scaling arrays.
		overwrite_a : bool, optional
		    This is passed to xGEBAL directly. Essentially, overwrites the result
		    to the data. It might increase the space efficiency. See LAPACK manual
		    for details. This is False by default.
		
		Returns
		-------
		B : (n, n) ndarray
		    Balanced matrix
		T : (n, n) ndarray
		    A possibly permuted diagonal matrix whose nonzero entries are
		    integer powers of 2 to avoid numerical truncation errors.
		scale, perm : (n,) ndarray
		    If ``separate`` keyword is set to True then instead of the array
		    ``T`` above, the scaling and the permutation vectors are given
		    separately as a tuple without allocating the full array ``T``.
		
		Notes
		-----
		
		This algorithm is particularly useful for eigenvalue and matrix
		decompositions and in many cases it is already called by various
		LAPACK routines.
		
		The algorithm is based on the well-known technique of [1]_ and has
		been modified to account for special cases. See [2]_ for details
		which have been implemented since LAPACK v3.5.0. Before this version
		there are corner cases where balancing can actually worsen the
		conditioning. See [3]_ for such examples.
		
		The code is a wrapper around LAPACK's xGEBAL routine family for matrix
		balancing.
		
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy import linalg
		>>> x = np.array([[1,2,0], [9,1,0.01], [1,2,10*np.pi]])
		
		>>> y, permscale = linalg.matrix_balance(x)
		>>> np.abs(x).sum(axis=0) / np.abs(x).sum(axis=1)
		array([ 3.66666667,  0.4995005 ,  0.91312162])
		
		>>> np.abs(y).sum(axis=0) / np.abs(y).sum(axis=1)
		array([ 1.2       ,  1.27041742,  0.92658316])  # may vary
		
		>>> permscale  # only powers of 2 (0.5 == 2^(-1))
		array([[  0.5,   0. ,  0. ],  # may vary
		       [  0. ,   1. ,  0. ],
		       [  0. ,   0. ,  1. ]])
		
		References
		----------
		.. [1] : B.N. Parlett and C. Reinsch, "Balancing a Matrix for
		   Calculation of Eigenvalues and Eigenvectors", Numerische Mathematik,
		   Vol.13(4), 1969, :doi:`10.1007/BF02165404`
		
		.. [2] : R. James, J. Langou, B.R. Lowery, "On matrix balancing and
		   eigenvector computation", 2014, :arxiv:`1401.5766`
		
		.. [3] :  D.S. Watkins. A case where balancing is harmful.
		   Electron. Trans. Numer. Anal, Vol.23, 2006.
	**/
	static public function matrix_balance(A:Dynamic, ?permute:Dynamic, ?scale:Dynamic, ?separate:Dynamic, ?overwrite_a:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using its
		singular-value decomposition ``U @ S @ V`` in the economy mode and picking
		up only the columns/rows that are associated with significant singular
		values.
		
		If ``s`` is the maximum singular value of ``a``, then the
		significance cut-off value is determined by ``atol + rtol * s``. Any
		singular value below this value is assumed insignificant.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		atol: float, optional
		    Absolute threshold term, default value is 0.
		
		    .. versionadded:: 1.7.0
		
		rtol: float, optional
		    Relative threshold term, default value is ``max(M, N) * eps`` where
		    ``eps`` is the machine precision value of the datatype of ``a``.
		
		    .. versionadded:: 1.7.0
		
		return_rank : bool, optional
		    If True, return the effective rank of the matrix.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		cond, rcond : float, optional
		    In older versions, these values were meant to be used as ``atol`` with
		    ``rtol=0``. If both were given ``rcond`` overwrote ``cond`` and hence
		    the code was not correct. Thus using these are strongly discouraged and
		    the tolerances above are recommended instead. In fact, if provided,
		    atol, rtol takes precedence over these keywords.
		
		    .. versionchanged:: 1.7.0
		        Deprecated in favor of ``rtol`` and ``atol`` parameters above and
		        will be removed in future versions of SciPy.
		
		    .. versionchanged:: 1.3.0
		        Previously the default cutoff value was just ``eps*f`` where ``f``
		        was ``1e3`` for single precision and ``1e6`` for double precision.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix. Returned if `return_rank` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> rng = np.random.default_rng()
		>>> a = rng.standard_normal((9, 6))
		>>> B = linalg.pinv(a)
		>>> np.allclose(a, a @ B @ a)
		True
		>>> np.allclose(B, B @ a @ B)
		True
	**/
	static public function pinv(a:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic, ?cond:Dynamic, ?rcond:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		`scipy.linalg.pinv2` is deprecated since SciPy 1.7.0, use
		`scipy.linalg.pinv` instead for better tolerance control.
		
		Calculate a generalized inverse of a matrix using its
		singular-value decomposition and including all 'large' singular
		values.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float or None
		    Cutoff for 'small' singular values; singular values smaller than this
		    value are considered as zero. If both are omitted, the default value
		    ``max(M,N)*largest_singular_value*eps`` is used where ``eps`` is the
		    machine precision value of the datatype of ``a``.
		
		    .. versionchanged:: 1.3.0
		        Previously the default cutoff value was just ``eps*f`` where ``f``
		        was ``1e3`` for single precision and ``1e6`` for double precision.
		
		return_rank : bool, optional
		    If True, return the effective rank of the matrix.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix. Returned if `return_rank` is True.
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
	**/
	static public function pinv2(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a Hermitian matrix.
		
		Calculate a generalized inverse of a complex Hermitian/real symmetric
		matrix using its eigenvalue decomposition and including all eigenvalues
		with 'large' absolute value.
		
		Parameters
		----------
		a : (N, N) array_like
		    Real symmetric or complex hermetian matrix to be pseudo-inverted
		atol: float, optional
		    Absolute threshold term, default value is 0.
		
		    .. versionadded:: 1.7.0
		
		rtol: float, optional
		    Relative threshold term, default value is ``N * eps`` where
		    ``eps`` is the machine precision value of the datatype of ``a``.
		
		    .. versionadded:: 1.7.0
		
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		return_rank : bool, optional
		    If True, return the effective rank of the matrix.
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		cond, rcond : float, optional
		    In older versions, these values were meant to be used as ``atol`` with
		    ``rtol=0``. If both were given ``rcond`` overwrote ``cond`` and hence
		    the code was not correct. Thus using these are strongly discouraged and
		    the tolerances above are recommended instead.  In fact, if provided,
		    atol, rtol takes precedence over these keywords.
		
		    .. versionchanged:: 1.7.0
		        Deprecated in favor of ``rtol`` and ``atol`` parameters above and
		        will be removed in future versions of SciPy.
		
		    .. versionchanged:: 1.3.0
		        Previously the default cutoff value was just ``eps*f`` where ``f``
		        was ``1e3`` for single precision and ``1e6`` for double precision.
		
		Returns
		-------
		B : (N, N) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if `return_rank` is True.
		
		Raises
		------
		LinAlgError
		    If eigenvalue algorithm does not converge.
		
		Examples
		--------
		>>> from scipy.linalg import pinvh
		>>> rng = np.random.default_rng()
		>>> a = rng.standard_normal((9, 6))
		>>> a = np.dot(a, a.T)
		>>> B = pinvh(a)
		>>> np.allclose(a, a @ B @ a)
		True
		>>> np.allclose(B, B @ a @ B)
		True
	**/
	static public function pinvh(a:Dynamic, ?atol:Dynamic, ?rtol:Dynamic, ?lower:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic, ?cond:Dynamic, ?rcond:Dynamic):Dynamic;
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
		Solve the equation a x = b for x, assuming a is banded matrix.
		
		The matrix a is stored in `ab` using the matrix diagonal ordered form::
		
		    ab[u + i - j, j] == a[i,j]
		
		Example of `ab` (shape of a is (6,6), `u` =1, `l` =2)::
		
		    *    a01  a12  a23  a34  a45
		    a00  a11  a22  a33  a44  a55
		    a10  a21  a32  a43  a54   *
		    a20  a31  a42  a53   *    *
		
		Parameters
		----------
		(l, u) : (integer, integer)
		    Number of non-zero lower and upper diagonals
		ab : (`l` + `u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b. Returned shape depends on the
		    shape of `b`.
		
		Examples
		--------
		Solve the banded system a x = b, where::
		
		        [5  2 -1  0  0]       [0]
		        [1  4  2 -1  0]       [1]
		    a = [0  1  3  2 -1]   b = [2]
		        [0  0  1  2  2]       [2]
		        [0  0  0  1  1]       [3]
		
		There is one nonzero diagonal below the main diagonal (l = 1), and
		two above (u = 2). The diagonal banded form of the matrix is::
		
		         [*  * -1 -1 -1]
		    ab = [*  2  2  2  2]
		         [5  4  3  2  1]
		         [1  1  1  1  *]
		
		>>> from scipy.linalg import solve_banded
		>>> ab = np.array([[0,  0, -1, -1, -1],
		...                [0,  2,  2,  2,  2],
		...                [5,  4,  3,  2,  1],
		...                [1,  1,  1,  1,  0]])
		>>> b = np.array([0, 1, 2, 2, 3])
		>>> x = solve_banded((1, 2), ab, b)
		>>> x
		array([-2.37288136,  3.93220339, -4.        ,  4.3559322 , -1.3559322 ])
	**/
	static public function solve_banded(l_and_u:Dynamic, ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve C x = b for x, where C is a circulant matrix.
		
		`C` is the circulant matrix associated with the vector `c`.
		
		The system is solved by doing division in Fourier space. The
		calculation is::
		
		    x = ifft(fft(b) / fft(c))
		
		where `fft` and `ifft` are the fast Fourier transform and its inverse,
		respectively. For a large vector `c`, this is *much* faster than
		solving the system with the full circulant matrix.
		
		Parameters
		----------
		c : array_like
		    The coefficients of the circulant matrix.
		b : array_like
		    Right-hand side matrix in ``a x = b``.
		singular : str, optional
		    This argument controls how a near singular circulant matrix is
		    handled.  If `singular` is "raise" and the circulant matrix is
		    near singular, a `LinAlgError` is raised. If `singular` is
		    "lstsq", the least squares solution is returned. Default is "raise".
		tol : float, optional
		    If any eigenvalue of the circulant matrix has an absolute value
		    that is less than or equal to `tol`, the matrix is considered to be
		    near singular. If not given, `tol` is set to::
		
		        tol = abs_eigs.max() * abs_eigs.size * np.finfo(np.float64).eps
		
		    where `abs_eigs` is the array of absolute values of the eigenvalues
		    of the circulant matrix.
		caxis : int
		    When `c` has dimension greater than 1, it is viewed as a collection
		    of circulant vectors. In this case, `caxis` is the axis of `c` that
		    holds the vectors of circulant coefficients.
		baxis : int
		    When `b` has dimension greater than 1, it is viewed as a collection
		    of vectors. In this case, `baxis` is the axis of `b` that holds the
		    right-hand side vectors.
		outaxis : int
		    When `c` or `b` are multidimensional, the value returned by
		    `solve_circulant` is multidimensional. In this case, `outaxis` is
		    the axis of the result that holds the solution vectors.
		
		Returns
		-------
		x : ndarray
		    Solution to the system ``C x = b``.
		
		Raises
		------
		LinAlgError
		    If the circulant matrix associated with `c` is near singular.
		
		See Also
		--------
		circulant : circulant matrix
		
		Notes
		-----
		For a 1-D vector `c` with length `m`, and an array `b`
		with shape ``(m, ...)``,
		
		    solve_circulant(c, b)
		
		returns the same result as
		
		    solve(circulant(c), b)
		
		where `solve` and `circulant` are from `scipy.linalg`.
		
		.. versionadded:: 0.16.0
		
		Examples
		--------
		>>> from scipy.linalg import solve_circulant, solve, circulant, lstsq
		
		>>> c = np.array([2, 2, 4])
		>>> b = np.array([1, 2, 3])
		>>> solve_circulant(c, b)
		array([ 0.75, -0.25,  0.25])
		
		Compare that result to solving the system with `scipy.linalg.solve`:
		
		>>> solve(circulant(c), b)
		array([ 0.75, -0.25,  0.25])
		
		A singular example:
		
		>>> c = np.array([1, 1, 0, 0])
		>>> b = np.array([1, 2, 3, 4])
		
		Calling ``solve_circulant(c, b)`` will raise a `LinAlgError`.  For the
		least square solution, use the option ``singular='lstsq'``:
		
		>>> solve_circulant(c, b, singular='lstsq')
		array([ 0.25,  1.25,  2.25,  1.25])
		
		Compare to `scipy.linalg.lstsq`:
		
		>>> x, resid, rnk, s = lstsq(circulant(c), b)
		>>> x
		array([ 0.25,  1.25,  2.25,  1.25])
		
		A broadcasting example:
		
		Suppose we have the vectors of two circulant matrices stored in an array
		with shape (2, 5), and three `b` vectors stored in an array with shape
		(3, 5).  For example,
		
		>>> c = np.array([[1.5, 2, 3, 0, 0], [1, 1, 4, 3, 2]])
		>>> b = np.arange(15).reshape(-1, 5)
		
		We want to solve all combinations of circulant matrices and `b` vectors,
		with the result stored in an array with shape (2, 3, 5). When we
		disregard the axes of `c` and `b` that hold the vectors of coefficients,
		the shapes of the collections are (2,) and (3,), respectively, which are
		not compatible for broadcasting. To have a broadcast result with shape
		(2, 3), we add a trivial dimension to `c`: ``c[:, np.newaxis, :]`` has
		shape (2, 1, 5). The last dimension holds the coefficients of the
		circulant matrices, so when we call `solve_circulant`, we can use the
		default ``caxis=-1``. The coefficients of the `b` vectors are in the last
		dimension of the array `b`, so we use ``baxis=-1``. If we use the
		default `outaxis`, the result will have shape (5, 2, 3), so we'll use
		``outaxis=-1`` to put the solution vectors in the last dimension.
		
		>>> x = solve_circulant(c[:, np.newaxis, :], b, baxis=-1, outaxis=-1)
		>>> x.shape
		(2, 3, 5)
		>>> np.set_printoptions(precision=3)  # For compact output of numbers.
		>>> x
		array([[[-0.118,  0.22 ,  1.277, -0.142,  0.302],
		        [ 0.651,  0.989,  2.046,  0.627,  1.072],
		        [ 1.42 ,  1.758,  2.816,  1.396,  1.841]],
		       [[ 0.401,  0.304,  0.694, -0.867,  0.377],
		        [ 0.856,  0.758,  1.149, -0.412,  0.831],
		        [ 1.31 ,  1.213,  1.603,  0.042,  1.286]]])
		
		Check by solving one pair of `c` and `b` vectors (cf. ``x[1, 1, :]``):
		
		>>> solve_circulant(c[1], b[1, :])
		array([ 0.856,  0.758,  1.149, -0.412,  0.831])
	**/
	static public function solve_circulant(c:Dynamic, b:Dynamic, ?singular:Dynamic, ?tol:Dynamic, ?caxis:Dynamic, ?baxis:Dynamic, ?outaxis:Dynamic):Dynamic;
	/**
		Solve a Toeplitz system using Levinson Recursion
		
		The Toeplitz matrix has constant diagonals, with c as its first column
		and r as its first row. If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c_or_cr : array_like or tuple of (array_like, array_like)
		    The vector ``c``, or a tuple of arrays (``c``, ``r``). Whatever the
		    actual shape of ``c``, it will be converted to a 1-D array. If not
		    supplied, ``r = conjugate(c)`` is assumed; in this case, if c[0] is
		    real, the Toeplitz matrix is Hermitian. r[0] is ignored; the first row
		    of the Toeplitz matrix is ``[c[0], r[1:]]``. Whatever the actual shape
		    of ``r``, it will be converted to a 1-D array.
		b : (M,) or (M, K) array_like
		    Right-hand side in ``T x = b``.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (result entirely NaNs) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system ``T x = b``. Shape of return matches shape
		    of `b`.
		
		See Also
		--------
		toeplitz : Toeplitz matrix
		
		Notes
		-----
		The solution is computed using Levinson-Durbin recursion, which is faster
		than generic least-squares methods, but can be less numerically stable.
		
		Examples
		--------
		Solve the Toeplitz system T x = b, where::
		
		        [ 1 -1 -2 -3]       [1]
		    T = [ 3  1 -1 -2]   b = [2]
		        [ 6  3  1 -1]       [2]
		        [10  6  3  1]       [5]
		
		To specify the Toeplitz matrix, only the first column and the first
		row are needed.
		
		>>> c = np.array([1, 3, 6, 10])    # First column of T
		>>> r = np.array([1, -1, -2, -3])  # First row of T
		>>> b = np.array([1, 2, 2, 5])
		
		>>> from scipy.linalg import solve_toeplitz, toeplitz
		>>> x = solve_toeplitz((c, r), b)
		>>> x
		array([ 1.66666667, -1.        , -2.66666667,  2.33333333])
		
		Check the result by creating the full Toeplitz matrix and
		multiplying it by `x`.  We should get `b`.
		
		>>> T = toeplitz(c, r)
		>>> T.dot(x)
		array([ 1.,  2.,  2.,  5.])
	**/
	static public function solve_toeplitz(c_or_cr:Dynamic, b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the equation `a x = b` for `x`, assuming a is a triangular matrix.
		
		Parameters
		----------
		a : (M, M) array_like
		    A triangular matrix
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in `a x = b`
		lower : bool, optional
		    Use only data contained in the lower triangle of `a`.
		    Default is to use upper triangle.
		trans : {0, 1, 2, 'N', 'T', 'C'}, optional
		    Type of system to solve:
		
		    ========  =========
		    trans     system
		    ========  =========
		    0 or 'N'  a x  = b
		    1 or 'T'  a^T x = b
		    2 or 'C'  a^H x = b
		    ========  =========
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and
		    will not be referenced.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system `a x = b`.  Shape of return matches `b`.
		
		Raises
		------
		LinAlgError
		    If `a` is singular
		
		Notes
		-----
		.. versionadded:: 0.9.0
		
		Examples
		--------
		Solve the lower triangular system a x = b, where::
		
		         [3  0  0  0]       [4]
		    a =  [2  1  0  0]   b = [2]
		         [1  0  1  0]       [4]
		         [1  1  1  1]       [2]
		
		>>> from scipy.linalg import solve_triangular
		>>> a = np.array([[3, 0, 0, 0], [2, 1, 0, 0], [1, 0, 1, 0], [1, 1, 1, 1]])
		>>> b = np.array([4, 2, 4, 2])
		>>> x = solve_triangular(a, b, lower=True)
		>>> x
		array([ 1.33333333, -0.66666667,  2.66666667, -1.33333333])
		>>> a.dot(x)  # Check the result
		array([ 4.,  2.,  4.,  2.])
	**/
	static public function solve_triangular(a:Dynamic, b:Dynamic, ?trans:Dynamic, ?lower:Dynamic, ?unit_diagonal:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve equation a x = b. a is Hermitian positive-definite banded matrix.
		
		The matrix a is stored in `ab` either in lower diagonal or upper
		diagonal ordered form:
		
		    ab[u + i - j, j] == a[i,j]        (if upper form; i <= j)
		    ab[    i - j, j] == a[i,j]        (if lower form; i >= j)
		
		Example of `ab` (shape of a is (6, 6), `u` =2)::
		
		    upper form:
		    *   *   a02 a13 a24 a35
		    *   a01 a12 a23 a34 a45
		    a00 a11 a22 a33 a44 a55
		
		    lower form:
		    a00 a11 a22 a33 a44 a55
		    a10 a21 a32 a43 a54 *
		    a20 a31 a42 a53 *   *
		
		Cells marked with * are not used.
		
		Parameters
		----------
		ab : (`u` + 1, M) array_like
		    Banded matrix
		b : (M,) or (M, K) array_like
		    Right-hand side
		overwrite_ab : bool, optional
		    Discard data in `ab` (may enhance performance)
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance)
		lower : bool, optional
		    Is the matrix in the lower form. (Default is upper form)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (M,) or (M, K) ndarray
		    The solution to the system a x = b. Shape of return matches shape
		    of `b`.
		
		Examples
		--------
		Solve the banded system A x = b, where::
		
		        [ 4  2 -1  0  0  0]       [1]
		        [ 2  5  2 -1  0  0]       [2]
		    A = [-1  2  6  2 -1  0]   b = [2]
		        [ 0 -1  2  7  2 -1]       [3]
		        [ 0  0 -1  2  8  2]       [3]
		        [ 0  0  0 -1  2  9]       [3]
		
		>>> from scipy.linalg import solveh_banded
		
		`ab` contains the main diagonal and the nonzero diagonals below the
		main diagonal. That is, we use the lower form:
		
		>>> ab = np.array([[ 4,  5,  6,  7, 8, 9],
		...                [ 2,  2,  2,  2, 2, 0],
		...                [-1, -1, -1, -1, 0, 0]])
		>>> b = np.array([1, 2, 2, 3, 3, 3])
		>>> x = solveh_banded(ab, b, lower=True)
		>>> x
		array([ 0.03431373,  0.45938375,  0.05602241,  0.47759104,  0.17577031,
		        0.34733894])
		
		
		Solve the Hermitian banded system H x = b, where::
		
		        [ 8   2-1j   0     0  ]        [ 1  ]
		    H = [2+1j  5     1j    0  ]    b = [1+1j]
		        [ 0   -1j    9   -2-1j]        [1-2j]
		        [ 0    0   -2+1j   6  ]        [ 0  ]
		
		In this example, we put the upper diagonals in the array `hb`:
		
		>>> hb = np.array([[0, 2-1j, 1j, -2-1j],
		...                [8,  5,    9,   6  ]])
		>>> b = np.array([1, 1+1j, 1-2j, 0])
		>>> x = solveh_banded(hb, b)
		>>> x
		array([ 0.07318536-0.02939412j,  0.11877624+0.17696461j,
		        0.10077984-0.23035393j, -0.00479904-0.09358128j])
	**/
	static public function solveh_banded(ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?lower:Dynamic, ?check_finite:Dynamic):Dynamic;
}