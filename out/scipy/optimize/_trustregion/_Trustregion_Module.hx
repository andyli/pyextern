/* This file is generated, do not edit! */
package scipy.optimize._trustregion;
@:pythonImport("scipy.optimize._trustregion") extern class _Trustregion_Module {
	static public var __all__ : Dynamic;
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
	static public var _status_message : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function wrap_function(_function:Dynamic, args:Dynamic):Dynamic;
}