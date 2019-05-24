/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator_algebra;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator_algebra") extern class Linear_operator_algebra_Module {
	static public var _CHOLESKY_DECOMPS : Dynamic;
	static public var _MATMUL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the Cholesky function registered for class a.
	**/
	static public function _registered_cholesky(type_a:Dynamic):Dynamic;
	/**
		Given a list of classes, finds the most specific function registered.
	**/
	static public function _registered_function(type_list:Dynamic, registry:Dynamic):Dynamic;
	/**
		Get the Matmul function registered for classes a and b.
	**/
	static public function _registered_matmul(type_a:Dynamic, type_b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Get the Cholesky factor associated to lin_op_a.
		
		Args:
		  lin_op_a: The LinearOperator to decompose.
		  name: Name to use for this operation.
		
		Returns:
		  A LinearOperator that represents the lower Cholesky factor of `lin_op_a`.
		
		Raises:
		  NotImplementedError: If no Cholesky method is defined for the LinearOperator
		    type of `lin_op_a`.
	**/
	static public function cholesky(lin_op_a:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Compute lin_op_a.matmul(lin_op_b).
		
		Args:
		  lin_op_a: The LinearOperator on the left.
		  lin_op_b: The LinearOperator on the right.
		  name: Name to use for this operation.
		
		Returns:
		  A LinearOperator that represents the matmul between `lin_op_a` and
		    `lin_op_b`.
		
		Raises:
		  NotImplementedError: If no matmul method is defined between types of
		    `lin_op_a` and `lin_op_b`.
	**/
	static public function matmul(lin_op_a:Dynamic, lin_op_b:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}