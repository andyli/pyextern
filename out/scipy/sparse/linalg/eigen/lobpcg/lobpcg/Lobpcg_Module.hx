/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen.lobpcg.lobpcg;
@:pythonImport("scipy.sparse.linalg.eigen.lobpcg.lobpcg") extern class Lobpcg_Module {
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
		Changes blockVectorV in place.
	**/
	static public function _applyConstraints(blockVectorV:Dynamic, factYBY:Dynamic, blockVectorBY:Dynamic, blockVectorY:Dynamic):Dynamic;
	static public function _assert_symmetric(M:Dynamic, ?rtol:Dynamic, ?atol:Dynamic):Dynamic;
	static public function _b_orthonormalize(B:Dynamic, blockVectorV:Dynamic, ?blockVectorBV:Dynamic, ?retInvR:Dynamic):Dynamic;
	/**
		Takes a dense numpy array or a sparse matrix or
		a function and makes an operator performing matrix * blockvector
		products.
		
		Examples
		--------
		>>> A = _makeOperator( arrayA, (n, n) )
		>>> vectorB = A( vectorX )
	**/
	static public function _makeOperator(operatorInput:Dynamic, expectedShape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		If the input array is 2D return it, if it is 1D, append a dimension,
		making it a column vector.
	**/
	static public function as2d(ar:Dynamic):Dynamic;
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
		>>> from scipy import matrix
		>>> M = matrix( [[1,2,3],[4,5,6]], dtype='int32' )
		>>> aslinearoperator( M )
		<2x3 LinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	/**
		Raises an AssertionError if two objects are not equal up to desired
		tolerance.
		
		The test is equivalent to ``allclose(actual, desired, rtol, atol)``.
		It compares the difference between `actual` and `desired` to
		``atol + rtol * abs(desired)``.
		
		.. versionadded:: 1.5.0
		
		Parameters
		----------
		actual : array_like
		    Array obtained.
		desired : array_like
		    Array desired.
		rtol : float, optional
		    Relative tolerance.
		atol : float, optional
		    Absolute tolerance.
		equal_nan : bool, optional.
		    If True, NaNs will compare equal.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal up to specified precision.
		
		See Also
		--------
		assert_array_almost_equal_nulp, assert_array_max_ulp
		
		Examples
		--------
		>>> x = [1e-5, 1e-3, 1e-1]
		>>> y = np.arccos(np.cos(x))
		>>> assert_allclose(x, y, rtol=1e-5, atol=0)
	**/
	static public function assert_allclose(actual:Dynamic, desired:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?equal_nan:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Compute the Cholesky decomposition of a matrix, to use in cho_solve
		
		Returns a matrix containing the Cholesky decomposition,
		``A = L L*`` or ``A = U* U`` of a Hermitian positive-definite matrix `a`.
		The return value can be directly used as the first parameter to cho_solve.
		
		.. warning::
		    The returned matrix also contains random data in the entries not
		    used by the Cholesky decomposition. If you need to zero these
		    entries, use the function `cholesky` instead.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky factorization
		    (Default: upper-triangular)
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Matrix whose upper or lower triangle contains the Cholesky factor
		    of `a`. Other parts of the matrix contain random data.
		lower : bool
		    Flag indicating whether the factor is in the lower or upper triangle
		
		Raises
		------
		LinAlgError
		    Raised if decomposition fails.
		
		See also
		--------
		cho_solve : Solve a linear set equations using the Cholesky factorization
		            of a matrix.
	**/
	static public function cho_factor(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Solve the linear equations A x = b, given the Cholesky factorization of A.
		
		Parameters
		----------
		(c, lower) : tuple, (array, bool)
		    Cholesky factorization of a, as given by cho_factor
		b : array
		    Right-hand side
		overwrite_b : bool, optional
		    Whether to overwrite data in b (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		x : array
		    The solution to the system A x = b
		
		See also
		--------
		cho_factor : Cholesky factorization of a matrix
	**/
	static public function cho_solve(c_and_lower:Dynamic, b:Dynamic, ?overwrite_b:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the Cholesky decomposition of a matrix.
		
		Returns the Cholesky decomposition, :math:`A = L L^*` or
		:math:`A = U^* U` of a Hermitian positive-definite matrix A.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to be decomposed
		lower : bool, optional
		    Whether to compute the upper or lower triangular Cholesky
		    factorization.  Default is upper-triangular.
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		c : (M, M) ndarray
		    Upper- or lower-triangular Cholesky factor of `a`.
		
		Raises
		------
		LinAlgError : if decomposition fails.
		
		Examples
		--------
		>>> from scipy import array, linalg, dot
		>>> a = array([[1,-2j],[2j,5]])
		>>> L = linalg.cholesky(a, lower=True)
		>>> L
		array([[ 1.+0.j,  0.+0.j],
		       [ 0.+2.j,  1.+0.j]])
		>>> dot(L, L.T.conj())
		array([[ 1.+0.j,  0.-2.j],
		       [ 0.+2.j,  5.+0.j]])
	**/
	static public function cholesky(a:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?check_finite:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Solve an ordinary or generalized eigenvalue problem for a complex
		Hermitian or real symmetric matrix.
		
		Find eigenvalues w and optionally eigenvectors v of matrix `a`, where
		`b` is positive definite::
		
		                  a v[:,i] = w[i] b v[:,i]
		    v[i,:].conj() a v[:,i] = w[i]
		    v[i,:].conj() b v[:,i] = 1
		
		Parameters
		----------
		a : (M, M) array_like
		    A complex Hermitian or real symmetric matrix whose eigenvalues and
		    eigenvectors will be computed.
		b : (M, M) array_like, optional
		    A complex Hermitian or real symmetric definite positive matrix in.
		    If omitted, identity matrix is assumed.
		lower : bool, optional
		    Whether the pertinent array data is taken from the lower or upper
		    triangle of `a`. (Default: lower)
		eigvals_only : bool, optional
		    Whether to calculate only eigenvalues and no eigenvectors.
		    (Default: both are calculated)
		turbo : bool, optional
		    Use divide and conquer algorithm (faster but expensive in memory,
		    only for generalized eigenvalue problem and if eigvals=None)
		eigvals : tuple (lo, hi), optional
		    Indexes of the smallest and largest (in ascending order) eigenvalues
		    and corresponding eigenvectors to be returned: 0 <= lo <= hi <= M-1.
		    If omitted, all eigenvalues and eigenvectors are returned.
		type : int, optional
		    Specifies the problem type to be solved:
		
		       type = 1: a   v[:,i] = w[i] b v[:,i]
		
		       type = 2: a b v[:,i] = w[i]   v[:,i]
		
		       type = 3: b a v[:,i] = w[i]   v[:,i]
		overwrite_a : bool, optional
		    Whether to overwrite data in `a` (may improve performance)
		overwrite_b : bool, optional
		    Whether to overwrite data in `b` (may improve performance)
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		w : (N,) float ndarray
		    The N (1<=N<=M) selected eigenvalues, in ascending order, each
		    repeated according to its multiplicity.
		v : (M, N) complex ndarray
		    (if eigvals_only == False)
		
		    The normalized selected eigenvector corresponding to the
		    eigenvalue w[i] is the column v[:,i].
		
		    Normalization:
		
		        type 1 and 3: v.conj() a      v  = w
		
		        type 2: inv(v).conj() a  inv(v) = w
		
		        type = 1 or 2: v.conj() b      v  = I
		
		        type = 3: v.conj() inv(b) v  = I
		
		Raises
		------
		LinAlgError :
		    If eigenvalue computation does not converge,
		    an error occurred, or b matrix is not definite positive. Note that
		    if input matrices are not symmetric or hermitian, no error is reported
		    but results will be wrong.
		
		See Also
		--------
		eig : eigenvalues and right eigenvectors for non-symmetric arrays
	**/
	static public function eigh(a:Dynamic, ?b:Dynamic, ?lower:Dynamic, ?eigvals_only:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?turbo:Dynamic, ?eigvals:Dynamic, ?type:Dynamic, ?check_finite:Dynamic):Dynamic;
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
	static public function pause():Dynamic;
	static public var print_function : Dynamic;
	static public function save(ar:Dynamic, fileName:Dynamic):Dynamic;
	/**
		`symeig` is deprecated, use `eigh` instead!
	**/
	static public function symeig(args:Dynamic, kwds:Dynamic):Dynamic;
}