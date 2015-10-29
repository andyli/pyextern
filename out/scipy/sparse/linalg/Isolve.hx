/* This file is generated, do not edit! */
package scipy.sparse.linalg;
@:pythonImport("scipy.sparse.linalg.isolve") extern class Isolve {
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
	/**
		Use BIConjugate Gradient iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function bicg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use BIConjugate Gradient STABilized iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    ``A`` must represent a hermitian, positive definite matrix
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function bicgstab(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system
		    ``A`` must represent a hermitian, positive definite matrix
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function cg(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Use Conjugate Gradient Squared iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
	**/
	static public function cgs(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Use Generalized Minimal RESidual iteration to solve A x = b.
		
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
	/**
		Solve a matrix equation using the LGMRES algorithm.
		
		The LGMRES algorithm [1]_ [2]_ is designed to avoid some problems
		in the convergence in restarted GMRES, and often converges in fewer
		iterations.
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real or complex N-by-N matrix of the linear system.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float, optional
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : int, optional
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}, optional
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
		    Whether LGMRES should store also A*v in addition to vectors `v`
		    in the `outer_v` list. Default is True.
		
		Returns
		-------
		x : array or matrix
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
		.. [1] A.H. Baker and E.R. Jessup and T. Manteuffel,
		         SIAM J. Matrix Anal. Appl. 26, 962 (2005).
		.. [2] A.H. Baker, PhD thesis, University of Colorado (2003).
		         http://amath.colorado.edu/activities/thesis/allisonb/Thesis.ps
	**/
	static public function lgmres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?inner_m:Dynamic, ?outer_k:Dynamic, ?outer_v:Dynamic, ?store_outer_Av:Dynamic):Dynamic;
	/**
		Iterative solver for least-squares problems.
		
		lsmr solves the system of linear equations ``Ax = b``. If the system
		is inconsistent, it solves the least-squares problem ``min ||b - Ax||_2``.
		A is a rectangular matrix of dimension m-by-n, where all cases are
		allowed: m = n, m > n, or m < n. B is a vector of length m.
		The matrix A may be dense or sparse (usually sparse).
		
		Parameters
		----------
		A : {matrix, sparse matrix, ndarray, LinearOperator}
		    Matrix A in the linear system.
		b : (m,) ndarray
		    Vector b in the linear system.
		damp : float
		    Damping factor for regularized least-squares. `lsmr` solves
		    the regularized least-squares problem::
		
		     min ||(b) - (  A   )x||
		         ||(0)   (damp*I) ||_2
		
		    where damp is a scalar.  If damp is None or 0, the system
		    is solved without regularization.
		atol, btol : float, optional
		    Stopping tolerances. `lsmr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, ``lsmr`` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, lsmr terminates when ``norm(A^{T} r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (say),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final x will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of A and B respectively.  For example, if the entries
		    of `A` have 7 correct digits, set atol = 1e-7. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    `lsmr` terminates if an estimate of ``cond(A)`` exceeds
		    `conlim`.  For compatible systems ``Ax = b``, conlim could be
		    as large as 1.0e+12 (say).  For least-squares problems,
		    `conlim` should be less than 1.0e+8. If `conlim` is None, the
		    default value is 1e+8.  Maximum precision can be obtained by
		    setting ``atol = btol = conlim = 0``, but the number of
		    iterations may then be excessive.
		maxiter : int, optional
		    `lsmr` terminates if the number of iterations reaches
		    `maxiter`.  The default is ``maxiter = min(m, n)``.  For
		    ill-conditioned systems, a larger value of `maxiter` may be
		    needed.
		show : bool, optional
		    Print iterations logs if ``show=True``.
		
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.
		              = 1 means x is an approximate solution to A*x = B,
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
		    ``norm(A^T (b - Ax))``
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
		       http://arxiv.org/abs/1006.0758
		.. [2] LSMR Software, http://web.stanford.edu/group/SOL/software/lsmr/
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic):Dynamic;
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
	/**
		Use MINimum RESidual iteration to solve Ax=b
		
		MINRES minimizes norm(A*x - b) for a real symmetric matrix A.  Unlike
		the Conjugate Gradient method, A can be indefinite or singular.
		
		If shift != 0 then the method solves (A - shift*I)x = b
		
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real symmetric N-by-N matrix of the linear system
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M : {sparse matrix, dense matrix, LinearOperator}
		    Preconditioner for A.  The preconditioner should approximate the
		    inverse of A.  Effective preconditioning dramatically improves the
		    rate of convergence, which implies that fewer iterations are needed
		    to reach a given error tolerance.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is deprecated -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		
		
		
		Notes
		-----
		THIS FUNCTION IS EXPERIMENTAL AND SUBJECT TO CHANGE!
		
		References
		----------
		Solution of sparse indefinite systems of linear equations,
		    C. C. Paige and M. A. Saunders (1975),
		    SIAM J. Numer. Anal. 12(4), pp. 617-629.
		    http://www.stanford.edu/group/SOL/software/minres.html
		
		This file is a translation of the following MATLAB implementation:
		    http://www.stanford.edu/group/SOL/software/minres/matlab/
	**/
	static public function minres(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?shift:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M:Dynamic, ?callback:Dynamic, ?show:Dynamic, ?check:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Use Quasi-Minimal Residual iteration to solve A x = b
		
		Parameters
		----------
		A : {sparse matrix, dense matrix, LinearOperator}
		    The real-valued N-by-N matrix of the linear system.
		    It is required that the linear operator can produce
		    ``Ax`` and ``A^T x``.
		b : {array, matrix}
		    Right hand side of the linear system. Has shape (N,) or (N,1).
		
		Returns
		-------
		x : {array, matrix}
		    The converged solution.
		info : integer
		    Provides convergence information:
		        0  : successful exit
		        >0 : convergence to tolerance not achieved, number of iterations
		        <0 : illegal input or breakdown
		
		Other Parameters
		----------------
		x0  : {array, matrix}
		    Starting guess for the solution.
		tol : float
		    Tolerance to achieve. The algorithm terminates when either the relative
		    or the absolute residual is below `tol`.
		maxiter : integer
		    Maximum number of iterations.  Iteration will stop after maxiter
		    steps even if the specified tolerance has not been achieved.
		M1 : {sparse matrix, dense matrix, LinearOperator}
		    Left preconditioner for A.
		M2 : {sparse matrix, dense matrix, LinearOperator}
		    Right preconditioner for A. Used together with the left
		    preconditioner M1.  The matrix M1*A*M2 should have better
		    conditioned than A alone.
		callback : function
		    User-supplied function to call after each iteration.  It is called
		    as callback(xk), where xk is the current solution vector.
		xtype : {'f','d','F','D'}
		    This parameter is DEPRECATED -- avoid using it.
		
		    The type of the result.  If None, then it will be determined from
		    A.dtype.char and b.  If A does not have a typecode method then it
		    will compute A.matvec(x0) to get a typecode.   To save the extra
		    computation when A does not have a typecode attribute use xtype=0
		    for the same type as b or use xtype='f','d','F',or 'D'.
		    This parameter has been superseded by LinearOperator.
		
		See Also
		--------
		LinearOperator
	**/
	static public function qmr(A:Dynamic, b:Dynamic, ?x0:Dynamic, ?tol:Dynamic, ?maxiter:Dynamic, ?xtype:Dynamic, ?M1:Dynamic, ?M2:Dynamic, ?callback:Dynamic):Dynamic;
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