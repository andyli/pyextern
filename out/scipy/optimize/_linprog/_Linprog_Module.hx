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
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
	/**
		Minimize a linear objective function subject to linear
		equality constraints, linear inequality constraints, and simple bounds
		using the interior point method of [1]_.
		
		Linear programming is intended to solve problems of the following form::
		
		    Minimize:     c^T * x
		
		    Subject to:   A_ub * x <= b_ub
		                  A_eq * x == b_eq
		                  bounds[i][0] < x_i < bounds[i][1]
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : array_like, optional
		    1-D array of values representing the right hand side of each equality
		    constraint (row) in ``A_eq``.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use ``None`` for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative).
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		
		Options
		-------
		maxiter : int (default = 1000)
		    The maximum number of iterations of the algorithm.
		disp : bool (default = False)
		    Set to ``True`` if indicators of optimization status are to be printed
		    to the console each iteration.
		tol : float (default = 1e-8)
		    Termination tolerance to be used for all termination criteria;
		    see [1]_ Section 4.5.
		alpha0 : float (default = 0.99995)
		    The maximal step size for Mehrota's predictor-corrector search
		    direction; see :math:`\beta_{3}` of [1]_ Table 8.1.
		beta : float (default = 0.1)
		    The desired reduction of the path parameter :math:`\mu` (see [3]_)
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
		    substitution. This is typically faster for moderate, dense problems
		    that are numerically well-behaved.
		pc : bool (default = True)
		    Leave ``True`` if the predictor-corrector method of Mehrota is to be
		    used. This is almost always (if not always) beneficial.
		ip : bool (default = False)
		    Set to ``True`` if the improved initial point suggestion due to [1]_
		    Section 4.3 is desired. Whether this is beneficial or not
		    depends on the problem.
		presolve : bool (default = True)
		    Leave ``True`` if presolve routine should be run. The presolve routine
		    is almost always useful because it can detect trivial infeasibilities
		    and unboundedness, eliminate fixed variables, and remove redundancies.
		    One circumstance in which it might be turned off (set ``False``) is
		    when it detects that the problem is trivially unbounded; it is possible
		    that that the problem is truly infeasibile but this has not been
		    detected.
		rr : bool (default = True)
		    Default ``True`` attempts to eliminate any redundant rows in ``A_eq``.
		    Set ``False`` if ``A_eq`` is known to be of full row rank, or if you
		    are looking for a potential speedup (at the expense of reliability).
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
		A ``scipy.optimize.OptimizeResult`` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        The optimal value of the objective function
		    con : float
		        The residuals of the equality constraints (nominally zero).
		    slack : ndarray
		        The values of the slack variables.  Each slack variable corresponds
		        to an inequality constraint.  If the slack is zero, then the
		        corresponding constraint is active.
		    success : bool
		        Returns True if the algorithm succeeded in finding an optimal
		        solution.
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
		
		Notes
		-----
		
		This method implements the algorithm outlined in [1]_ with ideas from [5]_
		and a structure inspired by the simpler methods of [3]_ and [4]_.
		
		First, a presolve procedure based on [5]_ attempts to identify trivial
		infeasibilities, trivial unboundedness, and potential problem
		simplifications. Specifically, it checks for:
		
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
		(but infeasibility has not been detected yet). Therefore, if the output
		message states that unboundedness is detected in presolve and it is
		necessary to know whether the problem is actually infeasible, set option
		``presolve=False``.
		
		If neither infeasibility nor unboundedness are detected in a single pass
		of the presolve check, bounds are tightened where possible and fixed
		variables are removed from the problem. Then, linearly dependent rows
		of the ``A_eq`` matrix are removed, (unless they represent an
		infeasibility) to avoid numerical difficulties in the primary solve
		routine. Note that rows that are nearly linearly dependent (within a
		prescibed tolerance) may also be removed, which can change the optimal
		solution in rare cases. If this is a concern, eliminate redundancy from
		your problem formulation and run with option ``rr=False`` or
		``presolve=False``.
		
		Several potential improvements can be made here: additional presolve
		checks outlined in [5]_ should be implemented, the presolve routine should
		be run multiple times (until no further simplifications can be made), and
		more of the efficiency improvements from [2]_ should be implemented in the
		redundancy removal routines.
		
		After presolve, the problem is transformed to standard form by converting
		the (tightened) simple bounds to upper bound constraints, introducing
		non-negative slack variables for inequality constraints, and expressing
		unbounded variables as the difference between two non-negative variables.
		
		The primal-dual path following method begins with initial 'guesses' of
		the primal and dual variables of the standard form problem and iteratively
		attempts to solve the (nonlinear) Karush-Kuhn-Tucker conditions for the
		problem with a gradually reduced logarithmic barrier term added to the
		objective. This particular implementation uses a homogeneous self-dual
		formulation, which provides certificates of infeasibility or unboundedness
		where applicable.
		
		The default initial point for the primal and dual variables is that
		defined in [1]_ Section 4.4 Equation 8.22. Optionally (by setting initial
		point option ``ip=True``), an alternate (potentially improved) starting
		point can be calculated according to the additional recommendations of
		[1]_ Section 4.4.
		
		A search direction is calculated using the predictor-corrector method
		(single correction) proposed by Mehrota and detailed in [1]_ Section 4.1.
		(A potential improvement would be to implement the method of multiple
		corrections described in [1]_ Section 4.2.) In practice, this is
		accomplished by solving the normal equations, [1]_ Section 5.1 Equations
		8.31 and 8.32, derived from the Newton equations [1]_ Section 5 Equations
		8.25 (compare to [1]_ Section 4 Equations 8.6-8.8). The advantage of
		solving the normal equations rather than 8.25 directly is that the
		matrices involved are symmetric positive definite, so Cholesky
		decomposition can be used rather than the more expensive LU factorization.
		
		With the default ``cholesky=True``, this is accomplished using
		``scipy.linalg.cho_factor`` followed by forward/backward substitutions
		via ``scipy.linalg.cho_solve``. With ``cholesky=False`` and
		``sym_pos=True``, Cholesky decomposition is performed instead by
		``scipy.linalg.solve``. Based on speed tests, this also appears to retain
		the Cholesky decomposition of the matrix for later use, which is beneficial
		as the same system is solved four times with different right hand sides
		in each iteration of the algorithm.
		
		In problems with redundancy (e.g. if presolve is turned off with option
		``presolve=False``) or if the matrices become ill-conditioned (e.g. as the
		solution is approached and some decision variables approach zero),
		Cholesky decomposition can fail. Should this occur, successively more
		robust solvers (``scipy.linalg.solve`` with ``sym_pos=False`` then
		``scipy.linalg.lstsq``) are tried, at the cost of computational efficiency.
		These solvers can be used from the outset by setting the options
		``sym_pos=False`` and ``lstsq=True``, respectively.
		
		Note that with the option ``sparse=True``, the normal equations are solved
		using ``scipy.sparse.linalg.spsolve``. Unfortunately, this uses the more
		expensive LU decomposition from the outset, but for large, sparse problems,
		the use of sparse linear algebra techniques improves the solve speed
		despite the use of LU rather than Cholesky decomposition. A simple
		improvement would be to use the sparse Cholesky decomposition of
		``CHOLMOD`` via ``scikit-sparse`` when available.
		
		Other potential improvements for combatting issues associated with dense
		columns in otherwise sparse problems are outlined in [1]_ Section 5.3 and
		[7]_ Section 4.1-4.2; the latter also discusses the alleviation of
		accuracy issues associated with the substitution approach to free
		variables.
		
		After calculating the search direction, the maximum possible step size
		that does not activate the non-negativity constraints is calculated, and
		the smaller of this step size and unity is applied (as in [1]_ Section
		4.1.) [1]_ Section 4.3 suggests improvements for choosing the step size.
		
		The new point is tested according to the termination conditions of [1]_
		Section 4.5. The same tolerance, which can be set using the ``tol`` option,
		is used for all checks. (A potential improvement would be to expose
		the different tolerances to be set independently.) If optimality,
		unboundedness, or infeasibility is detected, the solve procedure
		terminates; otherwise it repeats.
		
		If optimality is achieved, a postsolve procedure undoes transformations
		associated with presolve and converting to standard form. It then
		calculates the residuals (equality constraint violations, which should
		be very small) and slacks (difference between the left and right hand
		sides of the upper bound constraints) of the original problem, which are
		returned with the solution in an ``OptimizeResult`` object.
		
		References
		----------
		.. [1] Andersen, Erling D., and Knud D. Andersen. "The MOSEK interior point
		       optimizer for linear programming: an implementation of the
		       homogeneous algorithm." High performance optimization. Springer US,
		       2000. 197-232.
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
		.. [3] Freund, Robert M. "Primal-Dual Interior-Point Methods for Linear
		       Programming based on Newton's Method." Unpublished Course Notes,
		       March 2004. Available 2/25/2017 at
		       https://ocw.mit.edu/courses/sloan-school-of-management/15-084j-nonlinear-programming-spring-2004/lecture-notes/lec14_int_pt_mthd.pdf
		.. [4] Fourer, Robert. "Solving Linear Programs by Interior-Point Methods."
		       Unpublished Course Notes, August 26, 2005. Available 2/25/2017 at
		       http://www.4er.org/CourseNotes/Book%20B/B-III.pdf
		.. [5] Andersen, Erling D., and Knud D. Andersen. "Presolving in linear
		       programming." Mathematical Programming 71.2 (1995): 221-245.
		.. [6] Bertsimas, Dimitris, and J. Tsitsiklis. "Introduction to linear
		       programming." Athena Scientific 1 (1997): 997.
		.. [7] Andersen, Erling D., et al. Implementation of interior point methods
		       for large scale linear programming. HEC/Universite de Geneve, 1996.
	**/
	static public function _linprog_ip(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?callback:Dynamic, ?alpha0:Dynamic, ?beta:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?tol:Dynamic, ?sparse:Dynamic, ?lstsq:Dynamic, ?sym_pos:Dynamic, ?cholesky:Dynamic, ?pc:Dynamic, ?ip:Dynamic, ?presolve:Dynamic, ?permc_spec:Dynamic, ?rr:Dynamic, ?_sparse_presolve:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Solve the following linear programming problem via a two-phase
		simplex algorithm.::
		
		    minimize:     c^T * x
		
		    subject to:   A_ub * x <= b_ub
		                  A_eq * x == b_eq
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : array_like
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : array_like
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : array_like
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : array_like
		    The bounds for each independent variable in the solution, which can
		    take one of three forms::
		
		    None : The default bounds, all variables are non-negative.
		    (lb, ub) : If a 2-element sequence is provided, the same
		              lower bound (lb) and upper bound (ub) will be applied
		              to all variables.
		    [(lb_0, ub_0), (lb_1, ub_1), ...] : If an n x 2 sequence is provided,
		              each variable x_i will be bounded by lb[i] and ub[i].
		    Infinite bounds are specified using -np.inf (negative)
		    or np.inf (positive).
		
		callback : callable
		    If a callback function is provide, it will be called within each
		    iteration of the simplex algorithm. The callback must have the
		    signature ``callback(xk, **kwargs)`` where ``xk`` is the current s
		    olution vector and kwargs is a dictionary containing the following::
		
		    "tableau" : The current Simplex algorithm tableau
		    "nit" : The current iteration.
		    "pivot" : The pivot (row, column) used for the next iteration.
		    "phase" : Whether the algorithm is in Phase 1 or Phase 2.
		    "bv" : A structured array containing a string representation of each
		           basic variable and its current value.
		
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
		    If True, use Bland's anti-cycling rule [3] to choose pivots to
		    prevent cycling.  If False, choose pivots which should lead to a
		    converged solution more quickly.  The latter method is subject to
		    cycling (non-convergence) in rare instances.
		
		Returns
		-------
		A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        Value of the objective function.
		    slack : ndarray
		        The values of the slack variables.  Each slack variable corresponds
		        to an inequality constraint.  If the slack is zero, then the
		        corresponding constraint is active.
		    success : bool
		        Returns True if the algorithm succeeded in finding an optimal
		        solution.
		    status : int
		        An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
		
		Examples
		--------
		Consider the following problem:
		
		Minimize: f = -1*x[0] + 4*x[1]
		
		Subject to: -3*x[0] + 1*x[1] <= 6
		             1*x[0] + 2*x[1] <= 4
		                        x[1] >= -3
		
		where:  -inf <= x[0] <= inf
		
		This problem deviates from the standard linear programming problem.  In
		standard form, linear programming problems assume the variables x are
		non-negative.  Since the variables don't have standard bounds where
		0 <= x <= inf, the bounds of the variables must be explicitly set.
		
		There are two upper-bound constraints, which can be expressed as
		
		dot(A_ub, x) <= b_ub
		
		The input for this problem is as follows:
		
		>>> from scipy.optimize import linprog
		>>> c = [-1, 4]
		>>> A = [[-3, 1], [1, 2]]
		>>> b = [6, 4]
		>>> x0_bnds = (None, None)
		>>> x1_bnds = (-3, None)
		>>> res = linprog(c, A, b, bounds=(x0_bnds, x1_bnds))
		>>> print(res)
		     fun: -22.0
		 message: 'Optimization terminated successfully.'
		     nit: 1
		   slack: array([ 39.,   0.])
		  status: 0
		 success: True
		       x: array([ 10.,  -3.])
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ,
		       1963
		.. [2] Hillier, S.H. and Lieberman, G.J. (1995), "Introduction to
		       Mathematical Programming", McGraw-Hill, Chapter 4.
		.. [3] Bland, Robert G. New finite pivoting rules for the simplex method.
		       Mathematics of Operations Research (2), 1977: pp. 103-107.
	**/
	static public function _linprog_simplex(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?callback:Dynamic, ?tol:Dynamic, ?bland:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Given a linear programming simplex tableau, determine the column
		of the variable to enter the basis.
		
		Parameters
		----------
		T : 2D ndarray
		    The simplex tableau.
		tol : float
		    Elements in the objective row larger than -tol will not be considered
		    for pivoting.  Nominally this value is zero, but numerical issues
		    cause a tolerance about zero to be necessary.
		bland : bool
		    If True, use Bland's rule for selection of the column (select the
		    first column with a negative coefficient in the objective row,
		    regardless of magnitude).
		
		Returns
		-------
		status: bool
		    True if a suitable pivot column was found, otherwise False.
		    A return of False indicates that the linear programming simplex
		    algorithm is complete.
		col: int
		    The index of the column of the pivot element.
		    If status is False, col will be returned as nan.
	**/
	static public function _pivot_col(T:Dynamic, ?tol:Dynamic, ?bland:Dynamic):Dynamic;
	/**
		Given a linear programming simplex tableau, determine the row for the
		pivot operation.
		
		Parameters
		----------
		T : 2D ndarray
		    The simplex tableau.
		basis : array
		    A list of the current basic variables.
		pivcol : int
		    The index of the pivot column.
		phase : int
		    The phase of the simplex algorithm (1 or 2).
		tol : float
		    Elements in the pivot column smaller than tol will not be considered
		    for pivoting.  Nominally this value is zero, but numerical issues
		    cause a tolerance about zero to be necessary.
		bland : bool
		    If True, use Bland's rule for selection of the row (if more than one
		    row can be used, choose the one with the lowest variable index).
		
		Returns
		-------
		status: bool
		    True if a suitable pivot row was found, otherwise False.  A return
		    of False indicates that the linear programming problem is unbounded.
		row: int
		    The index of the row of the pivot element.  If status is False, row
		    will be returned as nan.
	**/
	static public function _pivot_row(T:Dynamic, basis:Dynamic, pivcol:Dynamic, phase:Dynamic, ?tol:Dynamic, ?bland:Dynamic):Dynamic;
	/**
		Solve a linear programming problem in "standard maximization form" using
		the Simplex Method.
		
		Minimize :math:`f = c^T x`
		
		subject to
		
		.. math::
		
		    Ax = b
		    x_i >= 0
		    b_j >= 0
		
		Parameters
		----------
		T : array_like
		    A 2-D array representing the simplex T corresponding to the
		    maximization problem.  It should have the form:
		
		    [[A[0, 0], A[0, 1], ..., A[0, n_total], b[0]],
		     [A[1, 0], A[1, 1], ..., A[1, n_total], b[1]],
		     .
		     .
		     .
		     [A[m, 0], A[m, 1], ..., A[m, n_total], b[m]],
		     [c[0],   c[1], ...,   c[n_total],    0]]
		
		    for a Phase 2 problem, or the form:
		
		    [[A[0, 0], A[0, 1], ..., A[0, n_total], b[0]],
		     [A[1, 0], A[1, 1], ..., A[1, n_total], b[1]],
		     .
		     .
		     .
		     [A[m, 0], A[m, 1], ..., A[m, n_total], b[m]],
		     [c[0],   c[1], ...,   c[n_total],   0],
		     [c'[0],  c'[1], ...,  c'[n_total],  0]]
		
		     for a Phase 1 problem (a Problem in which a basic feasible solution is
		     sought prior to maximizing the actual objective.  T is modified in
		     place by _solve_simplex.
		n : int
		    The number of true variables in the problem.
		basis : array
		    An array of the indices of the basic variables, such that basis[i]
		    contains the column corresponding to the basic variable for row i.
		    Basis is modified in place by _solve_simplex
		maxiter : int
		    The maximum number of iterations to perform before aborting the
		    optimization.
		phase : int
		    The phase of the optimization being executed.  In phase 1 a basic
		    feasible solution is sought and the T has an additional row
		    representing an alternate objective function.
		callback : callable, optional
		    If a callback function is provided, it will be called within each
		    iteration of the simplex algorithm. The callback must have the
		    signature `callback(xk, **kwargs)` where xk is the current solution
		    vector and kwargs is a dictionary containing the following::
		    "T" : The current Simplex algorithm T
		    "nit" : The current iteration.
		    "pivot" : The pivot (row, column) used for the next iteration.
		    "phase" : Whether the algorithm is in Phase 1 or Phase 2.
		    "basis" : The indices of the columns of the basic variables.
		tol : float
		    The tolerance which determines when a solution is "close enough" to
		    zero in Phase 1 to be considered a basic feasible solution or close
		    enough to positive to serve as an optimal solution.
		nit0 : int
		    The initial iteration number used to keep an accurate iteration total
		    in a two-phase problem.
		bland : bool
		    If True, choose pivots using Bland's rule [3].  In problems which
		    fail to converge due to cycling, using Bland's rule can provide
		    convergence at the expense of a less optimal path about the simplex.
		
		Returns
		-------
		res : OptimizeResult
		    The optimization result represented as a ``OptimizeResult`` object.
		    Important attributes are: ``x`` the solution array, ``success`` a
		    Boolean flag indicating if the optimizer exited successfully and
		    ``message`` which describes the cause of the termination. Possible
		    values for the ``status`` attribute are:
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		
		    See `OptimizeResult` for a description of other attributes.
	**/
	static public function _solve_simplex(T:Dynamic, n:Dynamic, basis:Dynamic, ?maxiter:Dynamic, ?phase:Dynamic, ?callback:Dynamic, ?tol:Dynamic, ?nit0:Dynamic, ?bland:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Minimize a linear objective function subject to linear
		equality and inequality constraints.
		
		Linear Programming is intended to solve the following problem form::
		
		    Minimize:     c^T * x
		
		    Subject to:   A_ub * x <= b_ub
		                  A_eq * x == b_eq
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the upper-bound inequality constraints at ``x``.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in ``A_ub``.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by ``x``, gives the values of
		    the equality constraints at ``x``.
		b_eq : array_like, optional
		    1-D array of values representing the RHS of each equality constraint
		    (row) in ``A_eq``.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative)
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		method : str, optional
		    Type of solver.  :ref:`'simplex' <optimize.linprog-simplex>`
		    and :ref:`'interior-point' <optimize.linprog-interior-point>`
		    are supported.
		callback : callable, optional (simplex only)
		    If a callback function is provide, it will be called within each
		    iteration of the simplex algorithm. The callback must have the
		    signature ``callback(xk, **kwargs)`` where ``xk`` is the current
		    solution vector and ``kwargs`` is a dictionary containing the
		    following::
		
		        "tableau" : The current Simplex algorithm tableau
		        "nit" : The current iteration.
		        "pivot" : The pivot (row, column) used for the next iteration.
		        "phase" : Whether the algorithm is in Phase 1 or Phase 2.
		        "basis" : The indices of the columns of the basic variables.
		
		options : dict, optional
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see :func:`show_options('linprog')`.
		
		Returns
		-------
		A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
		    fun : float
		        Value of the objective function.
		    slack : ndarray
		        The values of the slack variables.  Each slack variable corresponds
		        to an inequality constraint.  If the slack is zero, then the
		        corresponding constraint is active.
		    success : bool
		        Returns True if the algorithm succeeded in finding an optimal
		        solution.
		    status : int
		        An integer representing the exit status of the optimization::
		
		             0 : Optimization terminated successfully
		             1 : Iteration limit reached
		             2 : Problem appears to be infeasible
		             3 : Problem appears to be unbounded
		
		    nit : int
		        The number of iterations performed.
		    message : str
		        A string descriptor of the exit status of the optimization.
		
		See Also
		--------
		show_options : Additional options accepted by the solvers
		
		Notes
		-----
		This section describes the available solvers that can be selected by the
		'method' parameter. The default method
		is :ref:`Simplex <optimize.linprog-simplex>`.
		:ref:`Interior point <optimize.linprog-interior-point>` is also available.
		
		Method *simplex* uses the simplex algorithm (as it relates to linear
		programming, NOT the Nelder-Mead simplex) [1]_, [2]_. This algorithm
		should be reasonably reliable and fast for small problems.
		
		.. versionadded:: 0.15.0
		
		Method *interior-point* uses the primal-dual path following algorithm
		as outlined in [4]_. This algorithm is intended to provide a faster
		and more reliable alternative to *simplex*, especially for large,
		sparse problems. Note, however, that the solution returned may be slightly
		less accurate than that of the simplex method and may not correspond with a
		vertex of the polytope defined by the constraints.
		
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
		
		Examples
		--------
		Consider the following problem:
		
		Minimize: f = -1*x[0] + 4*x[1]
		
		Subject to: -3*x[0] + 1*x[1] <= 6
		             1*x[0] + 2*x[1] <= 4
		                        x[1] >= -3
		
		where:  -inf <= x[0] <= inf
		
		This problem deviates from the standard linear programming problem.
		In standard form, linear programming problems assume the variables x are
		non-negative.  Since the variables don't have standard bounds where
		0 <= x <= inf, the bounds of the variables must be explicitly set.
		
		There are two upper-bound constraints, which can be expressed as
		
		dot(A_ub, x) <= b_ub
		
		The input for this problem is as follows:
		
		>>> c = [-1, 4]
		>>> A = [[-3, 1], [1, 2]]
		>>> b = [6, 4]
		>>> x0_bounds = (None, None)
		>>> x1_bounds = (-3, None)
		>>> from scipy.optimize import linprog
		>>> res = linprog(c, A_ub=A, b_ub=b, bounds=(x0_bounds, x1_bounds),
		...               options={"disp": True})
		Optimization terminated successfully.
		     Current function value: -22.000000
		     Iterations: 1
		>>> print(res)
		     fun: -22.0
		 message: 'Optimization terminated successfully.'
		     nit: 1
		   slack: array([39.,  0.])
		  status: 0
		 success: True
		       x: array([10., -3.])
		
		Note the actual objective value is 11.428571.  In this case we minimized
		the negative of the objective function.
	**/
	static public function linprog(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?method:Dynamic, ?callback:Dynamic, ?options:Dynamic):Dynamic;
	/**
		A sample callback function demonstrating the linprog callback interface.
		This callback produces brief output to sys.stdout before each iteration
		and after the final iteration of the simplex algorithm.
		
		Parameters
		----------
		xk : array_like
		    The current solution vector.
		**kwargs : dict
		    A dictionary containing the following parameters:
		
		    tableau : array_like
		        The current tableau of the simplex algorithm.
		        Its structure is defined in _solve_simplex.
		    vars : tuple(str, ...)
		        Column headers for each column in tableau.
		        "x[i]" for actual variables, "s[i]" for slack surplus variables,
		        "a[i]" for artificial variables, and "RHS" for the constraint
		        RHS vector.
		    phase : int
		        The current Phase of the simplex algorithm (1 or 2)
		    nit : int
		        The current iteration number.
		    pivot : tuple(int, int)
		        The index of the tableau selected as the next pivot,
		        or nan if no pivot exists
		    basics : list[tuple(int, float)]
		        A list of the current basic variables.
		        Each element contains the index of a basic variable and
		        its value.
		    complete : bool
		        True if the simplex algorithm has completed
		        (and this is the final call to callback), otherwise False.
	**/
	static public function linprog_terse_callback(xk:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A sample callback function demonstrating the linprog callback interface.
		This callback produces detailed output to sys.stdout before each iteration
		and after the final iteration of the simplex algorithm.
		
		Parameters
		----------
		xk : array_like
		    The current solution vector.
		**kwargs : dict
		    A dictionary containing the following parameters:
		
		    tableau : array_like
		        The current tableau of the simplex algorithm.
		        Its structure is defined in _solve_simplex.
		    phase : int
		        The current Phase of the simplex algorithm (1 or 2)
		    nit : int
		        The current iteration number.
		    pivot : tuple(int, int)
		        The index of the tableau selected as the next pivot,
		        or nan if no pivot exists
		    basis : array(int)
		        A list of the current basic variables.
		        Each element contains the name of a basic variable and its value.
		    complete : bool
		        True if the simplex algorithm has completed
		        (and this is the final call to callback), otherwise False.
	**/
	static public function linprog_verbose_callback(xk:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}