/* This file is generated, do not edit! */
package scipy.optimize._linprog;
@:pythonImport("scipy.optimize._linprog") extern class _Linprog_Module {
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
		Given a linear programming problem of the form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A_ub @ x <= b_ub
		    A_eq @ x == b_eq
		     lb <= x <= ub
		
		where ``lb = 0`` and ``ub = None`` unless set in ``bounds``.
		
		Return the problem in standard form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A @ x == b
		        x >= 0
		
		by adding slack variables and making variable substitutions as necessary.
		
		Parameters
		----------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
		    Components corresponding with fixed variables have been eliminated.
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
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
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. Bounds have been
		    tightened where possible.
		x0 : 1D array
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm
		undo: list of tuples
		    (`index`, `value`) pairs that record the original index and fixed value
		    for each variable removed from the problem
		
		Returns
		-------
		A : 2D array
		    2D array such that ``A`` @ ``x``, gives the values of the equality
		    constraints at ``x``.
		b : 1D array
		    1D array of values representing the RHS of each equality constraint
		    (row) in A (for standard form problem).
		c : 1D array
		    Coefficients of the linear objective function to be minimized (for
		    standard form problem).
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
		x0 : 1D array
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm
		
		References
		----------
		.. [9] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
	**/
	static public function _get_Abc(c:Dynamic, ?c0:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?x0:Dynamic, ?undo:Dynamic):Dynamic;
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
		Solve the following linear programming problem via a two-phase
		revised simplex algorithm.::
		
		    minimize:     c @ x
		
		    subject to:  A @ x == b
		                 0 <= x < oo
		
		Parameters
		----------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
		c0 : float
		    Constant term in objective function due to fixed (and eliminated)
		    variables. (Currently unused.)
		A : 2D array
		    2D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b : 1D array
		    1D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm. For the revised simplex method, these must
		    correspond with a basic feasible solution.
		callback : callable, optional
		    If a callback function is provided, it will be called within each
		    iteration of the algorithm. The callback function must accept a single
		    `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		        x : 1D array
		            Current solution vector.
		        fun : float
		            Current value of the objective function ``c @ x``.
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
		            that is, ``b - A_eq @ x``.
		        phase : int
		            The phase of the algorithm being executed.
		        status : int
		            For revised simplex, this is always 0 because if a different
		            status is detected, the algorithm terminates.
		        nit : int
		            The number of iterations performed.
		        message : str
		            A string descriptor of the exit status of the optimization.
		
		Options
		-------
		maxiter : int
		   The maximum number of iterations to perform in either phase.
		tol : float
		    The tolerance which determines when a solution is "close enough" to
		    zero in Phase 1 to be considered a basic feasible solution or close
		    enough to positive to serve as an optimal solution.
		maxupdate : int
		    The maximum number of updates performed on the LU factorization.
		    After this many updates is reached, the basis matrix is factorized
		    from scratch.
		mast : bool
		    Minimize Amortized Solve Time. If enabled, the average time to solve
		    a linear system using the basis factorization is measured. Typically,
		    the average solve time will decrease with each successive solve after
		    initial factorization, as factorization takes much more time than the
		    solve operation (and updates). Eventually, however, the updated
		    factorization becomes sufficiently complex that the average solve time
		    begins to increase. When this is detected, the basis is refactorized
		    from scratch. Enable this option to maximize speed at the risk of
		    nondeterministic behavior. Ignored if ``maxupdate`` is 0.
		pivot : "mrc" or "bland"
		    Pivot rule: Minimum Reduced Cost (default) or Bland's rule. Choose
		    Bland's rule if iteration limit is reached and cycling is suspected.
		disp : bool
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		
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
		     4 : Numerical difficulties encountered
		     5 : No constraints; turn presolve on
		     6 : Guess x0 cannot be converted to a basic feasible solution
		
		message : str
		    A string descriptor of the exit status of the optimization.
		iteration : int
		    The number of iterations taken to solve the problem.
	**/
	static public function _linprog_rs(c:Dynamic, c0:Dynamic, A:Dynamic, b:Dynamic, ?x0:Dynamic, ?callback:Dynamic, ?maxiter:Dynamic, ?tol:Dynamic, ?maxupdate:Dynamic, ?mast:Dynamic, ?pivot:Dynamic, ?_T_o:Dynamic, ?disp:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimize a linear objective function subject to linear equality and
		non-negativity constraints using the two phase simplex method.
		Linear programming is intended to solve problems of the following form:
		
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
		callback : callable, optional
		    If a callback function is provided, it will be called within each
		    iteration of the algorithm. The callback function must accept a single
		    `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		        x : 1D array
		            Current solution vector
		        fun : float
		            Current value of the objective function
		        success : bool
		            True when an algorithm has completed successfully.
		        slack : 1D array
		            The values of the slack variables. Each slack variable
		            corresponds to an inequality constraint. If the slack is zero,
		            the corresponding constraint is active.
		        con : 1D array
		            The (nominally zero) residuals of the equality constraints,
		            that is, ``b - A_eq @ x``
		        phase : int
		            The phase of the algorithm being executed.
		        status : int
		            An integer representing the status of the optimization::
		
		                 0 : Algorithm proceeding nominally
		                 1 : Iteration limit reached
		                 2 : Problem appears to be infeasible
		                 3 : Problem appears to be unbounded
		                 4 : Serious numerical difficulties encountered
		        nit : int
		            The number of iterations performed.
		        message : str
		            A string descriptor of the exit status of the optimization.
		
		Options
		-------
		maxiter : int
		   The maximum number of iterations to perform.
		disp : bool
		    If True, print exit status message to sys.stdout
		tol : float
		    The tolerance which determines when a solution is "close enough" to
		    zero in Phase 1 to be considered a basic feasible solution or close
		    enough to positive to serve as an optimal solution.
		bland : bool
		    If True, use Bland's anti-cycling rule [3]_ to choose pivots to
		    prevent cycling. If False, choose pivots which should lead to a
		    converged solution more quickly. The latter method is subject to
		    cycling (non-convergence) in rare instances.
		
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
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ,
		       1963
		.. [2] Hillier, S.H. and Lieberman, G.J. (1995), "Introduction to
		       Mathematical Programming", McGraw-Hill, Chapter 4.
		.. [3] Bland, Robert G. New finite pivoting rules for the simplex method.
		       Mathematics of Operations Research (2), 1977: pp. 103-107.
		
		
		Notes
		-----
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
	**/
	static public function _linprog_simplex(c:Dynamic, c0:Dynamic, A:Dynamic, b:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?callback:Dynamic, ?tol:Dynamic, ?bland:Dynamic, ?_T_o:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parse the provided linear programming problem
		
		``_parse_linprog`` employs two main steps ``_check_sparse_inputs`` and
		``_clean_inputs``. ``_check_sparse_inputs`` checks for sparsity in the
		provided constraints (``A_ub`` and ``A_eq) and if these match the provided
		sparsity optional values.
		
		``_clean inputs`` checks of the provided inputs. If no violations are
		identified the objective vector, upper bound constraints, equality
		constraints, and simple bounds are returned in the expected format.
		
		Parameters
		----------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
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
		bounds : sequence
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative). If a sequence containing a
		    single tuple is provided, then ``min`` and ``max`` will be applied to
		    all variables in the problem.
		options : dict
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see :func:`show_options('linprog')`.
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm. Currently compatible only with the
		    'revised simplex' method, and only if x0 is a basic feasible solution
		    of the problem.
		
		Returns
		-------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
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
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative).
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		options : dict, optional
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see :func:`show_options('linprog')`.
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm. Currently compatible only with the
		    'revised simplex' method, and only if x0 is a basic feasible solution
		    of the problem.
	**/
	static public function _parse_linprog(c:Dynamic, A_ub:Dynamic, b_ub:Dynamic, A_eq:Dynamic, b_eq:Dynamic, bounds:Dynamic, options:Dynamic, x0:Dynamic):Dynamic;
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
		status : int
		    An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		         4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
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
		status : int
		    An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		         4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
	**/
	static public function _postprocess(x:Dynamic, c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?complete:Dynamic, ?undo:Dynamic, ?status:Dynamic, ?message:Dynamic, ?tol:Dynamic, ?iteration:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		Given inputs for a linear programming problem in preferred format,
		presolve the problem: identify trivial infeasibilities, redundancies,
		and unboundedness, tighten bounds where possible, and eliminate fixed
		variables.
		
		Parameters
		----------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
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
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction.
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm.
		rr : bool
		    If ``True`` attempts to eliminate any redundant rows in ``A_eq``.
		    Set False if ``A_eq`` is known to be of full row rank, or if you are
		    looking for a potential speedup (at the expense of reliability).
		tol : float
		    The tolerance which determines when a solution is "close enough" to
		    zero in Phase 1 to be considered a basic feasible solution or close
		    enough to positive to serve as an optimal solution.
		
		Returns
		-------
		c : 1D array
		    Coefficients of the linear objective function to be minimized.
		c0 : 1D array
		    Constant term in objective function due to fixed (and eliminated)
		    variables.
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
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. Bounds have been
		    tightened where possible.
		x : 1D array
		    Solution vector (when the solution is trivial and can be determined
		    in presolve)
		x0 : 1D array
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm (if solution is not determined in presolve)
		undo: list of tuples
		    (index, value) pairs that record the original index and fixed value
		    for each variable removed from the problem
		complete: bool
		    Whether the solution is complete (solved or determined to be infeasible
		    or unbounded in presolve)
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered
		
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [5] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
		.. [8] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		       programming." Mathematical Programming 71.2 (1995): 221-245.
	**/
	static public function _presolve(c:Dynamic, A_ub:Dynamic, b_ub:Dynamic, A_eq:Dynamic, b_eq:Dynamic, bounds:Dynamic, x0:Dynamic, rr:Dynamic, ?tol:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Linear programming: minimize a linear objective function subject to linear
		equality and inequality constraints.
		
		Linear programming solves problems of the following form:
		
		.. math::
		
		    \min_x \ & c^T x \\
		    \mbox{such that} \ & A_{ub} x \leq b_{ub},\\
		    & A_{eq} x = b_{eq},\\
		    & l \leq x \leq u ,
		
		where :math:`x` is a vector of decision variables; :math:`c`,
		:math:`b_{ub}`, :math:`b_{eq}`, :math:`l`, and :math:`u` are vectors; and
		:math:`A_{ub}` and :math:`A_{eq}` are matrices.
		
		Informally, that's:
		
		minimize::
		
		    c @ x
		
		such that::
		
		    A_ub @ x <= b_ub
		    A_eq @ x == b_eq
		    lb <= x <= ub
		
		Note that by default ``lb = 0`` and ``ub = None`` unless specified with
		``bounds``.
		
		Parameters
		----------
		c : 1D array
		    The coefficients of the linear objective function to be minimized.
		A_ub : 2D array, optional
		    The inequality constraint matrix. Each row of ``A_ub`` specifies the
		    coefficients of a linear inequality constraint on ``x``.
		b_ub : 1D array, optional
		    The inequality constraint vector. Each element represents an
		    upper bound on the corresponding value of ``A_ub @ x``.
		A_eq : 2D array, optional
		    The equality constraint matrix. Each row of ``A_eq`` specifies the
		    coefficients of a linear equality constraint on ``x``.
		b_eq : 1D array, optional
		    The equality constraint vector. Each element of ``A_eq @ x`` must equal
		    the corresponding element of ``b_eq``.
		bounds : sequence, optional
		    A sequence of ``(min, max)`` pairs for each element in ``x``, defining
		    the minimum and maximum values of that decision variable. Use ``None`` to
		    indicate that there is no bound. By default, bounds are ``(0, None)``
		    (all decision variables are non-negative).
		    If a single tuple ``(min, max)`` is provided, then ``min`` and
		    ``max`` will serve as bounds for all decision variables.
		method : {'interior-point', 'revised simplex', 'simplex'}, optional
		    The algorithm used to solve the standard form problem.
		    :ref:`'interior-point' <optimize.linprog-interior-point>` (default),
		    :ref:`'revised simplex' <optimize.linprog-revised_simplex>`, and
		    :ref:`'simplex' <optimize.linprog-simplex>` (legacy)
		    are supported.
		callback : callable, optional
		    If a callback function is provided, it will be called at least once per
		    iteration of the algorithm. The callback function must accept a single
		    `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		        x : 1D array
		            The current solution vector.
		        fun : float
		            The current value of the objective function ``c @ x``.
		        success : bool
		            ``True`` when the algorithm has completed successfully.
		        slack : 1D array
		            The (nominally positive) values of the slack,
		            ``b_ub - A_ub @ x``.
		        con : 1D array
		            The (nominally zero) residuals of the equality constraints,
		            ``b_eq - A_eq @ x``.
		        phase : int
		            The phase of the algorithm being executed.
		        status : int
		            An integer representing the status of the algorithm.
		
		            ``0`` : Optimization proceeding nominally.
		
		            ``1`` : Iteration limit reached.
		
		            ``2`` : Problem appears to be infeasible.
		
		            ``3`` : Problem appears to be unbounded.
		
		            ``4`` : Numerical difficulties encountered.
		
		        nit : int
		            The current iteration number.
		        message : str
		            A string descriptor of the algorithm status.
		
		options : dict, optional
		    A dictionary of solver options. All methods accept the following
		    options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to ``True`` to print convergence messages.
		
		    For method-specific options, see
		    :func:`show_options('linprog') <show_options>`.
		
		x0 : 1D array, optional
		    Guess values of the decision variables, which will be refined by
		    the optimization algorithm. This argument is currently used only by the
		    'revised simplex' method, and can only be used if `x0` represents a
		    basic feasible solution.
		
		
		Returns
		-------
		res : OptimizeResult
		    A :class:`scipy.optimize.OptimizeResult` consisting of the fields:
		
		        x : 1D array
		            The values of the decision variables that minimizes the
		            objective function while satisfying the constraints.
		        fun : float
		            The optimal value of the objective function ``c @ x``.
		        slack : 1D array
		            The (nominally positive) values of the slack variables,
		            ``b_ub - A_ub @ x``.
		        con : 1D array
		            The (nominally zero) residuals of the equality constraints,
		            ``b_eq - A_eq @ x``.
		        success : bool
		            ``True`` when the algorithm succeeds in finding an optimal
		            solution.
		        status : int
		            An integer representing the exit status of the algorithm.
		
		            ``0`` : Optimization terminated successfully.
		
		            ``1`` : Iteration limit reached.
		
		            ``2`` : Problem appears to be infeasible.
		
		            ``3`` : Problem appears to be unbounded.
		
		            ``4`` : Numerical difficulties encountered.
		
		        nit : int
		            The total number of iterations performed in all phases.
		        message : str
		            A string descriptor of the exit status of the algorithm.
		
		See Also
		--------
		show_options : Additional options accepted by the solvers.
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter.
		
		:ref:`'interior-point' <optimize.linprog-interior-point>` is the default
		as it is typically the fastest and most robust method.
		:ref:`'revised simplex' <optimize.linprog-revised_simplex>` is more
		accurate for the problems it solves.
		:ref:`'simplex' <optimize.linprog-simplex>` is the legacy method and is
		included for backwards compatibility and educational purposes.
		
		Method *interior-point* uses the primal-dual path following algorithm
		as outlined in [4]_. This algorithm supports sparse constraint matrices and
		is typically faster than the simplex methods, especially for large, sparse
		problems. Note, however, that the solution returned may be slightly less
		accurate than those of the simplex methods and will not, in general,
		correspond with a vertex of the polytope defined by the constraints.
		
		.. versionadded:: 1.0.0
		
		Method *revised simplex* uses the revised simplex method as decribed in
		[9]_, except that a factorization [11]_ of the basis matrix, rather than
		its inverse, is efficiently maintained and used to solve the linear systems
		at each iteration of the algorithm.
		
		.. versionadded:: 1.3.0
		
		Method *simplex* uses a traditional, full-tableau implementation of
		Dantzig's simplex algorithm [1]_, [2]_ (*not* the
		Nelder-Mead simplex). This algorithm is included for backwards
		compatibility and educational purposes.
		
		.. versionadded:: 0.15.0
		
		Before applying any method, a presolve procedure based on [8]_ attempts
		to identify trivial infeasibilities, trivial unboundedness, and potential
		problem simplifications. Specifically, it checks for:
		
		- rows of zeros in ``A_eq`` or ``A_ub``, representing trivial constraints;
		- columns of zeros in ``A_eq`` `and` ``A_ub``, representing unconstrained
		  variables;
		- column singletons in ``A_eq``, representing fixed variables; and
		- column singletons in ``A_ub``, representing simple bounds.
		
		If presolve reveals that the problem is unbounded (e.g. an unconstrained
		and unbounded variable has negative cost) or infeasible (e.g. a row of
		zeros in ``A_eq`` corresponds with a nonzero in ``b_eq``), the solver
		terminates with the appropriate status code. Note that presolve terminates
		as soon as any sign of unboundedness is detected; consequently, a problem
		may be reported as unbounded when in reality the problem is infeasible
		(but infeasibility has not been detected yet). Therefore, if it is
		important to know whether the problem is actually infeasible, solve the
		problem again with option ``presolve=False``.
		
		If neither infeasibility nor unboundedness are detected in a single pass
		of the presolve, bounds are tightened where possible and fixed
		variables are removed from the problem. Then, linearly dependent rows
		of the ``A_eq`` matrix are removed, (unless they represent an
		infeasibility) to avoid numerical difficulties in the primary solve
		routine. Note that rows that are nearly linearly dependent (within a
		prescribed tolerance) may also be removed, which can change the optimal
		solution in rare cases. If this is a concern, eliminate redundancy from
		your problem formulation and run with option ``rr=False`` or
		``presolve=False``.
		
		Several potential improvements can be made here: additional presolve
		checks outlined in [8]_ should be implemented, the presolve routine should
		be run multiple times (until no further simplifications can be made), and
		more of the efficiency improvements from [5]_ should be implemented in the
		redundancy removal routines.
		
		After presolve, the problem is transformed to standard form by converting
		the (tightened) simple bounds to upper bound constraints, introducing
		non-negative slack variables for inequality constraints, and expressing
		unbounded variables as the difference between two non-negative variables.
		The selected algorithm solves the standard form problem, and a
		postprocessing routine converts this to a solution to the original problem.
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ,
		       1963
		.. [2] Hillier, S.H. and Lieberman, G.J. (1995), "Introduction to
		       Mathematical Programming", McGraw-Hill, Chapter 4.
		.. [3] Bland, Robert G. New finite pivoting rules for the simplex method.
		       Mathematics of Operations Research (2), 1977: pp. 103-107.
		.. [4] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [5] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
		.. [6] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
		.. [7] Fourer, Robert. "Solving Linear Programs by Interior-Point Methods."
		       Unpublished Course Notes, August 26, 2005. Available 2/25/2017 at
		       http://www.4er.org/CourseNotes/Book%20B/B-III.pdf
		.. [8] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		       programming." Mathematical Programming 71.2 (1995): 221-245.
		.. [9] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
		.. [10] Andersen, Erling D., et al. Implementation of interior point
		        methods for large scale linear programming. HEC/Universite de
		        Geneve, 1996.
		.. [11] Bartels, Richard H. "A stabilization of the simplex method."
		        Journal in  Numerische Mathematik 16.5 (1971): 414-434.
		
		Examples
		--------
		Consider the following problem:
		
		.. math::
		
		    \min_{x_0, x_1} \ -x_0 + 4x_1 & \\
		    \mbox{such that} \ -3x_0 + x_1 & \leq 6,\\
		    -x_0 - 2x_1 & \geq -4,\\
		    x_1 & \geq -3.
		
		The problem is not presented in the form accepted by `linprog`. This is
		easily remedied by converting the "greater than" inequality
		constraint to a "less than" inequality constraint by
		multiplying both sides by a factor of :math:`-1`. Note also that the last
		constraint is really the simple bound :math:`-3 \leq x_1 \leq \infty`.
		Finally, since there are no bounds on :math:`x_0`, we must explicitly
		specify the bounds :math:`-\infty \leq x_0 \leq \infty`, as the
		default is for variables to be non-negative. After collecting coeffecients
		into arrays and tuples, the input for this problem is:
		
		>>> c = [-1, 4]
		>>> A = [[-3, 1], [1, 2]]
		>>> b = [6, 4]
		>>> x0_bounds = (None, None)
		>>> x1_bounds = (-3, None)
		>>> from scipy.optimize import linprog
		>>> res = linprog(c, A_ub=A, b_ub=b, bounds=[x0_bounds, x1_bounds])
		
		Note that the default method for `linprog` is 'interior-point', which is
		approximate by nature.
		
		>>> print(res)
		     con: array([], dtype=float64)
		     fun: -21.99999984082494 # may vary
		 message: 'Optimization terminated successfully.'
		     nit: 6 # may vary
		   slack: array([3.89999997e+01, 8.46872439e-08] # may vary
		  status: 0
		 success: True
		       x: array([ 9.99999989, -2.99999999]) # may vary
		
		If you need greater accuracy, try 'revised simplex'.
		
		>>> res = linprog(c, A_ub=A, b_ub=b, bounds=[x0_bounds, x1_bounds], method='revised simplex')
		>>> print(res)
		     con: array([], dtype=float64)
		     fun: -22.0 # may vary
		 message: 'Optimization terminated successfully.'
		     nit: 1 # may vary
		   slack: array([39.,  0.]) # may vary
		  status: 0
		 success: True
		       x: array([10., -3.]) # may vary
	**/
	static public function linprog(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?callback:Dynamic, ?options:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		A sample callback function demonstrating the linprog callback interface.
		This callback produces brief output to sys.stdout before each iteration
		and after the final iteration of the simplex algorithm.
		
		Parameters
		----------
		res : A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : 1D array
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        Value of the objective function.
		    success : bool
		        True if the algorithm succeeded in finding an optimal solution.
		    slack : 1D array
		        The values of the slack variables. Each slack variable corresponds
		        to an inequality constraint. If the slack is zero, then the
		        corresponding constraint is active.
		    con : 1D array
		        The (nominally zero) residuals of the equality constraints, that is,
		        ``b - A_eq @ x``.
		    phase : int
		        The phase of the optimization being executed. In phase 1 a basic
		        feasible solution is sought and the T has an additional row
		        representing an alternate objective function.
		    status : int
		        An integer representing the exit status of the optimization::
		
		             0 : Optimization terminated successfully
		             1 : Iteration limit reached
		             2 : Problem appears to be infeasible
		             3 : Problem appears to be unbounded
		             4 : Serious numerical difficulties encountered
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
	**/
	static public function linprog_terse_callback(res:Dynamic):Dynamic;
	/**
		A sample callback function demonstrating the linprog callback interface.
		This callback produces detailed output to sys.stdout before each iteration
		and after the final iteration of the simplex algorithm.
		
		Parameters
		----------
		res : A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : 1D array
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        Value of the objective function.
		    success : bool
		        True if the algorithm succeeded in finding an optimal solution.
		    slack : 1D array
		        The values of the slack variables. Each slack variable corresponds
		        to an inequality constraint. If the slack is zero, then the
		        corresponding constraint is active.
		    con : 1D array
		        The (nominally zero) residuals of the equality constraints, that is,
		        ``b - A_eq @ x``
		    phase : int
		        The phase of the optimization being executed. In phase 1 a basic
		        feasible solution is sought and the T has an additional row
		        representing an alternate objective function.
		    status : int
		        An integer representing the exit status of the optimization::
		
		             0 : Optimization terminated successfully
		             1 : Iteration limit reached
		             2 : Problem appears to be infeasible
		             3 : Problem appears to be unbounded
		             4 : Serious numerical difficulties encountered
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
	**/
	static public function linprog_verbose_callback(res:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}