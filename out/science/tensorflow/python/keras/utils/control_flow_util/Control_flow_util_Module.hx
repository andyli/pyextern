/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.control_flow_util;
@:pythonImport("tensorflow.python.keras.utils.control_flow_util") extern class Control_flow_util_Module {
	/**
		Returns the first ancestor WhileContext of `ctxt`.
		
		Returns `ctxt` if `ctxt` is a WhileContext, or None if `ctxt` is not in a
		while loop.
		
		Args:
		  ctxt: ControlFlowContext
		  stop_ctxt: ControlFlowContext, optional. If provided, the search will end
		    if it sees stop_ctxt.
		
		Returns:
		  `ctxt` if `ctxt` is a WhileContext, the most nested WhileContext containing
		  `ctxt`, or None if `ctxt` is not in a while loop.  If `stop_ctxt` is not
		  `None`, this returns `ctxt` if it matches `stop_ctxt` in its traversal.
	**/
	static public function GetContainingWhileContext(ctxt:Dynamic, ?stop_ctxt:Dynamic):Dynamic;
	/**
		Returns the first ancestor XLAContext of `ctxt`.
		
		Returns `ctxt` if `ctxt` is a XLAContext, or None if `ctxt` is not in a
		while loop.
		
		Args:
		  ctxt: ControlFlowContext
		
		Returns:
		  `ctxt` if `ctxt` is a XLAContext, the most nested XLAContext containing
		  `ctxt`, or None if `ctxt` is not in a while loop.
	**/
	static public function GetContainingXLAContext(ctxt:Dynamic):Dynamic;
	static public function GraphOrParentsInXlaContext(graph:Dynamic):Dynamic;
	static public function InXlaContext(graph:Dynamic):Dynamic;
	static public function IsInWhileLoop(op:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the bool value for `pred`, or None if `pred` had a dynamic value.
		
		Args:
		  pred: A scalar, either a Python bool or a TensorFlow boolean variable
		    or tensor, or the Python integer 1 or 0.
		
		Returns:
		  True or False if `pred` has a constant boolean value, None otherwise.
		
		Raises:
		  TypeError: If `pred` is not a Variable, Tensor or bool, or Python
		    integer 1 or 0.
	**/
	static public function constant_value(pred:Dynamic):Dynamic;
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
}