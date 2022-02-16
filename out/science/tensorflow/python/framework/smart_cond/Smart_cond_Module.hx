/* This file is generated, do not edit! */
package tensorflow.python.framework.smart_cond;
@:pythonImport("tensorflow.python.framework.smart_cond") extern class Smart_cond_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Like tf.case, except attempts to statically evaluate predicates.
		
		If any predicate in `pred_fn_pairs` is a bool or has a constant value, the
		associated callable will be called or omitted depending on its value.
		Otherwise this functions like tf.case.
		
		Args:
		  pred_fn_pairs: Dict or list of pairs of a boolean scalar tensor and a
		                 callable which returns a list of tensors.
		  default: Optional callable that returns a list of tensors.
		  exclusive: True iff at most one predicate is allowed to evaluate to `True`.
		  name: A name for this operation (optional).
		
		Returns:
		  The tensors returned by the first pair whose predicate evaluated to True, or
		  those returned by `default` if none does.
		
		Raises:
		  TypeError: If `pred_fn_pairs` is not a list/dictionary.
		  TypeError: If `pred_fn_pairs` is a list but does not contain 2-tuples.
		  TypeError: If `fns[i]` is not callable for any i, or `default` is not
		             callable.
	**/
	static public function smart_case(pred_fn_pairs:Dynamic, ?_default:Dynamic, ?exclusive:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return either `true_fn()` if predicate `pred` is true else `false_fn()`.
		
		If `pred` is a bool or has a constant value, we return either `true_fn()`
		or `false_fn()`, otherwise we use `tf.cond` to dynamically route to both.
		
		Args:
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
	/**
		Return the bool value for `pred`, or None if `pred` had a dynamic value.
		
		Args:
		  pred: A scalar, either a Python bool or tensor.
		
		Returns:
		  True or False if `pred` has a constant boolean value, None otherwise.
		
		Raises:
		  TypeError: If `pred` is not a Tensor or bool.
	**/
	static public function smart_constant_value(pred:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}