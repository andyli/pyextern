/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.minimize_trustregion_constr;
@:pythonImport("scipy.optimize._trustregion_constr.minimize_trustregion_constr") extern class Minimize_trustregion_constr_Module {
	static public var TERMINATION_MESSAGES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Minimize a scalar function subject to constraints.
		
		Parameters
		----------
		gtol : float, optional
		    Tolerance for termination by the norm of the Lagrangian gradient.
		    The algorithm will terminate when both the infinity norm (i.e. max
		    abs value) of the Lagrangian gradient and the constraint violation
		    are smaller than ``gtol``. Default is 1e-8.
		xtol : float, optional
		    Tolerance for termination by the change of the independent variable.
		    The algorithm will terminate when ``tr_radius < xtol``, where
		    ``tr_radius`` is the radius of the trust region used in the algorithm.
		    Default is 1e-8.
		barrier_tol : float, optional
		    Threshold on the barrier parameter for the algorithm termination.
		    When inequality constraints are present the algorithm will terminate
		    only when the barrier parameter is less than `barrier_tol`.
		    Default is 1e-8.
		sparse_jacobian : {bool, None}, optional
		    Determines how to represent Jacobians of the constraints. If bool,
		    then Jacobians of all the constraints will be converted to the
		    corresponding format. If None (default), then Jacobians won't be
		    converted, but the algorithm can proceed only if they all have the
		    same format.
		initial_tr_radius: float, optional
		    Initial trust radius. The trust radius gives the maximum distance
		    between solution points in consecutive iterations. It reflects the
		    trust the algorithm puts in the local approximation of the optimization
		    problem. For an accurate local approximation the trust-region should be
		    large and for an  approximation valid only close to the current point it
		    should be a small one. The trust radius is automatically updated throughout
		    the optimization process, with ``initial_tr_radius`` being its initial value.
		    Default is 1 (recommended in [1]_, p. 19).
		initial_constr_penalty : float, optional
		    Initial constraints penalty parameter. The penalty parameter is used for
		    balancing the requirements of decreasing the objective function
		    and satisfying the constraints. It is used for defining the merit function:
		    ``merit_function(x) = fun(x) + constr_penalty * constr_norm_l2(x)``,
		    where ``constr_norm_l2(x)`` is the l2 norm of a vector containing all
		    the constraints. The merit function is used for accepting or rejecting
		    trial points and ``constr_penalty`` weights the two conflicting goals
		    of reducing objective function and constraints. The penalty is automatically
		    updated throughout the optimization  process, with
		    ``initial_constr_penalty`` being its  initial value. Default is 1
		    (recommended in [1]_, p 19).
		initial_barrier_parameter, initial_barrier_tolerance: float, optional
		    Initial barrier parameter and initial tolerance for the barrier subproblem.
		    Both are used only when inequality constraints are present. For dealing with
		    optimization problems ``min_x f(x)`` subject to inequality constraints
		    ``c(x) <= 0`` the algorithm introduces slack variables, solving the problem
		    ``min_(x,s) f(x) + barrier_parameter*sum(ln(s))`` subject to the equality
		    constraints  ``c(x) + s = 0`` instead of the original problem. This subproblem
		    is solved for increasing values of ``barrier_parameter`` and with decreasing
		    tolerances for the termination, starting with ``initial_barrier_parameter``
		    for the barrier parameter and ``initial_barrier_tolerance`` for the
		    barrier subproblem  barrier. Default is 0.1 for both values (recommended in [1]_ p. 19).
		factorization_method : string or None, optional
		    Method to factorize the Jacobian of the constraints. Use None (default)
		    for the auto selection or one of:
		
		        - 'NormalEquation' (requires scikit-sparse)
		        - 'AugmentedSystem'
		        - 'QRFactorization'
		        - 'SVDFactorization'
		
		    The methods 'NormalEquation' and 'AugmentedSystem' can be used only
		    with sparse constraints. The projections required by the algorithm
		    will be computed using, respectively, the the normal equation  and the
		    augmented system approaches explained in [1]_. 'NormalEquation'
		    computes the Cholesky factorization of ``A A.T`` and 'AugmentedSystem'
		    performs the LU factorization of an augmented system. They usually
		    provide similar results. 'AugmentedSystem' is used by default for
		    sparse matrices.
		
		    The methods 'QRFactorization' and 'SVDFactorization' can be used
		    only with dense constraints. They compute the required projections
		    using, respectively, QR and SVD factorizations. The 'SVDFactorization'
		    method can cope with Jacobian matrices with deficient row rank and will
		    be used whenever other factorization methods fail (which may imply the
		    conversion of sparse matrices to a dense format when required).
		    By default 'QRFactorization' is used for dense matrices.
		finite_diff_rel_step : None or array_like, optional
		    Relative step size for the finite difference approximation.
		maxiter : int, optional
		    Maximum number of algorithm iterations. Default is 1000.
		verbose : {0, 1, 2}, optional
		    Level of algorithm's verbosity:
		
		        * 0 (default) : work silently.
		        * 1 : display a termination report.
		        * 2 : display progress during iterations.
		        * 3 : display progress during iterations (more complete report).
		
		disp : bool, optional
		    If True (default) then `verbose` will be set to 1 if it was 0.
		
		Returns
		-------
		`OptimizeResult` with the fields documented below. Note the following:
		
		    1. All values corresponding to the constraints are ordered as they
		       were passed to the solver. And values corresponding to `bounds`
		       constraints are put *after* other constraints.
		    2. All numbers of function, Jacobian or Hessian evaluations correspond
		       to numbers of actual Python function calls. It means, for example,
		       that if a Jacobian is estimated by finite differences then the
		       number of Jacobian evaluations will be zero and the number of
		       function evaluations will be incremented by all calls during the
		       finite difference estimation.
		
		x : ndarray, shape (n,)
		    Solution found.
		optimality : float
		    Infinity norm of the Lagrangian gradient at the solution.
		constr_violation : float
		    Maximum constraint violation at the solution.
		fun : float
		    Objective function at the solution.
		grad : ndarray, shape (n,)
		    Gradient of the objective function at the solution.
		lagrangian_grad : ndarray, shape (n,)
		    Gradient of the Lagrangian function at the solution.
		nit : int
		    Total number of iterations.
		nfev : integer
		    Number of the objective function evaluations.
		ngev : integer
		    Number of the objective function gradient evaluations.
		nhev : integer
		    Number of the objective function Hessian evaluations.
		cg_niter : int
		    Total number of the conjugate gradient method iterations.
		method : {'equality_constrained_sqp', 'tr_interior_point'}
		    Optimization method used.
		constr : list of ndarray
		    List of constraint values at the solution.
		jac : list of {ndarray, sparse matrix}
		    List of the Jacobian matrices of the constraints at the solution.
		v : list of ndarray
		    List of the Lagrange multipliers for the constraints at the solution.
		    For an inequality constraint a positive multiplier means that the upper
		    bound is active, a negative multiplier means that the lower bound is
		    active and if a multiplier is zero it means the constraint is not
		    active.
		constr_nfev : list of int
		    Number of constraint evaluations for each of the constraints.
		constr_njev : list of int
		    Number of Jacobian matrix evaluations for each of the constraints.
		constr_nhev : list of int
		    Number of Hessian evaluations for each of the constraints.
		tr_radius : float
		    Radius of the trust region at the last iteration.
		constr_penalty : float
		    Penalty parameter at the last iteration, see `initial_constr_penalty`.
		barrier_tolerance : float
		    Tolerance for the barrier subproblem at the last iteration.
		    Only for problems with inequality constraints.
		barrier_parameter : float
		    Barrier parameter at the last iteration. Only for problems
		    with inequality constraints.
		execution_time : float
		    Total execution time.
		message : str
		    Termination message.
		status : {0, 1, 2, 3}
		    Termination status:
		
		        * 0 : The maximum number of function evaluations is exceeded.
		        * 1 : `gtol` termination condition is satisfied.
		        * 2 : `xtol` termination condition is satisfied.
		        * 3 : `callback` function requested termination.
		
		cg_stop_cond : int
		    Reason for CG subproblem termination at the last iteration:
		
		        * 0 : CG subproblem not evaluated.
		        * 1 : Iteration limit was reached.
		        * 2 : Reached the trust-region boundary.
		        * 3 : Negative curvature detected.
		        * 4 : Tolerance was satisfied.
		
		References
		----------
		.. [1] Conn, A. R., Gould, N. I., & Toint, P. L.
		       Trust region methods. 2000. Siam. pp. 19.
	**/
	static public function _minimize_trustregion_constr(fun:Dynamic, x0:Dynamic, args:Dynamic, grad:Dynamic, hess:Dynamic, hessp:Dynamic, bounds:Dynamic, constraints:Dynamic, ?xtol:Dynamic, ?gtol:Dynamic, ?barrier_tol:Dynamic, ?sparse_jacobian:Dynamic, ?callback:Dynamic, ?maxiter:Dynamic, ?verbose:Dynamic, ?finite_diff_rel_step:Dynamic, ?initial_constr_penalty:Dynamic, ?initial_tr_radius:Dynamic, ?initial_barrier_parameter:Dynamic, ?initial_barrier_tolerance:Dynamic, ?factorization_method:Dynamic, ?disp:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Solve nonlinear equality-constrained problem using trust-region SQP.
		
		Solve optimization problem:
		
		    minimize fun(x)
		    subject to: constr(x) = 0
		
		using Byrd-Omojokun Trust-Region SQP method described in [1]_. Several
		implementation details are based on [2]_ and [3]_, p. 549.
		
		References
		----------
		.. [1] Lalee, Marucha, Jorge Nocedal, and Todd Plantenga. "On the
		       implementation of an algorithm for large-scale equality
		       constrained optimization." SIAM Journal on
		       Optimization 8.3 (1998): 682-706.
		.. [2] Byrd, Richard H., Mary E. Hribar, and Jorge Nocedal.
		       "An interior point algorithm for large-scale nonlinear
		       programming." SIAM Journal on Optimization 9.4 (1999): 877-900.
		.. [3] Nocedal, Jorge, and Stephen J. Wright. "Numerical optimization"
		       Second Edition (2006).
	**/
	static public function equality_constrained_sqp(fun_and_constr:Dynamic, grad_and_jac:Dynamic, lagr_hess:Dynamic, x0:Dynamic, fun0:Dynamic, grad0:Dynamic, constr0:Dynamic, jac0:Dynamic, stop_criteria:Dynamic, state:Dynamic, initial_penalty:Dynamic, initial_trust_radius:Dynamic, factorization_method:Dynamic, ?trust_lb:Dynamic, ?trust_ub:Dynamic, ?scaling:Dynamic):Dynamic;
	/**
		Convert initial values of the constraints to the canonical format.
		
		The purpose to avoid one additional call to the constraints at the initial
		point. It takes saved values in `PreparedConstraint`, modify and
		concatenate them to the the canonical constraint format.
	**/
	static public function initial_constraints_as_canonical(n:Dynamic, prepared_constraints:Dynamic, sparse_jacobian:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Remove bounds which are not asked to be kept feasible.
	**/
	static public function strict_bounds(lb:Dynamic, ub:Dynamic, keep_feasible:Dynamic, n_vars:Dynamic):Dynamic;
	/**
		Trust-region interior points method.
		
		Solve problem:
		    minimize fun(x)
		    subject to: constr_ineq(x) <= 0
		                constr_eq(x) = 0
		using trust-region interior point method described in [1]_.
	**/
	static public function tr_interior_point(fun:Dynamic, grad:Dynamic, lagr_hess:Dynamic, n_vars:Dynamic, n_ineq:Dynamic, n_eq:Dynamic, constr:Dynamic, jac:Dynamic, x0:Dynamic, fun0:Dynamic, grad0:Dynamic, constr_ineq0:Dynamic, jac_ineq0:Dynamic, constr_eq0:Dynamic, jac_eq0:Dynamic, stop_criteria:Dynamic, enforce_feasibility:Dynamic, xtol:Dynamic, state:Dynamic, initial_barrier_parameter:Dynamic, initial_tolerance:Dynamic, initial_penalty:Dynamic, initial_trust_radius:Dynamic, factorization_method:Dynamic):Dynamic;
	static public function update_state_ip(state:Dynamic, x:Dynamic, last_iteration_failed:Dynamic, objective:Dynamic, prepared_constraints:Dynamic, start_time:Dynamic, tr_radius:Dynamic, constr_penalty:Dynamic, cg_info:Dynamic, barrier_parameter:Dynamic, barrier_tolerance:Dynamic):Dynamic;
	static public function update_state_sqp(state:Dynamic, x:Dynamic, last_iteration_failed:Dynamic, objective:Dynamic, prepared_constraints:Dynamic, start_time:Dynamic, tr_radius:Dynamic, constr_penalty:Dynamic, cg_info:Dynamic):Dynamic;
}