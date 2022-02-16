/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_gradients;
@:pythonImport("tensorflow.python.debug.lib.debug_gradients") extern class Debug_gradients_Module {
	static public var _GRADIENT_DEBUG_TAG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _gradient_debuggers : Dynamic;
	/**
		Gradient function for the DebugIdentity op.
	**/
	static public function _identify_gradient_grad(op:Dynamic, dy:Dynamic):Dynamic;
	/**
		Gradient function for the DebugIdentity op.
	**/
	static public function _identify_gradient_grad_ref(op:Dynamic, dy:Dynamic):Dynamic;
	/**
		Parse the name of a debug gradient op.
		
		Args:
		  op_name: the name of the debug gradient op.
		
		Returns:
		  1) The UUID of the GradientsDebugger that created the debug gradient op.
		  2) Name of the original tensor whose gradient is debugged by the debug
		     gradient op.
	**/
	static public function _parse_grad_debug_op_name(op_name:Dynamic):Dynamic;
	static public function _tensor_to_grad_debug_op_name(tensor:Dynamic, grad_debugger_uuid:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Clear all globally registered gradient debuggers.
	**/
	static public function clear_gradient_debuggers():Dynamic;
	static public var division : Dynamic;
	/**
		Find gradient values from a `DebugDumpDir` object.
		
		Args:
		  grad_debugger: the `tf_debug.GradientsDebugger` instance to be used.
		  x_tensor: (`tf.Tensor`, `tf.Variable` or `str`) The x-tensor object or its
		    name. x-tensor refers to the independent `tf.Tensor`, i.e., the tensor
		    on the denominator of the differentiation.
		  dump: A `tfdbg.DebugDumpDir` object.
		
		Returns:
		  If this `GradientsDebugger` instance has the gradient tensor of `x_tensor`
		    registered: a list of `numpy.ndarray` representing the value of the
		    gradient tensor from `dump`. The list could be empty, if the gradient
		    tensor is not executed in the `tf.Session.run()` call that generated
		    the `dump`. The list could also contain multiple values of the gradient
		    tensor, e.g., if gradient tensor is computed repeatedly in a
		    `tf.while_loop` during the run that generated the `dump`.
		
		Raises:
		  LookupError: If this `GradientsDebugger` instance does not have the
		    gradient tensor of `x_tensor` registered.
		  ValueError: If this `GradientsDebugger` has a `tf.Graph` object that
		    does not match the `tf.Graph` object of the `dump`.
		  TypeError: If `x_tensor` is not a `tf.Tensor`, `tf.Variable` or `str`.
	**/
	static public function gradient_values_from_dump(grad_debugger:Dynamic, x_tensor:Dynamic, dump:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}