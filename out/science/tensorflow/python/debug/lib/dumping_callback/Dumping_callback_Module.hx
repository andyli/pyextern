/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.dumping_callback;
@:pythonImport("tensorflow.python.debug.lib.dumping_callback") extern class Dumping_callback_Module {
	static public var DEFAULT_TENSOR_DEBUG_MODE : Dynamic;
	static public var _FUNCTION_PREFIXES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _concrete_tensor_to_proto(tensor:Dynamic):Dynamic;
	/**
		Gradient function for the DebugIdentityV2 op.
	**/
	static public function _debug_identity_v2_grad(op:Dynamic, dy:Dynamic):Dynamic;
	/**
		Get a short unique ID.
	**/
	static public function _get_id():Dynamic;
	static public function _get_tfdbg_run_id():Dynamic;
	static public var _state : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Disable the currently-enabled debugging dumping.
		
		If the `enable_dump_debug_info()` method under the same Python namespace
		has been invoked before, calling this method disables it. If no call to
		`enable_dump_debug_info()` has been made, calling this method is a no-op.
		Calling this method more than once is idempotent.
	**/
	static public function disable_dump_debug_info():Dynamic;
	static public var division : Dynamic;
	/**
		Enable dumping debugging information from a TensorFlow program.
		
		The debugging information is dumped to a directory on the file system
		specified as `dump_root`.
		
		The dumped debugging information can be ingested by debugger UIs.
		
		The files in the dump directory contain the following information:
		  - TensorFlow Function construction (e.g., compilation of Python functions
		    decorated with @tf.function), the op types, names (if available), context,
		    the input and output tensors, and the associated stack traces.
		  - Execution of TensorFlow operations (ops) and Functions and their stack
		    traces, op types, names (if available) and contexts. In addition,
		    depending on the value of the `tensor_debug_mode` argument (see Args
		    section below), the value(s) of the output tensors or more concise
		    summaries of the tensor values will be dumped.
		  - A snapshot of Python source files involved in the execution of the
		    TensorFlow program.
		
		Once enabled, the dumping can be disabled with the corresponding
		`disable_dump_debug_info()` method under the same Python namespace.
		Calling this method more than once with the same `dump_root` is idempotent.
		Calling this method more than once with different `tensor_debug_mode`s
		leads to a `ValueError`.
		Calling this method more than once with different `circular_buffer_size`s
		leads to a `ValueError`.
		Calling this method with a different `dump_root` abolishes the
		previously-enabled `dump_root`.
		
		Usage example:
		
		```py
		tf.debugging.experimental.enable_dump_debug_info('/tmp/my-tfdbg-dumps')
		
		# Code to build, train and run your TensorFlow model...
		```
		
		NOTE: If your code is running on TPUs, be sure to call
		`tf.config.set_soft_device_placement(True)` before calling
		`tf.debugging.experimental.enable_dump_debug_info()` as this API uses
		automatic outside compilation on TPUs. For example:
		
		```py
		tf.config.set_soft_device_placement(True)
		tf.debugging.experimental.enable_dump_debug_info(
		    logdir, tensor_debug_mode="FULL_HEALTH")
		
		resolver = tf.distribute.cluster_resolver.TPUClusterResolver(tpu='')
		strategy = tf.distribute.TPUStrategy(resolver)
		with strategy.scope():
		  # ...
		```
		
		Args:
		  dump_root: The directory path where the dumping information will be written.
		  tensor_debug_mode: Debug mode for tensor values, as a string.
		    The currently supported options are:
		    - "NO_TENSOR": (Default) Only traces the output tensors of all executed
		      ops (including those executed eagerly at the Python level or as a part
		      of a TensorFlow graph) and functions, while not extracting any
		      information from the values of the tensors.
		    - "CURT_HEALTH": For each floating-dtype tensor (e.g., tensors of dtypes
		      such as `float32`, `float64` and `bfloat16`), extracts a binary bit
		      indicating whether it contains any -infinity, +infinity or NaN.
		    - "CONCISE_HEALTH": For each floating-dtype tensor, extract total
		      element count, and counts of -infinity, +infinity and NaN elements.
		    - "FULL_HEALTH": For each floating-dtype tensor, extracts the dtype,
		      rank (number of dimensions), total element count, and counts of
		      -infinity, +infinity and NaN elements.
		    - "SHAPE": For each tensor (regardless of dtype), extracts its dtype,
		      rank, total element count and shape.
		  circular_buffer_size: Size of the circular buffers for execution events.
		    These circular buffers are designed to reduce the overhead of debugging
		    dumping. They hold the most recent debug events concerning eager execution
		    of ops and `tf.function`s and traces of tensor values computed inside
		    `tf.function`s. They are written to the file system only when the proper
		    flushing method is called (see description of return values below).
		    Expected to be an integer. If <= 0, the circular-buffer behavior will be
		    disabled, i.e., the execution debug events will be written to the file
		    writers in the same way as non-execution events such as op creations and
		    source-file snapshots.
		  op_regex: Dump data from only the tensors from op types that matches to the
		    regular expression (through Python's `re.match()`).
		    "Op type" refers to the names of the TensorFlow operations (e.g.,
		    "MatMul", "LogSoftmax"), which may repeat in a TensorFlow
		    function. It does *not* refer to the names of nodes (e.g.,
		    "dense/MatMul", "dense_1/MatMul_1") which are unique within a function.
		    - Example 1: Dump tensor data from only MatMul and Relu ops
		      `op_regex="^(MatMul|Relu)$"`.
		    - Example 2: Dump tensors from all ops *except* Relu:
		      `op_regex="(?!^Relu$)"`.
		    This filter operates in a logical AND relation with `tensor_dtypes`.
		  tensor_dtypes: Dump data from only the tensors of which the specified
		    dtypes. This optional argument can be in any of the following format:
		    - a list or tuple of `DType` objects or strings that can be converted
		      to `DType` objects via `tf.as_dtype()`. Examples:
		      - `tensor_dtype=[tf.float32, tf.float64]`,
		      - `tensor_dtype=["float32", "float64"]`,
		      - `tensor_dtypes=(tf.int32, tf.bool)`,
		      - `tensor_dtypes=("int32", "bool")`
		    - a callable that takes a single `DType` argument and returns a Python
		      `boolean` indicating whether the dtype is to be included in the data
		      dumping. Examples:
		      - `tensor_dtype=lambda dtype: dtype.is_integer`.
		    This filter operates in a logical AND relation with `op_regex`.
		Returns:
		  A DebugEventsWriter instance used by the dumping callback. The caller
		  may use its flushing methods, including `FlushNonExecutionFiles()` and
		  `FlushExecutionFiles()`.
	**/
	static public function enable_dump_debug_info(dump_root:Dynamic, ?tensor_debug_mode:Dynamic, ?circular_buffer_size:Dynamic, ?op_regex:Dynamic, ?tensor_dtypes:Dynamic):Dynamic;
	static public function is_op_type_function(op_type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}