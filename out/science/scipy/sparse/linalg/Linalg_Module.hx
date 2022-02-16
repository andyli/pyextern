/* This file is generated, do not edit! */
package scipy.sparse.linalg;
@:pythonImport("scipy.sparse.linalg") extern class Linalg_Module {
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
	/**
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Notes
		-----
		If 'A' has no .dtype attribute, the data type is determined by calling
		:func:`LinearOperator.matvec()` - set the .dtype attribute to prevent this
		call upon the linear operator creation.
		
		Examples
		--------
		>>> from scipy.sparse.linalg import aslinearoperator
		>>> M = np.array([[1,2,3],[4,5,6]], dtype=np.int32)
		>>> aslinearoperator(M)
		<2x3 MatrixLinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	/**
		Use BIConjugate Gradient iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` and ``A^T x`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		
		
		
		
		               Examples
		               --------
		               >>> from scipy.sparse import csc_matrix
		               >>> from scipy.sparse.linalg import bicg
		               >>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		               >>> b = np.array([2, 4, -1], dtype=float)
		               >>> x, exitCode = bicg(A, b)
		               >>> print(exitCode)            # 0 indicates successful convergence
		               0
		               >>> np.allclose(A.dot(x), b)
		               True
		
		               
	**/
	static public function bicg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use BIConjugate Gradient STABilized iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function bicgstab(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    ``A`` must represent a hermitian, positive definite matrix.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function cg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient Squared iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
	**/
	static public function cgs(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
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
		Compute the action of the matrix exponential of A on B.
		
		Parameters
		----------
		A : transposable linear operator
		    The operator whose exponential is of interest.
		B : ndarray
		    The matrix or vector to be multiplied by the matrix exponential of A.
		start : scalar, optional
		    The starting time point of the sequence.
		stop : scalar, optional
		    The end time point of the sequence, unless `endpoint` is set to False.
		    In that case, the sequence consists of all but the last of ``num + 1``
		    evenly spaced time points, so that `stop` is excluded.
		    Note that the step size changes when `endpoint` is False.
		num : int, optional
		    Number of time points to use.
		endpoint : bool, optional
		    If True, `stop` is the last time point.  Otherwise, it is not included.
		
		Returns
		-------
		expm_A_B : ndarray
		     The result of the action :math:`e^{t_k A} B`.
		
		Notes
		-----
		The optional arguments defining the sequence of evenly spaced time points
		are compatible with the arguments of `numpy.linspace`.
		
		The output ndarray shape is somewhat complicated so I explain it here.
		The ndim of the output could be either 1, 2, or 3.
		It would be 1 if you are computing the expm action on a single vector
		at a single time point.
		It would be 2 if you are computing the expm action on a vector
		at multiple time points, or if you are computing the expm action
		on a matrix at a single time point.
		It would be 3 if you want the action on a matrix with multiple
		columns at multiple time points.
		If multiple time points are requested, expm_A_B[0] will always
		be the action of the expm at the first time point,
		regardless of whether the action is on a vector or a matrix.
		
		References
		----------
		.. [1] Awad H. Al-Mohy and Nicholas J. Higham (2011)
		       "Computing the Action of the Matrix Exponential,
		       with an Application to Exponential Integrators."
		       SIAM Journal on Scientific Computing,
		       33 (2). pp. 488-511. ISSN 1064-8275
		       http://eprints.ma.man.ac.uk/1591/
		
		.. [2] Nicholas J. Higham and Awad H. Al-Mohy (2010)
		       "Computing Matrix Functions."
		       Acta Numerica,
		       19. 159-208. ISSN 0962-4929
		       http://eprints.ma.man.ac.uk/1451/
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import expm, expm_multiply
		>>> A = csc_matrix([[1, 0], [0, 1]])
		>>> A.toarray()
		array([[1, 0],
		       [0, 1]], dtype=int64)
		>>> B = np.array([np.exp(-1.), np.exp(-2.)])
		>>> B
		array([ 0.36787944,  0.13533528])
		>>> expm_multiply(A, B, start=1, stop=2, num=3, endpoint=True)
		array([[ 1.        ,  0.36787944],
		       [ 1.64872127,  0.60653066],
		       [ 2.71828183,  1.        ]])
		>>> expm(A).dot(B)                  # Verify 1st timestep
		array([ 1.        ,  0.36787944])
		>>> expm(1.5*A).dot(B)              # Verify 2nd timestep
		array([ 1.64872127,  0.60653066])
		>>> expm(2*A).dot(B)                # Verify 3rd timestep
		array([ 2.71828183,  1.        ])
	**/
	static public function expm_multiply(A:Dynamic, B:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?num:Dynamic, ?endpoint:Dynamic):Dynamic;
	/**
		Return a function for solving a sparse linear system, with A pre-factorized.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input.
		
		Returns
		-------
		solve : callable
		    To solve the linear system of equations given in `A`, the `solve`
		    callable should be passed an ndarray of shape (N,).
		
		Examples
		--------
		>>> from scipy.sparse.linalg import factorized
		>>> A = np.array([[ 3. ,  2. , -1. ],
		...               [ 2. , -2. ,  4. ],
		...               [-1. ,  0.5, -1. ]])
		>>> solve = factorized(A) # Makes LU decomposition.
		>>> rhs1 = np.array([1, -2, 0])
		>>> solve(rhs1) # Uses the LU factors.
		array([ 1., -2., -2.])
	**/
	static public function factorized(A:Dynamic):haxe.Constraints.Function;
	/**
		Solve a matrix equation using flexible GCROT(m,k) algorithm.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0 : ndarray
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
		M : {sparse matrix, ndarray, LinearOperator}, optional
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
		x : ndarray
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
		Use Generalized Minimal RESidual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : int
		    Provides convergence information:
		      * 0  : successful exit
		      * >0 : convergence to tolerance not achieved, number of iterations
		      * <0 : illegal input or breakdown
		
		Other parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution (a vector of zeros by default).
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		restart : int, optional
		    Number of iterations between restarts. Larger values increase
		    iteration cost, but may be necessary for convergence.
		    Default is 20.
		maxiter : int, optional
		    Maximum number of iterations (restart cycles).  Iteration will stop
		    after maxiter steps even if the specified tolerance has not been
		    achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Inverse of the preconditioner of A.  M should approximate the
		    inverse of A and be easy to solve for (see Notes).  Effective
		    preconditioning dramatically improves the rate of convergence,
		    which implies that fewer iterations are needed to reach a given
		    error tolerance.  By default, no preconditioner is used.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as `callback(args)`, where `args` are selected by `callback_type`.
		callback_type : {'x', 'pr_norm', 'legacy'}, optional
		    Callback function argument requested:
		      - ``x``: current iterate (ndarray), called on every restart
		      - ``pr_norm``: relative (preconditioned) residual norm (float),
		        called on every inner iteration
		      - ``legacy`` (default): same as ``pr_norm``, but also changes the
		        meaning of 'maxiter' to count inner iterations instead of restart
		        cycles.
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
		
		  # Construct a linear operator that computes P^-1 @ x.
		  import scipy.sparse.linalg as spla
		  M_x = lambda x: spla.spsolve(P, x)
		  M = spla.LinearOperator((n, n), M_x)
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import gmres
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = gmres(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function gmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?restart:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?restrt:Dynamic, ?atol:Dynamic, ?callback_type:Dynamic):Dynamic;
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
		Solve a matrix equation using the LGMRES algorithm.
		
		The LGMRES algorithm [1]_ [2]_ is designed to avoid some problems
		in the convergence in restarted GMRES, and often converges in fewer
		iterations.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0 : ndarray
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
		M : {sparse matrix, ndarray, LinearOperator}, optional
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function, optional
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		inner_m : int, optional
		    Number of inner GMRES iterations per each outer iteration.
		outer_k : int, optional
		    Number of vectors to carry between inner GMRES iterations.
		    According to [1]_, good values are in the range of 1...3.
		    However, note that if you want to use the additional vectors to
		    accelerate solving multiple similar problems, larger values may
		    be beneficial.
		outer_v : list of tuples, optional
		    List containing tuples ``(v, Av)`` of vectors and corresponding
		    matrix-vector products, used to augment the Krylov subspace, and
		    carried between inner GMRES iterations. The element ``Av`` can
		    be `None` if the matrix-vector product should be re-evaluated.
		    This parameter is modified in-place by `lgmres`, and can be used
		    to pass "guess" vectors in and out of the algorithm when solving
		    similar problems.
		store_outer_Av : bool, optional
		    Whether LGMRES should store also A@v in addition to vectors `v`
		    in the `outer_v` list. Default is True.
		prepend_outer_v : bool, optional
		    Whether to put outer_v augmentation vectors before Krylov iterates.
		    In standard LGMRES, prepend_outer_v=False.
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : int
		    Provides convergence information:
		
		        - 0  : successful exit
		        - >0 : convergence to tolerance not achieved, number of iterations
		        - <0 : illegal input or breakdown
		
		Notes
		-----
		The LGMRES algorithm [1]_ [2]_ is designed to avoid the
		slowing of convergence in restarted GMRES, due to alternating
		residual vectors. Typically, it often outperforms GMRES(m) of
		comparable memory requirements by some measure, or at least is not
		much worse.
		
		Another advantage in this algorithm is that you can supply it with
		'guess' vectors in the `outer_v` argument that augment the Krylov
		subspace. If the solution lies close to the span of these vectors,
		the algorithm converges faster. This can be useful if several very
		similar matrices need to be inverted one after another, such as in
		Newton-Krylov iteration where the Jacobian matrix often changes
		little in the nonlinear steps.
		
		References
		----------
		.. [1] A.H. Baker and E.R. Jessup and T. Manteuffel, "A Technique for
		         Accelerating the Convergence of Restarted GMRES", SIAM J. Matrix
		         Anal. Appl. 26, 962 (2005).
		.. [2] A.H. Baker, "On Improving the Performance of the Linear Solver
		         restarted GMRES", PhD thesis, University of Colorado (2003).
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import lgmres
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = lgmres(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic, ?store_outer_Av:Dynamic, ?prepend_outer_v:Dynamic, ?atol:Dynamic):Dynamic;
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
		Iterative solver for least-squares problems.
		
		lsmr solves the system of linear equations ``Ax = b``. If the system
		is inconsistent, it solves the least-squares problem ``min ||b - Ax||_2``.
		``A`` is a rectangular matrix of dimension m-by-n, where all cases are
		allowed: m = n, m > n, or m < n. ``b`` is a vector of length m.
		The matrix A may be dense or sparse (usually sparse).
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    Matrix A in the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` and ``A^H x`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : array_like, shape (m,)
		    Vector ``b`` in the linear system.
		damp : float
		    Damping factor for regularized least-squares. `lsmr` solves
		    the regularized least-squares problem::
		
		     min ||(b) - (  A   )x||
		         ||(0)   (damp*I) ||_2
		
		    where damp is a scalar.  If damp is None or 0, the system
		    is solved without regularization. Default is 0.
		atol, btol : float, optional
		    Stopping tolerances. `lsmr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, `lsmr` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, `lsmr` terminates when ``norm(A^H r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (default),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final ``x`` will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of ``A`` and ``b`` respectively.  For example, if the entries
		    of ``A`` have 7 correct digits, set ``atol = 1e-7``. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    `lsmr` terminates if an estimate of ``cond(A)`` exceeds
		    `conlim`.  For compatible systems ``Ax = b``, conlim could be
		    as large as 1.0e+12 (say).  For least-squares problems,
		    `conlim` should be less than 1.0e+8. If `conlim` is None, the
		    default value is 1e+8.  Maximum precision can be obtained by
		    setting ``atol = btol = conlim = 0``, but the number of
		    iterations may then be excessive. Default is 1e8.
		maxiter : int, optional
		    `lsmr` terminates if the number of iterations reaches
		    `maxiter`.  The default is ``maxiter = min(m, n)``.  For
		    ill-conditioned systems, a larger value of `maxiter` may be
		    needed. Default is False.
		show : bool, optional
		    Print iterations logs if ``show=True``. Default is False.
		x0 : array_like, shape (n,), optional
		    Initial guess of ``x``, if None zeros are used. Default is None.
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.  If x0 was given, then x=x0 is a
		                  solution.
		              = 1 means x is an approximate solution to A@x = B,
		                  according to atol and btol.
		              = 2 means x approximately solves the least-squares problem
		                  according to atol.
		              = 3 means COND(A) seems to be greater than CONLIM.
		              = 4 is the same as 1 with atol = btol = eps (machine
		                  precision)
		              = 5 is the same as 2 with atol = eps.
		              = 6 is the same as 3 with CONLIM = 1/eps.
		              = 7 means ITN reached maxiter before the other stopping
		                  conditions were satisfied.
		
		itn : int
		    Number of iterations used.
		normr : float
		    ``norm(b-Ax)``
		normar : float
		    ``norm(A^H (b - Ax))``
		norma : float
		    ``norm(A)``
		conda : float
		    Condition number of A.
		normx : float
		    ``norm(x)``
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] D. C.-L. Fong and M. A. Saunders,
		       "LSMR: An iterative algorithm for sparse least-squares problems",
		       SIAM J. Sci. Comput., vol. 33, pp. 2950-2971, 2011.
		       :arxiv:`1006.0758`
		.. [2] LSMR Software, https://web.stanford.edu/group/SOL/software/lsmr/
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import lsmr
		>>> A = csc_matrix([[1., 0.], [1., 1.], [0., 1.]], dtype=float)
		
		The first example has the trivial solution `[0, 0]`
		
		>>> b = np.array([0., 0., 0.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		0
		>>> x
		array([0., 0.])
		
		The stopping code `istop=0` returned indicates that a vector of zeros was
		found as a solution. The returned solution `x` indeed contains `[0., 0.]`.
		The next example has a non-trivial solution:
		
		>>> b = np.array([1., 0., -1.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		1
		>>> x
		array([ 1., -1.])
		>>> itn
		1
		>>> normr
		4.440892098500627e-16
		
		As indicated by `istop=1`, `lsmr` found a solution obeying the tolerance
		limits. The given solution `[1., -1.]` obviously solves the equation. The
		remaining return values include information about the number of iterations
		(`itn=1`) and the remaining difference of left and right side of the solved
		equation.
		The final example demonstrates the behavior in the case where there is no
		solution for the equation:
		
		>>> b = np.array([1., 0.01, -1.], dtype=float)
		>>> x, istop, itn, normr = lsmr(A, b)[:4]
		>>> istop
		2
		>>> x
		array([ 1.00333333, -0.99666667])
		>>> A.dot(x)-b
		array([ 0.00333333, -0.00333333,  0.00333333])
		>>> normr
		0.005773502691896255
		
		`istop` indicates that the system is inconsistent and thus `x` is rather an
		approximate solution to the corresponding least-squares problem. `normr`
		contains the minimal distance that was found.
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Find the least-squares solution to a large, sparse, linear system
		of equations.
		
		The function solves ``Ax = b``  or  ``min ||Ax - b||^2`` or
		``min ||Ax - b||^2 + d^2 ||x - x0||^2``.
		
		The matrix A may be square or rectangular (over-determined or
		under-determined), and may have any rank.
		
		::
		
		  1. Unsymmetric equations --    solve  Ax = b
		
		  2. Linear least squares  --    solve  Ax = b
		                                 in the least-squares sense
		
		  3. Damped least squares  --    solve  (   A    )*x = (    b    )
		                                        ( damp*I )     ( damp*x0 )
		                                 in the least-squares sense
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    Representation of an m-by-n matrix.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` and ``A^T x`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : array_like, shape (m,)
		    Right-hand side vector ``b``.
		damp : float
		    Damping coefficient. Default is 0.
		atol, btol : float, optional
		    Stopping tolerances. `lsqr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, `lsqr` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, `lsqr` terminates when ``norm(A^H r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (default),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final ``x`` will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of ``A`` and ``b`` respectively.  For example, if the entries
		    of ``A`` have 7 correct digits, set ``atol = 1e-7``. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    Another stopping tolerance.  lsqr terminates if an estimate of
		    ``cond(A)`` exceeds `conlim`.  For compatible systems ``Ax =
		    b``, `conlim` could be as large as 1.0e+12 (say).  For
		    least-squares problems, conlim should be less than 1.0e+8.
		    Maximum precision can be obtained by setting ``atol = btol =
		    conlim = zero``, but the number of iterations may then be
		    excessive. Default is 1e8.
		iter_lim : int, optional
		    Explicit limitation on number of iterations (for safety).
		show : bool, optional
		    Display an iteration log. Default is False.
		calc_var : bool, optional
		    Whether to estimate diagonals of ``(A'A + damp^2*I)^{-1}``.
		x0 : array_like, shape (n,), optional
		    Initial guess of x, if None zeros are used. Default is None.
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		x : ndarray of float
		    The final solution.
		istop : int
		    Gives the reason for termination.
		    1 means x is an approximate solution to Ax = b.
		    2 means x approximately solves the least-squares problem.
		itn : int
		    Iteration number upon termination.
		r1norm : float
		    ``norm(r)``, where ``r = b - Ax``.
		r2norm : float
		    ``sqrt( norm(r)^2  +  damp^2 * norm(x - x0)^2 )``.  Equal to `r1norm`
		    if ``damp == 0``.
		anorm : float
		    Estimate of Frobenius norm of ``Abar = [[A]; [damp*I]]``.
		acond : float
		    Estimate of ``cond(Abar)``.
		arnorm : float
		    Estimate of ``norm(A'@r - damp^2*(x - x0))``.
		xnorm : float
		    ``norm(x)``
		var : ndarray of float
		    If ``calc_var`` is True, estimates all diagonals of
		    ``(A'A)^{-1}`` (if ``damp == 0``) or more generally ``(A'A +
		    damp^2*I)^{-1}``.  This is well defined if A has full column
		    rank or ``damp > 0``.  (Not sure what var means if ``rank(A)
		    < n`` and ``damp = 0.``)
		
		Notes
		-----
		LSQR uses an iterative method to approximate the solution.  The
		number of iterations required to reach a certain accuracy depends
		strongly on the scaling of the problem.  Poor scaling of the rows
		or columns of A should therefore be avoided where possible.
		
		For example, in problem 1 the solution is unaltered by
		row-scaling.  If a row of A is very small or large compared to
		the other rows of A, the corresponding row of ( A  b ) should be
		scaled up or down.
		
		In problems 1 and 2, the solution x is easily recovered
		following column-scaling.  Unless better information is known,
		the nonzero columns of A should be scaled so that they all have
		the same Euclidean norm (e.g., 1.0).
		
		In problem 3, there is no freedom to re-scale if damp is
		nonzero.  However, the value of damp should be assigned only
		after attention has been paid to the scaling of A.
		
		The parameter damp is intended to help regularize
		ill-conditioned systems, by preventing the true solution from
		being very large.  Another aid to regularization is provided by
		the parameter acond, which may be used to terminate iterations
		before the computed solution becomes very large.
		
		If some initial estimate ``x0`` is known and if ``damp == 0``,
		one could proceed as follows:
		
		  1. Compute a residual vector ``r0 = b - A@x0``.
		  2. Use LSQR to solve the system  ``A@dx = r0``.
		  3. Add the correction dx to obtain a final solution ``x = x0 + dx``.
		
		This requires that ``x0`` be available before and after the call
		to LSQR.  To judge the benefits, suppose LSQR takes k1 iterations
		to solve A@x = b and k2 iterations to solve A@dx = r0.
		If x0 is "good", norm(r0) will be smaller than norm(b).
		If the same stopping tolerances atol and btol are used for each
		system, k1 and k2 will be similar, but the final solution x0 + dx
		should be more accurate.  The only way to reduce the total work
		is to use a larger stopping tolerance for the second system.
		If some value btol is suitable for A@x = b, the larger value
		btol*norm(b)/norm(r0)  should be suitable for A@dx = r0.
		
		Preconditioning is another way to reduce the number of iterations.
		If it is possible to solve a related system ``M@x = b``
		efficiently, where M approximates A in some helpful way (e.g. M -
		A has low rank or its elements are small relative to those of A),
		LSQR may converge more rapidly on the system ``A@M(inverse)@z =
		b``, after which x can be recovered by solving M@x = z.
		
		If A is symmetric, LSQR should not be used!
		
		Alternatives are the symmetric conjugate-gradient method (cg)
		and/or SYMMLQ.  SYMMLQ is an implementation of symmetric cg that
		applies to any symmetric A and will converge more rapidly than
		LSQR.  If A is positive definite, there are other implementations
		of symmetric cg that require slightly less work per iteration than
		SYMMLQ (but will take the same number of iterations).
		
		References
		----------
		.. [1] C. C. Paige and M. A. Saunders (1982a).
		       "LSQR: An algorithm for sparse linear equations and
		       sparse least squares", ACM TOMS 8(1), 43-71.
		.. [2] C. C. Paige and M. A. Saunders (1982b).
		       "Algorithm 583.  LSQR: Sparse linear equations and least
		       squares problems", ACM TOMS 8(2), 195-209.
		.. [3] M. A. Saunders (1995).  "Solution of sparse rectangular
		       systems using LSQR and CRAIG", BIT 35, 588-604.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import lsqr
		>>> A = csc_matrix([[1., 0.], [1., 1.], [0., 1.]], dtype=float)
		
		The first example has the trivial solution `[0, 0]`
		
		>>> b = np.array([0., 0., 0.], dtype=float)
		>>> x, istop, itn, normr = lsqr(A, b)[:4]
		>>> istop
		0
		>>> x
		array([ 0.,  0.])
		
		The stopping code `istop=0` returned indicates that a vector of zeros was
		found as a solution. The returned solution `x` indeed contains `[0., 0.]`.
		The next example has a non-trivial solution:
		
		>>> b = np.array([1., 0., -1.], dtype=float)
		>>> x, istop, itn, r1norm = lsqr(A, b)[:4]
		>>> istop
		1
		>>> x
		array([ 1., -1.])
		>>> itn
		1
		>>> r1norm
		4.440892098500627e-16
		
		As indicated by `istop=1`, `lsqr` found a solution obeying the tolerance
		limits. The given solution `[1., -1.]` obviously solves the equation. The
		remaining return values include information about the number of iterations
		(`itn=1`) and the remaining difference of left and right side of the solved
		equation.
		The final example demonstrates the behavior in the case where there is no
		solution for the equation:
		
		>>> b = np.array([1., 0.01, -1.], dtype=float)
		>>> x, istop, itn, r1norm = lsqr(A, b)[:4]
		>>> istop
		2
		>>> x
		array([ 1.00333333, -0.99666667])
		>>> A.dot(x)-b
		array([ 0.00333333, -0.00333333,  0.00333333])
		>>> r1norm
		0.005773502691896255
		
		`istop` indicates that the system is inconsistent and thus `x` is rather an
		approximate solution to the corresponding least-squares problem. `r1norm`
		contains the norm of the minimal residual that was found.
	**/
	static public function lsqr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?iter_lim:Dynamic, ?show:Dynamic, ?calc_var:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Use MINimum RESidual iteration to solve Ax=b
		
		MINRES minimizes norm(Ax - b) for a real symmetric matrix A.  Unlike
		the Conjugate Gradient method, A can be indefinite or singular.
		
		If shift != 0 then the method solves (A - shift*I)x = b
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real symmetric N-by-N matrix of the linear system
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		shift : float
		    Value to apply to the system ``(A - shift * I)x = b``. Default is 0.
		tol : float
		    Tolerance to achieve. The algorithm terminates when the relative
		    residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, ndarray, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		show : bool
		    If ``True``, print out a summary and metrics related to the solution
		    during iterations. Default is ``False``.
		check : bool
		    If ``True``, run additional input validation to check that `A` and
		    `M` (if specified) are symmetric. Default is ``False``.
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import minres
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> A = A + A.T
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = minres(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
		
		References
		----------
		Solution of sparse indefinite systems of linear equations,
		    C. C. Paige and M. A. Saunders (1975),
		    SIAM J. Numer. Anal. 12(4), pp. 617-629.
		    https://web.stanford.edu/group/SOL/software/minres/
		
		This file is a translation of the following MATLAB implementation:
		    https://web.stanford.edu/group/SOL/software/minres/minres-matlab.zip
	**/
	static public function minres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?shift:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?show:Dynamic, ?check:Dynamic):Dynamic;
	/**
		Norm of a sparse matrix
		
		This function is able to return one of seven different matrix norms,
		depending on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : a sparse matrix
		    Input sparse matrix.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		
		Returns
		-------
		n : float or ndarray
		
		Notes
		-----
		Some of the ord are not implemented because some associated functions like,
		_multi_svd_norm, are not yet available for sparse matrix.
		
		This docstring is modified based on numpy.linalg.norm.
		https://github.com/numpy/numpy/blob/master/numpy/linalg/linalg.py
		
		The following norms can be calculated:
		
		=====  ============================
		ord    norm for sparse matrices
		=====  ============================
		None   Frobenius norm
		'fro'  Frobenius norm
		inf    max(sum(abs(x), axis=1))
		-inf   min(sum(abs(x), axis=1))
		0      abs(x).sum(axis=axis)
		1      max(sum(abs(x), axis=0))
		-1     min(sum(abs(x), axis=0))
		2      Not implemented
		-2     Not implemented
		other  Not implemented
		=====  ============================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		    Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.sparse import *
		>>> import numpy as np
		>>> from scipy.sparse.linalg import norm
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1, 0, 1, 2, 3, 4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1, 0, 1],
		       [ 2, 3, 4]])
		
		>>> b = csr_matrix(b)
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(b, np.inf)
		9
		>>> norm(b, -np.inf)
		2
		>>> norm(b, 1)
		7
		>>> norm(b, -1)
		6
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Compute a lower bound of the 1-norm of a sparse matrix.
		
		Parameters
		----------
		A : ndarray or other linear operator
		    A linear operator that can be transposed and that can
		    produce matrix products.
		t : int, optional
		    A positive parameter controlling the tradeoff between
		    accuracy versus time and memory usage.
		    Larger values take longer and use more memory
		    but give more accurate output.
		itmax : int, optional
		    Use at most this many iterations.
		compute_v : bool, optional
		    Request a norm-maximizing linear operator input vector if True.
		compute_w : bool, optional
		    Request a norm-maximizing linear operator output vector if True.
		
		Returns
		-------
		est : float
		    An underestimate of the 1-norm of the sparse matrix.
		v : ndarray, optional
		    The vector such that ||Av||_1 == est*||v||_1.
		    It can be thought of as an input to the linear operator
		    that gives an output with particularly large norm.
		w : ndarray, optional
		    The vector Av which has relatively large 1-norm.
		    It can be thought of as an output of the linear operator
		    that is relatively large in norm compared to the input.
		
		Notes
		-----
		This is algorithm 2.4 of [1].
		
		In [2] it is described as follows.
		"This algorithm typically requires the evaluation of
		about 4t matrix-vector products and almost invariably
		produces a norm estimate (which is, in fact, a lower
		bound on the norm) correct to within a factor 3."
		
		.. versionadded:: 0.13.0
		
		References
		----------
		.. [1] Nicholas J. Higham and Francoise Tisseur (2000),
		       "A Block Algorithm for Matrix 1-Norm Estimation,
		       with an Application to 1-Norm Pseudospectra."
		       SIAM J. Matrix Anal. Appl. Vol. 21, No. 4, pp. 1185-1201.
		
		.. [2] Awad H. Al-Mohy and Nicholas J. Higham (2009),
		       "A new scaling and squaring algorithm for the matrix exponential."
		       SIAM J. Matrix Anal. Appl. Vol. 31, No. 3, pp. 970-989.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import onenormest
		>>> A = csc_matrix([[1., 0., 0.], [5., 8., 2.], [0., -1., 0.]], dtype=float)
		>>> A.toarray()
		array([[ 1.,  0.,  0.],
		       [ 5.,  8.,  2.],
		       [ 0., -1.,  0.]])
		>>> onenormest(A)
		9.0
		>>> np.linalg.norm(A.toarray(), ord=1)
		9.0
	**/
	static public function onenormest(A:Dynamic, ?t:Dynamic, ?itmax:Dynamic, ?compute_v:Dynamic, ?compute_w:Dynamic):Float;
	/**
		Use Quasi-Minimal Residual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		    Alternatively, ``A`` can be a linear operator which can
		    produce ``Ax`` and ``A^T x`` using, e.g.,
		    ``scipy.sparse.linalg.LinearOperator``.
		b : ndarray
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0 : ndarray
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b), atol)``.
		    The default for ``atol`` is ``'legacy'``, which emulates
		    a different legacy behavior.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M1 : {sparse matrix, ndarray, LinearOperator}
		    Left preconditioner for A.
		M2 : {sparse matrix, ndarray, LinearOperator}
		    Right preconditioner for A. Used together with the left
		    preconditioner M1.  The matrix M1@A@M2 should have better
		    conditioned than A alone.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		
		See Also
		--------
		LinearOperator
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import qmr
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = qmr(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function qmr(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M1:Dynamic, ?M2:Dynamic, ?callback:Dynamic, ?atol:Dynamic):Dynamic;
	/**
		Compute an incomplete LU decomposition for a sparse, square matrix.
		
		The resulting object is an approximation to the inverse of `A`.
		
		Parameters
		----------
		A : (N, N) array_like
		    Sparse matrix to factorize
		drop_tol : float, optional
		    Drop tolerance (0 <= tol <= 1) for an incomplete LU decomposition.
		    (default: 1e-4)
		fill_factor : float, optional
		    Specifies the fill ratio upper bound (>= 1.0) for ILU. (default: 10)
		drop_rule : str, optional
		    Comma-separated string of drop rules to use.
		    Available rules: ``basic``, ``prows``, ``column``, ``area``,
		    ``secondary``, ``dynamic``, ``interp``. (Default: ``basic,area``)
		
		    See SuperLU documentation for details.
		
		Remaining other options
		    Same as for `splu`
		
		Returns
		-------
		invA_approx : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		splu : complete LU decomposition
		
		Notes
		-----
		To improve the better approximation to the inverse, you may need to
		increase `fill_factor` AND decrease `drop_tol`.
		
		This function uses the SuperLU library.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import spilu
		>>> A = csc_matrix([[1., 0., 0.], [5., 0., 2.], [0., -1., 0.]], dtype=float)
		>>> B = spilu(A)
		>>> x = np.array([1., 2., 3.], dtype=float)
		>>> B.solve(x)
		array([ 1. , -3. , -1.5])
		>>> A.dot(B.solve(x))
		array([ 1.,  2.,  3.])
		>>> B.solve(A.dot(x))
		array([ 1.,  2.,  3.])
	**/
	static public function spilu(A:Dynamic, ?drop_tol:Dynamic, ?fill_factor:Dynamic, ?drop_rule:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
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
		.. [1] SuperLU https://portal.nersc.gov/project/sparse/superlu/
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import splu
		>>> A = csc_matrix([[1., 0., 0.], [5., 0., 2.], [0., -1., 0.]], dtype=float)
		>>> B = splu(A)
		>>> x = np.array([1., 2., 3.], dtype=float)
		>>> B.solve(x)
		array([ 1. , -3. , -1.5])
		>>> A.dot(B.solve(x))
		array([ 1.,  2.,  3.])
		>>> B.solve(A.dot(x))
		array([ 1.,  2.,  3.])
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
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
	/**
		Solve the equation ``A x = b`` for `x`, assuming A is a triangular matrix.
		
		Parameters
		----------
		A : (M, M) sparse matrix
		    A sparse square triangular matrix. Should be in CSR format.
		b : (M,) or (M, N) array_like
		    Right-hand side matrix in ``A x = b``
		lower : bool, optional
		    Whether `A` is a lower or upper triangular matrix.
		    Default is lower triangular matrix.
		overwrite_A : bool, optional
		    Allow changing `A`. The indices of `A` are going to be sorted and zero
		    entries are going to be removed.
		    Enabling gives a performance gain. Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b`.
		    Enabling gives a performance gain. Default is False.
		    If `overwrite_b` is True, it should be ensured that
		    `b` has an appropriate dtype to be able to store the result.
		unit_diagonal : bool, optional
		    If True, diagonal elements of `a` are assumed to be 1 and will not be
		    referenced.
		
		    .. versionadded:: 1.4.0
		
		Returns
		-------
		x : (M,) or (M, N) ndarray
		    Solution to the system ``A x = b``. Shape of return matches shape
		    of `b`.
		
		Raises
		------
		LinAlgError
		    If `A` is singular or not triangular.
		ValueError
		    If shape of `A` or shape of `b` do not match the requirements.
		
		Notes
		-----
		.. versionadded:: 0.19.0
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> from scipy.sparse.linalg import spsolve_triangular
		>>> A = csr_matrix([[3, 0, 0], [1, -1, 0], [2, 0, 1]], dtype=float)
		>>> B = np.array([[2, 0], [-1, 0], [2, 0]], dtype=float)
		>>> x = spsolve_triangular(A, B)
		>>> np.allclose(A.dot(x), B)
		True
	**/
	static public function spsolve_triangular(A:Dynamic, b:Dynamic, ?lower:Dynamic, ?overwrite_A:Dynamic, ?overwrite_b:Dynamic, ?unit_diagonal:Dynamic):Dynamic;
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
	/**
		Use Transpose-Free Quasi-Minimal Residual iteration to solve ``Ax = b``.
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		    Alternatively, `A` can be a linear operator which can
		    produce ``Ax`` using, e.g.,
		    `scipy.sparse.linalg.LinearOperator`.
		b : {ndarray}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0 : {ndarray}
		    Starting guess for the solution.
		tol, atol : float, optional
		    Tolerances for convergence, ``norm(residual) <= max(tol*norm(b-Ax0), atol)``.
		    The default for `tol` is 1.0e-5.
		    The default for `atol` is ``tol * norm(b-Ax0)``.
		
		    .. warning::
		
		       The default value for `atol` will be changed in a future release.
		       For future compatibility, specify `atol` explicitly.
		maxiter : int, optional
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		    Default is ``min(10000, ndofs * 10)``, where ``ndofs = A.shape[0]``.
		M : {sparse matrix, ndarray, LinearOperator}
		    Inverse of the preconditioner of A.  M should approximate the
		    inverse of A and be easy to solve for (see Notes).  Effective
		    preconditioning dramatically improves the rate of convergence,
		    which implies that fewer iterations are needed to reach a given
		    error tolerance.  By default, no preconditioner is used.
		callback : function, optional
		    User-supplied function to call after each iteration.  It is called
		    as `callback(xk)`, where `xk` is the current solution vector.
		show : bool, optional
		    Specify ``show = True`` to show the convergence, ``show = False`` is
		    to close the output of the convergence.
		    Default is `False`.
		
		Returns
		-------
		x : ndarray
		    The converged solution.
		info : int
		    Provides convergence information:
		
		        - 0  : successful exit
		        - >0 : convergence to tolerance not achieved, number of iterations
		        - <0 : illegal input or breakdown
		
		Notes
		-----
		The Transpose-Free QMR algorithm is derived from the CGS algorithm.
		However, unlike CGS, the convergence curves for the TFQMR method is
		smoothed by computing a quasi minimization of the residual norm. The
		implementation supports left preconditioner, and the "residual norm"
		to compute in convergence criterion is actually an upper bound on the
		actual residual norm ``||b - Axk||``.
		
		References
		----------
		.. [1] R. W. Freund, A Transpose-Free Quasi-Minimal Residual Algorithm for
		       Non-Hermitian Linear Systems, SIAM J. Sci. Comput., 14(2), 470-482,
		       1993.
		.. [2] Y. Saad, Iterative Methods for Sparse Linear Systems, 2nd edition,
		       SIAM, Philadelphia, 2003.
		.. [3] C. T. Kelley, Iterative Methods for Linear and Nonlinear Equations,
		       number 16 in Frontiers in Applied Mathematics, SIAM, Philadelphia,
		       1995.
		
		Examples
		--------
		>>> from scipy.sparse import csc_matrix
		>>> from scipy.sparse.linalg import tfqmr
		>>> A = csc_matrix([[3, 2, 0], [1, -1, 0], [0, 5, 1]], dtype=float)
		>>> b = np.array([2, 4, -1], dtype=float)
		>>> x, exitCode = tfqmr(A, b)
		>>> print(exitCode)            # 0 indicates successful convergence
		0
		>>> np.allclose(A.dot(x), b)
		True
	**/
	static public function tfqmr(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?atol:Dynamic, ?show:Dynamic):Dynamic;
	/**
		Select default sparse direct solver to be used.
		
		Parameters
		----------
		useUmfpack : bool, optional
		    Use UMFPACK over SuperLU. Has effect only if scikits.umfpack is
		    installed. Default: True
		assumeSortedIndices : bool, optional
		    Allow UMFPACK to skip the step of sorting indices for a CSR/CSC matrix.
		    Has effect only if useUmfpack is True and scikits.umfpack is installed.
		    Default: False
		
		Notes
		-----
		The default sparse solver is umfpack when available
		(scikits.umfpack is installed). This can be changed by passing
		useUmfpack = False, which then causes the always present SuperLU
		based solver to be used.
		
		Umfpack requires a CSR/CSC matrix to have sorted column/row indices. If
		sure that the matrix fulfills this, pass ``assumeSortedIndices=True``
		to gain some speed.
	**/
	static public function use_solver(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}