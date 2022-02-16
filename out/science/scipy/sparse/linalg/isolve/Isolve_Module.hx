/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve;
@:pythonImport("scipy.sparse.linalg.isolve") extern class Isolve_Module {
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
}