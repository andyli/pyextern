/* This file is generated, do not edit! */
package scipy.optimize._bglu_dense;
@:pythonImport("scipy.optimize._bglu_dense") extern class _Bglu_dense_Module {
	static public var __all__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_BGLU(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_LU(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		This decorator records the time spent in the major BGLU
		routines - refactor, update, and solve - in order to
		calculate the average time required to solve a system.
		It also forces PLU factorization of the basis matrix from
		scratch to minimize the average solve time and to
		accumulation of roundoff error.
		
		Immediately after PLU factorization, the average solve time
		will be rather high because PLU factorization is slow. For
		some number of factor updates, the average solve time is
		expected to decrease because the updates and solves are fast.
		However, updates increase the compexity of the factorization,
		so solve times are expected to increase with each update.
		When the average solve time stops decreasing and begins
		increasing, we perform PLU factorization from scratch rather
		than updating. PLU factorization is also performed after the
		maximum permitted number of updates is reached to prevent
		further accumulation of roundoff error.
	**/
	static public function _consider_refactor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute pivoted LU decomposition of a matrix.
		
		The decomposition is::
		
		    A = P L U
		
		where P is a permutation matrix, L lower triangular with unit
		diagonal elements, and U upper triangular.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		overwrite_a : bool, optional
		    Whether to overwrite data in A (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		lu : (N, N) ndarray
		    Matrix containing U in its upper triangle, and L in its lower triangle.
		    The unit diagonal elements of L are not stored.
		piv : (N,) ndarray
		    Pivot indices representing the permutation matrix P:
		    row i of matrix was interchanged with row piv[i].
		
		See also
		--------
		lu_solve : solve an equation system using the LU factorization of a matrix
		
		Notes
		-----
		This is a wrapper to the ``*GETRF`` routines from LAPACK.
		
		Examples
		--------
		>>> from scipy.linalg import lu_factor
		>>> from numpy import tril, triu, allclose, zeros, eye
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> lu, piv = lu_factor(A)
		>>> piv
		array([2, 2, 3, 3], dtype=int32)
		
		Convert LAPACK's ``piv`` array to NumPy index and test the permutation 
		
		>>> piv_py = [2, 0, 3, 1]
		>>> L, U = np.tril(lu, k=-1) + np.eye(4), np.triu(lu)
		>>> np.allclose(A[piv_py] - L @ U, np.zeros((4, 4)))
		True
	**/
	static public function lu_factor(a:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve an equation system, a x = b, given the LU factorization of a
		
		Parameters
		----------
		(lu, piv)
		    Factorization of the coefficient matrix a, as given by lu_factor
		b : array
		    Right-hand side
		trans : {0, 1, 2}, optional
		    Type of system to solve:
		
		    =====  =========
		    trans  system
		    =====  =========
		    0      a x   = b
		    1      a^T x = b
		    2      a^H x = b
		    =====  =========
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may increase performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    Solution to the system
		
		See also
		--------
		lu_factor : LU factorize a matrix
		
		Examples
		--------
		>>> from scipy.linalg import lu_factor, lu_solve
		>>> A = np.array([[2, 5, 8, 7], [5, 2, 2, 8], [7, 5, 6, 6], [5, 4, 4, 8]])
		>>> b = np.array([1, 1, 1, 1])
		>>> lu, piv = lu_factor(A)
		>>> x = lu_solve((lu, piv), b)
		>>> np.allclose(A @ x - b, np.zeros((4,)))
		True
	**/
	static public function lu_solve(lu_and_piv:Dynamic, b:Dynamic, ?trans:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
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
		If the input b matrix is a 1D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1D array.
		
		The generic, symmetric, hermitian and positive definite solutions are
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
		process_time() -> float
		
		Process time for profiling: sum of the kernel and user-space CPU time.
	**/
	static public function timer(args:haxe.extern.Rest<Dynamic>):Dynamic;
}