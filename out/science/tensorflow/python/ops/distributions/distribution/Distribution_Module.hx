/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.distribution;
@:pythonImport("tensorflow.python.ops.distributions.distribution") extern class Distribution_Module {
	static public var FULLY_REPARAMETERIZED : Dynamic;
	static public var NOT_REPARAMETERIZED : Dynamic;
	static public var _DISTRIBUTION_PUBLIC_METHOD_WRAPPERS : Dynamic;
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
		Converts to tensor avoiding an eager bug that loses float precision.
	**/
	static public function _convert_to_tensor(value:Dynamic, ?name:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Create a deep copy of fn.
		
		Args:
		  fn: a callable
		
		Returns:
		  A `FunctionType`: a deep copy of fn.
		
		Raises:
		  TypeError: if `fn` is not a callable.
	**/
	static public function _copy_fn(fn:Dynamic):Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	/**
		Update old_str by inserting append_str just before the "Args:" section.
	**/
	static public function _update_docstring(old_str:Dynamic, append_str:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}