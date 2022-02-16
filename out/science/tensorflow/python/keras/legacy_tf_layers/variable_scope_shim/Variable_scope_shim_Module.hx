/* This file is generated, do not edit! */
package tensorflow.python.keras.legacy_tf_layers.variable_scope_shim;
@:pythonImport("tensorflow.python.keras.legacy_tf_layers.variable_scope_shim") extern class Variable_scope_shim_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns whether the passed callable has **kwargs in its signature.
		
		Args:
		  fn: Function, or function-like object (e.g., result of `functools.partial`).
		
		Returns:
		  `bool`: if `fn` has **kwargs in its signature.
		
		Raises:
		   `TypeError`: If fn is not a Function, or function-like object.
	**/
	static public function _has_kwargs(fn:Dynamic):Dynamic;
	static public function _is_bound_method(fn:Dynamic):Dynamic;
	static public function _is_callable_object(obj:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts the given object to a TensorShape.
	**/
	static public function as_shape(shape:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Given user-provided variable properties, sets defaults and validates.
	**/
	static public function validate_synchronization_aggregation_trainable(synchronization:Dynamic, aggregation:Dynamic, trainable:Dynamic, name:Dynamic):Dynamic;
}