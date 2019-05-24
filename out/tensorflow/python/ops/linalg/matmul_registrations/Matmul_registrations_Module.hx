/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.matmul_registrations;
@:pythonImport("tensorflow.python.ops.linalg.matmul_registrations") extern class Matmul_registrations_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get combined hint for when .
	**/
	static public function _combined_non_singular_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Get combined PD hint for compositions.
	**/
	static public function _combined_positive_definite_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Get combined hint for self-adjoint-ness.
	**/
	static public function _combined_self_adjoint_hint(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Return a hint to whether the composition is square.
	**/
	static public function _is_square(operator_a:Dynamic, operator_b:Dynamic):Dynamic;
	/**
		Generic matmul of two `LinearOperator`s.
	**/
	static public function _matmul_linear_operator(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _matmul_linear_operator_circulant_circulant(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _matmul_linear_operator_diag(linop_a:Dynamic, linop_b:Dynamic):Dynamic;
	static public function _matmul_linear_operator_diag_scaled_identity_left(linop_scaled_identity:Dynamic, linop_diag:Dynamic):Dynamic;
	static public function _matmul_linear_operator_diag_scaled_identity_right(linop_diag:Dynamic, linop_scaled_identity:Dynamic):Dynamic;
	static public function _matmul_linear_operator_diag_tril(linop_diag:Dynamic, linop_triangular:Dynamic):Dynamic;
	static public function _matmul_linear_operator_identity_left(identity:Dynamic, linop:Dynamic):Dynamic;
	static public function _matmul_linear_operator_identity_right(linop:Dynamic, identity:Dynamic):Dynamic;
	static public function _matmul_linear_operator_tril_diag(linop_triangular:Dynamic, linop_diag:Dynamic):Dynamic;
	static public function _matmul_linear_operator_zeros_left(zeros:Dynamic, linop:Dynamic):Dynamic;
	static public function _matmul_linear_operator_zeros_right(linop:Dynamic, zeros:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}