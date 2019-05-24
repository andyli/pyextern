/* This file is generated, do not edit! */
package scipy.optimize._linprog_ip;
@:pythonImport("scipy.optimize._linprog_ip") extern class _Linprog_ip_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Print indicators of optimization status to the console.
		
		Parameters
		----------
		rho_p : float
		    The (normalized) primal feasibility, see [4] 4.5
		rho_d : float
		    The (normalized) dual feasibility, see [4] 4.5
		rho_g : float
		    The (normalized) duality gap, see [4] 4.5
		alpha : float
		    The step size, see [4] 4.3
		rho_mu : float
		    The (normalized) path parameter, see [4] 4.5
		obj : float
		    The objective function value of the current iterate
		header : bool
		    True if a header is to be printed
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _display_iter(rho_p:Dynamic, rho_d:Dynamic, rho_g:Dynamic, alpha:Dynamic, rho_mu:Dynamic, obj:Dynamic, ?header:Dynamic):Dynamic;
	/**
		An implementation of [4] Equation 8.9
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _do_step(x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic, d_x:Dynamic, d_y:Dynamic, d_z:Dynamic, d_tau:Dynamic, d_kappa:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Return the starting point from [4] 4.4
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_blind_start(shape:Dynamic):Dynamic;
	/**
		Given standard form problem defined by ``A``, ``b``, and ``c``;
		current variable estimates ``x``, ``y``, ``z``, ``tau``, and ``kappa``;
		algorithmic parameters ``gamma and ``eta;
		and options ``sparse``, ``lstsq``, ``sym_pos``, ``cholesky``, ``pc``
		(predictor-corrector), and ``ip`` (initial point improvement),
		get the search direction for increments to the variable estimates.
		
		Parameters
		----------
		As defined in [4], except:
		sparse : bool
		    True if the system to be solved is sparse. This is typically set
		    True when the original ``A_ub`` and ``A_eq`` arrays are sparse.
		lstsq : bool
		    True if the system is ill-conditioned and/or (nearly) singular and
		    thus a more robust least-squares solver is desired. This is sometimes
		    needed as the solution is approached.
		sym_pos : bool
		    True if the system matrix is symmetric positive definite
		    Sometimes this needs to be set false as the solution is approached,
		    even when the system should be symmetric positive definite, due to
		    numerical difficulties.
		cholesky : bool
		    True if the system is to be solved by Cholesky, rather than LU,
		    decomposition. This is typically faster unless the problem is very
		    small or prone to numerical difficulties.
		pc : bool
		    True if the predictor-corrector method of Mehrota is to be used. This
		    is almost always (if not always) beneficial. Even though it requires
		    the solution of an additional linear system, the factorization
		    is typically (implicitly) reused so solution is efficient, and the
		    number of algorithm iterations is typically reduced.
		ip : bool
		    True if the improved initial point suggestion due to [4] section 4.3
		    is desired. It's unclear whether this is beneficial.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``.) A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		
		Returns
		-------
		Search directions as defined in [4]
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_delta(A:Dynamic, b:Dynamic, c:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic, gamma:Dynamic, eta:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?pc:Dynamic, ?ip:Dynamic, ?permc_spec:Dynamic):Dynamic;
	/**
		Given problem status code, return a more detailed message.
		
		Parameters
		----------
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered
		
		Returns
		-------
		message : str
		    A string descriptor of the exit status of the optimization.
	**/
	static public function _get_message(status:Dynamic):String;
	/**
		Given solver options, return a handle to the appropriate linear system
		solver.
		
		Parameters
		----------
		M : 2D array
		    As defined in [4] Equation 8.31
		sparse : bool (default = False)
		    True if the system to be solved is sparse. This is typically set
		    True when the original ``A_ub`` and ``A_eq`` arrays are sparse.
		lstsq : bool (default = False)
		    True if the system is ill-conditioned and/or (nearly) singular and
		    thus a more robust least-squares solver is desired. This is sometimes
		    needed as the solution is approached.
		sym_pos : bool (default = True)
		    True if the system matrix is symmetric positive definite
		    Sometimes this needs to be set false as the solution is approached,
		    even when the system should be symmetric positive definite, due to
		    numerical difficulties.
		cholesky : bool (default = True)
		    True if the system is to be solved by Cholesky, rather than LU,
		    decomposition. This is typically faster unless the problem is very
		    small or prone to numerical difficulties.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    Sparsity preservation strategy used by SuperLU. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    See SuperLU documentation.
		
		Returns
		-------
		solve : function
		    Handle to the appropriate solver function
	**/
	static public function _get_solver(M:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?permc_spec:Dynamic):haxe.Constraints.Function;
	/**
		An implementation of [4] equation 8.21
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _get_step(x:Dynamic, d_x:Dynamic, z:Dynamic, d_z:Dynamic, tau:Dynamic, d_tau:Dynamic, kappa:Dynamic, d_kappa:Dynamic, alpha0:Dynamic):Dynamic;
	/**
		Implementation of several equations from [4] used as indicators of
		the status of optimization.
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _indicators(A:Dynamic, b:Dynamic, c:Dynamic, c0:Dynamic, x:Dynamic, y:Dynamic, z:Dynamic, tau:Dynamic, kappa:Dynamic):Dynamic;
	/**
		Solve a linear programming problem in standard form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A @ x == b
		        x >= 0
		
		using the interior point method of [4].
		
		Parameters
		----------
		A : 2D array
		    2D array such that ``A @ x``, gives the values of the equality
		    constraints at ``x``.
		b : 1D array
		    1D array of values representing the RHS of each equality constraint
		    (row) in ``A`` (for standard form problem).
		c : 1D array
		    Coefficients of the linear objective function to be minimized (for
		    standard form problem).
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables. (Purely for display.)
		alpha0 : float
		    The maximal step size for Mehrota's predictor-corrector search
		    direction; see :math:`\beta_3`of [4] Table 8.1
		beta : float
		    The desired reduction of the path parameter :math:`\mu` (see  [6]_)
		maxiter : int
		    The maximum number of iterations of the algorithm.
		disp : bool
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		tol : float
		    Termination tolerance; see [4]_ Section 4.5.
		sparse : bool
		    Set to ``True`` if the problem is to be treated as sparse. However,
		    the inputs ``A_eq`` and ``A_ub`` should nonetheless be provided as
		    (dense) arrays rather than sparse matrices.
		lstsq : bool
		    Set to ``True`` if the problem is expected to be very poorly
		    conditioned. This should always be left as ``False`` unless severe
		    numerical difficulties are frequently encountered, and a better option
		    would be to improve the formulation of the problem.
		sym_pos : bool
		    Leave ``True`` if the problem is expected to yield a well conditioned
		    symmetric positive definite normal equation matrix (almost always).
		cholesky : bool
		    Set to ``True`` if the normal equations are to be solved by explicit
		    Cholesky decomposition followed by explicit forward/backward
		    substitution. This is typically faster for moderate, dense problems
		    that are numerically well-behaved.
		pc : bool
		    Leave ``True`` if the predictor-corrector method of Mehrota is to be
		    used. This is almost always (if not always) beneficial.
		ip : bool
		    Set to ``True`` if the improved initial point suggestion due to [4]_
		    Section 4.3 is desired. It's unclear whether this is beneficial.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``.) A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		callback : callable, optional
		    If a callback function is provided, it will be called within each
		    iteration of the algorithm. The callback function must accept a single
		    `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		        x : 1D array
		            Current solution vector
		        fun : float
		            Current value of the objective function
		        success : bool
		            True only when an algorithm has completed successfully,
		            so this is always False as the callback function is called
		            only while the algorithm is still iterating.
		        slack : 1D array
		            The values of the slack variables. Each slack variable
		            corresponds to an inequality constraint. If the slack is zero,
		            the corresponding constraint is active.
		        con : 1D array
		            The (nominally zero) residuals of the equality constraints,
		            that is, ``b - A_eq @ x``
		        phase : int
		            The phase of the algorithm being executed. This is always
		            1 for the interior-point method because it has only one phase.
		        status : int
		            For revised simplex, this is always 0 because if a different
		            status is detected, the algorithm terminates.
		        nit : int
		            The number of iterations performed.
		        message : str
		            A string descriptor of the exit status of the optimization.
		
		Returns
		-------
		x_hat : float
		    Solution vector (for standard form problem).
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
		iteration : int
		    The number of iterations taken to solve the problem
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [6] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at:
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
	**/
	static public function _ip_hsd(A:Dynamic, b:Dynamic, c:Dynamic, c0:Dynamic, alpha0:Dynamic, beta:Dynamic, maxiter:Dynamic, disp:Dynamic, tol:Dynamic, sparse:Dynamic, lstsq:Dynamic, sym_pos:Dynamic, cholesky:Dynamic, pc:Dynamic, ip:Dynamic, permc_spec:Dynamic, callback:Dynamic, _T_o:Dynamic):Float;
	/**
		Minimize a linear objective function subject to linear
		equality and non-negativity constraints using the interior point method
		of [4]_. Linear programming is intended to solve problems
		of the following form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A @ x == b
		        x >= 0
		
		Parameters
		----------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables. (Purely for display.)
		A : 2D array
		    2D array such that ``A @ x``, gives the values of the equality
		    constraints at ``x``.
		b : 1D array
		    1D array of values representing the right hand side of each equality
		    constraint (row) in ``A``.
		
		Options
		-------
		maxiter : int (default = 1000)
		    The maximum number of iterations of the algorithm.
		disp : bool (default = False)
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		tol : float (default = 1e-8)
		    Termination tolerance to be used for all termination criteria;
		    see [4]_ Section 4.5.
		alpha0 : float (default = 0.99995)
		    The maximal step size for Mehrota's predictor-corrector search
		    direction; see :math:`\beta_{3}` of [4]_ Table 8.1.
		beta : float (default = 0.1)
		    The desired reduction of the path parameter :math:`\mu` (see [6]_)
		    when Mehrota's predictor-corrector is not in use (uncommon).
		sparse : bool (default = False)
		    Set to ``True`` if the problem is to be treated as sparse after
		    presolve. If either ``A_eq`` or ``A_ub`` is a sparse matrix,
		    this option will automatically be set ``True``, and the problem
		    will be treated as sparse even during presolve. If your constraint
		    matrices contain mostly zeros and the problem is not very small (less
		    than about 100 constraints or variables), consider setting ``True``
		    or providing ``A_eq`` and ``A_ub`` as sparse matrices.
		lstsq : bool (default = False)
		    Set to ``True`` if the problem is expected to be very poorly
		    conditioned. This should always be left ``False`` unless severe
		    numerical difficulties are encountered. Leave this at the default
		    unless you receive a warning message suggesting otherwise.
		sym_pos : bool (default = True)
		    Leave ``True`` if the problem is expected to yield a well conditioned
		    symmetric positive definite normal equation matrix
		    (almost always). Leave this at the default unless you receive
		    a warning message suggesting otherwise.
		cholesky : bool (default = True)
		    Set to ``True`` if the normal equations are to be solved by explicit
		    Cholesky decomposition followed by explicit forward/backward
		    substitution. This is typically faster for problems
		    that are numerically well-behaved.
		pc : bool (default = True)
		    Leave ``True`` if the predictor-corrector method of Mehrota is to be
		    used. This is almost always (if not always) beneficial.
		ip : bool (default = False)
		    Set to ``True`` if the improved initial point suggestion due to [4]_
		    Section 4.3 is desired. Whether this is beneficial or not
		    depends on the problem.
		permc_spec : str (default = 'MMD_AT_PLUS_A')
		    (Has effect only with ``sparse = True``, ``lstsq = False``, ``sym_pos =
		    True``, and no SuiteSparse.)
		    A matrix is factorized in each iteration of the algorithm.
		    This option specifies how to permute the columns of the matrix for
		    sparsity preservation. Acceptable values are:
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering.
		
		    This option can impact the convergence of the
		    interior point algorithm; test different values to determine which
		    performs best for your problem. For more information, refer to
		    ``scipy.sparse.linalg.splu``.
		
		Returns
		-------
		x : 1D array
		    Solution vector.
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
		iteration : int
		    The number of iterations taken to solve the problem.
		
		Notes
		-----
		This method implements the algorithm outlined in [4]_ with ideas from [8]_
		and a structure inspired by the simpler methods of [6]_.
		
		The primal-dual path following method begins with initial 'guesses' of
		the primal and dual variables of the standard form problem and iteratively
		attempts to solve the (nonlinear) Karush-Kuhn-Tucker conditions for the
		problem with a gradually reduced logarithmic barrier term added to the
		objective. This particular implementation uses a homogeneous self-dual
		formulation, which provides certificates of infeasibility or unboundedness
		where applicable.
		
		The default initial point for the primal and dual variables is that
		defined in [4]_ Section 4.4 Equation 8.22. Optionally (by setting initial
		point option ``ip=True``), an alternate (potentially improved) starting
		point can be calculated according to the additional recommendations of
		[4]_ Section 4.4.
		
		A search direction is calculated using the predictor-corrector method
		(single correction) proposed by Mehrota and detailed in [4]_ Section 4.1.
		(A potential improvement would be to implement the method of multiple
		corrections described in [4]_ Section 4.2.) In practice, this is
		accomplished by solving the normal equations, [4]_ Section 5.1 Equations
		8.31 and 8.32, derived from the Newton equations [4]_ Section 5 Equations
		8.25 (compare to [4]_ Section 4 Equations 8.6-8.8). The advantage of
		solving the normal equations rather than 8.25 directly is that the
		matrices involved are symmetric positive definite, so Cholesky
		decomposition can be used rather than the more expensive LU factorization.
		
		With default options, the solver used to perform the factorization depends
		on third-party software availability and the conditioning of the problem.
		
		For dense problems, solvers are tried in the following order:
		
		1. ``scipy.linalg.cho_factor``
		
		2. ``scipy.linalg.solve`` with option ``sym_pos=True``
		
		3. ``scipy.linalg.solve`` with option ``sym_pos=False``
		
		4. ``scipy.linalg.lstsq``
		
		For sparse problems:
		
		1. ``sksparse.cholmod.cholesky`` (if scikit-sparse and SuiteSparse are installed)
		
		2. ``scipy.sparse.linalg.factorized`` (if scikit-umfpack and SuiteSparse are installed)
		
		3. ``scipy.sparse.linalg.splu`` (which uses SuperLU distributed with SciPy)
		
		4. ``scipy.sparse.linalg.lsqr``
		
		If the solver fails for any reason, successively more robust (but slower)
		solvers are attempted in the order indicated. Attempting, failing, and
		re-starting factorization can be time consuming, so if the problem is
		numerically challenging, options can be set to  bypass solvers that are
		failing. Setting ``cholesky=False`` skips to solver 2,
		``sym_pos=False`` skips to solver 3, and ``lstsq=True`` skips
		to solver 4 for both sparse and dense problems.
		
		Potential improvements for combatting issues associated with dense
		columns in otherwise sparse problems are outlined in [4]_ Section 5.3 and
		[10]_ Section 4.1-4.2; the latter also discusses the alleviation of
		accuracy issues associated with the substitution approach to free
		variables.
		
		After calculating the search direction, the maximum possible step size
		that does not activate the non-negativity constraints is calculated, and
		the smaller of this step size and unity is applied (as in [4]_ Section
		4.1.) [4]_ Section 4.3 suggests improvements for choosing the step size.
		
		The new point is tested according to the termination conditions of [4]_
		Section 4.5. The same tolerance, which can be set using the ``tol`` option,
		is used for all checks. (A potential improvement would be to expose
		the different tolerances to be set independently.) If optimality,
		unboundedness, or infeasibility is detected, the solve procedure
		terminates; otherwise it repeats.
		
		The expected problem formulation differs between the top level ``linprog``
		module and the method specific solvers. The method specific solvers expect a
		problem in standard form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A @ x == b
		        x >= 0
		
		Whereas the top level ``linprog`` module expects a problem of form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A_ub @ x <= b_ub
		    A_eq @ x == b_eq
		     lb <= x <= ub
		
		where ``lb = 0`` and ``ub = None`` unless set in ``bounds``.
		
		The original problem contains equality, upper-bound and variable constraints
		whereas the method specific solver requires equality constraints and
		variable non-negativity.
		
		``linprog`` module converts the original problem to standard form by
		converting the simple bounds to upper bound constraints, introducing
		non-negative slack variables for inequality constraints, and expressing
		unbounded variables as the difference between two non-negative variables.
		
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [6] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
		.. [8] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		       programming." Mathematical Programming 71.2 (1995): 221-245.
		.. [9] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
		.. [10] Andersen, Erling D., et al. Implementation of interior point methods
		        for large scale linear programming. HEC/Universite de Geneve, 1996.
	**/
	static public function _linprog_ip(c:Dynamic, ?c0:Dynamic, ?A:Dynamic, ?b:Dynamic, ?callback:Dynamic, ?_T_o:Dynamic, ?alpha0:Dynamic, ?beta:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?tol:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?pc:Dynamic, ?ip:Dynamic, ?permc_spec:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Given solution x to presolved, standard form linear program x, add
		fixed variables back into the problem and undo the variable substitutions
		to get solution to original linear program. Also, calculate the objective
		function value, slack in original upper bound constraints, and residuals
		in original equality constraints.
		
		Parameters
		----------
		x : 1D array
		    Solution vector to the standard-form problem.
		c : 1D array
		    Original coefficients of the linear objective function to be minimized.
		A_ub : 2D array, optional
		    2D array such that ``A_ub @ x`` gives the values of the upper-bound
		    inequality constraints at ``x``.
		b_ub : 1D array, optional
		    1D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : 2D array, optional
		    2D array such that ``A_eq @ x`` gives the values of the equality
		    constraints at ``x``.
		b_eq : 1D array, optional
		    1D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : sequence of tuples
		    Bounds, as modified in presolve
		complete : bool
		    Whether the solution is was determined in presolve (``True`` if so)
		undo: list of tuples
		    (`index`, `value`) pairs that record the original index and fixed value
		    for each variable removed from the problem
		tol : float
		    Termination tolerance; see [1]_ Section 4.5.
		
		Returns
		-------
		x : 1D array
		    Solution vector to original linear programming problem
		fun: float
		    optimal objective value for original problem
		slack : 1D array
		    The (non-negative) slack in the upper bound constraints, that is,
		    ``b_ub - A_ub @ x``
		con : 1D array
		    The (nominally zero) residuals of the equality constraints, that is,
		    ``b - A_eq @ x``
		lb : 1D array
		    The lower bound constraints on the original variables
		ub: 1D array
		    The upper bound constraints on the original variables
	**/
	static public function _postsolve(x:Dynamic, c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?complete:Dynamic, ?undo:Dynamic, ?tol:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		An implementation of [4] equation 8.31 and 8.32
		
		References
		----------
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
	**/
	static public function _sym_solve(Dinv:Dynamic, A:Dynamic, r1:Dynamic, r2:Dynamic, solve:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var has_cholmod : Dynamic;
	static public var has_umfpack : Dynamic;
	static public var print_function : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}