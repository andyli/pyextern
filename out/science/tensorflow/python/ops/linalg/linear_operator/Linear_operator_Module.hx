/* This file is generated, do not edit! */
package tensorflow.python.ops.linalg.linear_operator;
@:pythonImport("tensorflow.python.ops.linalg.linear_operator") extern class Linear_operator_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _adjoint(matrix:Dynamic, ?name:Dynamic):Dynamic;
	static public function _cholesky(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function _det(input:Dynamic, ?name:Dynamic):Dynamic;
	static public function _diag_part(input:Dynamic, ?name:Dynamic, ?k:Dynamic, ?padding_value:Dynamic, ?align:Dynamic):Dynamic;
	/**
		Extract constructor kwargs to reconstruct `op`.
		
		Args:
		  op: A `LinearOperator` instance.
		  keys: A Python `tuple` of strings indicating the names of the constructor
		    kwargs to extract from `op`.
		
		Returns:
		  kwargs: A Python `dict` of kwargs to `op`'s constructor, keyed by `keys`.
	**/
	static public function _extract_attrs(op:Dynamic, keys:Dynamic):Dynamic;
	/**
		Return (collection of) `TypeSpec`(s) for `value` if it includes `Tensor`s.
		
		If `value` is a `Tensor` or `CompositeTensor`, return its `TypeSpec`. If
		`value` is a collection containing `Tensor` values, recursively supplant them
		with their respective `TypeSpec`s in a collection of parallel stucture.
		
		If `value` is none of the above, return it unchanged.
		
		Args:
		  value: a Python `object` to (possibly) turn into a (collection of)
		  `tf.TypeSpec`(s).
		
		Returns:
		  spec: the `TypeSpec` or collection of `TypeSpec`s corresponding to `value`
		  or `value`, if no `Tensor`s are found.
	**/
	static public function _extract_type_spec_recursively(value:Dynamic):Dynamic;
	static public function _inverse(input:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public function _logdet(matrix:Dynamic, ?name:Dynamic):Dynamic;
	static public function _matmul(a:Dynamic, b:Dynamic, ?transpose_a:Dynamic, ?transpose_b:Dynamic, ?adjoint_a:Dynamic, ?adjoint_b:Dynamic, ?a_is_sparse:Dynamic, ?b_is_sparse:Dynamic, ?output_type:Dynamic, ?name:Dynamic):Dynamic;
	static public function _solve(matrix:Dynamic, rhs:Dynamic, ?adjoint:Dynamic, ?name:Dynamic):Dynamic;
	static public function _trace(x:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Class decorator to convert `LinearOperator`s to `CompositeTensor`.
	**/
	static public function make_composite_tensor(cls:Dynamic, ?module_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}