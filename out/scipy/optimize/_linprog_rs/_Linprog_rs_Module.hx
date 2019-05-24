/* This file is generated, do not edit! */
package scipy.optimize._linprog_rs;
@:pythonImport("scipy.optimize._linprog_rs") extern class _Linprog_rs_Module {
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
	**/
	static public function _display_iter(phase:Dynamic, iteration:Dynamic, slack:Dynamic, con:Dynamic, fun:Dynamic):Dynamic;
	/**
		Returns logical array indicating the locations of rows with at least
		one nonzero element.
	**/
	static public function _find_nonzero_rows(A:Dynamic, tol:Dynamic):Dynamic;
	/**
		Modifies original problem to create an auxiliary problem with a trivial
		intial basic feasible solution and an objective that minimizes
		infeasibility in the original problem.
		
		Conceptually this is done by stacking an identity matrix on the right of
		the original constraint matrix, adding artificial variables to correspond
		with each of these new columns, and generating a cost vector that is all
		zeros except for ones corresponding with each of the new variables.
		
		A initial basic feasible solution is trivial: all variables are zero
		except for the artificial variables, which are set equal to the
		corresponding element of the right hand side `b`.
		
		Runnning the simplex method on this auxiliary problem drives all of the
		artificial variables - and thus the cost - to zero if the original problem
		is feasible. The original problem is declared infeasible otherwise.
		
		Much of the complexity below is to improve efficiency by using singleton
		columns in the original problem where possible, thus generating artificial
		variables only as necessary, and using an initial 'guess' basic feasible
		solution.
	**/
	static public function _generate_auxiliary_problem(A:Dynamic, b:Dynamic, x0:Dynamic, tol:Dynamic):Dynamic;
	/**
		Called when the auxiliary problem terminates with artificial columns in
		the basis, which must be removed and replaced with non-artificial
		columns. Finds additional columns that do not make the matrix singular.
	**/
	static public function _get_more_basis_columns(A:Dynamic, basis:Dynamic):Dynamic;
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
		The purpose of phase one is to find an initial basic feasible solution
		(BFS) to the original problem.
		
		Generates an auxiliary problem with a trivial BFS and an objective that
		minimizes infeasibility of the original problem. Solves the auxiliary
		problem using the main simplex routine (phase two). This either yields
		a BFS to the original problem or determines that the original problem is
		infeasible. If feasible, phase one detects redundant rows in the original
		constraint matrix and removes them, then chooses additional indices as
		necessary to complete a basis/BFS for the original problem.
	**/
	static public function _phase_one(A:Dynamic, b:Dynamic, x0:Dynamic, maxiter:Dynamic, tol:Dynamic, maxupdate:Dynamic, mast:Dynamic, pivot:Dynamic, ?callback:Dynamic, ?_T_o:Dynamic, ?disp:Dynamic):Dynamic;
	/**
		The heart of the simplex method. Beginning with a basic feasible solution,
		moves to adjacent basic feasible solutions successively lower reduced cost.
		Terminates when there are no basic feasible solutions with lower reduced
		cost or if the problem is determined to be unbounded.
		
		This implementation follows the revised simplex method based on LU
		decomposition. Rather than maintaining a tableau or an inverse of the
		basis matrix, we keep a factorization of the basis matrix that allows
		efficient solution of linear systems while avoiding stability issues
		associated with inverted matrices.
	**/
	static public function _phase_two(c:Dynamic, A:Dynamic, x:Dynamic, b:Dynamic, maxiter:Dynamic, tol:Dynamic, maxupdate:Dynamic, mast:Dynamic, pivot:Dynamic, ?iteration:Dynamic, ?callback:Dynamic, ?_T_o:Dynamic, ?disp:Dynamic, ?phase_one_n:Dynamic):Dynamic;
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
		Selects a pivot to enter the basis. Currently Bland's rule - the smallest
		index that has a negative reduced cost - is the default.
	**/
	static public function _select_enter_pivot(c_hat:Dynamic, bl:Dynamic, a:Dynamic, ?rule:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		Finds singleton columns for which the singleton entry is of the same sign
		as the right hand side; these columns are eligible for inclusion in an
		initial basis. Determines the rows in which the singleton entries are
		located. For each of these rows, returns the indices of the one singleton
		column and its corresponding row.
	**/
	static public function _select_singleton_columns(A:Dynamic, b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Solves the linear equation set ``a * x = b`` for the unknown ``x``
		for square ``a`` matrix.
		
		If the data matrix is known to be a particular type then supplying the
		corresponding string to ``assume_a`` key chooses the dedicated solver.
		The available options are
		
		===================  ========
		 generic matrix       'gen'
		 symmetric            'sym'
		 hermitian            'her'
		 positive definite    'pos'
		===================  ========
		
		If omitted, ``'gen'`` is the default structure.
		
		The datatype of the arrays define which solver is called regardless
		of the values. In other words, even when the complex array entries have
		precisely zero imaginary parts, the complex solver will be called based
		on the data type of the array.
		
		Parameters
		----------
		a : (N, N) array_like
		    Square input data
		b : (N, NRHS) array_like
		    Input data for the right hand side.
		sym_pos : bool, optional
		    Assume `a` is symmetric and positive definite. This key is deprecated
		    and assume_a = 'pos' keyword is recommended instead. The functionality
		    is the same. It will be removed in the future.
		lower : bool, optional
		    If True, only the data contained in the lower triangle of `a`. Default
		    is to use upper triangle. (ignored for ``'gen'``)
		overwrite_a : bool, optional
		    Allow overwriting data in `a` (may enhance performance).
		    Default is False.
		overwrite_b : bool, optional
		    Allow overwriting data in `b` (may enhance performance).
		    Default is False.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		assume_a : str, optional
		    Valid entries are explained above.
		transposed: bool, optional
		    If True, ``a^T x = b`` for real matrices, raises `NotImplementedError`
		    for complex matrices (only for True).
		
		Returns
		-------
		x : (N, NRHS) ndarray
		    The solution array.
		
		Raises
		------
		ValueError
		    If size mismatches detected or input a is not square.
		LinAlgError
		    If the matrix is singular.
		LinAlgWarning
		    If an ill-conditioned input a is detected.
		NotImplementedError
		    If transposed is True and input a is a complex matrix.
		
		Examples
		--------
		Given `a` and `b`, solve for `x`:
		
		>>> a = np.array([[3, 2, 0], [1, -1, 0], [0, 5, 1]])
		>>> b = np.array([2, 4, -1])
		>>> from scipy import linalg
		>>> x = linalg.solve(a, b)
		>>> x
		array([ 2., -2.,  9.])
		>>> np.dot(a, x) == b
		array([ True,  True,  True], dtype=bool)
		
		Notes
		-----
		If the input b matrix is a 1D array with N elements, when supplied
		together with an NxN input a, it is assumed as a valid column vector
		despite the apparent size mismatch. This is compatible with the
		numpy.dot() behavior and the returned result is still 1D array.
		
		The generic, symmetric, hermitian and positive definite solutions are
		obtained via calling ?GESV, ?SYSV, ?HESV, and ?POSV routines of
		LAPACK respectively.
	**/
	static public function solve(a:Dynamic, b:Dynamic, ?sym_pos:Dynamic, ?lower:Dynamic, ?overwrite_a:Dynamic, ?overwrite_b:Dynamic, ?debug:Dynamic, ?check_finite:Dynamic, ?assume_a:Dynamic, ?transposed:Dynamic):Dynamic;
}