/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve._gcrotmk;
@:pythonImport("scipy.sparse.linalg.isolve._gcrotmk") extern class _Gcrotmk_Module {
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
		FGMRES Arnoldi process, with optional projection or augmentation
		
		Parameters
		----------
		matvec : callable
		    Operation A*x
		v0 : ndarray
		    Initial vector, normalized to nrm2(v0) == 1
		m : int
		    Number of GMRES rounds
		atol : float
		    Absolute tolerance for early exit
		lpsolve : callable
		    Left preconditioner L
		rpsolve : callable
		    Right preconditioner R
		CU : list of (ndarray, ndarray)
		    Columns of matrices C and U in GCROT
		outer_v : list of ndarrays
		    Augmentation vectors in LGMRES
		prepend_outer_v : bool, optional
		    Whether augmentation vectors come before or after 
		    Krylov iterates
		
		Raises
		------
		LinAlgError
		    If nans encountered
		
		Returns
		-------
		Q, R : ndarray
		    QR decomposition of the upper Hessenberg H=QR
		B : ndarray
		    Projections corresponding to matrix C
		vs : list of ndarray
		    Columns of matrix V
		zs : list of ndarray
		    Columns of matrix Z
		y : ndarray
		    Solution to ||H y - e_1||_2 = min!
		res : float
		    The final (preconditioned) residual norm
	**/
	static public function _fgmres(matvec:Dynamic, v0:Dynamic, m:Dynamic, atol:Dynamic, ?lpsolve:Dynamic, ?rpsolve:Dynamic, ?cs:Dynamic, ?outer_v:Dynamic, ?prepend_outer_v:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Solve a matrix equation using flexible GCROT(m,k) algorithm.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is `tol`.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : int, optional
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}, optional
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A. gcrotmk is a 'flexible' algorithm and the preconditioner
		    can vary from iteration to iteration. Effective preconditioning
		    dramatically improves the rate of convergence, which implies that
		    fewer iterations are needed to reach a given error tolerance.
		callback : function, optional
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		m : int, optional
		    Number of inner FGMRES iterations per each outer iteration.
		    Default: 20
		k : int, optional
		    Number of vectors to carry between inner FGMRES iterations.
		    According to [2]_, good values are around m.
		    Default: m
		CU : list of tuples, optional
		    List of tuples ``(c, u)`` which contain the columns of the matrices
		    C and U in the GCROT(m,k) algorithm. For details, see [2]_.
		    The list given and vectors contained in it are modified in-place.
		    If not given, start from empty matrices. The ``c`` elements in the
		    tuples can be ``None``, in which case the vectors are recomputed
		    via ``c = A u`` on start and orthogonalized as described in [3]_.
		discard_C : bool, optional
		    Discard the C-vectors at the end. Useful if recycling Krylov subspaces
		    for different linear systems.
		truncate : {'oldest', 'smallest'}, optional
		    Truncation scheme to use. Drop: oldest vectors, or vectors with
		    smallest singular values using the scheme discussed in [1,2].
		    See [2]_ for detailed comparison.
		    Default: 'oldest'
		
		Returns
		-------
		x : array or matrix
		    The solution found.
		info : int
		    Provides convergence information:
		
		    * 0  : successful exit
		    * >0 : convergence to tolerance not achieved, number of iterations
		
		References
		----------
		.. [1] E. de Sturler, ''Truncation strategies for optimal Krylov subspace
		       methods'', SIAM J. Numer. Anal. 36, 864 (1999).
		.. [2] J.E. Hicken and D.W. Zingg, ''A simplified and flexible variant
		       of GCROT for solving nonsymmetric linear systems'',
		       SIAM J. Sci. Comput. 32, 172 (2010).
		.. [3] M.L. Parks, E. de Sturler, G. Mackey, D.D. Johnson, S. Maiti,
		       ''Recycling Krylov subspaces for sequences of linear systems'',
		       SIAM J. Sci. Comput. 28, 1651 (2006).
	**/
	static public function gcrotmk(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?m:Dynamic, ?k:Dynamic, ?CU:Dynamic, ?discard_C:Dynamic, ?truncate:Dynamic, ?atol:Dynamic):Dynamic;
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
		
		Examples
		--------
		>>> import scipy.linalg as LA
		>>> a = np.random.rand(3,2)
		>>> x_gemv = LA.get_blas_funcs('gemv', (a,))
		>>> x_gemv.typecode
		'd'
		>>> x_gemv = LA.get_blas_funcs('gemv',(a*1j,))
		>>> x_gemv.typecode
		'z'
	**/
	static public function get_blas_funcs(names:Dynamic, ?arrays:Dynamic, ?dtype:Dynamic):Array<Dynamic>;
	/**
		Compute least-squares solution to equation Ax = b.
		
		Compute a vector x such that the 2-norm ``|b - A x|`` is minimized.
		
		Parameters
		----------
		a : (M, N) array_like
		    Left hand side array
		b : (M,) or (M, K) array_like
		    Right hand side array
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
		    Least-squares solution.  Return shape matches shape of `b`.
		residues : (K,) ndarray or float
		    Square of the 2-norm for each column in ``b - a x``, if ``M > N`` and
		    ``ndim(A) == n`` (returns a scalar if b is 1-D). Otherwise a
		    (0,)-shaped array is returned.
		rank : int
		    Effective rank of `a`.
		s : (min(M, N),) ndarray or None
		    Singular values of `a`. The condition number of a is
		    ``abs(s[0] / s[-1])``.
		
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
		Make a linear system Ax=b
		
		Parameters
		----------
		A : LinearOperator
		    sparse or dense matrix (or any valid input to aslinearoperator)
		M : {LinearOperator, Nones}
		    preconditioner
		    sparse or dense matrix (or any valid input to aslinearoperator)
		x0 : {array_like, None}
		    initial guess to iterative method
		b : array_like
		    right hand side
		
		Returns
		-------
		(A, M, x, b, postprocess)
		    A : LinearOperator
		        matrix of the linear system
		    M : LinearOperator
		        preconditioner
		    x : rank 1 ndarray
		        initial guess
		    b : rank 1 ndarray
		        right hand side
		    postprocess : function
		        converts the solution vector to the appropriate
		        type and dimensions (e.g. (N,1) matrix)
	**/
	static public function make_system(A:Dynamic, M:Dynamic, x0:Dynamic, b:Dynamic):Dynamic;
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
		qr_insert(Q, R, u, k, which=u'row', rcond=None, overwrite_qru=False, check_finite=True)
		
		QR update on row or column insertions
		
		If ``A = Q R`` is the QR factorization of ``A``, return the QR
		factorization of ``A`` where rows or columns have been inserted starting
		at row or column ``k``.
		
		Parameters
		----------
		Q : (M, M) array_like
		    Unitary/orthogonal matrix from the QR decomposition of A.
		R : (M, N) array_like
		    Upper triangular matrix from the QR decomposition of A.
		u : (N,), (p, N), (M,), or (M, p) array_like
		    Rows or columns to insert
		k : int
		    Index before which `u` is to be inserted.
		which: {'row', 'col'}, optional
		    Determines if rows or columns will be inserted, defaults to 'row'
		rcond : float
		    Lower bound on the reciprocal condition number of ``Q`` augmented with
		    ``u/||u||`` Only used when updating economic mode (thin, (M,N) (N,N))
		    decompositions.  If None, machine precision is used.  Defaults to
		    None.
		overwrite_qru : bool, optional
		    If True, consume Q, R, and u, if possible, while performing the update,
		    otherwise make copies as necessary. Defaults to False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default is True.
		
		Returns
		-------
		Q1 : ndarray
		    Updated unitary/orthogonal factor
		R1 : ndarray
		    Updated upper triangular factor
		
		Raises
		------
		LinAlgError :
		    If updating a (M,N) (N,N) factorization and the reciprocal condition
		    number of Q augmented with u/||u|| is smaller than rcond.
		
		See Also
		--------
		qr, qr_multiply, qr_delete, qr_update
		
		Notes
		-----
		This routine does not guarantee that the diagonal entries of ``R1`` are
		positive.
		
		.. versionadded:: 0.16.0
		
		References
		----------
		
		.. [1] Golub, G. H. & Van Loan, C. F. Matrix Computations, 3rd Ed.
		       (Johns Hopkins University Press, 1996).
		
		.. [2] Daniel, J. W., Gragg, W. B., Kaufman, L. & Stewart, G. W.
		       Reorthogonalization and stable algorithms for updating the
		       Gram-Schmidt QR factorization. Math. Comput. 30, 772-795 (1976).
		
		.. [3] Reichel, L. & Gragg, W. B. Algorithm 686: FORTRAN Subroutines for
		       Updating the QR Decomposition. ACM Trans. Math. Softw. 16, 369-377
		       (1990).
		
		Examples
		--------
		>>> from scipy import linalg
		>>> a = np.array([[  3.,  -2.,  -2.],
		...               [  6.,  -7.,   4.],
		...               [  7.,   8.,  -6.]])
		>>> q, r = linalg.qr(a)
		
		Given this QR decomposition, update q and r when 2 rows are inserted.
		
		>>> u = np.array([[  6.,  -9.,  -3.],
		...               [ -3.,  10.,   1.]])
		>>> q1, r1 = linalg.qr_insert(q, r, u, 2, 'row')
		>>> q1
		array([[-0.25445668,  0.02246245,  0.18146236, -0.72798806,  0.60979671],  # may vary (signs)
		       [-0.50891336,  0.23226178, -0.82836478, -0.02837033, -0.00828114],
		       [-0.50891336,  0.35715302,  0.38937158,  0.58110733,  0.35235345],
		       [ 0.25445668, -0.52202743, -0.32165498,  0.36263239,  0.65404509],
		       [-0.59373225, -0.73856549,  0.16065817, -0.0063658 , -0.27595554]])
		>>> r1
		array([[-11.78982612,   6.44623587,   3.81685018],  # may vary (signs)
		       [  0.        , -16.01393278,   3.72202865],
		       [  0.        ,   0.        ,  -6.13010256],
		       [  0.        ,   0.        ,   0.        ],
		       [  0.        ,   0.        ,   0.        ]])
		
		The update is equivalent, but faster than the following.
		
		>>> a1 = np.insert(a, 2, u, 0)
		>>> a1
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		>>> q_direct, r_direct = linalg.qr(a1)
		
		Check that we have equivalent results:
		
		>>> np.dot(q1, r1)
		array([[  3.,  -2.,  -2.],
		       [  6.,  -7.,   4.],
		       [  6.,  -9.,  -3.],
		       [ -3.,  10.,   1.],
		       [  7.,   8.,  -6.]])
		
		>>> np.allclose(np.dot(q1, r1), a1)
		True
		
		And the updated Q is still unitary:
		
		>>> np.allclose(np.dot(q1.T, q1), np.eye(5))
		True
	**/
	static public function qr_insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		>>> m, n = 9, 6
		>>> a = np.random.randn(m, n) + 1.j*np.random.randn(m, n)
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
}