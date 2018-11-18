/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.tf_utils;
@:pythonImport("tensorflow.python.keras.utils.tf_utils") extern class Tf_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return the bool value for `pred`, or None if `pred` had a dynamic value.
		
		Arguments:
		  pred: A scalar, either a Python bool or a TensorFlow boolean variable
		    or tensor, or the Python integer 1 or 0.
		
		Returns:
		  True or False if `pred` has a constant boolean value, None otherwise.
		
		Raises:
		  TypeError: If `pred` is not a Variable, Tensor or bool, or Python
		    integer 1 or 0.
	**/
	static public function constant_value(pred:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the set of tensors/ops reachable from `inputs`.
		
		Stops if all targets have been found (target is optional).
		
		Only valid in Symbolic mode, not Eager mode.
		
		Args:
		  inputs: List of tensors.
		  targets: List of tensors.
		
		Returns:
		  A set of tensors reachable from the inputs (includes the inputs themselves).
	**/
	static public function get_reachable_from_inputs(inputs:Dynamic, ?targets:Dynamic):Dynamic;
	static public function is_tensor_or_tensor_list(v:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decorator that handles tuple/TensorShape conversion.
		
		Used in `compute_output_shape` and `build`.
		
		Arguments:
		  fn: function to wrap.
		
		Returns:
		  Wrapped function.
	**/
	static public function shape_type_conversion(fn:Dynamic):Dynamic;
	/**
		Return either `true_fn()` if predicate `pred` is true else `false_fn()`.
		
		If `pred` is a bool or has a constant value, we return either `true_fn()`
		or `false_fn()`, otherwise we use `tf.cond` to dynamically route to both.
		
		Arguments:
		  pred: A scalar determining whether to return the result of `true_fn` or
		    `false_fn`.
		  true_fn: The callable to be performed if pred is true.
		  false_fn: The callable to be performed if pred is false.
		  name: Optional name prefix when using `tf.cond`.
		
		Returns:
		  Tensors returned by the call to either `true_fn` or `false_fn`.
		
		Raises:
		  TypeError: If `true_fn` or `false_fn` is not callable.
	**/
	static public function smart_cond(pred:Dynamic, ?true_fn:Dynamic, ?false_fn:Dynamic, ?name:Dynamic):Dynamic;
}