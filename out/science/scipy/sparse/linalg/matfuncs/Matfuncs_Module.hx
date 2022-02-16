/* This file is generated, do not edit! */
package scipy.sparse.linalg.matfuncs;
@:pythonImport("scipy.sparse.linalg.matfuncs") extern class Matfuncs_Module {
	static public var UPPER_TRIANGULAR : Dynamic;
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
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import expm
		>>> A = csc_matrix([[1, 0, 0], [0, 2, 0], [0, 0, 3]])
		>>> A.toarray()
		array([[1, 0, 0],
		       [0, 2, 0],
		       [0, 0, 3]], dtype=int64)
		>>> Aexp = expm(A)
		>>> Aexp
		<3x3 sparse matrix of type '<class 'numpy.float64'>'
		    with 3 stored elements in Compressed Sparse Column format>
		>>> Aexp.toarray()
		array([[  2.71828183,   0.        ,   0.        ],
		       [  0.        ,   7.3890561 ,   0.        ],
		       [  0.        ,   0.        ,  20.08553692]])
	**/
	static public function expm(A:Dynamic):Dynamic;
	/**
		Compute the inverse of a sparse matrix
		
		Parameters
		----------
		A : (M, M) sparse matrix
		    square matrix to be inverted
		
		Returns
		-------
		Ainv : (M, M) sparse matrix
		    inverse of `A`
		
		Notes
		-----
		This computes the sparse inverse of `A`. If the inverse of `A` is expected
		to be non-sparse, it will likely be faster to convert `A` to dense and use
		`scipy.linalg.inv`.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import inv
		>>> A = csc_matrix([[1., 0.], [1., 2.]])
		>>> Ainv = inv(A)
		>>> Ainv
		<2x2 sparse matrix of type '<class 'numpy.float64'>'
		    with 3 stored elements in Compressed Sparse Column format>
		>>> A.dot(Ainv)
		<2x2 sparse matrix of type '<class 'numpy.float64'>'
		    with 2 stored elements in Compressed Sparse Column format>
		>>> A.dot(Ainv).toarray()
		array([[ 1.,  0.],
		       [ 0.,  1.]])
		
		.. versionadded:: 0.12.0
	**/
	static public function inv(A:Dynamic):Dynamic;
	/**
		Check whether object is pydata/sparse matrix, avoiding importing the module.
	**/
	static public function is_pydata_spmatrix(m:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function isspmatrix(x:Dynamic):Dynamic;
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
		Solve the sparse linear system Ax=b, where b may be a vector or a matrix.
		
		Parameters
		----------
		A : ndarray or sparse matrix
		    The square matrix A will be converted into CSC or CSR form
		b : ndarray or sparse matrix
		    The matrix or vector representing the right hand side of the equation.
		    If a vector, b.shape must be (n,) or (n, 1).
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
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import spsolve
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> B = csc_matrix([[2, 0], [-1, 0], [2, 0]], dtype=float)
		>>> x = spsolve(A, B)
		>>> np.allclose(A.dot(x).toarray(), B.toarray())
		True
	**/
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic, ?use_umfpack:Dynamic):Dynamic;
}