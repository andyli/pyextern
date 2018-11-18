/* This file is generated, do not edit! */
package scipy.optimize._trustregion_constr.canonical_constraint;
@:pythonImport("scipy.optimize._trustregion_constr.canonical_constraint") extern class Canonical_constraint_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert initial values of the constraints to the canonical format.
		
		The purpose to avoid one additional call to the constraints at the initial
		point. It takes saved values in `PreparedConstraint`, modify and
		concatenate them to the the canonical constraint format.
	**/
	static public function initial_constraints_as_canonical(n:Dynamic, prepared_constraints:Dynamic, sparse_jacobian:Dynamic):Dynamic;
}