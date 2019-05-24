/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops") extern class Ops_Module {
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NotDifferentiable("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NoGradient(op_type:Dynamic):Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NotDifferentiable("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NotDifferentiable(op_type:Dynamic):Dynamic;
	static public var _MUTATION_LOCK_GROUP : Dynamic;
	/**
		Create a NodeDef proto.
		
		Args:
		  op_type: Value for the "op" attribute of the NodeDef proto.
		  name: Value for the "name" attribute of the NodeDef proto.
		  device: string, device, or function from NodeDef to string.
		    Value for the "device" attribute of the NodeDef proto.
		  attrs: Optional dictionary where the key is the attribute name (a string)
		    and the value is the respective "attr" attribute of the NodeDef proto (an
		    AttrValue).
		
		Returns:
		  A node_def_pb2.NodeDef protocol buffer.
	**/
	static public function _NodeDef(op_type:Dynamic, name:Dynamic, ?device:Dynamic, ?attrs:Dynamic):Dynamic;
	static public var _SESSION_RUN_LOCK_GROUP : Dynamic;
	static public var _TENSOR_LIKE_TYPES : Dynamic;
	static public function _TensorTensorConversionFunction(t:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	static public var _USE_C_API : Dynamic;
	static public var _USE_C_SHAPES : Dynamic;
	static public var _VALID_OP_NAME_REGEX : Dynamic;
	static public var _VALID_SCOPE_NAME_REGEX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert `obj` to a graph element if possible, otherwise return `None`.
		
		Args:
		  obj: Object to convert.
		
		Returns:
		  The result of `obj._as_graph_element()` if that method is available;
		      otherwise `None`.
	**/
	static public function _as_graph_element(obj:Dynamic):Dynamic;
	/**
		Fail if the 2 items are from different graphs.
		
		Args:
		  original_item: Original item to check against.
		  item: Item to check.
		
		Raises:
		  ValueError: if graphs do not match.
	**/
	static public function _assert_same_graph(original_item:Dynamic, item:Dynamic):Dynamic;
	static public function _call_cpp_shape_fn(op:Dynamic):Dynamic;
	static public function _call_cpp_shape_fn_and_require_op(op:Dynamic):Dynamic;
	static public function _colocate_with_for_gradient(op:Dynamic, gradient_uid:Dynamic, ?ignore_existing:Dynamic):Dynamic;
	/**
		Creates a TF_Operation.
		
		Args:
		  graph: a `Graph`.
		  node_def: `node_def_pb2.NodeDef` for the operation to create.
		  inputs: A list of `Tensor`s (corresponding to scalar inputs) and lists of
		    `Tensor`s (corresponding to sequence inputs, e.g. "int64 * N",
		    "list(int64)"). The length of the list should be equal to the number of
		    inputs specified by this operation's op def.
		  control_inputs: A list of `Operation`s to set as control dependencies.
		
		Returns:
		  A wrapped TF_Operation*.
	**/
	static public function _create_c_op(graph:Dynamic, node_def:Dynamic, inputs:Dynamic, control_inputs:Dynamic):Dynamic;
	static public var _default_graph_stack : Dynamic;
	static public var _default_session_stack : Dynamic;
	static public var _default_shape_function_registry : Dynamic;
	static public function _device_string(dev_spec:Dynamic):Dynamic;
	static public function _error_prefix(name:Dynamic):Dynamic;
	/**
		Uses the default session to evaluate one or more tensors.
		
		Args:
		  tensors: A single Tensor, or a list of Tensor objects.
		  feed_dict: A dictionary that maps Tensor objects (or tensor names) to lists,
		    numpy ndarrays, TensorProtos, or strings.
		  graph: The graph in which the tensors are defined.
		  session: (Optional) A different session to use to evaluate "tensors".
		
		Returns:
		  Either a single numpy ndarray if "tensors" is a single tensor; or a list
		  of numpy ndarrays that each correspond to the respective element in
		  "tensors".
		
		Raises:
		  ValueError: If no default session is available; the default session
		    does not have "graph" as its graph; or if "session" is specified,
		    and it does not have "graph" as its graph.
	**/
	static public function _eval_using_default_session(tensors:Dynamic, feed_dict:Dynamic, graph:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Returns the appropriate graph to use for the given inputs.
		
		This library method provides a consistent algorithm for choosing the graph
		in which an Operation should be constructed:
		
		1. If the default graph is being used to construct a function, we
		   use the default graph.
		2. If the "graph" is specified explicitly, we validate that all of the inputs
		   in "op_input_list" are compatible with that graph.
		3. Otherwise, we attempt to select a graph from the first Operation-
		   or Tensor-valued input in "op_input_list", and validate that all other
		   such inputs are in the same graph.
		4. If the graph was not specified and it could not be inferred from
		   "op_input_list", we attempt to use the default graph.
		
		Args:
		  op_input_list: A list of inputs to an operation, which may include `Tensor`,
		    `Operation`, and other objects that may be converted to a graph element.
		  graph: (Optional) The explicit graph to use.
		
		Raises:
		  TypeError: If op_input_list is not a list or tuple, or if graph is not a
		    Graph.
		  ValueError: If a graph is explicitly passed and not all inputs are from it,
		    or if the inputs are from multiple graphs, or we could not find a graph
		    and there was no default graph.
		
		Returns:
		  The appropriate graph to use for the given inputs.
	**/
	static public function _get_graph_from_inputs(op_input_list:Dynamic, ?graph:Dynamic):Dynamic;
	static public var _gradient_registry : Dynamic;
	static public function _is_keras_symbolic_tensor(x:Dynamic):Dynamic;
	/**
		Returns the name of an op given the name of its scope.
		
		Args:
		  name: the name of the scope.
		
		Returns:
		  the name of the op (equal to scope name minus any trailing slash).
	**/
	static public function _name_from_scope_name(name:Dynamic):Dynamic;
	/**
		Operation object corresponding to v to use for colocation constraints.
	**/
	static public function _op_to_colocate_with(v:Dynamic):Dynamic;
	/**
		Produce a nice error if someone converts an Operation to a Tensor.
	**/
	static public function _operation_conversion_error(op:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Overrides (string) operator on Tensors to call func.
		
		Args:
		  clazz_object: the class to override for; either Tensor or SparseTensor.
		  operator: the string name of the operator to override.
		  func: the function that replaces the overridden operator.
		
		Raises:
		  ValueError: If operator has already been overwritten,
		    or if operator is not allowed to be overwritten.
	**/
	static public function _override_helper(clazz_object:Dynamic, _operator:Dynamic, func:Dynamic):Dynamic;
	static public var _proto_function_registry : Dynamic;
	/**
		Uses the default session to run "operation".
		
		Args:
		  operation: The Operation to be run.
		  feed_dict: A dictionary that maps Tensor objects (or tensor names) to lists,
		    numpy ndarrays, TensorProtos, or strings.
		  graph: The graph in which "operation" is defined.
		  session: (Optional) A different session to use to run "operation".
		
		Raises:
		  ValueError: If no default session is available; the default session
		    does not have "graph" as its graph; or if "session" is specified,
		    and it does not have "graph" as its graph.
	**/
	static public function _run_using_default_session(operation:Dynamic, feed_dict:Dynamic, graph:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Sets default shape fns from passed common_shapes.call_cpp_shape_fn.
	**/
	static public function _set_call_cpp_shape_fn(call_cpp_shape_fn:Dynamic):Dynamic;
	static public var _shape_registry : Dynamic;
	static public var _stats_registry : Dynamic;
	static public var _tensor_conversion_func_cache : Dynamic;
	static public var _tensor_conversion_func_lock : Dynamic;
	static public var _tensor_conversion_func_registry : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Wrapper for `Graph.add_to_collection()` using the default graph.
		
		See `tf.Graph.add_to_collection`
		for more details.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside an
		EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collections()` using the default graph.
		
		See `tf.Graph.add_to_collections`
		for more details.
		
		Args:
		  names: The key for the collections. The `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collections.
		
		@compatibility(eager)
		Collections are only supported in eager when variables are created inside an
		EagerVariableStore (e.g. as part of a layer or template).
		@end_compatibility
	**/
	static public function add_to_collections(names:Dynamic, value:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Colocations handled automatically by placer.
	**/
	static public function colocate_with(op:Dynamic, ?ignore_existing:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.container()` using the default graph.
		
		Args:
		  container_name: The container string to use in the context.
		
		Returns:
		  A context manager that specifies the default container to use for newly
		  created stateful ops.
	**/
	static public function container(container_name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.control_dependencies()` using the default graph.
		
		See `tf.Graph.control_dependencies`
		for more details.
		
		When eager execution is enabled, any callable object in the `control_inputs`
		list will be called.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which
		    must be executed or computed before running the operations
		    defined in the context.  Can also be `None` to clear the control
		    dependencies. If eager execution is enabled, any callable object in the
		    `control_inputs` list will be called.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
	**/
	static public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Converts `values` to a list of `Tensor` objects.
		
		Args:
		  values: A list of objects that can be consumed by `tf.convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` objects.
		  name: (Optional.) A name prefix to used when a new `Tensor` is
		    created, in which case element `i` will be given the name `name
		    + '_' + i`.
		  preferred_dtype: Optional element type for the returned tensors,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so preferred_dtype
		    can be used as a soft preference.  If the conversion to
		    `preferred_dtype` is not possible, this argument has no effect.
		
		Returns:
		  A list of `Tensor` and/or `IndexedSlices` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function convert_n_to_tensor(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Converts `values` to a list of `Output` or `IndexedSlices` objects.
		
		Any `IndexedSlices` or `SparseTensor` objects in `values` are returned
		unmodified.
		
		Args:
		  values: A list of `None`, `IndexedSlices`, `SparseTensor`, or objects that
		    can be consumed by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor`
		    `IndexedSlices`.
		  name: (Optional.) A name prefix to used when a new `Tensor` is
		    created, in which case element `i` will be given the name `name
		    + '_' + i`.
		
		Returns:
		  A list of `Tensor`, `IndexedSlices`, and/or `SparseTensor` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function convert_n_to_tensor_or_indexed_slices(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		```python
		import numpy as np
		
		def my_func(arg):
		  arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		  return tf.matmul(arg, arg) + arg
		
		# The following calls are equivalent.
		value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		```
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Note: This function diverges from default Numpy behavior for `float` and
		  `string` types when `None` is present in a Python list or scalar. Rather
		  than silently converting `None` values, an error will be thrown.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  preferred_dtype: Optional element type for the returned tensor,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so preferred_dtype
		    can be used as a soft preference.  If the conversion to
		    `preferred_dtype` is not possible, this argument has no effect.
		
		Returns:
		  An `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value` to `dtype`.
		  RuntimeError: If a registered conversion function returns an invalid value.
		  ValueError: If the `value` is a tensor not of given `dtype` in graph mode.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?preferred_dtype:Dynamic):Dynamic;
	/**
		Converts the given object to a `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		
		Returns:
		  An `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts the given `value` to a `Tensor`.
		
		This function converts Python objects of various types to `Tensor`
		objects. It accepts `Tensor` objects, numpy arrays, Python lists,
		and Python scalars. For example:
		
		```python
		import numpy as np
		
		def my_func(arg):
		  arg = tf.convert_to_tensor(arg, dtype=tf.float32)
		  return tf.matmul(arg, arg) + arg
		
		# The following calls are equivalent.
		value_1 = my_func(tf.constant([[1.0, 2.0], [3.0, 4.0]]))
		value_2 = my_func([[1.0, 2.0], [3.0, 4.0]])
		value_3 = my_func(np.array([[1.0, 2.0], [3.0, 4.0]], dtype=np.float32))
		```
		
		This function can be useful when composing a new operation in Python
		(such as `my_func` in the example above). All standard Python op
		constructors apply this function to each of their Tensor-valued
		inputs, which allows those ops to accept numpy arrays, Python lists,
		and scalars in addition to `Tensor` objects.
		
		Note: This function diverges from default Numpy behavior for `float` and
		  `string` types when `None` is present in a Python list or scalar. Rather
		  than silently converting `None` values, an error will be thrown.
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  dtype_hint: Optional element type for the returned tensor,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so dtype_hint
		    can be used as a soft preference.  If the conversion to
		    `dtype_hint` is not possible, this argument has no effect.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  An `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value` to `dtype`.
		  RuntimeError: If a registered conversion function returns an invalid value.
		  ValueError: If the `value` is a tensor not of given `dtype` in graph mode.
	**/
	static public function convert_to_tensor_v2(value:Dynamic, ?dtype:Dynamic, ?dtype_hint:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Python "with" handler for defining a default session.
		
		This function provides a means of registering a session for handling
		Tensor.eval() and Operation.run() calls. It is primarily intended for use
		by session.Session, but can be used with any object that implements
		the Session.run() interface.
		
		Use with the "with" keyword to specify that Tensor.eval() and Operation.run()
		invocations within the scope of a block should be executed by a particular
		session.
		
		The default session applies to the current thread only, so it is always
		possible to inspect the call stack and determine the scope of a default
		session. If you create a new thread, and wish to use the default session
		in that thread, you must explicitly add a "with ops.default_session(sess):"
		block in that thread's function.
		
		Example:
		  The following code examples are equivalent:
		
		  # 1. Using the Session object directly:
		  sess = ...
		  c = tf.constant(5.0)
		  sess.run(c)
		
		  # 2. Using default_session():
		  sess = ...
		  with ops.default_session(sess):
		    c = tf.constant(5.0)
		    result = c.eval()
		
		  # 3. Overriding default_session():
		  sess = ...
		  with ops.default_session(sess):
		    c = tf.constant(5.0)
		    with ops.default_session(...):
		      c.eval(session=sess)
		
		Args:
		  session: The session to be installed as the default session.
		
		Returns:
		  A context manager for the default session.
	**/
	static public function default_session(session:Dynamic):Dynamic;
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper for `Graph.device()` using the default graph.
		
		See
		`tf.Graph.device`
		for more details.
		
		Args:
		  device_name_or_function: The device name or function to use in
		    the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
		
		Raises:
		  RuntimeError: If eager execution is enabled and a function is passed in.
	**/
	static public function device(device_name_or_function:Dynamic):Dynamic;
	/**
		Specifies the device for ops created/executed in this context.
		
		`device_name` can be fully specified, as in "/job:worker/task:1/device:cpu:0",
		or partially specified, containing only a subset of the "/"-separated
		fields. Any fields which are specified override device annotations from outer
		scopes. For example:
		
		with tf.device('/job:foo'):
		  # ops created here have devices with /job:foo
		  with tf.device('/job:bar/task:0/device:gpu:2'):
		    # ops created here have the fully specified device above
		  with tf.device('/device:gpu:1'):
		    # ops created here have the device '/job:foo/device:gpu:1'
		
		Args:
		  device_name: The device name to use in the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
		
		Raises:
		  RuntimeError: If a function is passed in.
	**/
	static public function device_v2(device_name:Dynamic):Dynamic;
	/**
		Disables eager execution.
		
		This function can only be called before any Graphs, Ops, or Tensors have been
		created. It can be used at the beginning of the program for complex migration
		projects from TensorFlow 1.x to 2.x.
	**/
	static public function disable_eager_execution():Dynamic;
	/**
		Cleans up reference cycles from a `Graph`.
		
		Helpful for making sure the garbage collector doesn't need to run after a
		temporary `Graph` is no longer needed.
		
		Args:
		  graph: A `Graph` object to destroy. Neither it nor any of its ops are usable
		    after this function runs.
	**/
	static public function dismantle_graph(graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Runs the program with an optional main function and argv list.
		
		The program will run with eager execution enabled.
		
		Example:
		```python
		import tensorflow as tf
		# Import subject to future changes:
		from tensorflow.contrib.eager.python import tfe
		
		def main(_):
		  u = tf.constant(6.0)
		  v = tf.constant(7.0)
		  print(u * v)
		
		if __name__ == "__main__":
		  tfe.run()
		```
		
		Args:
		  main: the main function to run.
		  argv: the arguments to pass to it.
	**/
	static public function eager_run(?main:Dynamic, ?argv:Dynamic):Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Eager execution provides an imperative interface to TensorFlow. With eager
		execution enabled, TensorFlow functions execute operations immediately (as
		opposed to adding to a graph to be executed later in a `tf.Session`) and
		return concrete values (as opposed to symbolic references to a node in a
		computational graph).
		
		For example:
		
		```python
		tf.enable_eager_execution()
		
		# After eager execution is enabled, operations are executed as they are
		# defined and Tensor objects hold concrete values, which can be accessed as
		# numpy.ndarray`s through the numpy() method.
		assert tf.multiply(6, 7).numpy() == 42
		```
		
		Eager execution cannot be enabled after TensorFlow APIs have been used to
		create or execute graphs. It is typically recommended to invoke this function
		at program startup and not in a library (as most libraries should be usable
		both with and without eager execution).
		
		Args:
		  config: (Optional.) A `tf.ConfigProto` to use to configure the environment
		    in which operations are executed. Note that `tf.ConfigProto` is also
		    used to configure graph execution (via `tf.Session`) and many options
		    within `tf.ConfigProto` are not implemented (or are irrelevant) when
		    eager execution is enabled.
		  device_policy: (Optional.) Policy controlling how operations requiring
		    inputs on a specific device (e.g., a GPU 0) handle inputs on a different
		    device  (e.g. GPU 1 or CPU). When set to None, an appropriate value will be
		    picked automatically. The value picked may change between TensorFlow
		    releases.
		    Valid values:
		    - tf.contrib.eager.DEVICE_PLACEMENT_EXPLICIT: raises an error if the
		      placement is not correct.
		    - tf.contrib.eager.DEVICE_PLACEMENT_WARN: copies the tensors which are not
		      on the right device but logs a warning.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT: silently copies the tensors.
		      Note that this may hide performance problems as there is no notification
		      provided when operations are blocked on the tensor being copied between
		      devices.
		    - tf.contrib.eager.DEVICE_PLACEMENT_SILENT_FOR_INT32: silently copies
		      int32 tensors, raising errors on the other ones.
		  execution_mode: (Optional.) Policy controlling how operations dispatched are
		    actually executed. When set to None, an appropriate value will be picked
		    automatically. The value picked may change between TensorFlow releases.
		    Valid values:
		    - tf.contrib.eager.SYNC: executes each operation synchronously.
		    - tf.contrib.eager.ASYNC: executes each operation asynchronously. These
		      operations may return "non-ready" handles.
		
		Raises:
		  ValueError: If eager execution is enabled after creating/executing a
		   TensorFlow graph, or if options provided conflict with a previous call
		   to this function.
	**/
	static public function enable_eager_execution(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic):Dynamic;
	/**
		Enables eager execution for the lifetime of this program.
		
		Most of the doc string for enable_eager_execution is relevant here as well.
		
		Args:
		  config: See enable_eager_execution doc string
		  device_policy: See enable_eager_execution doc string
		  execution_mode: See enable_eager_execution doc string
		  server_def: (Optional.) A tensorflow::ServerDef proto.
		    Enables execution on remote devices. GrpcServers need to be started by
		    creating an identical server_def to this, and setting the appropriate
		    task_indexes, so that the servers can communicate. It will then be
		    possible to execute operations on remote devices.
		
		Raises:
		  ValueError
	**/
	static public function enable_eager_execution_internal(?config:Dynamic, ?device_policy:Dynamic, ?execution_mode:Dynamic, ?server_def:Dynamic):Dynamic;
	/**
		Returns True if executing eagerly, even if inside a graph function.
	**/
	static public function executing_eagerly_outside_functions():Dynamic;
	/**
		Returns a list of collections used in the default graph.
	**/
	static public function get_all_collection_keys():Dynamic;
	/**
		Wrapper for `Graph.get_collection()` using the default graph.
		
		See `tf.Graph.get_collection`
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  scope: (Optional.) If supplied, the resulting list is filtered to include
		    only items whose `name` attribute matches using `re.match`. Items
		    without a `name` attribute are never returned if a scope is supplied and
		    the choice or `re.match` means that a `scope` without special tokens
		    filters by prefix.
		
		Returns:
		  The list of values in the collection with the given `name`, or
		  an empty list if no value has been added to that collection. The
		  list contains the values in the order under which they were
		  collected.
		
		@compatibility(eager)
		Collections are not supported when eager execution is enabled.
		@end_compatibility
	**/
	static public function get_collection(key:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns the proto_type for collection_name.
	**/
	static public function get_collection_proto_type(collection_name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection_ref()` using the default graph.
		
		See `tf.Graph.get_collection_ref`
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		
		Returns:
		  The list of values in the collection with the given `name`, or an empty
		  list if no value has been added to that collection.  Note that this returns
		  the collection list itself, which can be modified in place to change the
		  collection.
		
		@compatibility(eager)
		Collections are not supported when eager execution is enabled.
		@end_compatibility
	**/
	static public function get_collection_ref(key:Dynamic):Dynamic;
	/**
		Returns the default graph for the current thread.
		
		The returned graph will be the innermost graph on which a
		`Graph.as_default()` context has been entered, or a global default
		graph if none has been explicitly created.
		
		NOTE: The default graph is a property of the current thread. If you
		create a new thread, and wish to use the default graph in that
		thread, you must explicitly add a `with g.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Graph` being used in the current thread.
	**/
	static public function get_default_graph():Dynamic;
	/**
		Returns the default session for the current thread.
		
		The returned `Session` will be the innermost session on which a
		`Session` or `Session.as_default()` context has been entered.
		
		NOTE: The default session is a property of the current thread. If you
		create a new thread, and wish to use the default session in that
		thread, you must explicitly add a `with sess.as_default():` in that
		thread's function.
		
		Returns:
		  The default `Session` being used in the current thread.
	**/
	static public function get_default_session():Dynamic;
	/**
		Returns the from_proto function for collection_name.
	**/
	static public function get_from_proto_function(collection_name:Dynamic):Dynamic;
	/**
		Returns the function that computes gradients for "op".
	**/
	static public function get_gradient_function(op:Dynamic):Dynamic;
	/**
		Returns the current name scope in the default_graph.
		
		For example:
		
		```python
		with tf.name_scope('scope1'):
		  with tf.name_scope('scope2'):
		    print(tf.get_name_scope())
		```
		would print the string `scope1/scope2`.
		
		Returns:
		  A string representing the current name scope.
	**/
	static public function get_name_scope():Dynamic;
	/**
		Looks up the node's statistics function in the registry and calls it.
		
		This function takes a Graph object and a NodeDef from a GraphDef, and if
		there's an associated statistics method, calls it and returns a result. If no
		function has been registered for the particular node type, it returns an empty
		statistics object.
		
		Args:
		  graph: A Graph object that's been set up with the node's graph.
		  node: A NodeDef describing the operator.
		  statistic_type: A string identifying the statistic we're interested in.
		Returns:
		  An OpStats object containing information about resource usage.
	**/
	static public function get_stats_for_node_def(graph:Dynamic, node:Dynamic, statistic_type:Dynamic):Dynamic;
	/**
		Returns the to_proto function for collection_name.
	**/
	static public function get_to_proto_function(collection_name:Dynamic):Dynamic;
	/**
		Returns True if there is a default graph.
	**/
	static public function has_default_graph():Dynamic;
	/**
		A context manager that lifts ops out of control-flow scopes and function-building graphs.
		
		There is often a need to lift variable initialization ops out of control-flow
		scopes, function-building graphs, and gradient tapes. Entering an
		`init_scope` is a mechanism for satisfying these desiderata. In particular,
		entering an `init_scope` has three effects:
		
		  (1) All control dependencies are cleared the moment the scope is entered;
		      this is equivalent to entering the context manager returned from
		      `control_dependencies(None)`, which has the side-effect of exiting
		      control-flow scopes like `tf.cond` and `tf.while_loop`.
		
		  (2) All operations that are created while the scope is active are lifted
		      into the lowest context on the `context_stack` that is not building a
		      graph function. Here, a context is defined as either a graph or an eager
		      context. Every context switch, i.e., every installation of a graph as
		      the default graph and every switch into eager mode, is logged in a
		      thread-local stack called `context_switches`; the log entry for a
		      context switch is popped from the stack when the context is exited.
		      Entering an `init_scope` is equivalent to crawling up
		      `context_switches`, finding the first context that is not building a
		      graph function, and entering it. A caveat is that if graph mode is
		      enabled but the default graph stack is empty, then entering an
		      `init_scope` will simply install a fresh graph as the default one.
		
		  (3) The gradient tape is paused while the scope is active.
		
		When eager execution is enabled, code inside an init_scope block runs with
		eager execution enabled even when defining graph functions via
		tf.contrib.eager.defun. For example:
		
		```python
		tf.enable_eager_execution()
		
		@tf.contrib.eager.defun
		def func():
		  # A defun-decorated function constructs TensorFlow graphs,
		  # it does not execute eagerly.
		  assert not tf.executing_eagerly()
		  with tf.init_scope():
		    # Initialization runs with eager execution enabled
		    assert tf.executing_eagerly()
		```
		
		Raises:
		  RuntimeError: if graph state is incompatible with this initialization.
	**/
	static public function init_scope():Dynamic;
	static public function inside_function():Dynamic;
	/**
		Converts `values` to a list of `Tensor` objects.
		
		Args:
		  values: A list of objects that can be consumed by `tf.convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` objects.
		  name: (Optional.) A name prefix to used when a new `Tensor` is
		    created, in which case element `i` will be given the name `name
		    + '_' + i`.
		  as_ref: True if the caller wants the results as ref tensors.
		  preferred_dtype: Optional element type for the returned tensors,
		    used when dtype is None. In some cases, a caller may not have a
		    dtype in mind when converting to a tensor, so preferred_dtype
		    can be used as a soft preference.  If the conversion to
		    `preferred_dtype` is not possible, this argument has no effect.
		  ctx: The value of context.context().
		
		Returns:
		  A list of `Tensor` and/or `IndexedSlices` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function internal_convert_n_to_tensor(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic, ?preferred_dtype:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts `values` to a list of `Tensor` or `IndexedSlices` objects.
		
		Any `IndexedSlices` or `SparseTensor` objects in `values` are returned
		unmodified.
		
		Args:
		  values: A list of `None`, `IndexedSlices`, `SparseTensor`, or objects that
		    can be consumed by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor`
		    `IndexedSlices`.
		  name: (Optional.) A name prefix to used when a new `Tensor` is
		    created, in which case element `i` will be given the name `name
		    + '_' + i`.
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  A list of `Tensor`, `IndexedSlices`, and/or `SparseTensor` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function internal_convert_n_to_tensor_or_indexed_slices(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Implementation of the public convert_to_tensor.
	**/
	static public function internal_convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic, ?preferred_dtype:Dynamic, ?ctx:Dynamic, ?accept_symbolic_tensors:Dynamic):Dynamic;
	/**
		Converts the given object to an `Tensor` or an `IndexedSlices`.
		
		If `value` is an `IndexedSlices` or `SparseTensor` it is returned
		unmodified. Otherwise, it is converted to a `Tensor` using
		`convert_to_tensor()`.
		
		Args:
		  value: An `IndexedSlices`, `SparseTensor`, or an object that can be consumed
		    by `convert_to_tensor()`.
		  dtype: (Optional.) The required `DType` of the returned `Tensor` or
		    `IndexedSlices`.
		  name: (Optional.) A name to use if a new `Tensor` is created.
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  An `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function internal_convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		EXPERIMENTAL: Returns true if `t` implements the tensor interface.
		
		See `register_dense_tensor_like_type()` for the current definition of a
		"tensor-like type".
		
		Args:
		  t: An object.
		
		Returns:
		  True iff `t` is an instance of one of the registered "tensor-like" types.
	**/
	static public function is_dense_tensor_like(t:Dynamic):Dynamic;
	static public var name_scope_cache : Dynamic;
	/**
		Specifies that ops of type `op_type` is not differentiable.
		
		This function should *not* be used for operations that have a
		well-defined gradient that is not yet implemented.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NotDifferentiable("Size")
		```
		
		The gradient computed for 'op_type' will then propagate zeros.
		
		For ops that have a well-defined gradient but are not yet implemented,
		no declaration should be made, and an error *must* be thrown if
		an attempt to request its gradient is made.
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function no_gradient(op_type:Dynamic):Dynamic;
	/**
		Human readable representation of a tensor's numpy value.
	**/
	static public function numpy_text(tensor:Dynamic, ?is_repr:Dynamic):Dynamic;
	/**
		DEPRECATED. Same as name_scope above, just different argument order.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
	/**
		Prepends name scope to a name.
		
		Args:
		  name: A `string` name.
		  import_scope: Optional `string`. Name scope to add.
		
		Returns:
		  Name with name scope added, or the original name if import_scope
		  is None.
	**/
	static public function prepend_name_scope(name:Dynamic, import_scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		EXPERIMENTAL: Registers `tensor_type` as implementing the tensor interface.
		
		A "tensor-like type" can represent a single dense tensor, and implements
		the `name` and `dtype` properties.
		
		Args:
		  tensor_type: A type implementing the tensor interface.
		
		Raises:
		  TypeError: If `tensor_type` does not implement the tensor interface.
	**/
	static public function register_dense_tensor_like_type(tensor_type:Dynamic):Dynamic;
	/**
		Registers `to_proto` and `from_proto` functions for collection_name.
		
		`to_proto` function converts a Python object to the corresponding protocol
		buffer, and returns the protocol buffer.
		
		`from_proto` function converts protocol buffer into a Python object, and
		returns the object..
		
		Args:
		  collection_name: Name of the collection.
		  proto_type: Protobuf type, such as `saver_pb2.SaverDef`,
		    `variable_pb2.VariableDef`, `queue_runner_pb2.QueueRunnerDef`..
		  to_proto: Function that implements Python object to protobuf conversion.
		  from_proto: Function that implements protobuf to Python object conversion.
	**/
	static public function register_proto_function(collection_name:Dynamic, ?proto_type:Dynamic, ?to_proto:Dynamic, ?from_proto:Dynamic):Dynamic;
	/**
		Registers a function for converting objects of `base_type` to `Tensor`.
		
		The conversion function must have the following signature:
		
		```python
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		```
		
		It must return a `Tensor` with the given `dtype` if specified. If the
		conversion function creates a new `Tensor`, it should use the given
		`name` if specified. All exceptions will be propagated to the caller.
		
		The conversion function may return `NotImplemented` for some
		inputs. In this case, the conversion process will continue to try
		subsequent conversion functions.
		
		If `as_ref` is true, the function must return a `Tensor` reference,
		such as a `Variable`.
		
		NOTE: The conversion functions will execute in order of priority,
		followed by order of registration. To ensure that a conversion function
		`F` runs before another conversion function `G`, ensure that `F` is
		registered with a smaller priority than `G`.
		
		Args:
		  base_type: The base type or tuple of base types for all objects that
		    `conversion_func` accepts.
		  conversion_func: A function that converts instances of `base_type` to
		    `Tensor`.
		  priority: Optional integer that indicates the priority for applying this
		    conversion function. Conversion functions with smaller priority values
		    run earlier than conversion functions with larger priority values.
		    Defaults to 100.
		
		Raises:
		  TypeError: If the arguments do not have the appropriate type.
	**/
	static public function register_tensor_conversion_function(base_type:Dynamic, conversion_func:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Clears the default graph stack and resets the global default graph.
		
		NOTE: The default graph is a property of the current thread. This
		function applies only to the current thread.  Calling this function while
		a `tf.Session` or `tf.InteractiveSession` is active will result in undefined
		behavior. Using any previously created `tf.Operation` or `tf.Tensor` objects
		after calling this function will result in undefined behavior.
		Raises:
		  AssertionError: If this function is called within a nested graph.
	**/
	static public function reset_default_graph():Dynamic;
	/**
		No op. TODO(b/74620627): Remove this.
	**/
	static public function set_shape_and_handle_data_for_outputs(_:Dynamic):Dynamic;
	/**
		Removes name scope from a name.
		
		Args:
		  name: A `string` name.
		  export_scope: Optional `string`. Name scope to remove.
		
		Returns:
		  Name with name scope removed, or the original name if export_scope
		  is None.
	**/
	static public function strip_name_scope(name:Dynamic, export_scope:Dynamic):Dynamic;
	/**
		Returns a unique identifier for this Tensor.
	**/
	static public function tensor_id(tensor:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A unique (within this program execution) integer.
	**/
	static public function uid():Dynamic;
}