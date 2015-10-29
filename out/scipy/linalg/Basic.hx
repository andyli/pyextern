/* This file is generated, do not edit! */
package scipy.linalg;
@:pythonImport("scipy.linalg.basic") extern class Basic {
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
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		Strict check for `arr` not sharing any data with `original`,
		under the assumption that arr = asarray(original)
	**/
	static public function _datacopied(arr:Dynamic, original:Dynamic):Dynamic;
	static public function _get_axis_len(aname:Dynamic, a:Dynamic, axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Return optimal available _flinalg function objects with
		names. arrays are used to determine optimal prefix.
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
		    Left hand side matrix (2-D array).
		b : (M,) or (M, K) array_like
		    Right hand side matrix or vector (1-D or 2-D array).
		cond : float, optional
		    Cutoff for 'small' singular values; used to determine effective
		    rank of a. Singular values smaller than
		    ``rcond * largest_singular_value`` are considered zero.
		overwrite_a : bool, optional
		    Discard data in `a` (may enhance performance). Default is False.
		overwrite_b : bool, optional
		    Discard data in `b` (may enhance performance). Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : (N,) or (N, K) ndarray
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : () or (1,) or (K,) ndarray
		    Sums of residues, squared 2-norm for each column in ``b - a x``.
		    If rank of matrix a is < N or > M this is an empty array.
		    If b was 1-D, this is an (1,) shape array, otherwise the shape is (K,).
		rank : int
		    Effective rank of matrix `a`.
		s : (min(M,N),) ndarray
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0]/s[-1])``.
		
		Raises
		------
		LinAlgError :
		    If computation does not converge.
		
		
		See Also
		--------
		optimize.nnls : linear least squares with non-negativity constraint
	**/
	static public function lstsq(a:Dynamic, b:Dynamic, ?cond:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using a least-squares
		solver.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float, optional
		    Cutoff for 'small' singular values in the least-squares solver.
		    Singular values smaller than ``rcond * largest_singular_value``
		    are considered zero.
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6)
		>>> B = linalg.pinv(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a matrix.
		
		Calculate a generalized inverse of a matrix using its
		singular-value decomposition and including all 'large' singular
		values.
		
		Parameters
		----------
		a : (M, N) array_like
		    Matrix to be pseudo-inverted.
		cond, rcond : float or None
		    Cutoff for 'small' singular values.
		    Singular values smaller than ``rcond*largest_singular_value``
		    are considered zero.
		    If None or -1, suitable machine precision is used.
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, M) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If SVD computation does not converge.
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.random.randn(9, 6)
		>>> B = linalg.pinv2(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinv2(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the (Moore-Penrose) pseudo-inverse of a Hermitian matrix.
		
		Calculate a generalized inverse of a Hermitian or real symmetric matrix
		using its eigenvalue decomposition and including all eigenvalues with
		'large' absolute value.
		
		Parameters
		----------
		a : (N, N) array_like
		    Real symmetric or complex hermetian matrix to be pseudo-inverted
		cond, rcond : float or None
		    Cutoff for 'small' eigenvalues.
		    Singular values smaller than rcond * largest_eigenvalue are considered
		    zero.
		
		    If None or -1, suitable machine precision is used.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of a. (Default: lower)
		return_rank : bool, optional
		    if True, return the effective rank of the matrix
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		B : (N, N) ndarray
		    The pseudo-inverse of matrix `a`.
		rank : int
		    The effective rank of the matrix.  Returned if return_rank == True
		
		Raises
		------
		LinAlgError
		    If eigenvalue does not converge
		
		Examples
		--------
		>>> from scipy.linalg import pinvh
		>>> a = np.random.randn(9, 6)
		>>> a = np.dot(a, a.T)
		>>> B = pinvh(a)
		>>> np.allclose(a, np.dot(a, np.dot(B, a)))
		True
		>>> np.allclose(B, np.dot(B, np.dot(a, B)))
		True
	**/
	static public function pinvh(a:Dynamic, ?cond:Dynamic, ?rcond:Dynamic, ?lower:Dynamic, ?return_rank:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var print_function : Dynamic;
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
		    The solution to the system a x = b.  Returned shape depends on the
		    shape of `b`.
	**/
	static public function solve_banded(l_and_u:Dynamic, ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve C x = b for x, where C is a circulant matrix.
		
		`C` is the circulant matrix associated with the vector `c`.
		
		The system is solved by doing division in Fourier space.  The
		calculation is::
		
		    x = ifft(fft(b) / fft(c))
		
		where `fft` and `ifft` are the fast Fourier transform and its inverse,
		respectively.  For a large vector `c`, this is *much* faster than
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
		    near singular, a `LinAlgError` is raised.  If `singular` is
		    "lstsq", the least squares solution is returned.  Default is "raise".
		tol : float, optional
		    If any eigenvalue of the circulant matrix has an absolute value
		    that is less than or equal to `tol`, the matrix is considered to be
		    near singular.  If not given, `tol` is set to::
		
		        tol = abs_eigs.max() * abs_eigs.size * np.finfo(np.float64).eps
		
		    where `abs_eigs` is the array of absolute values of the eigenvalues
		    of the circulant matrix.
		caxis : int
		    When `c` has dimension greater than 1, it is viewed as a collection
		    of circulant vectors.  In this case, `caxis` is the axis of `c` that
		    holds the vectors of circulant coefficients.
		baxis : int
		    When `b` has dimension greater than 1, it is viewed as a collection
		    of vectors.  In this case, `baxis` is the axis of `b` that holds the
		    right-hand side vectors.
		outaxis : int
		    When `c` or `b` are multidimensional, the value returned by
		    `solve_circulant` is multidimensional.  In this case, `outaxis` is
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
		circulant
		
		Notes
		-----
		For a one-dimensional vector `c` with length `m`, and an array `b`
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
		with the result stored in an array with shape (2, 3, 5).  When we
		disregard the axes of `c` and `b` that hold the vectors of coefficients,
		the shapes of the collections are (2,) and (3,), respectively, which are
		not compatible for broadcasting.  To have a broadcast result with shape
		(2, 3), we add a trivial dimension to `c`: ``c[:, np.newaxis, :]`` has
		shape (2, 1, 5).  The last dimension holds the coefficients of the
		circulant matrices, so when we call `solve_circulant`, we can use the
		default ``caxis=-1``.  The coefficients of the `b` vectors are in the last
		dimension of the array `b`, so we use ``baxis=-1``.  If we use the
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
		and r as its first row.  If r is not given, ``r == conjugate(c)`` is
		assumed.
		
		Parameters
		----------
		c_or_cr : array_like or tuple of (array_like, array_like)
		    The vector ``c``, or a tuple of arrays (``c``, ``r``). Whatever the
		    actual shape of ``c``, it will be converted to a 1-D array. If not
		    supplied, ``r = conjugate(c)`` is assumed; in this case, if c[0] is
		    real, the Toeplitz matrix is Hermitian. r[0] is ignored; the first row
		    of the Toeplitz matrix is ``[c[0], r[1:]]``.  Whatever the actual shape
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
		    The solution to the system ``T x = b``.  Shape of return matches shape
		    of `b`.
		
		Notes
		-----
		The solution is computed using Levinson-Durbin recursion, which is faster
		than generic least-squares methods, but can be less numerically stable.
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
		    The solution to the system a x = b.  Shape of return matches shape
		    of `b`.
	**/
	static public function solveh_banded(ab:Dynamic, b:Dynamic, ?overwrite_ab:Dynamic, ?overwrite_b:Dynamic, ?lower:Dynamic, ?check_finite:Dynamic):Dynamic;
}