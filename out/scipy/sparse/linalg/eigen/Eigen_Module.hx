/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen;
@:pythonImport("scipy.sparse.linalg.eigen") extern class Eigen_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Dynamic;
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
		    `k` must be smaller than N. It is not possible to compute all
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
		    Default: ``min(n, 2*k + 1)``
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
		    Default: ``min(n, 2*k + 1)``
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
	static public function eigsh(A:Dynamic, ?k:Dynamic, ?M:Dynamic, ?sigma:Dynamic, ?which:Dynamic, ?v0:Dynamic, ?ncv:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?return_eigenvectors:Dynamic, ?Minv:Dynamic, ?OPinv:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Locally Optimal Block Preconditioned Conjugate Gradient Method (LOBPCG)
		
		LOBPCG is a preconditioned eigensolver for large symmetric positive
		definite (SPD) generalized eigenproblems.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The symmetric linear operator of the problem, usually a
		    sparse matrix.  Often called the "stiffness matrix".
		X : array_like
		    Initial approximation to the k eigenvectors. If A has
		    shape=(n,n) then X should have shape shape=(n,k).
		B : {dense matrix, sparse matrix, LinearOperator}, optional
		    the right hand side operator in a generalized eigenproblem.
		    by default, B = Identity
		    often called the "mass matrix"
		M : {dense matrix, sparse matrix, LinearOperator}, optional
		    preconditioner to A; by default M = Identity
		    M should approximate the inverse of A
		Y : array_like, optional
		    n-by-sizeY matrix of constraints, sizeY < n
		    The iterations will be performed in the B-orthogonal complement
		    of the column-space of Y. Y must be full rank.
		
		Returns
		-------
		w : array
		    Array of k eigenvalues
		v : array
		    An array of k eigenvectors.  V has the same shape as X.
		
		Other Parameters
		----------------
		tol : scalar, optional
		    Solver tolerance (stopping criterion)
		    by default: tol=n*sqrt(eps)
		maxiter : integer, optional
		    maximum number of iterations
		    by default: maxiter=min(n,20)
		largest : bool, optional
		    when True, solve for the largest eigenvalues, otherwise the smallest
		verbosityLevel : integer, optional
		    controls solver output.  default: verbosityLevel = 0.
		retLambdaHistory : boolean, optional
		    whether to return eigenvalue history
		retResidualNormsHistory : boolean, optional
		    whether to return history of residual norms
		
		Examples
		--------
		>>> # Solve A x = lambda B x with constraints and preconditioning.
		>>> n = 100
		>>> vals = [nm.arange( n, dtype = nm.float64 ) + 1]
		>>> # Matrix A.
		>>> operatorA = spdiags( vals, 0, n, n )
		>>> # Matrix B
		>>> operatorB = nm.eye( n, n )
		>>> # Constraints.
		>>> Y = nm.eye( n, 3 )
		>>> # Initial guess for eigenvectors, should have linearly independent
		>>> # columns. Column dimension = number of requested eigenvalues.
		>>> X = sc.rand( n, 3 )
		>>> # Preconditioner - inverse of A.
		>>> ivals = [1./vals[0]]
		>>> def precond( x ):
		    invA = spdiags( ivals, 0, n, n )
		    y = invA  * x
		    if sp.issparse( y ):
		        y = y.toarray()
		
		    return as2d( y )
		
		>>> # Alternative way of providing the same preconditioner.
		>>> #precond = spdiags( ivals, 0, n, n )
		
		>>> tt = time.clock()
		>>> eigs, vecs = lobpcg(X, operatorA, operatorB, blockVectorY=Y,
		>>>                     operatorT=precond,
		>>>                     residualTolerance=1e-4, maxIterations=40,
		>>>                     largest=False, verbosityLevel=1)
		>>> print 'solution time:', time.clock() - tt
		>>> print eigs
		
		
		Notes
		-----
		If both retLambdaHistory and retResidualNormsHistory are True,
		the return tuple has the following format
		(lambda, V, lambda history, residual norms history).
		
		In the following ``n`` denotes the matrix size and ``m`` the number
		of required eigenvalues (smallest or largest).
		
		The LOBPCG code internally solves eigenproblems of the size 3``m`` on every
		iteration by calling the "standard" dense eigensolver, so if ``m`` is not
		small enough compared to ``n``, it does not make sense to call the LOBPCG
		code, but rather one should use the "standard" eigensolver,
		e.g. numpy or scipy function in this case.
		If one calls the LOBPCG algorithm for 5``m``>``n``,
		it will most likely break internally, so the code tries to call the standard
		function instead.
		
		It is not that n should be large for the LOBPCG to work, but rather the
		ratio ``n``/``m`` should be large. It you call the LOBPCG code with ``m``=1
		and ``n``=10, it should work, though ``n`` is small. The method is intended
		for extremely large ``n``/``m``, see e.g., reference [28] in
		http://arxiv.org/abs/0705.2626
		
		The convergence speed depends basically on two factors:
		
		1.  How well relatively separated the seeking eigenvalues are
		    from the rest of the eigenvalues.
		    One can try to vary ``m`` to make this better.
		
		2.  How well conditioned the problem is. This can be changed by using proper
		    preconditioning. For example, a rod vibration test problem (under tests
		    directory) is ill-conditioned for large ``n``, so convergence will be
		    slow, unless efficient preconditioning is used.
		    For this specific problem, a good simple preconditioner function would
		    be a linear solve for A, which is easy to code since A is tridiagonal.
		
		*Acknowledgements*
		
		lobpcg.py code was written by Robert Cimrman.
		Many thanks belong to Andrew Knyazev, the author of the algorithm,
		for lots of advice and support.
		
		References
		----------
		.. [1] A. V. Knyazev (2001),
		       Toward the Optimal Preconditioned Eigensolver: Locally Optimal
		       Block Preconditioned Conjugate Gradient Method.
		       SIAM Journal on Scientific Computing 23, no. 2,
		       pp. 517-541. http://dx.doi.org/10.1137/S1064827500366124
		
		.. [2] A. V. Knyazev, I. Lashuk, M. E. Argentati, and E. Ovchinnikov (2007),
		       Block Locally Optimal Preconditioned Eigenvalue Xolvers (BLOPEX)
		       in hypre and PETSc.  http://arxiv.org/abs/0705.2626
		
		.. [3] A. V. Knyazev's C and MATLAB implementations:
		       http://www-math.cudenver.edu/~aknyazev/software/BLOPEX/
	**/
	static public function lobpcg(A:Dynamic, X:Dynamic, ?B:Dynamic, ?M:Dynamic, ?Y:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?largest:Dynamic, ?verbosityLevel:Dynamic, ?retLambdaHistory:Dynamic, ?retResidualNormsHistory:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Compute the largest k singular values/vectors for a sparse matrix.
		
		Parameters
		----------
		A : {sparse matrix, LinearOperator}
		    Array to compute the SVD on, of shape (M, N)
		k : int, optional
		    Number of singular values and vectors to compute.
		ncv : int, optional
		    The number of Lanczos vectors generated
		    ncv must be greater than k+1 and smaller than n;
		    it is recommended that ncv > 2*k
		    Default: ``min(n, 2*k + 1)``
		tol : float, optional
		    Tolerance for singular values. Zero (default) means machine precision.
		which : str, ['LM' | 'SM'], optional
		    Which `k` singular values to find:
		
		        - 'LM' : largest singular values
		        - 'SM' : smallest singular values
		
		    .. versionadded:: 0.12.0
		v0 : ndarray, optional
		    Starting vector for iteration, of length min(A.shape). Should be an
		    (approximate) right singular vector if N > M and a right singular vector
		    otherwise.
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
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
}