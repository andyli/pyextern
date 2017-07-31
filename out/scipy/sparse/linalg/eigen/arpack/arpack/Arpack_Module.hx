/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen.arpack.arpack;
@:pythonImport("scipy.sparse.linalg.eigen.arpack.arpack") extern class Arpack_Module {
	static public var CNAUPD_ERRORS : Dynamic;
	static public var CNEUPD_ERRORS : Dynamic;
	static public var DNAUPD_ERRORS : Dynamic;
	static public var DNEUPD_ERRORS : Dynamic;
	static public var DSAUPD_ERRORS : Dynamic;
	static public var DSEUPD_ERRORS : Dynamic;
	static public var SNAUPD_ERRORS : Dynamic;
	static public var SNEUPD_ERRORS : Dynamic;
	static public var SSAUPD_ERRORS : Dynamic;
	static public var SSEUPD_ERRORS : Dynamic;
	static public var ZNAUPD_ERRORS : Dynamic;
	static public var ZNEUPD_ERRORS : Dynamic;
	static public var _ARPACK_LOCK : Dynamic;
	static public var _NAUPD_ERRORS : Dynamic;
	static public var _NEUPD_ERRORS : Dynamic;
	static public var _NEUPD_WHICH : Dynamic;
	static public var _SAUPD_ERRORS : Dynamic;
	static public var _SEUPD_ERRORS : Dynamic;
	static public var _SEUPD_WHICH : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Allocate a new ndarray with aligned memory.
		
		Primary use case for this currently is working around a f2py issue
		in Numpy 1.9.1, where dtype.alignment is such that np.zeros() does
		not necessarily create arrays aligned up to it.
	**/
	static public function _aligned_zeros(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic, ?align:Dynamic):Dynamic;
	static public function _aslinearoperator_with_dtype(m:Dynamic):Dynamic;
	static public function _augmented_orthonormal_cols(x:Dynamic, k:Dynamic):Dynamic;
	static public function _augmented_orthonormal_rows(x:Dynamic, k:Dynamic):Dynamic;
	static public function _herm(x:Dynamic):Dynamic;
	static public var _ndigits : Dynamic;
	static public var _type_conv : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Examples
		--------
		>>> from scipy.sparse.linalg import aslinearoperator
		>>> M = np.array([[1,2,3],[4,5,6]], dtype=np.int32)
		>>> aslinearoperator(M)
		<2x3 MatrixLinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	/**
		Choose number of lanczos vectors based on target number
		of singular/eigen values and vectors to compute, k.
	**/
	static public function choose_ncv(k:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Find k eigenvalues and eigenvectors of the square matrix A.
		
		Solves ``A * x[i] = w[i] * x[i]``, the standard eigenvalue problem
		for w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A * x[i] = w[i] * M * x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i]
		
		Parameters
		----------
		A : ndarray, sparse matrix or LinearOperator
		    An array, sparse matrix, or LinearOperator representing
		    the operation ``A * x``, where A is a real or complex square matrix.
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N-1. It is not possible to compute all
		    eigenvectors of a matrix.
		M : ndarray, sparse matrix or LinearOperator, optional
		    An array, sparse matrix, or LinearOperator representing
		    the operation M*x for the generalized eigenvalue problem
		
		        A * x = w * M * x.
		
		    M must represent a real, symmetric matrix if A is real, and must
		    represent a complex, hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If `sigma` is None, M is positive definite
		
		        If sigma is specified, M is positive semi-definite
		
		    If sigma is None, eigs requires an operator to compute the solution
		    of the linear equation ``M * x = b``.  This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv * b = M^-1 * b``.
		sigma : real or complex, optional
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    ``[A - sigma * M] * x = b``, where M is the identity matrix if
		    unspecified. This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv * b = [A - sigma * M]^-1 * b``.
		    For a real matrix A, shift-invert can either be done in imaginary
		    mode or real mode, specified by the parameter OPpart ('r' or 'i').
		    Note that when sigma is specified, the keyword 'which' (below)
		    refers to the shifted eigenvalues ``w'[i]`` where:
		
		        If A is real and OPpart == 'r' (default),
		          ``w'[i] = 1/2 * [1/(w[i]-sigma) + 1/(w[i]-conj(sigma))]``.
		
		        If A is real and OPpart == 'i',
		          ``w'[i] = 1/2i * [1/(w[i]-sigma) - 1/(w[i]-conj(sigma))]``.
		
		        If A is complex, ``w'[i] = 1/(w[i]-sigma)``.
		
		v0 : ndarray, optional
		    Starting vector for iteration.
		    Default: random
		ncv : int, optional
		    The number of Lanczos vectors generated
		    `ncv` must be greater than `k`; it is recommended that ``ncv > 2*k``.
		    Default: ``min(n, max(2*k + 1, 20))``
		which : str, ['LM' | 'SM' | 'LR' | 'SR' | 'LI' | 'SI'], optional
		    Which `k` eigenvectors and eigenvalues to find:
		
		        'LM' : largest magnitude
		
		        'SM' : smallest magnitude
		
		        'LR' : largest real part
		
		        'SR' : smallest real part
		
		        'LI' : largest imaginary part
		
		        'SI' : smallest imaginary part
		
		    When sigma != None, 'which' refers to the shifted eigenvalues w'[i]
		    (see discussion in 'sigma', above).  ARPACK is generally better
		    at finding large values than small values.  If small eigenvalues are
		    desired, consider using shift-invert mode for better performance.
		maxiter : int, optional
		    Maximum number of Arnoldi update iterations allowed
		    Default: ``n*10``
		tol : float, optional
		    Relative accuracy for eigenvalues (stopping criterion)
		    The default value of 0 implies machine precision.
		return_eigenvectors : bool, optional
		    Return eigenvectors (True) in addition to eigenvalues
		Minv : ndarray, sparse matrix or LinearOperator, optional
		    See notes in M, above.
		OPinv : ndarray, sparse matrix or LinearOperator, optional
		    See notes in sigma, above.
		OPpart : {'r' or 'i'}, optional
		    See notes in sigma, above
		
		Returns
		-------
		w : ndarray
		    Array of k eigenvalues.
		v : ndarray
		    An array of `k` eigenvectors.
		    ``v[:, i]`` is the eigenvector corresponding to the eigenvalue w[i].
		
		Raises
		------
		ArpackNoConvergence
		    When the requested convergence is not obtained.
		    The currently converged eigenvalues and eigenvectors can be found
		    as ``eigenvalues`` and ``eigenvectors`` attributes of the exception
		    object.
		
		See Also
		--------
		eigsh : eigenvalues and eigenvectors for symmetric matrix A
		svds : singular value decomposition for a matrix A
		
		Notes
		-----
		This function is a wrapper to the ARPACK [1]_ SNEUPD, DNEUPD, CNEUPD,
		ZNEUPD, functions which use the Implicitly Restarted Arnoldi Method to
		find the eigenvalues and eigenvectors [2]_.
		
		References
		----------
		.. [1] ARPACK Software, http://www.caam.rice.edu/software/ARPACK/
		.. [2] R. B. Lehoucq, D. C. Sorensen, and C. Yang,  ARPACK USERS GUIDE:
		   Solution of Large Scale Eigenvalue Problems by Implicitly Restarted
		   Arnoldi Methods. SIAM, Philadelphia, PA, 1998.
		
		Examples
		--------
		Find 6 eigenvectors of the identity matrix:
		
		>>> import scipy.sparse as sparse
		>>> id = np.eye(13)
		>>> vals, vecs = sparse.linalg.eigs(id, k=6)
		>>> vals
		array([ 1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j])
		>>> vecs.shape
		(13, 6)
	**/
	static public function eigs(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?OPpart:Dynamic):Dynamic;
	/**
		Find k eigenvalues and eigenvectors of the real symmetric square matrix
		or complex hermitian matrix A.
		
		Solves ``A * x[i] = w[i] * x[i]``, the standard eigenvalue problem for
		w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A * x[i] = w[i] * M * x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i]
		
		Parameters
		----------
		A : An N x N matrix, array, sparse matrix, or LinearOperator representing
		    the operation A * x, where A is a real symmetric matrix
		    For buckling mode (see below) A must additionally be positive-definite
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N. It is not possible to compute all
		    eigenvectors of a matrix.
		
		Returns
		-------
		w : array
		    Array of k eigenvalues
		v : array
		    An array representing the `k` eigenvectors.  The column ``v[:, i]`` is
		    the eigenvector corresponding to the eigenvalue ``w[i]``.
		
		Other Parameters
		----------------
		M : An N x N matrix, array, sparse matrix, or linear operator representing
		    the operation M * x for the generalized eigenvalue problem
		
		        A * x = w * M * x.
		
		    M must represent a real, symmetric matrix if A is real, and must
		    represent a complex, hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If sigma is None, M is symmetric positive definite
		
		        If sigma is specified, M is symmetric positive semi-definite
		
		        In buckling mode, M is symmetric indefinite.
		
		    If sigma is None, eigsh requires an operator to compute the solution
		    of the linear equation ``M * x = b``. This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv * b = M^-1 * b``.
		sigma : real
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    `[A - sigma * M] x = b`, where M is the identity matrix if
		    unspecified.  This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv * b = [A - sigma * M]^-1 * b``.
		    Note that when sigma is specified, the keyword 'which' refers to
		    the shifted eigenvalues ``w'[i]`` where:
		
		        if mode == 'normal', ``w'[i] = 1 / (w[i] - sigma)``.
		
		        if mode == 'cayley', ``w'[i] = (w[i] + sigma) / (w[i] - sigma)``.
		
		        if mode == 'buckling', ``w'[i] = w[i] / (w[i] - sigma)``.
		
		    (see further discussion in 'mode' below)
		v0 : ndarray, optional
		    Starting vector for iteration.
		    Default: random
		ncv : int, optional
		    The number of Lanczos vectors generated ncv must be greater than k and
		    smaller than n; it is recommended that ``ncv > 2*k``.
		    Default: ``min(n, max(2*k + 1, 20))``
		which : str ['LM' | 'SM' | 'LA' | 'SA' | 'BE']
		    If A is a complex hermitian matrix, 'BE' is invalid.
		    Which `k` eigenvectors and eigenvalues to find:
		
		        'LM' : Largest (in magnitude) eigenvalues
		
		        'SM' : Smallest (in magnitude) eigenvalues
		
		        'LA' : Largest (algebraic) eigenvalues
		
		        'SA' : Smallest (algebraic) eigenvalues
		
		        'BE' : Half (k/2) from each end of the spectrum
		
		    When k is odd, return one more (k/2+1) from the high end.
		    When sigma != None, 'which' refers to the shifted eigenvalues ``w'[i]``
		    (see discussion in 'sigma', above).  ARPACK is generally better
		    at finding large values than small values.  If small eigenvalues are
		    desired, consider using shift-invert mode for better performance.
		maxiter : int, optional
		    Maximum number of Arnoldi update iterations allowed
		    Default: ``n*10``
		tol : float
		    Relative accuracy for eigenvalues (stopping criterion).
		    The default value of 0 implies machine precision.
		Minv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in M, above
		OPinv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in sigma, above.
		return_eigenvectors : bool
		    Return eigenvectors (True) in addition to eigenvalues
		mode : string ['normal' | 'buckling' | 'cayley']
		    Specify strategy to use for shift-invert mode.  This argument applies
		    only for real-valued A and sigma != None.  For shift-invert mode,
		    ARPACK internally solves the eigenvalue problem
		    ``OP * x'[i] = w'[i] * B * x'[i]``
		    and transforms the resulting Ritz vectors x'[i] and Ritz values w'[i]
		    into the desired eigenvectors and eigenvalues of the problem
		    ``A * x[i] = w[i] * M * x[i]``.
		    The modes are as follows:
		
		        'normal' :
		            OP = [A - sigma * M]^-1 * M,
		            B = M,
		            w'[i] = 1 / (w[i] - sigma)
		
		        'buckling' :
		            OP = [A - sigma * M]^-1 * A,
		            B = A,
		            w'[i] = w[i] / (w[i] - sigma)
		
		        'cayley' :
		            OP = [A - sigma * M]^-1 * [A + sigma * M],
		            B = M,
		            w'[i] = (w[i] + sigma) / (w[i] - sigma)
		
		    The choice of mode will affect which eigenvalues are selected by
		    the keyword 'which', and can also impact the stability of
		    convergence (see [2] for a discussion)
		
		Raises
		------
		ArpackNoConvergence
		    When the requested convergence is not obtained.
		
		    The currently converged eigenvalues and eigenvectors can be found
		    as ``eigenvalues`` and ``eigenvectors`` attributes of the exception
		    object.
		
		See Also
		--------
		eigs : eigenvalues and eigenvectors for a general (nonsymmetric) matrix A
		svds : singular value decomposition for a matrix A
		
		Notes
		-----
		This function is a wrapper to the ARPACK [1]_ SSEUPD and DSEUPD
		functions which use the Implicitly Restarted Lanczos Method to
		find the eigenvalues and eigenvectors [2]_.
		
		References
		----------
		.. [1] ARPACK Software, http://www.caam.rice.edu/software/ARPACK/
		.. [2] R. B. Lehoucq, D. C. Sorensen, and C. Yang,  ARPACK USERS GUIDE:
		   Solution of Large Scale Eigenvalue Problems by Implicitly Restarted
		   Arnoldi Methods. SIAM, Philadelphia, PA, 1998.
		
		Examples
		--------
		>>> import scipy.sparse as sparse
		>>> id = np.eye(13)
		>>> vals, vecs = sparse.linalg.eigsh(id, k=6)
		>>> vals
		array([ 1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j])
		>>> vecs.shape
		(13, 6)
	**/
	static public function eigsh(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Sparse matrix with ones on diagonal
		
		Returns a sparse (m x n) matrix where the k-th diagonal
		is all ones and everything else is zeros.
		
		Parameters
		----------
		m : int
		    Number of rows in the matrix.
		n : int, optional
		    Number of columns. Default: `m`.
		k : int, optional
		    Diagonal to place ones on. Default: 0 (main diagonal).
		dtype : dtype, optional
		    Data type of the matrix.
		format : str, optional
		    Sparse format of the result, e.g. format="csr", etc.
		
		Examples
		--------
		>>> from scipy import sparse
		>>> sparse.eye(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> sparse.eye(3, dtype=np.int8)
		<3x3 sparse matrix of type '<type 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function eye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	static public function get_OPinv_matvec(A:Dynamic, M:Dynamic, sigma:Dynamic, ?symmetric:Dynamic, ?tol:Dynamic):Dynamic;
	static public function get_inv_matvec(M:Dynamic, ?symmetric:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Use Generalized Minimal RESidual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : int
		    Provides convergence information:
		      * 0  : successful exit
		      * >0 : convergence to tolerance not achieved, number of iterations
		      * <0 : illegal input or breakdown
		
		Other parameters
		----------------
		x0 : {array, matrix}
		    Starting guess for the solution (a vector of zeros by default).
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		restart : int, optional
		    Number of iterations between restarts. Larger values increase
		    iteration cost, but may be necessary for convergence.
		    Default is 20.
		maxiter : int, optional
		    Maximum number of iterations (restart cycles).  Iteration will stop
		    after maxiter steps even if the specified tolerance has not been
		    achieved.
		xtype : {'f','d','F','D'}
		    This parameter is DEPRECATED --- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Inverse of the preconditioner of A.  M should approximate the
		    inverse of A and be easy to solve for (see Notes).  Effective
		    preconditioning dramatically improves the rate of convergence,
		    which implies that fewer iterations are needed to reach a given
		    error tolerance.  By default, no preconditioner is used.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(rk), where rk is the current residual vector.
		restrt : int, optional
		    DEPRECATED - use `restart` instead.
		
		See Also
		--------
		LinearOperator
		
		Notes
		-----
		A preconditioner, P, is chosen such that P is close to A but easy to solve
		for. The preconditioner parameter required by this routine is
		``M = P^-1``. The inverse should preferably not be calculated
		explicitly.  Rather, use the following template to produce M::
		
		  # Construct a linear operator that computes P^-1 * x.
		  import scipy.sparse.linalg as spla
		  M_x = lambda x: spla.spsolve(P, x)
		  M = spla.LinearOperator((n, n), M_x)
	**/
	static public function gmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?restart:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?restrt:Dynamic):Dynamic;
	static public function isdense(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
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
	**/
	static public function lu_solve(lu_and_piv:Dynamic, b:Dynamic, ?trans:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Array<Dynamic>;
	static public var print_function : Dynamic;
	/**
		Compute the LU decomposition of a sparse, square matrix.
		
		Parameters
		----------
		A : sparse matrix
		    Sparse matrix to factorize. Should be in CSR or CSC format.
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		
		diag_pivot_thresh : float, optional
		    Threshold used for a diagonal entry to be an acceptable pivot.
		    See SuperLU user's guide for details [1]_
		drop_tol : float, optional
		    (deprecated) No effect.
		relax : int, optional
		    Expert option for customizing the degree of relaxing supernodes.
		    See SuperLU user's guide for details [1]_
		panel_size : int, optional
		    Expert option for customizing the panel size.
		    See SuperLU user's guide for details [1]_
		options : dict, optional
		    Dictionary containing additional expert options to SuperLU.
		    See SuperLU user guide [1]_ (section 2.4 on the 'Options' argument)
		    for more details. For example, you can specify
		    ``options=dict(Equil=False, IterRefine='SINGLE'))``
		    to turn equilibration off and perform a single iterative refinement.
		
		Returns
		-------
		invA : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		spilu : incomplete LU decomposition
		
		Notes
		-----
		This function uses the SuperLU library.
		
		References
		----------
		.. [1] SuperLU http://crd.lbl.gov/~xiaoye/SuperLU/
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?drop_tol:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Compute the largest k singular values/vectors for a sparse matrix.
		
		Parameters
		----------
		A : {sparse matrix, LinearOperator}
		    Array to compute the SVD on, of shape (M, N)
		k : int, optional
		    Number of singular values and vectors to compute.
		    Must be 1 <= k < min(A.shape).
		ncv : int, optional
		    The number of Lanczos vectors generated
		    ncv must be greater than k+1 and smaller than n;
		    it is recommended that ncv > 2*k
		    Default: ``min(n, max(2*k + 1, 20))``
		tol : float, optional
		    Tolerance for singular values. Zero (default) means machine precision.
		which : str, ['LM' | 'SM'], optional
		    Which `k` singular values to find:
		
		        - 'LM' : largest singular values
		        - 'SM' : smallest singular values
		
		    .. versionadded:: 0.12.0
		v0 : ndarray, optional
		    Starting vector for iteration, of length min(A.shape). Should be an
		    (approximate) left singular vector if N > M and a right singular
		    vector otherwise.
		    Default: random
		
		    .. versionadded:: 0.12.0
		maxiter : int, optional
		    Maximum number of iterations.
		
		    .. versionadded:: 0.12.0
		return_singular_vectors : bool or str, optional
		    - True: return singular vectors (True) in addition to singular values.
		
		    .. versionadded:: 0.12.0
		
		    - "u": only return the u matrix, without computing vh (if N > M).
		    - "vh": only return the vh matrix, without computing u (if N <= M).
		
		    .. versionadded:: 0.16.0
		
		Returns
		-------
		u : ndarray, shape=(M, k)
		    Unitary matrix having left singular vectors as columns.
		    If `return_singular_vectors` is "vh", this variable is not computed,
		    and None is returned instead.
		s : ndarray, shape=(k,)
		    The singular values.
		vt : ndarray, shape=(k, N)
		    Unitary matrix having right singular vectors as rows.
		    If `return_singular_vectors` is "u", this variable is not computed,
		    and None is returned instead.
		
		
		Notes
		-----
		This is a naive implementation using ARPACK as an eigensolver
		on A.H * A or A * A.H, depending on which one is more efficient.
	**/
	static public function svds(A:Dynamic, ?k:Dynamic, ?ncv:Dynamic, ?tol:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?maxiter:Dynamic, ?return_singular_vectors:Dynamic):Dynamic;
}