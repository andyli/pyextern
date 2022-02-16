/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen;
@:pythonImport("scipy.sparse.linalg.eigen") extern class Eigen_Module {
	/**
		Find k eigenvalues and eigenvectors of the square matrix A.
		
		Solves ``A @ x[i] = w[i] * x[i]``, the standard eigenvalue problem
		for w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A @ x[i] = w[i] * M @ x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i]
		
		Parameters
		----------
		A : ndarray, sparse matrix or LinearOperator
		    An array, sparse matrix, or LinearOperator representing
		    the operation ``A @ x``, where A is a real or complex square matrix.
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N-1. It is not possible to compute all
		    eigenvectors of a matrix.
		M : ndarray, sparse matrix or LinearOperator, optional
		    An array, sparse matrix, or LinearOperator representing
		    the operation M@x for the generalized eigenvalue problem
		
		        A @ x = w * M @ x.
		
		    M must represent a real symmetric matrix if A is real, and must
		    represent a complex Hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If `sigma` is None, M is positive definite
		
		        If sigma is specified, M is positive semi-definite
		
		    If sigma is None, eigs requires an operator to compute the solution
		    of the linear equation ``M @ x = b``.  This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv @ b = M^-1 @ b``.
		sigma : real or complex, optional
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    ``[A - sigma * M] @ x = b``, where M is the identity matrix if
		    unspecified. This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv @ b = [A - sigma * M]^-1 @ b``.
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
		
		>>> from scipy.sparse.linalg import eigs
		>>> id = np.eye(13)
		>>> vals, vecs = eigs(id, k=6)
		>>> vals
		array([ 1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j,  1.+0.j])
		>>> vecs.shape
		(13, 6)
	**/
	static public function eigs(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?OPpart:Dynamic):Dynamic;
	/**
		Find k eigenvalues and eigenvectors of the real symmetric square matrix
		or complex Hermitian matrix A.
		
		Solves ``A @ x[i] = w[i] * x[i]``, the standard eigenvalue problem for
		w[i] eigenvalues with corresponding eigenvectors x[i].
		
		If M is specified, solves ``A @ x[i] = w[i] * M @ x[i]``, the
		generalized eigenvalue problem for w[i] eigenvalues
		with corresponding eigenvectors x[i].
		
		Note that there is no specialized routine for the case when A is a complex
		Hermitian matrix. In this case, ``eigsh()`` will call ``eigs()`` and return the
		real parts of the eigenvalues thus obtained.
		
		Parameters
		----------
		A : ndarray, sparse matrix or LinearOperator
		    A square operator representing the operation ``A @ x``, where ``A`` is
		    real symmetric or complex Hermitian. For buckling mode (see below)
		    ``A`` must additionally be positive-definite.
		k : int, optional
		    The number of eigenvalues and eigenvectors desired.
		    `k` must be smaller than N. It is not possible to compute all
		    eigenvectors of a matrix.
		
		Returns
		-------
		w : array
		    Array of k eigenvalues.
		v : array
		    An array representing the `k` eigenvectors.  The column ``v[:, i]`` is
		    the eigenvector corresponding to the eigenvalue ``w[i]``.
		
		Other Parameters
		----------------
		M : An N x N matrix, array, sparse matrix, or linear operator representing
		    the operation ``M @ x`` for the generalized eigenvalue problem
		
		        A @ x = w * M @ x.
		
		    M must represent a real symmetric matrix if A is real, and must
		    represent a complex Hermitian matrix if A is complex. For best
		    results, the data type of M should be the same as that of A.
		    Additionally:
		
		        If sigma is None, M is symmetric positive definite.
		
		        If sigma is specified, M is symmetric positive semi-definite.
		
		        In buckling mode, M is symmetric indefinite.
		
		    If sigma is None, eigsh requires an operator to compute the solution
		    of the linear equation ``M @ x = b``. This is done internally via a
		    (sparse) LU decomposition for an explicit matrix M, or via an
		    iterative solver for a general linear operator.  Alternatively,
		    the user can supply the matrix or operator Minv, which gives
		    ``x = Minv @ b = M^-1 @ b``.
		sigma : real
		    Find eigenvalues near sigma using shift-invert mode.  This requires
		    an operator to compute the solution of the linear system
		    ``[A - sigma * M] x = b``, where M is the identity matrix if
		    unspecified.  This is computed internally via a (sparse) LU
		    decomposition for explicit matrices A & M, or via an iterative
		    solver if either A or M is a general linear operator.
		    Alternatively, the user can supply the matrix or operator OPinv,
		    which gives ``x = OPinv @ b = [A - sigma * M]^-1 @ b``.
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
		    If A is a complex Hermitian matrix, 'BE' is invalid.
		    Which `k` eigenvectors and eigenvalues to find:
		
		        'LM' : Largest (in magnitude) eigenvalues.
		
		        'SM' : Smallest (in magnitude) eigenvalues.
		
		        'LA' : Largest (algebraic) eigenvalues.
		
		        'SA' : Smallest (algebraic) eigenvalues.
		
		        'BE' : Half (k/2) from each end of the spectrum.
		
		    When k is odd, return one more (k/2+1) from the high end.
		    When sigma != None, 'which' refers to the shifted eigenvalues ``w'[i]``
		    (see discussion in 'sigma', above).  ARPACK is generally better
		    at finding large values than small values.  If small eigenvalues are
		    desired, consider using shift-invert mode for better performance.
		maxiter : int, optional
		    Maximum number of Arnoldi update iterations allowed.
		    Default: ``n*10``
		tol : float
		    Relative accuracy for eigenvalues (stopping criterion).
		    The default value of 0 implies machine precision.
		Minv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in M, above.
		OPinv : N x N matrix, array, sparse matrix, or LinearOperator
		    See notes in sigma, above.
		return_eigenvectors : bool
		    Return eigenvectors (True) in addition to eigenvalues.
		    This value determines the order in which eigenvalues are sorted.
		    The sort order is also dependent on the `which` variable.
		
		        For which = 'LM' or 'SA':
		            If `return_eigenvectors` is True, eigenvalues are sorted by
		            algebraic value.
		
		            If `return_eigenvectors` is False, eigenvalues are sorted by
		            absolute value.
		
		        For which = 'BE' or 'LA':
		            eigenvalues are always sorted by algebraic value.
		
		        For which = 'SM':
		            If `return_eigenvectors` is True, eigenvalues are sorted by
		            algebraic value.
		
		            If `return_eigenvectors` is False, eigenvalues are sorted by
		            decreasing absolute value.
		
		mode : string ['normal' | 'buckling' | 'cayley']
		    Specify strategy to use for shift-invert mode.  This argument applies
		    only for real-valued A and sigma != None.  For shift-invert mode,
		    ARPACK internally solves the eigenvalue problem
		    ``OP @ x'[i] = w'[i] * B @ x'[i]``
		    and transforms the resulting Ritz vectors x'[i] and Ritz values w'[i]
		    into the desired eigenvectors and eigenvalues of the problem
		    ``A @ x[i] = w[i] * M @ x[i]``.
		    The modes are as follows:
		
		        'normal' :
		            OP = [A - sigma * M]^-1 @ M,
		            B = M,
		            w'[i] = 1 / (w[i] - sigma)
		
		        'buckling' :
		            OP = [A - sigma * M]^-1 @ A,
		            B = A,
		            w'[i] = w[i] / (w[i] - sigma)
		
		        'cayley' :
		            OP = [A - sigma * M]^-1 @ [A + sigma * M],
		            B = M,
		            w'[i] = (w[i] + sigma) / (w[i] - sigma)
		
		    The choice of mode will affect which eigenvalues are selected by
		    the keyword 'which', and can also impact the stability of
		    convergence (see [2] for a discussion).
		
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
		>>> from scipy.sparse.linalg import eigsh
		>>> identity = np.eye(13)
		>>> eigenvalues, eigenvectors = eigsh(identity, k=6)
		>>> eigenvalues
		array([1., 1., 1., 1., 1., 1.])
		>>> eigenvectors.shape
		(13, 6)
	**/
	static public function eigsh(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?mode:Dynamic):Array<Dynamic>;
	/**
		Locally Optimal Block Preconditioned Conjugate Gradient Method (LOBPCG)
		
		LOBPCG is a preconditioned eigensolver for large symmetric positive
		definite (SPD) generalized eigenproblems.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The symmetric linear operator of the problem, usually a
		    sparse matrix.  Often called the "stiffness matrix".
		X : ndarray, float32 or float64
		    Initial approximation to the ``k`` eigenvectors (non-sparse). If `A`
		    has ``shape=(n,n)`` then `X` should have shape ``shape=(n,k)``.
		B : {dense matrix, sparse matrix, LinearOperator}, optional
		    The right hand side operator in a generalized eigenproblem.
		    By default, ``B = Identity``.  Often called the "mass matrix".
		M : {dense matrix, sparse matrix, LinearOperator}, optional
		    Preconditioner to `A`; by default ``M = Identity``.
		    `M` should approximate the inverse of `A`.
		Y : ndarray, float32 or float64, optional
		    n-by-sizeY matrix of constraints (non-sparse), sizeY < n
		    The iterations will be performed in the B-orthogonal complement
		    of the column-space of Y. Y must be full rank.
		tol : scalar, optional
		    Solver tolerance (stopping criterion).
		    The default is ``tol=n*sqrt(eps)``.
		maxiter : int, optional
		    Maximum number of iterations.  The default is ``maxiter = 20``.
		largest : bool, optional
		    When True, solve for the largest eigenvalues, otherwise the smallest.
		verbosityLevel : int, optional
		    Controls solver output.  The default is ``verbosityLevel=0``.
		retLambdaHistory : bool, optional
		    Whether to return eigenvalue history.  Default is False.
		retResidualNormsHistory : bool, optional
		    Whether to return history of residual norms.  Default is False.
		
		Returns
		-------
		w : ndarray
		    Array of ``k`` eigenvalues
		v : ndarray
		    An array of ``k`` eigenvectors.  `v` has the same shape as `X`.
		lambdas : list of ndarray, optional
		    The eigenvalue history, if `retLambdaHistory` is True.
		rnorms : list of ndarray, optional
		    The history of residual norms, if `retResidualNormsHistory` is True.
		
		Notes
		-----
		If both ``retLambdaHistory`` and ``retResidualNormsHistory`` are True,
		the return tuple has the following format
		``(lambda, V, lambda history, residual norms history)``.
		
		In the following ``n`` denotes the matrix size and ``m`` the number
		of required eigenvalues (smallest or largest).
		
		The LOBPCG code internally solves eigenproblems of the size ``3m`` on every
		iteration by calling the "standard" dense eigensolver, so if ``m`` is not
		small enough compared to ``n``, it does not make sense to call the LOBPCG
		code, but rather one should use the "standard" eigensolver, e.g. numpy or
		scipy function in this case.
		If one calls the LOBPCG algorithm for ``5m > n``, it will most likely break
		internally, so the code tries to call the standard function instead.
		
		It is not that ``n`` should be large for the LOBPCG to work, but rather the
		ratio ``n / m`` should be large. It you call LOBPCG with ``m=1``
		and ``n=10``, it works though ``n`` is small. The method is intended
		for extremely large ``n / m``.
		
		The convergence speed depends basically on two factors:
		
		1. How well relatively separated the seeking eigenvalues are from the rest
		   of the eigenvalues. One can try to vary ``m`` to make this better.
		
		2. How well conditioned the problem is. This can be changed by using proper
		   preconditioning. For example, a rod vibration test problem (under tests
		   directory) is ill-conditioned for large ``n``, so convergence will be
		   slow, unless efficient preconditioning is used. For this specific
		   problem, a good simple preconditioner function would be a linear solve
		   for `A`, which is easy to code since A is tridiagonal.
		
		References
		----------
		.. [1] A. V. Knyazev (2001),
		       Toward the Optimal Preconditioned Eigensolver: Locally Optimal
		       Block Preconditioned Conjugate Gradient Method.
		       SIAM Journal on Scientific Computing 23, no. 2,
		       pp. 517-541. :doi:`10.1137/S1064827500366124`
		
		.. [2] A. V. Knyazev, I. Lashuk, M. E. Argentati, and E. Ovchinnikov
		       (2007), Block Locally Optimal Preconditioned Eigenvalue Xolvers
		       (BLOPEX) in hypre and PETSc. :arxiv:`0705.2626`
		
		.. [3] A. V. Knyazev's C and MATLAB implementations:
		       https://github.com/lobpcg/blopex
		
		Examples
		--------
		
		Solve ``A x = lambda x`` with constraints and preconditioning.
		
		>>> import numpy as np
		>>> from scipy.sparse import spdiags, issparse
		>>> from scipy.sparse.linalg import lobpcg, LinearOperator
		>>> n = 100
		>>> vals = np.arange(1, n + 1)
		>>> A = spdiags(vals, 0, n, n)
		>>> A.toarray()
		array([[  1.,   0.,   0., ...,   0.,   0.,   0.],
		       [  0.,   2.,   0., ...,   0.,   0.,   0.],
		       [  0.,   0.,   3., ...,   0.,   0.,   0.],
		       ...,
		       [  0.,   0.,   0., ...,  98.,   0.,   0.],
		       [  0.,   0.,   0., ...,   0.,  99.,   0.],
		       [  0.,   0.,   0., ...,   0.,   0., 100.]])
		
		Constraints:
		
		>>> Y = np.eye(n, 3)
		
		Initial guess for eigenvectors, should have linearly independent
		columns. Column dimension = number of requested eigenvalues.
		
		>>> rng = np.random.default_rng()
		>>> X = rng.random((n, 3))
		
		Preconditioner in the inverse of A in this example:
		
		>>> invA = spdiags([1./vals], 0, n, n)
		
		The preconditiner must be defined by a function:
		
		>>> def precond( x ):
		...     return invA @ x
		
		The argument x of the preconditioner function is a matrix inside `lobpcg`,
		thus the use of matrix-matrix product ``@``.
		
		The preconditioner function is passed to lobpcg as a `LinearOperator`:
		
		>>> M = LinearOperator(matvec=precond, matmat=precond,
		...                    shape=(n, n), dtype=np.float64)
		
		Let us now solve the eigenvalue problem for the matrix A:
		
		>>> eigenvalues, _ = lobpcg(A, X, Y=Y, M=M, largest=False)
		>>> eigenvalues
		array([4., 5., 6.])
		
		Note that the vectors passed in Y are the eigenvectors of the 3 smallest
		eigenvalues. The results returned are orthogonal to those.
	**/
	static public function lobpcg(A:Dynamic, X:Dynamic, ?B:Dynamic, ?M:Dynamic, ?Y:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?largest:Dynamic, ?verbosityLevel:Dynamic, ?retLambdaHistory:Dynamic, ?retResidualNormsHistory:Dynamic):Dynamic;
	/**
		Partial singular value decomposition of a sparse matrix.
		
		Compute the largest or smallest `k` singular values and corresponding
		singular vectors of a sparse matrix `A`. The order in which the singular
		values are returned is not guaranteed.
		
		In the descriptions below, let ``M, N = A.shape``.
		
		Parameters
		----------
		A : sparse matrix or LinearOperator
		    Matrix to decompose.
		k : int, default: 6
		    Number of singular values and singular vectors to compute.
		    Must satisfy ``1 <= k <= kmax``, where ``kmax=min(M, N)`` for
		    ``solver='propack'`` and ``kmax=min(M, N) - 1`` otherwise.
		ncv : int, optional
		    When ``solver='arpack'``, this is the number of Lanczos vectors
		    generated. See :ref:`'arpack' <sparse.linalg.svds-arpack>` for details.
		    When ``solver='lobpcg'`` or ``solver='propack'``, this parameter is
		    ignored.
		tol : float, optional
		    Tolerance for singular values. Zero (default) means machine precision.
		which : {'LM', 'SM'}
		    Which `k` singular values to find: either the largest magnitude ('LM')
		    or smallest magnitude ('SM') singular values.
		v0 : ndarray, optional
		    The starting vector for iteration; see method-specific
		    documentation (:ref:`'arpack' <sparse.linalg.svds-arpack>`,
		    :ref:`'lobpcg' <sparse.linalg.svds-lobpcg>`), or
		    :ref:`'propack' <sparse.linalg.svds-propack>` for details.
		maxiter : int, optional
		    Maximum number of iterations; see method-specific
		    documentation (:ref:`'arpack' <sparse.linalg.svds-arpack>`,
		    :ref:`'lobpcg' <sparse.linalg.svds-lobpcg>`), or
		    :ref:`'propack' <sparse.linalg.svds-propack>` for details.
		return_singular_vectors : {True, False, "u", "vh"}
		    Singular values are always computed and returned; this parameter
		    controls the computation and return of singular vectors.
		
		    - ``True``: return singular vectors.
		    - ``False``: do not return singular vectors.
		    - ``"u"``: if ``M <= N``, compute only the left singular vectors and
		      return ``None`` for the right singular vectors. Otherwise, compute
		      all singular vectors.
		    - ``"vh"``: if ``M > N``, compute only the right singular vectors and
		      return ``None`` for the left singular vectors. Otherwise, compute
		      all singular vectors.
		
		    If ``solver='propack'``, the option is respected regardless of the
		    matrix shape.
		
		solver :  {'arpack', 'propack', 'lobpcg'}, optional
		        The solver used.
		        :ref:`'arpack' <sparse.linalg.svds-arpack>`,
		        :ref:`'lobpcg' <sparse.linalg.svds-lobpcg>`, and
		        :ref:`'propack' <sparse.linalg.svds-propack>` are supported.
		        Default: `'arpack'`.
		random_state : {None, int, `numpy.random.Generator`,
		                `numpy.random.RandomState`}, optional
		
		    Pseudorandom number generator state used to generate resamples.
		
		    If `random_state` is ``None`` (or `np.random`), the
		    `numpy.random.RandomState` singleton is used.
		    If `random_state` is an int, a new ``RandomState`` instance is used,
		    seeded with `random_state`.
		    If `random_state` is already a ``Generator`` or ``RandomState``
		    instance then that instance is used.
		options : dict, optional
		    A dictionary of solver-specific options. No solver-specific options
		    are currently supported; this parameter is reserved for future use.
		
		Returns
		-------
		u : ndarray, shape=(M, k)
		    Unitary matrix having left singular vectors as columns.
		s : ndarray, shape=(k,)
		    The singular values.
		vh : ndarray, shape=(k, N)
		    Unitary matrix having right singular vectors as rows.
		
		Notes
		-----
		This is a naive implementation using ARPACK or LOBPCG as an eigensolver
		on ``A.conj().T @ A`` or ``A @ A.conj().T``, depending on which one is more
		efficient.
		
		Examples
		--------
		Construct a matrix ``A`` from singular values and vectors.
		
		>>> from scipy.stats import ortho_group
		>>> from scipy.sparse import csc_matrix, diags
		>>> from scipy.sparse.linalg import svds
		>>> rng = np.random.default_rng()
		>>> orthogonal = csc_matrix(ortho_group.rvs(10, random_state=rng))
		>>> s = [0.0001, 0.001, 3, 4, 5]  # singular values
		>>> u = orthogonal[:, :5]         # left singular vectors
		>>> vT = orthogonal[:, 5:].T      # right singular vectors
		>>> A = u @ diags(s) @ vT
		
		With only three singular values/vectors, the SVD approximates the original
		matrix.
		
		>>> u2, s2, vT2 = svds(A, k=3)
		>>> A2 = u2 @ np.diag(s2) @ vT2
		>>> np.allclose(A2, A.toarray(), atol=1e-3)
		True
		
		With all five singular values/vectors, we can reproduce the original
		matrix.
		
		>>> u3, s3, vT3 = svds(A, k=5)
		>>> A3 = u3 @ np.diag(s3) @ vT3
		>>> np.allclose(A3, A.toarray())
		True
		
		The singular values match the expected singular values, and the singular
		vectors are as expected up to a difference in sign.
		
		>>> (np.allclose(s3, s) and
		...  np.allclose(np.abs(u3), np.abs(u.toarray())) and
		...  np.allclose(np.abs(vT3), np.abs(vT.toarray())))
		True
		
		The singular vectors are also orthogonal.
		>>> (np.allclose(u3.T @ u3, np.eye(5)) and
		...  np.allclose(vT3 @ vT3.T, np.eye(5)))
		True
	**/
	static public function svds(A:Dynamic, ?k:Dynamic, ?ncv:Dynamic, ?tol:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?maxiter:Dynamic, ?return_singular_vectors:Dynamic, ?solver:Dynamic, ?random_state:Dynamic, ?options:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic, ?parallel:Dynamic):Dynamic;
}