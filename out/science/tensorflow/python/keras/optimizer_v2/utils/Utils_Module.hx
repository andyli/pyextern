/* This file is generated, do not edit! */
package tensorflow.python.keras.optimizer_v2.utils;
@:pythonImport("tensorflow.python.keras.optimizer_v2.utils") extern class Utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _all_reduce_sum_fn(distribution:Dynamic, grads_and_vars:Dynamic):Dynamic;
	/**
		Returns all-reduced gradients aggregated via summation.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs.
		
		Returns:
		  List of (gradient, variable) pairs where gradients have been all-reduced.
	**/
	static public function all_reduce_sum_gradients(grads_and_vars:Dynamic):Dynamic;
	/**
		Filter out `(grad, var)` pairs that have a gradient equal to `None`.
	**/
	static public function filter_empty_gradients(grads_and_vars:Dynamic):Dynamic;
	/**
		Creates a gradient transformation function for clipping by norm.
	**/
	static public function make_global_gradient_clipnorm_fn(clipnorm:Dynamic):Dynamic;
	/**
		Creates a gradient transformation function for clipping by norm.
	**/
	static public function make_gradient_clipnorm_fn(clipnorm:Dynamic):Dynamic;
	/**
		Creates a gradient transformation function for clipping by value.
	**/
	static public function make_gradient_clipvalue_fn(clipvalue:Dynamic):Dynamic;
	/**
		Returns if the current Strategy can operate in pure replica context.
	**/
	static public function strategy_supports_no_merge_call():Dynamic;
}