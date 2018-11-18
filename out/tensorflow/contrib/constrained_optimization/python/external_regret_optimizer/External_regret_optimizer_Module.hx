/* This file is generated, do not edit! */
package tensorflow.contrib.constrained_optimization.python.external_regret_optimizer;
@:pythonImport("tensorflow.contrib.constrained_optimization.python.external_regret_optimizer") extern class External_regret_optimizer_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Projects its argument onto the feasible region.
		
		The feasible region is the set of all vectors with nonnegative elements that
		sum to at most `radius`.
		
		Args:
		  multipliers: 1d tensor, the Lagrange multipliers to project.
		  radius: float, the radius of the feasible region.
		
		Returns:
		  The 1d tensor that results from projecting `multipliers` onto the feasible
		    region w.r.t. the Euclidean norm.
		
		Raises:
		  ValueError: if the `multipliers` tensor is not floating-point, does not have
		    a fully-known shape, or is not one-dimensional.
	**/
	static public function _project_multipliers_wrt_euclidean_norm(multipliers:Dynamic, radius:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}