/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.solve_registrations;
@:pythonImport("tensorflow.python.ops.linalg.solve_registrations") extern class Solve_registrations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Solve inverse of generic `LinearOperator`s.
	**/
	static public function _solve_inverse_linear_operator(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	/**
		Generic solve of two `LinearOperator`s.
	**/
	static public function _solve_linear_operator(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _solve_linear_operator_block_diag_block_diag(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _solve_linear_operator_circulant_circulant(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _solve_linear_operator_diag(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _solve_linear_operator_diag_scaled_identity_left(linop_scaled_identity:Dynamic, linop_diag:Dynamic):Dynamic;
	static public function _solve_linear_operator_diag_scaled_identity_right(linop_diag:Dynamic, linop_scaled_identity:Dynamic):Dynamic;
	static public function _solve_linear_operator_diag_tril(linop_diag:Dynamic, linop_triangular:Dynamic):Dynamic;
	static public function _solve_linear_operator_identity_left(identity:Dynamic, linop:Dynamic):Dynamic;
	static public function _solve_linear_operator_identity_right(linop:Dynamic, identity:Dynamic):Dynamic;
	/**
		Solve of two ScaledIdentity `LinearOperators`.
	**/
	static public function _solve_linear_operator_scaled_identity(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}