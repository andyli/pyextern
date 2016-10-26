/* This file is generated, do not edit! */
package tensorflow.python.framework.ops;
@:pythonImport("tensorflow.python.framework.ops") extern class Ops_Module {
	/**
		Specifies that ops of type `op_type` do not have a defined gradient.
		
		This function is only used when defining a new op type. It may be
		used for ops such as `tf.size()` that are not differentiable.  For
		example:
		
		```python
		tf.NoGradient("Size")
		```
		
		Args:
		  op_type: The string type of an operation. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		
		Raises:
		  TypeError: If `op_type` is not a string.
	**/
	static public function NoGradient(op_type:Dynamic):Dynamic;
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
		  A graph_pb2.NodeDef protocol buffer.
	**/
	static public function _NodeDef(op_type:Dynamic, name:Dynamic, ?device:Dynamic, ?attrs:Dynamic):Dynamic;
	static public var _TENSOR_LIKE_TYPES : Dynamic;
	static public function _TensorTensorConversionFunction(t:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
	/**
		Converts a stack extracted using _extract_stack() to a traceback stack.
		
		Args:
		  stack: A list of n 4-tuples, (filename, lineno, name, frame_globals).
		
		Returns:
		  A list of n 4-tuples (filename, lineno, name, code), where the code tuple
		  element is calculated from the corresponding elements of the input tuple.
	**/
	static public function _convert_stack(stack:Dynamic):Dynamic;
	static public var _default_graph_stack : Dynamic;
	static public var _default_session_stack : Dynamic;
	static public var _default_shape_function_registry : Dynamic;
	static public function _device_string(dev_spec:Dynamic):Dynamic;
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
		A lightweight re-implementation of traceback.extract_stack.
		
		NOTE(mrry): traceback.extract_stack eagerly retrieves the line of code for
		  each stack frame using linecache, which results in an abundance of stat()
		  calls. This implementation does not retrieve the code, and any consumer
		  should apply _convert_stack to the result to obtain a traceback that can
		  be formatted etc. using traceback methods.
		
		Returns:
		  A list of 4-tuples (filename, lineno, name, frame_globals) corresponding to
		  the call stack of the current thread.
	**/
	static public function _extract_stack():Dynamic;
	/**
		Returns the appropriate graph to use for the given inputs.
		
		This library method provides a consistent algorithm for choosing the graph
		in which an Operation should be constructed:
		
		1. If the "graph" is specified explicitly, we validate that all of the inputs
		   in "op_input_list" are compatible with that graph.
		2. Otherwise, we attempt to select a graph from the first Operation-
		   or Tensor-valued input in "op_input_list", and validate that all other
		   such inputs are in the same graph.
		3. If the graph was not specified and it could not be inferred from
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
	static public function _no_shape_function(op:Dynamic):Dynamic;
	/**
		Produce a nice error if someone converts an Operation to a Tensor.
	**/
	static public function _operation_conversion_error(op:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	/**
		Overrides (string) operator on Tensors to call func.
		
		Args:
		  clazz_object: the class to override for; either Tensor or SparseTensor.
		  operator: the string name of the operator to override.
		  func: the function that replaces the overriden operator.
		
		Raises:
		  ValueError: If operator has already been overwritten,
		    or if operator is not allowed to be overwritten.
	**/
	static public function _override_helper(clazz_object:Dynamic, operator:Dynamic, func:Dynamic):Dynamic;
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
	static public var _shape_registry : Dynamic;
	static public var _stats_registry : Dynamic;
	static public var _tensor_conversion_func_registry : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Wrapper for `Graph.add_to_collection()` using the default graph.
		
		See [`Graph.add_to_collection()`](../../api_docs/python/framework.md#Graph.add_to_collection)
		for more details.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
	**/
	static public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.add_to_collections()` using the default graph.
		
		See [`Graph.add_to_collections()`](../../api_docs/python/framework.md#Graph.add_to_collections)
		for more details.
		
		Args:
		  names: The key for the collections. The `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collections.
	**/
	static public function add_to_collections(names:Dynamic, value:Dynamic):Dynamic;
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
		
		See [`Graph.control_dependencies()`](../../api_docs/python/framework.md#Graph.control_dependencies)
		for more details.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which
		    must be executed or computed before running the operations
		    defined in the context.  Can also be `None` to clear the control
		    dependencies.
		
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
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  A list of `Tensor` and/or `IndexedSlices` objects.
		
		Raises:
		  TypeError: If no conversion function is registered for an element in
		    `values`.
		  RuntimeError: If a registered conversion function returns an invalid
		    value.
	**/
	static public function convert_n_to_tensor(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
	static public function convert_n_to_tensor_or_indexed_slices(values:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
		
		Args:
		  value: An object whose type has a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor. If missing, the
		    type is inferred from the type of `value`.
		  name: Optional name to use if a new `Tensor` is created.
		  as_ref: True if we want the result as a ref tensor. Only used if a new
		    `Tensor` is created.
		
		Returns:
		  A `Tensor` based on `value`.
		
		Raises:
		  TypeError: If no conversion function is registered for `value`.
		  RuntimeError: If a registered conversion function returns an invalid value.
	**/
	static public function convert_to_tensor(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
		  as_ref: True if the caller wants the results as ref tensors.
		
		Returns:
		  An `Tensor`, `IndexedSlices`, or `SparseTensor` based on `value`.
		
		Raises:
		  ValueError: If `dtype` does not match the element type of `value`.
	**/
	static public function convert_to_tensor_or_indexed_slices(value:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
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
		Wrapper for `Graph.device()` using the default graph.
		
		See
		[`Graph.device()`](../../api_docs/python/framework.md#Graph.device)
		for more details.
		
		Args:
		  device_name_or_function: The device name or function to use in
		    the context.
		
		Returns:
		  A context manager that specifies the default device to use for newly
		  created ops.
	**/
	static public function device(device_name_or_function:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a list of collections used in the default graph.
	**/
	static public function get_all_collection_keys():Dynamic;
	/**
		Wrapper for `Graph.get_collection()` using the default graph.
		
		See [`Graph.get_collection()`](../../api_docs/python/framework.md#Graph.get_collection)
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
	**/
	static public function get_collection(key:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns the proto_type for collection_name.
	**/
	static public function get_collection_proto_type(collection_name:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.get_collection_ref()` using the default graph.
		
		See [`Graph.get_collection_ref()`](../../api_docs/python/framework.md#Graph.get_collection_ref)
		for more details.
		
		Args:
		  key: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		
		Returns:
		  The list of values in the collection with the given `name`, or an empty
		  list if no value has been added to that collection.  Note that this returns
		  the collection list itself, which can be modified in place to change the
		  collection.
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
		EXPERIMENTAL: Returns true if `t` implements the tensor interface.
		
		See `register_dense_tensor_like_type()` for the current definition of a
		"tensor-like type".
		
		Args:
		  t: An object.
		
		Returns:
		  True iff `t` is an instance of one of the registered "tensor-like" types.
	**/
	static public function is_dense_tensor_like(t:Dynamic):Dynamic;
	/**
		Wrapper for `Graph.name_scope()` using the default graph.
		
		See
		[`Graph.name_scope()`](../../api_docs/python/framework.md#Graph.name_scope)
		for more details.
		
		Args:
		  name: A name for the scope.
		
		Returns:
		  A context manager that installs `name` as a new name scope in the
		  default graph.
	**/
	static public function name_scope(name:Dynamic):Dynamic;
	/**
		Returns a context manager for use when defining a Python op.
		
		This context manager validates that the given `values` are from the
		same graph, ensures that graph is the default graph, and pushes a
		name scope.
		
		For example, to define a new Python op called `my_op`:
		
		```python
		def my_op(a, b, c, name=None):
		  with tf.op_scope([a, b, c], name, "MyOp") as scope:
		    a = tf.convert_to_tensor(a, name="a")
		    b = tf.convert_to_tensor(b, name="b")
		    c = tf.convert_to_tensor(c, name="c")
		    # Define some computation that uses `a`, `b`, and `c`.
		    return foo_op(..., name=scope)
		```
		
		Args:
		  values: The list of `Tensor` arguments that are passed to the op function.
		  name: The name argument that is passed to the op function.
		  default_name: The default name to use if the `name` argument is `None`.
		
		Returns:
		  A context manager for use in defining Python ops. Yields the name scope.
		
		Raises:
		  ValueError: if neither `name` nor `default_name` is provided.
	**/
	static public function op_scope(values:Dynamic, name:Dynamic, ?default_name:Dynamic):Dynamic;
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
		
		    def conversion_func(value, dtype=None, name=None, as_ref=False):
		      # ...
		
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
	**/
	static public function reset_default_graph():Dynamic;
	/**
		Uses the registered shape functions to set the shapes for op's outputs.
	**/
	static public function set_shapes_for_outputs(op:Dynamic):Dynamic;
}