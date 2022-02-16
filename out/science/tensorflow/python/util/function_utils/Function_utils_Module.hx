/* This file is generated, do not edit! */
package tensorflow.python.util.function_utils;
@:pythonImport("tensorflow.python.util.function_utils") extern class Function_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_bound_method(fn:Dynamic):Dynamic;
	static public function _is_callable_object(obj:Dynamic):Dynamic;
	static public var _rewriter_config_optimizer_disabled : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Get argument names for function-like object.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `tuple` of string argument names.
		
		Raises:
		  ValueError: if partial function has positionally bound arguments
	**/
	static public function fn_args(fn:Dynamic):Dynamic;
	static public function get_disabled_rewriter_config():Dynamic;
	/**
		Returns func_code of passed callable, or None if not available.
	**/
	static public function get_func_code(func:Dynamic):Dynamic;
	/**
		Returns name of passed callable.
	**/
	static public function get_func_name(func:Dynamic):Dynamic;
	/**
		Returns whether the passed callable has **kwargs in its signature.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `bool`: if `fn` has **kwargs in its signature.
		
		Raises:
		   `TypeError`: If fn is not a Function, or function-like object.
	**/
	static public function has_kwargs(fn:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}