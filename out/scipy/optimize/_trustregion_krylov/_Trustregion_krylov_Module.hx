/* This file is generated, do not edit! */
package scipy.optimize._trustregion_krylov;
@:pythonImport("scipy.optimize._trustregion_krylov") extern class _Trustregion_krylov_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Minimization of a scalar function of one or more variables using
		a nearly exact trust-region algorithm that only requires matrix
		vector products with the hessian matrix.
		
		.. versionadded:: 1.0.0
		
		Options
		-------
		inexact : bool, optional
		    Accuracy to solve subproblems. If True requires less nonlinear
		    iterations, but more vector products.
	**/
	static public function _minimize_trust_krylov(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic, ?inexact:Dynamic, ?trust_region_options:python.KwArgs<Dynamic>):Dynamic;
	/**
		Minimization of scalar function of one or more variables using a
		trust-region algorithm.
		
		Options for the trust-region algorithm are:
		    initial_trust_radius : float
		        Initial trust radius.
		    max_trust_radius : float
		        Never propose steps that are longer than this value.
		    eta : float
		        Trust region related acceptance stringency for proposed steps.
		    gtol : float
		        Gradient norm must be less than `gtol`
		        before successful termination.
		    maxiter : int
		        Maximum number of iterations to perform.
		    disp : bool
		        If True, print convergence message.
		    inexact : bool
		        Accuracy to solve subproblems. If True requires less nonlinear
		        iterations, but more vector products. Only effective for method
		        trust-krylov.
		
		This function is called by the `minimize` function.
		It is not supposed to be called directly.
	**/
	static public function _minimize_trust_region(fun:Dynamic, x0:Dynamic, ?args:Dynamic, ?jac:Dynamic, ?hess:Dynamic, ?hessp:Dynamic, ?subproblem:Dynamic, ?initial_trust_radius:Dynamic, ?max_trust_radius:Dynamic, ?eta:Dynamic, ?gtol:Dynamic, ?maxiter:Dynamic, ?disp:Dynamic, ?return_all:Dynamic, ?callback:Dynamic, ?inexact:Dynamic, ?unknown_options:python.KwArgs<Dynamic>):Dynamic;
	static public function get_trlib_quadratic_subproblem(?tol_rel_i:Dynamic, ?tol_rel_b:Dynamic, ?disp:Dynamic):Dynamic;
}