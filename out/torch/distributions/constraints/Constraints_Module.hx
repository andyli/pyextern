/* This file is generated, do not edit! */
package torch.distributions.constraints;
@:pythonImport("torch.distributions.constraints") extern class Constraints_Module {
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
		Given a batch of matrices, returns the lower triangular part of each matrix, with
		the other entries set to 0. The argument `diagonal` has the same meaning as in
		`torch.tril`.
	**/
	static public function batch_tril(bmat:Dynamic, ?diagonal:Dynamic):Dynamic;
	static public var boolean : Dynamic;
	static public var dependent : Dynamic;
	static public function is_dependent(constraint:Dynamic):Dynamic;
	static public var lower_cholesky : Dynamic;
	static public var lower_triangular : Dynamic;
	static public var nonnegative_integer : Dynamic;
	static public var positive : Dynamic;
	static public var positive_definite : Dynamic;
	static public var positive_integer : Dynamic;
	static public var real : Dynamic;
	static public var real_vector : Dynamic;
	static public var simplex : Dynamic;
	static public var unit_interval : Dynamic;
}