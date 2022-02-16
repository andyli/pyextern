/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.check_numerics_callback;
@:pythonImport("tensorflow.python.debug.lib.check_numerics_callback") extern class Check_numerics_callback_Module {
	static public var IGNORE_OP_OUTPUTS : Dynamic;
	static public var SAFE_OPS : Dynamic;
	static public var _CHECK_NUMERICS_INPUT_LOOKUP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _check_numerics_callback_create_counter : Dynamic;
	static public function _debug_summary(x:Dynamic):Dynamic;
	static public function _maybe_lookup_original_input_tensor(graph:Dynamic, tensor:Dynamic):Dynamic;
	static public var _state : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Disable the eager/graph unified numerics checking mechanism.
		
		This method can be used after a call to `tf.debugging.enable_check_numerics()`
		to disable the numerics-checking mechanism that catches infinity and NaN
		values output by ops executed eagerly or in tf.function-compiled graphs.
		
		This method is idempotent. Calling it multiple times has the same effect
		as calling it once.
		
		This method takes effect only on the thread in which it is called.
	**/
	static public function disable_check_numerics():Dynamic;
	static public var division : Dynamic;
	/**
		Enable tensor numerics checking in an eager/graph unified fashion.
		
		The numerics checking mechanism will cause any TensorFlow eager execution or
		graph execution to error out as soon as an op's output tensor contains
		infinity or NaN.
		
		This method is idempotent. Calling it multiple times has the same effect
		as calling it once.
		
		This method takes effect only on the thread in which it is called.
		
		When a op's float-type output tensor contains any Infinity or NaN, an
		`tf.errors.InvalidArgumentError` will be thrown, with an error message that
		reveals the following information:
		  - The type of the op that generated the tensor with bad numerics.
		  - Data type (dtype) of the tensor.
		  - Shape of the tensor (to the extent known at the time of eager execution
		    or graph construction).
		  - Name of the containing graph (if available).
		  - (Graph mode only): The stack trace of the intra-graph op's creation,
		    with a stack-height limit and a path-length limit for visual clarity.
		    The stack frames that belong to the user's code (as opposed to
		    tensorflow's internal code) are highlighted with a text arrow ("->").
		  - (Eager mode only): How many of the offending tensor's elements are
		    `Infinity` and `NaN`, respectively.
		
		Once enabled, the check-numerics mechanism can be disabled by using
		`tf.debugging.disable_check_numerics()`.
		
		Example usage:
		
		1. Catching infinity during the execution of a `tf.function` graph:
		
		   ```py
		   import tensorflow as tf
		
		   tf.debugging.enable_check_numerics()
		
		   @tf.function
		   def square_log_x_plus_1(x):
		     v = tf.math.log(x + 1)
		     return tf.math.square(v)
		
		   x = -1.0
		
		   # When the following line runs, a function graph will be compiled
		   # from the Python function `square_log_x_plus_1()`. Due to the
		   # `enable_check_numerics()` call above, the graph will contain
		   # numerics checking ops that will run during the function graph's
		   # execution. The function call generates an -infinity when the Log
		   # (logarithm) op operates on the output tensor of the Add op.
		   # The program errors out at this line, printing an error message.
		   y = square_log_x_plus_1(x)
		   z = -y
		  ```
		
		2. Catching NaN during eager execution:
		
		   ```py
		   import numpy as np
		   import tensorflow as tf
		
		   tf.debugging.enable_check_numerics()
		
		   x = np.array([[0.0, -1.0], [4.0, 3.0]])
		
		   # The following line executes the Sqrt op eagerly. Due to the negative
		   # element in the input array, a NaN is generated. Due to the
		   # `enable_check_numerics()` call above, the program errors immediately
		   # at this line, printing an error message.
		   y = tf.math.sqrt(x)
		   z = tf.matmul(y, y)
		   ```
		
		NOTE: If your code is running on TPUs, be sure to call
		`tf.config.set_soft_device_placement(True)` before calling
		`tf.debugging.enable_check_numerics()` as this API uses automatic outside
		compilation on TPUs. For example:
		
		```py
		tf.config.set_soft_device_placement(True)
		tf.debugging.enable_check_numerics()
		
		resolver = tf.distribute.cluster_resolver.TPUClusterResolver(tpu='')
		strategy = tf.distribute.TPUStrategy(resolver)
		with strategy.scope():
		  # ...
		```
		
		Args:
		  stack_height_limit: Limit to the height of the printed stack trace.
		    Applicable only to ops in `tf.function`s (graphs).
		  path_length_limit: Limit to the file path included in the printed stack
		    trace. Applicable only to ops in `tf.function`s (graphs).
	**/
	static public function enable_check_numerics(?stack_height_limit:Dynamic, ?path_length_limit:Dynamic):Dynamic;
	/**
		Create a meaningful and user-friendly error message about offending tensor.
		
		The error message reveals the following info about the op that outputs
		NaN/Infinity: dtype, shape (to the extent known at graph-construction time),
		input tensors, stack trace for op creation (if is graph mode).
		
		Args:
		  slot: (int) slot index of the tensor output.
		  num_outputs: (int) total number of outputs of the op.
		  op_type: (str) Type of the that generates `tensor`.
		  tensor: (Tensor) the offending tensor, i.e., the tensor that contains
		    Infinities or NaNs.
		  inputs: (array of Tensor) inputs to the op that generates `tensor`.
		  graph: (tf.Graph) the graph object that `tensor` belongs to. Available only
		    under graph mode.
		  traceback: (list of trace frames) the stack trace of the op's creation.
		    Available only under graph model.
		  stack_height_limit: (int or None) If int, limit to the height of the stack
		    trace printed in the error message. If None, no limit to the height.
		  path_length_limit: (int or None) Length limit for file paths included in the
		    formatted stack trace.
		
		Returns:
		  (str) A formatted error message.
	**/
	static public function get_check_numerics_error_message(slot:Dynamic, num_outputs:Dynamic, op_type:Dynamic, tensor:Dynamic, inputs:Dynamic, ?graph:Dynamic, ?traceback:Dynamic, ?stack_height_limit:Dynamic, ?path_length_limit:Dynamic):Dynamic;
	/**
		Limit the length of input string.
		
		Args:
		  string: Input string.
		  max_len: (int or None) If int, the length limit. If None, no limit.
		
		Returns:
		  Possibly length-limited string.
	**/
	static public function limit_string_length(string:Dynamic, ?max_len:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}