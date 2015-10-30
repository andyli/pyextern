/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve.lsqr;
@:pythonImport("scipy.sparse.linalg.isolve.lsqr") extern class Lsqr_Module {
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
		Stable implementation of Givens rotation.
		
		Notes
		-----
		The routine 'SymOrtho' was added for numerical stability. This is
		recommended by S.-C. Choi in [1]_.  It removes the unpleasant potential of
		``1/eps`` in some important places (see, for example text following
		"Compute the next plane rotation Qk" in minres.py).
		
		References
		----------
		.. [1] S.-C. Choi, "Iterative Methods for Singular Linear Equations
		       and Least-Squares Problems", Dissertation,
		       http://www.stanford.edu/group/SOL/dissertations/sou-cheng-choi-thesis.pdf
	**/
	static public function _sym_ortho(a:Dynamic, b:Dynamic):Dynamic;
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
		>>> from scipy import matrix
		>>> M = matrix( [[1,2,3],[4,5,6]], dtype='int32' )
		>>> aslinearoperator( M )
		<2x3 LinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var eps : Dynamic;
	/**
		Find the least-squares solution to a large, sparse, linear system
		of equations.
		
		The function solves ``Ax = b``  or  ``min ||b - Ax||^2`` or
		``min ||Ax - b||^2 + d^2 ||x||^2``.
		
		The matrix A may be square or rectangular (over-determined or
		under-determined), and may have any rank.
		
		::
		
		  1. Unsymmetric equations --    solve  A*x = b
		
		  2. Linear least squares  --    solve  A*x = b
		                                 in the least-squares sense
		
		  3. Damped least squares  --    solve  (   A    )*x = ( b )
		                                        ( damp*I )     ( 0 )
		                                 in the least-squares sense
		
		Parameters
		----------
		A : {sparse matrix, ndarray, LinearOperator}
		    Representation of an m-by-n matrix.  It is required that
		    the linear operator can produce ``Ax`` and ``A^T x``.
		b : (m,) ndarray
		    Right-hand side vector ``b``.
		damp : float
		    Damping coefficient.
		atol, btol : float, optional
		    Stopping tolerances. If both are 1.0e-9 (say), the final
		    residual norm should be accurate to about 9 digits.  (The
		    final x will usually have fewer correct digits, depending on
		    cond(A) and the size of damp.)
		conlim : float, optional
		    Another stopping tolerance.  lsqr terminates if an estimate of
		    ``cond(A)`` exceeds `conlim`.  For compatible systems ``Ax =
		    b``, `conlim` could be as large as 1.0e+12 (say).  For
		    least-squares problems, conlim should be less than 1.0e+8.
		    Maximum precision can be obtained by setting ``atol = btol =
		    conlim = zero``, but the number of iterations may then be
		    excessive.
		iter_lim : int, optional
		    Explicit limitation on number of iterations (for safety).
		show : bool, optional
		    Display an iteration log.
		calc_var : bool, optional
		    Whether to estimate diagonals of ``(A'A + damp^2*I)^{-1}``.
		
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
		    ``sqrt( norm(r)^2  +  damp^2 * norm(x)^2 )``.  Equal to `r1norm` if
		    ``damp == 0``.
		anorm : float
		    Estimate of Frobenius norm of ``Abar = [[A]; [damp*I]]``.
		acond : float
		    Estimate of ``cond(Abar)``.
		arnorm : float
		    Estimate of ``norm(A'*r - damp^2*x)``.
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
		
		  1. Compute a residual vector ``r0 = b - A*x0``.
		  2. Use LSQR to solve the system  ``A*dx = r0``.
		  3. Add the correction dx to obtain a final solution ``x = x0 + dx``.
		
		This requires that ``x0`` be available before and after the call
		to LSQR.  To judge the benefits, suppose LSQR takes k1 iterations
		to solve A*x = b and k2 iterations to solve A*dx = r0.
		If x0 is "good", norm(r0) will be smaller than norm(b).
		If the same stopping tolerances atol and btol are used for each
		system, k1 and k2 will be similar, but the final solution x0 + dx
		should be more accurate.  The only way to reduce the total work
		is to use a larger stopping tolerance for the second system.
		If some value btol is suitable for A*x = b, the larger value
		btol*norm(b)/norm(r0)  should be suitable for A*dx = r0.
		
		Preconditioning is another way to reduce the number of iterations.
		If it is possible to solve a related system ``M*x = b``
		efficiently, where M approximates A in some helpful way (e.g. M -
		A has low rank or its elements are small relative to those of A),
		LSQR may converge more rapidly on the system ``A*M(inverse)*z =
		b``, after which x can be recovered by solving M*x = z.
		
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
	**/
	static public function lsqr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?iter_lim:Dynamic, ?show:Dynamic, ?calc_var:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		sqrt(x)
		
		Return the square root of x.
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
}