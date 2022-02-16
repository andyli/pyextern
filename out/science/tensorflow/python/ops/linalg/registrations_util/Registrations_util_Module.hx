/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.registrations_util;
@:pythonImport("tensorflow.python.ops.linalg.registrations_util") extern class Registrations_util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Get combined PD hint for compositions.
	**/
	static public function combined_commuting_positive_definite_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Get combined hint for self-adjoint-ness.
	**/
	static public function combined_commuting_self_adjoint_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Get combined hint for when .
	**/
	static public function combined_non_singular_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return a hint to whether the composition is square.
	**/
	static public function is_square(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}