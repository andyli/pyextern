/* This file is generated, do not edit! */
package scipy.optimize._linprog_simplex;
@:pythonImport("scipy.optimize._linprog_simplex") extern class _Linprog_simplex_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Pivot the simplex tableau inplace on the element given by (pivrow, pivol).
		The entering variable corresponds to the column given by pivcol forcing
		the variable basis[pivrow] to leave the basis.
		
		Parameters
		----------
		T : 2D array
		    A 2D array representing the simplex tableau, T, corresponding to the
		    linear programming problem. It should have the form:
		
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
		
		     for a Phase 1 problem (a problem in which a basic feasible solution is
		     sought prior to maximizing the actual objective. ``T`` is modified in
		     place by ``_solve_simplex``.
		basis : 1D array
		    An array of the indices of the basic variables, such that basis[i]
		    contains the column corresponding to the basic variable for row i.
		    Basis is modified in place by _apply_pivot.
		pivrow : int
		    Row index of the pivot.
		pivcol : int
		    Column index of the pivot.
	**/
	static public function _apply_pivot(T:Dynamic, basis:Dynamic, pivrow:Dynamic, pivcol:Dynamic, ?tol:Dynamic):Dynamic;
	static public function _check_unknown_options(unknown_options:Dynamic):Dynamic;
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
		Given a linear programming simplex tableau, determine the column
		of the variable to enter the basis.
		
		Parameters
		----------
		T : 2D array
		    A 2D array representing the simplex tableau, T, corresponding to the
		    linear programming problem. It should have the form:
		
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
		
		     for a Phase 1 problem (a problem in which a basic feasible solution is
		     sought prior to maximizing the actual objective. ``T`` is modified in
		     place by ``_solve_simplex``.
		tol : float
		    Elements in the objective row larger than -tol will not be considered
		    for pivoting. Nominally this value is zero, but numerical issues
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
		T : 2D array
		    A 2D array representing the simplex tableau, T, corresponding to the
		    linear programming problem. It should have the form:
		
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
		     sought prior to maximizing the actual objective. ``T`` is modified in
		     place by ``_solve_simplex``.
		basis : array
		    A list of the current basic variables.
		pivcol : int
		    The index of the pivot column.
		phase : int
		    The phase of the simplex algorithm (1 or 2).
		tol : float
		    Elements in the pivot column smaller than tol will not be considered
		    for pivoting. Nominally this value is zero, but numerical issues
		    cause a tolerance about zero to be necessary.
		bland : bool
		    If True, use Bland's rule for selection of the row (if more than one
		    row can be used, choose the one with the lowest variable index).
		
		Returns
		-------
		status: bool
		    True if a suitable pivot row was found, otherwise False. A return
		    of False indicates that the linear programming problem is unbounded.
		row: int
		    The index of the row of the pivot element. If status is False, row
		    will be returned as nan.
	**/
	static public function _pivot_row(T:Dynamic, basis:Dynamic, pivcol:Dynamic, phase:Dynamic, ?tol:Dynamic, ?bland:Dynamic):Dynamic;
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
		Solve a linear programming problem in "standard form" using the Simplex
		Method. Linear Programming is intended to solve the following problem form:
		
		Minimize::
		
		    c @ x
		
		Subject to::
		
		    A @ x == b
		        x >= 0
		
		Parameters
		----------
		T : 2D array
		    A 2D array representing the simplex tableau, T, corresponding to the
		    linear programming problem. It should have the form:
		
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
		
		     for a Phase 1 problem (a problem in which a basic feasible solution is
		     sought prior to maximizing the actual objective. ``T`` is modified in
		     place by ``_solve_simplex``.
		n : int
		    The number of true variables in the problem.
		basis : 1D array
		    An array of the indices of the basic variables, such that basis[i]
		    contains the column corresponding to the basic variable for row i.
		    Basis is modified in place by _solve_simplex
		maxiter : int
		    The maximum number of iterations to perform before aborting the
		    optimization.
		phase : int
		    The phase of the optimization being executed. In phase 1 a basic
		    feasible solution is sought and the T has an additional row
		    representing an alternate objective function.
		callback : callable, optional
		    If a callback function is provided, it will be called within each
		    iteration of the algorithm. The callback must accept a
		    `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		        x : 1D array
		            Current solution vector
		        fun : float
		            Current value of the objective function
		        success : bool
		            True only when a phase has completed successfully. This
		            will be False for most iterations.
		        slack : 1D array
		            The values of the slack variables. Each slack variable
		            corresponds to an inequality constraint. If the slack is zero,
		            the corresponding constraint is active.
		        con : 1D array
		            The (nominally zero) residuals of the equality constraints,
		            that is, ``b - A_eq @ x``
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
		tol : float
		    The tolerance which determines when a solution is "close enough" to
		    zero in Phase 1 to be considered a basic feasible solution or close
		    enough to positive to serve as an optimal solution.
		nit0 : int
		    The initial iteration number used to keep an accurate iteration total
		    in a two-phase problem.
		bland : bool
		    If True, choose pivots using Bland's rule [3]_. In problems which
		    fail to converge due to cycling, using Bland's rule can provide
		    convergence at the expense of a less optimal path about the simplex.
		
		Returns
		-------
		nit : int
		    The number of iterations. Used to keep an accurate iteration total
		    in the two-phase problem.
		status : int
		    An integer representing the exit status of the optimization::
		
		     0 : Optimization terminated successfully
		     1 : Iteration limit reached
		     2 : Problem appears to be infeasible
		     3 : Problem appears to be unbounded
		     4 : Serious numerical difficulties encountered
	**/
	static public function _solve_simplex(T:Dynamic, n:Dynamic, basis:Dynamic, ?maxiter:Dynamic, ?phase:Dynamic, ?status:Dynamic, ?message:Dynamic, ?callback:Dynamic, ?tol:Dynamic, ?nit0:Dynamic, ?bland:Dynamic, ?_T_o:Dynamic):Int;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}