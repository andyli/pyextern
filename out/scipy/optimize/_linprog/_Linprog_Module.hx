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
		Solve the following linear programming problem via a two-phase
		simplex algorithm.
		
		maximize:     c^T * x
		
		subject to:   A_ub * x <= b_ub
		              A_eq * x == b_eq
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be maximized.
		A_ub : array_like
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    upper-bound inequality constraints at x.
		b_ub : array_like
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in A_ub.
		A_eq : array_like
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    equality constraints at x.
		b_eq : array_like
		    1-D array of values representing the RHS of each equality constraint
		    (row) in A_eq.
		bounds : array_like
		    The bounds for each independent variable in the solution, which can take
		    one of three forms::
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
		    signature `callback(xk, **kwargs)` where xk is the current solution
		    vector and kwargs is a dictionary containing the following::
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
		    The tolerance which determines when a solution is "close enough" to zero
		    in Phase 1 to be considered a basic feasible solution or close enough
		    to positive to to serve as an optimal solution.
		bland : bool
		    If True, use Bland's anti-cycling rule [3] to choose pivots to
		    prevent cycling.  If False, choose pivots which should lead to a
		    converged solution more quickly.  The latter method is subject to
		    cycling (non-convergence) in rare instances.
		
		Returns
		-------
		A scipy.optimize.OptimizeResult consisting of the following fields::
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
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
		Optimization terminated successfully.
		     Current function value: -22.000000
		     Iterations: 1
		status: 0
		x: array([ 10.,  -3.])
		slack: array([ 39.,   0.])
		nit: 1
		message: 'Optimization terminated successfully.'
		fun: -22.0
		success: True
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ, 1963
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
		pivcol : int
		    The index of the pivot column.
		phase : int
		    The phase of the simplex algorithm (1 or 2).
		tol : float
		    Elements in the pivot column smaller than tol will not be considered
		    for pivoting.  Nominally this value is zero, but numerical issues
		    cause a tolerance about zero to be necessary.
		
		Returns
		-------
		status: bool
		    True if a suitable pivot row was found, otherwise False.  A return
		    of False indicates that the linear programming problem is unbounded.
		row: int
		    The index of the row of the pivot element.  If status is False, row
		    will be returned as nan.
	**/
	static public function _pivot_row(T:Dynamic, pivcol:Dynamic, phase:Dynamic, ?tol:Dynamic):Dynamic;
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
		    feasible solution is sought and the T has an additional row representing
		    an alternate objective function.
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
		    enough to positive to to serve as an optimal solution.
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
		
		Linear Programming is intended to solve the following problem form:
		
		Minimize:     c^T * x
		
		Subject to:   A_ub * x <= b_ub
		              A_eq * x == b_eq
		
		Parameters
		----------
		c : array_like
		    Coefficients of the linear objective function to be minimized.
		A_ub : array_like, optional
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    upper-bound inequality constraints at x.
		b_ub : array_like, optional
		    1-D array of values representing the upper-bound of each inequality
		    constraint (row) in A_ub.
		A_eq : array_like, optional
		    2-D array which, when matrix-multiplied by x, gives the values of the
		    equality constraints at x.
		b_eq : array_like, optional
		    1-D array of values representing the RHS of each equality constraint
		    (row) in A_eq.
		bounds : sequence, optional
		    ``(min, max)`` pairs for each element in ``x``, defining
		    the bounds on that parameter. Use None for one of ``min`` or
		    ``max`` when there is no bound in that direction. By default
		    bounds are ``(0, None)`` (non-negative)
		    If a sequence containing a single tuple is provided, then ``min`` and
		    ``max`` will be applied to all variables in the problem.
		method : str, optional
		    Type of solver.  At this time only 'simplex' is supported
		    :ref:`(see here) <optimize.linprog-simplex>`.
		callback : callable, optional
		    If a callback function is provide, it will be called within each
		    iteration of the simplex algorithm. The callback must have the signature
		    `callback(xk, **kwargs)` where xk is the current solution vector
		    and kwargs is a dictionary containing the following::
		
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
		
		    For method-specific options, see `show_options('linprog')`.
		
		Returns
		-------
		A `scipy.optimize.OptimizeResult` consisting of the following fields:
		
		    x : ndarray
		        The independent variable vector which optimizes the linear
		        programming problem.
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
		'method' parameter. The default method is :ref:`Simplex <optimize.linprog-simplex>`.
		
		Method *Simplex* uses the Simplex algorithm (as it relates to Linear
		Programming, NOT the Nelder-Mead Simplex) [1]_, [2]_. This algorithm
		should be reasonably reliable and fast.
		
		.. versionadded:: 0.15.0
		
		References
		----------
		.. [1] Dantzig, George B., Linear programming and extensions. Rand
		       Corporation Research Study Princeton Univ. Press, Princeton, NJ, 1963
		.. [2] Hillier, S.H. and Lieberman, G.J. (1995), "Introduction to
		       Mathematical Programming", McGraw-Hill, Chapter 4.
		.. [3] Bland, Robert G. New finite pivoting rules for the simplex method.
		       Mathematics of Operations Research (2), 1977: pp. 103-107.
		
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
		>>> print(res)
		Optimization terminated successfully.
		     Current function value: -11.428571
		     Iterations: 2
		status: 0
		success: True
		fun: -11.428571428571429
		x: array([-1.14285714,  2.57142857])
		message: 'Optimization terminated successfully.'
		nit: 2
		
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