/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.tr_interior_point;
@:pythonImport("scipy.optimize._trustregion_constr.tr_interior_point") extern class Tr_interior_point_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Trust-region interior points method.
		
		Solve problem:
		    minimize fun(x)
		    subject to: constr_ineq(x) <= 0
		                constr_eq(x) = 0
		using trust-region interior point method described in [1]_.
	**/
	static public function tr_interior_point(fun:Dynamic, grad:Dynamic, lagr_hess:Dynamic, n_vars:Dynamic, n_ineq:Dynamic, n_eq:Dynamic, constr:Dynamic, jac:Dynamic, x0:Dynamic, fun0:Dynamic, grad0:Dynamic, constr_ineq0:Dynamic, jac_ineq0:Dynamic, constr_eq0:Dynamic, jac_eq0:Dynamic, stop_criteria:Dynamic, enforce_feasibility:Dynamic, xtol:Dynamic, state:Dynamic, initial_barrier_parameter:Dynamic, initial_tolerance:Dynamic, initial_penalty:Dynamic, initial_trust_radius:Dynamic, factorization_method:Dynamic):Dynamic;
}