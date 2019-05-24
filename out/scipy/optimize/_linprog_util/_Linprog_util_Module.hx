/* This file is generated, do not edit! */
package scipy.optimize._linprog_util;
@:pythonImport("scipy.optimize._linprog_util") extern class _Linprog_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check the validity of the provided solution.
		
		A valid (optimal) solution satisfies all bounds, all slack variables are
		negative and all equality constraint residuals are strictly non-zero.
		Further, the lower-bounds, upper-bounds, slack and residuals contain
		no nan values.
		
		Parameters
		----------
		x : 1D array
		    Solution vector to original linear programming problem
		fun: float
		    optimal objective value for original problem
		status : int
		    An integer representing the exit status of the optimization::
		
		         0 : Optimization terminated successfully
		         1 : Iteration limit reached
		         2 : Problem appears to be infeasible
		         3 : Problem appears to be unbounded
		         4 : Serious numerical difficulties encountered
		
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
		message : str
		    A string descriptor of the exit status of the optimization.
		tol : float
		    Termination tolerance; see [1]_ Section 4.5.
		
		Returns
		-------
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
	static public function _check_result(x:Dynamic, fun:Dynamic, status:Dynamic, slack:Dynamic, con:Dynamic, lb:Dynamic, ub:Dynamic, tol:Dynamic, message:Dynamic):Int;
	/**
		Check the provided ``A_ub`` and ``A_eq`` matrices conform to the specified
		optional sparsity variables.
		
		Parameters
		----------
		A_ub : 2D array, optional
		    2D array such that ``A_ub @ x`` gives the values of the upper-bound
		    inequality constraints at ``x``.
		A_eq : 2D array, optional
		    2D array such that ``A_eq @ x`` gives the values of the equality
		    constraints at ``x``.
		options : dict
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see :func:`show_options('linprog')`.
		
		Returns
		-------
		A_ub : 2D array, optional
		    2D array such that ``A_ub @ x`` gives the values of the upper-bound
		    inequality constraints at ``x``.
		A_eq : 2D array, optional
		    2D array such that ``A_eq @ x`` gives the values of the equality
		    constraints at ``x``.
		options : dict
		    A dictionary of solver options. All methods accept the following
		    generic options:
		
		        maxiter : int
		            Maximum number of iterations to perform.
		        disp : bool
		            Set to True to print convergence messages.
		
		    For method-specific options, see :func:`show_options('linprog')`.
	**/
	static public function _check_sparse_inputs(options:Dynamic, A_ub:Dynamic, A_eq:Dynamic):Dynamic;
	/**
		Given user inputs for a linear programming problem, return the
		objective vector, upper bound constraints, equality constraints,
		and simple bounds in a preferred format.
		
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
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative).
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm.
		
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
		bounds : sequence of tuples
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for each of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative).
		x0 : 1D array, optional
		    Starting values of the independent variables, which will be refined by
		    the optimization algorithm.
	**/
	static public function _clean_inputs(c:Dynamic, ?A_ub:Dynamic, ?b_ub:Dynamic, ?A_eq:Dynamic, ?b_eq:Dynamic, ?bounds:Dynamic, ?x0:Dynamic):Dynamic;
	/**
		Print the termination summary of the linear program
		
		Parameters
		----------
		message : str
		        A string descriptor of the exit status of the optimization.
		status : int
		    An integer representing the exit status of the optimization::
		
		            0 : Optimization terminated successfully
		            1 : Iteration limit reached
		            2 : Problem appears to be infeasible
		            3 : Problem appears to be unbounded
		            4 : Serious numerical difficulties encountered
		
		fun : float
		    Value of the objective function.
		iteration : iteration
		    The number of iterations performed.
	**/
	static public function _display_summary(message:Dynamic, status:Dynamic, fun:Dynamic, iteration:Dynamic):Dynamic;
	/**
		Format the left hand side of the constraints to a 2D array
		
		Parameters
		----------
		A : 2D array
		    2D array such that ``A @ x`` gives the values of the upper-bound
		    (in)equality constraints at ``x``.
		n_x : int
		    The number of variables in the linear programming problem.
		sparse_lhs : bool
		    Whether either of `A_ub` or `A_eq` are sparse. If true return a
		    coo_matrix instead of a numpy array.
		
		Returns
		-------
		np.ndarray or sparse.coo_matrix
		    2D array such that ``A @ x`` gives the values of the upper-bound
		    (in)equality constraints at ``x``.
	**/
	static public function _format_A_constraints(A:Dynamic, n_x:Dynamic, ?sparse_lhs:Dynamic):Dynamic;
	/**
		Format the upper bounds of the constraints to a 1D array
		
		Parameters
		----------
		b : 1D array
		    1D array of values representing the upper-bound of each (in)equality
		    constraint (row) in ``A``.
		
		Returns
		-------
		1D np.array
		    1D array of values representing the upper-bound of each (in)equality
		    constraint (row) in ``A``.
	**/
	static public function _format_b_constraints(b:Dynamic):Dynamic;
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
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D array
		    An array representing the left-hand side of a system of equations
		b : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy(A:Dynamic, b:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		----------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_dense(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		Eliminates redundant equations from system of equations defined by Ax = b
		and identifies infeasibilities.
		
		Parameters
		----------
		A : 2-D sparse matrix
		    An matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		
		Returns
		-------
		A : 2-D sparse matrix
		    A matrix representing the left-hand side of a system of equations
		rhs : 1-D array
		    An array representing the right-hand side of a system of equations
		status: int
		    An integer indicating the status of the system
		    0: No infeasibility identified
		    2: Trivially infeasible
		message : str
		    A string descriptor of the exit status of the optimization.
		
		References
		----------
		.. [2] Andersen, Erling D. "Finding all linearly dependent rows in
		       large-scale linear programming." Optimization Methods and Software
		       6.3 (1995): 219-227.
	**/
	static public function _remove_redundancy_sparse(A:Dynamic, rhs:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}