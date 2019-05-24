/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_dispatch;
@:pythonImport("tensorflow.python.ops.ragged.ragged_dispatch") extern class Ragged_dispatch_Module {
	static public var _BINARY_ELEMENTWISE_OPS : Dynamic;
	static public var _RAGGED_DISPATCH_OPS : Dynamic;
	static public var _UNARY_ELEMENTWISE_OPS : Dynamic;
	static public var _UNARY_LIST_ELEMENTWISE_OPS : Dynamic;
	static public var _UPDATE_DOCSTRINGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns an `_ArgInfo` for each argument of `func` specified by `arg_names`.
		
		Args:
		  func: The function whose arguments should be described.
		  arg_names: The names of the arguments to get info for.
		
		Returns:
		  A tuple of `_ArgInfo`s.
	**/
	static public function _get_arg_infos(func:Dynamic, arg_names:Dynamic):Dynamic;
	/**
		Returns true if `value` is convertible to a `Tensor`.
	**/
	static public function _is_convertible_to_tensor(value:Dynamic):Dynamic;
	static public function _ragged_expand_dims_v1(input:Dynamic, ?axis:Dynamic, ?name:Dynamic, ?dim:Dynamic):Dynamic;
	static public function _ragged_gather_v1(params:Dynamic, indices:Dynamic, ?validate_indices:Dynamic, ?name:Dynamic, ?axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function ragged_dispatch(original_op:Dynamic, tensor_args:Dynamic):Dynamic;
	/**
		Returns a string listing operators that have dispathers registered.
	**/
	static public function ragged_op_list():Dynamic;
	/**
		Constructs & registers OpDispatchers for ragged ops.
	**/
	static public function register_dispatchers():Dynamic;
}