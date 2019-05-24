/* This file is generated, do not edit! */
package scipy.sparse.linalg.eigen.lobpcg;
@:pythonImport("scipy.sparse.linalg.eigen.lobpcg") extern class Lobpcg_Module {
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
	static public var division : Dynamic;
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
		
		Returns
		-------
		w : array
		    Array of k eigenvalues
		v : array
		    An array of k eigenvectors.  V has the same shape as X.
		lambdas : list of arrays, optional
		    The eigenvalue history, if `retLambdaHistory` is True.
		rnorms : list of arrays, optional
		    The history of residual norms, if `retResidualNormsHistory` is True.
		
		Examples
		--------
		
		Solve A x = lambda B x with constraints and preconditioning.
		
		>>> from scipy.sparse import spdiags, issparse
		>>> from scipy.sparse.linalg import lobpcg, LinearOperator
		>>> n = 100
		>>> vals = [np.arange(n, dtype=np.float64) + 1]
		>>> A = spdiags(vals, 0, n, n)
		>>> A.toarray()
		array([[  1.,   0.,   0., ...,   0.,   0.,   0.],
		       [  0.,   2.,   0., ...,   0.,   0.,   0.],
		       [  0.,   0.,   3., ...,   0.,   0.,   0.],
		       ...,
		       [  0.,   0.,   0., ...,  98.,   0.,   0.],
		       [  0.,   0.,   0., ...,   0.,  99.,   0.],
		       [  0.,   0.,   0., ...,   0.,   0., 100.]])
		
		Constraints.
		
		>>> Y = np.eye(n, 3)
		
		Initial guess for eigenvectors, should have linearly independent
		columns. Column dimension = number of requested eigenvalues.
		
		>>> X = np.random.rand(n, 3)
		
		Preconditioner -- inverse of A (as an abstract linear operator).
		
		>>> invA = spdiags([1./vals[0]], 0, n, n)
		>>> def precond( x ):
		...     return invA  * x
		>>> M = LinearOperator(matvec=precond, shape=(n, n), dtype=float)
		
		Here, ``invA`` could of course have been used directly as a preconditioner.
		Let us then solve the problem:
		
		>>> eigs, vecs = lobpcg(A, X, Y=Y, M=M, largest=False)
		>>> eigs
		array([4., 5., 6.])
		
		Note that the vectors passed in Y are the eigenvectors of the 3 smallest
		eigenvalues. The results returned are orthogonal to those.
		
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
		it will most likely break internally, so the code tries to call
		the standard function instead.
		
		It is not that n should be large for the LOBPCG to work, but rather the
		ratio ``n``/``m`` should be large. It you call LOBPCG with ``m``=1
		and ``n``=10, it works though ``n`` is small. The method is intended
		for extremely large ``n``/``m``, see e.g., reference [28] in
		https://arxiv.org/abs/0705.2626
		
		The convergence speed depends basically on two factors:
		
		1. How well relatively separated the seeking eigenvalues are from the rest
		   of the eigenvalues. One can try to vary ``m`` to make this better.
		
		2. How well conditioned the problem is. This can be changed by using proper
		   preconditioning. For example, a rod vibration test problem (under tests
		   directory) is ill-conditioned for large ``n``, so convergence will be
		   slow, unless efficient preconditioning is used. For this specific
		   problem, a good simple preconditioner function would be a linear solve
		   for A, which is easy to code since A is tridiagonal.
		
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
		
		.. [2] A. V. Knyazev, I. Lashuk, M. E. Argentati, and E. Ovchinnikov
		       (2007), Block Locally Optimal Preconditioned Eigenvalue Xolvers
		       (BLOPEX) in hypre and PETSc. https://arxiv.org/abs/0705.2626
		
		.. [3] A. V. Knyazev's C and MATLAB implementations:
		       https://bitbucket.org/joseroman/blopex
	**/
	static public function lobpcg(A:Dynamic, X:Dynamic, ?B:Dynamic, ?M:Dynamic, ?Y:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?largest:Dynamic, ?verbosityLevel:Dynamic, ?retLambdaHistory:Dynamic, ?retResidualNormsHistory:Dynamic):Array<Dynamic>;
	static public var print_function : Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
}