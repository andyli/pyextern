/* This file is generated, do not edit! */
package tensorflow.python.framework.func_graph;
@:pythonImport("tensorflow.python.framework.func_graph", "FuncGraph") extern class FuncGraph {
	/**
		Context manager for `control_dependencies()`.
	**/
	static public function _ControlDependenciesController(graph:Dynamic, control_inputs:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct a new FuncGraph.
		
		The graph will inherit its graph key, collections, seed, and distribution
		strategy stack from the current context or graph.
		
		Args:
		  name: the name of the function.
		  read_only_collections: whether to not write function graph collections
		    back to default graph. Defaults to True.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?read_only_collections:Dynamic):Dynamic;
	/**
		Construct a new FuncGraph.
		
		The graph will inherit its graph key, collections, seed, and distribution
		strategy stack from the current context or graph.
		
		Args:
		  name: the name of the function.
		  read_only_collections: whether to not write function graph collections
		    back to default graph. Defaults to True.
	**/
	public function new(name:Dynamic, ?read_only_collections:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add device to stack manually, separate from a context manager.
	**/
	public function _add_device_to_stack(device_name_or_function:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Adds a function to the graph.
		
		After the function has been added, you can call to the function by
		passing the function name in place of an op name to
		`Graph.create_op()`.
		
		Args:
		  function: A `_DefinedFunction` object.
		
		
		Raises:
		  ValueError: if another function is defined with the same name.
	**/
	public function _add_function(_function:Dynamic):Dynamic;
	/**
		Creates `Operations` in this graph for any new TF_Operations.
		
		This is useful for when TF_Operations are indirectly created by the C API
		outside of the Operation constructor (e.g. by TF_ImportGraphDef,
		TF_FinishWhile). This ensures there are corresponding Operations for all
		TF_Operations in the underlying TF_Graph.
		
		Args:
		  compute_devices: (Optional.) If True, device functions will be executed
		    to compute the device properties of each new Operation.
		
		Returns:
		  A list of the new `Operation` objects.
	**/
	public function _add_new_tf_operations(?compute_devices:Dynamic):Dynamic;
	/**
		Adds 'op' to the graph.
		
		Args:
		  op: the Operator or Tensor to add.
		
		Raises:
		  TypeError: if op is not an Operation or Tensor.
		  ValueError: if the op.name or op._id are already used.
	**/
	public function _add_op(op:Dynamic):Dynamic;
	/**
		Applies the current device function stack to the given operation.
	**/
	public function _apply_device_functions(op:Dynamic):Dynamic;
	/**
		Returns a serialized `GraphDef` representation of this graph.
		
		The serialized `GraphDef` can be imported into another `Graph`
		(using `tf.import_graph_def`) or used with the
		[C++ Session API](../../../../api_docs/cc/index.md).
		
		This method is thread-safe.
		
		Args:
		  from_version: Optional.  If this is set, returns a `GraphDef`
		    containing only the nodes that were added to this graph since
		    its `version` property had the given value.
		  add_shapes: If true, adds an "_output_shapes" list attr to each
		    node with the inferred shapes of each of its outputs.
		
		Returns:
		  A tuple containing a
		  [`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		  protocol buffer, and the version of the graph to which that
		  `GraphDef` corresponds.
		
		Raises:
		  ValueError: If the `graph_def` would be too large.
	**/
	public function _as_graph_def(?from_version:Dynamic, ?add_shapes:Dynamic):Dynamic;
	/**
		See `Graph.as_graph_element()` for details.
	**/
	public function _as_graph_element_locked(obj:Dynamic, allow_tensor:Dynamic, allow_operation:Dynamic):Dynamic;
	/**
		EXPERIMENTAL: A context manager for setting attributes on operators.
		
		This context manager can be used to add additional
		attributes to operators within the scope of the context.
		
		For example:
		
		   with ops.Graph().as_default() as g:
		     f_1 = Foo()  # No extra attributes
		     with g._attr_scope({"_a": tf.attr_value_pb2.AttrValue(b=False)}):
		       f_2 = Foo()  # Additional attribute _a=False
		       with g._attr_scope({"_a": tf.attr_value_pb2.AttrValue(b=True)}):
		         f_3 = Foo()  # Additional attribute _a=False
		         with g._attr_scope({"_a": None}):
		           f_4 = Foo()  # No additional attributes.
		
		Args:
		  attr_map: A dictionary mapping attr name strings to
		    AttrValue protocol buffers or None.
		
		Returns:
		  A context manager that sets the kernel label to be used for one or more
		  ops created in that context.
		
		Raises:
		  TypeError: If attr_map is not a dictionary mapping
		    strings to AttrValue protobufs.
	**/
	public function _attr_scope(attr_map:Dynamic):Dynamic;
	public var _c_graph : Dynamic;
	public function _capture_helper(tensor:Dynamic, name:Dynamic):Dynamic;
	/**
		Check if the graph is finalized.
		
		Raises:
		  RuntimeError: If the graph finalized.
	**/
	public function _check_not_finalized():Dynamic;
	public function _colocate_with_for_gradient(op:Dynamic, gradient_uid:Dynamic, ?ignore_existing:Dynamic):Dynamic;
	/**
		Return thread-local copy of colocation stack.
	**/
	public var _colocation_stack : Dynamic;
	/**
		For an op that takes `input_ops` as inputs, compute control inputs.
		
		The returned control dependencies should yield an execution that
		is equivalent to adding all control inputs in
		self._control_dependencies_stack to a newly created op. However,
		this function attempts to prune the returned control dependencies
		by observing that nodes created within the same `with
		control_dependencies(...):` block may have data dependencies that make
		the explicit approach redundant.
		
		Args:
		  input_ops: The data input ops for an op to be created.
		
		Returns:
		  A list of control inputs for the op to be created.
	**/
	public function _control_dependencies_for_inputs(input_ops:Dynamic):Dynamic;
	public var _control_dependencies_stack : Dynamic;
	/**
		If this graph contains functions, copy them to `graph_def`.
	**/
	public function _copy_functions_to_graph_def(graph_def:Dynamic, starting_bytesize:Dynamic):Dynamic;
	/**
		Creates an `Operation` in this graph from the supplied TF_Operation.
		
		This method is like create_op() except the new Operation is constructed
		using `c_op`. The returned Operation will have `c_op` as its _c_op
		field. This is used to create Operation objects around TF_Operations created
		indirectly by the C API (e.g. by TF_ImportGraphDef, TF_FinishWhile).
		
		This function does not call Operation._control_flow_post_processing or
		Graph._control_dependencies_for_inputs (since the inputs may not be
		available yet). The caller is responsible for calling these methods.
		
		Args:
		  c_op: a wrapped TF_Operation
		  compute_device: (Optional.) If True, device functions will be executed
		    to compute the device property of the Operation.
		
		Returns:
		  An `Operation` object.
	**/
	public function _create_op_from_tf_operation(c_op:Dynamic, ?compute_device:Dynamic):Dynamic;
	/**
		Common logic for creating an op in this graph.
	**/
	public function _create_op_helper(op:Dynamic, ?compute_device:Dynamic):Dynamic;
	public function _current_control_dependencies():Dynamic;
	public var _device_function_stack : Dynamic;
	public var _device_functions_outer_to_inner : Dynamic;
	/**
		A stack to maintain distribution strategy context for each thread.
	**/
	public var _distribution_strategy_stack : Dynamic;
	/**
		Returns the current control flow context.
		
		Returns:
		  A context object.
	**/
	public function _get_control_flow_context():Dynamic;
	/**
		Returns the function definition for 'name'.
		
		Args:
		  name: string function name.
		Returns:
		  The function def proto.
	**/
	public function _get_function(name:Dynamic):Dynamic;
	/**
		Returns the `OpDef` proto for `type`. `type` is a string.
	**/
	public function _get_op_def(type:Dynamic):Dynamic;
	/**
		Returns the `Operation` with the given `name`.
		
		This is a internal unsafe version of get_operation_by_name. It skips many
		checks and does not have user friedly error messages but runs considerably
		faster. This method may be called concurrently from multiple threads.
		
		Args:
		  name: The name of the `Operation` to return.
		
		Returns:
		  The `Operation` with the given `name`.
		
		Raises:
		  KeyError: If `name` does not correspond to an operation in this graph.
	**/
	public function _get_operation_by_name_unsafe(name:Dynamic):Dynamic;
	public function _get_operation_by_tf_operation(tf_oper:Dynamic):Dynamic;
	/**
		Returns the `Tensor` representing `tf_output`.
		
		Note that there is only one such `Tensor`, i.e. multiple calls to this
		function with the same TF_Output value will always return the same `Tensor`
		object.
		
		Args:
		  tf_output: A wrapped `TF_Output` (the C API equivalent of `Tensor`).
		
		Returns:
		  The `Tensor` that represents `tf_output`.
	**/
	public function _get_tensor_by_tf_output(tf_output:Dynamic):Dynamic;
	/**
		Tests whether 'name' is registered in this graph's function library.
		
		Args:
		  name: string op name.
		Returns:
		  bool indicating whether or not 'name' is registered in function library.
	**/
	public function _is_function(name:Dynamic):Dynamic;
	/**
		EXPERIMENTAL: A context manager for setting kernel labels.
		
		This context manager can be used to select particular
		implementations of kernels within the scope of the context.
		
		For example:
		
		    with ops.Graph().as_default() as g:
		      f_1 = Foo()  # Uses the default registered kernel for the Foo op.
		      with g.kernel_label_map({"Foo": "v_2"}):
		        f_2 = Foo()  # Uses the registered kernel with label "v_2"
		                     # for the Foo op.
		        with g.kernel_label_map({"Foo": "v_3"}):
		          f_3 = Foo()  # Uses the registered kernel with label "v_3"
		                       # for the Foo op.
		          with g.kernel_label_map({"Foo": ""}):
		            f_4 = Foo()  # Uses the default registered kernel
		                         # for the Foo op.
		
		Args:
		  op_to_kernel_label_map: A dictionary mapping op type strings to
		    kernel label strings.
		
		Returns:
		  A context manager that sets the kernel label to be used for one or more
		  ops created in that context.
		
		Raises:
		  TypeError: If op_to_kernel_label_map is not a dictionary mapping
		    strings to strings.
	**/
	public function _kernel_label_map(op_to_kernel_label_map:Dynamic):Dynamic;
	public var _last_id : Dynamic;
	/**
		Returns a lock to guard code that creates & mutates ops.
		
		See the comment for self._group_lock for more info.
	**/
	public function _mutation_lock():Dynamic;
	public var _name_stack : Dynamic;
	/**
		Id for next Operation instance. Also increments the internal id.
	**/
	public function _next_id():Dynamic;
	/**
		Python 'with' handler to help annotate ops with their originator.
		
		An op may have an 'original_op' property that indicates the op on which
		it was based. For example a replica op is based on the op that was
		replicated and a gradient op is based on the op that was differentiated.
		
		All ops created in the scope of this 'with' handler will have
		the given 'op' as their original op.
		
		Args:
		  op: The Operation that all ops created in this scope will have as their
		    original op.
		
		Yields:
		  Nothing.
	**/
	public function _original_op(op:Dynamic):Dynamic;
	public function _pop_control_dependencies_controller(controller:Dynamic):Dynamic;
	public function _push_control_dependencies_controller(controller:Dynamic):Dynamic;
	/**
		Record that the given op depends on all registered control dependencies.
		
		Args:
		  op: An Operation.
	**/
	public function _record_op_seen_by_control_dependencies(op:Dynamic):Dynamic;
	/**
		Returns a lock to guard code for Session.run.
		
		See the comment for self._group_lock for more info.
	**/
	public function _session_run_lock():Dynamic;
	/**
		Sets the current control flow context.
		
		Args:
		  ctx: a context object.
	**/
	public function _set_control_flow_context(ctx:Dynamic):Dynamic;
	/**
		Return colocation stack metadata as a dictionary.
	**/
	public function _snapshot_colocation_stack_metadata():Dynamic;
	/**
		Return device function stack as a list of TraceableObjects.
		
		Returns:
		  [traceable_stack.TraceableObject, ...] where each TraceableObject's .obj
		  member is a displayable name for the user's argument to Graph.device, and
		  the filename and lineno members point to the code location where
		  Graph.device was called directly or indirectly by the user.
	**/
	public function _snapshot_device_function_stack_metadata():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Opposite of `finalize`. Internal interface.
		
		NOTE: Unfinalizing a graph could have negative impact on performance,
		especially in a multi-threaded environment.  Unfinalizing a graph
		when it is in use by a Session may lead to undefined behavior. Ensure
		that all sessions using a graph are closed before calling this method.
	**/
	public function _unsafe_unfinalize():Dynamic;
	public function _variable_creator_scope(creator:Dynamic):Dynamic;
	public var _variable_creator_stack : Dynamic;
	/**
		Stores `value` in the collection with the given `name`.
		
		Note that collections are not sets, so it is possible to add a value to
		a collection several times.
		
		Args:
		  name: The key for the collection. The `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collection.
	**/
	public function add_to_collection(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Stores `value` in the collections given by `names`.
		
		Note that collections are not sets, so it is possible to add a value to
		a collection several times. This function makes sure that duplicates in
		`names` are ignored, but it will not check for pre-existing membership of
		`value` in any of the collections in `names`.
		
		`names` can be any iterable, but if `names` is a string, it is treated as a
		single collection name.
		
		Args:
		  names: The keys for the collections to add to. The `GraphKeys` class
		    contains many standard names for collections.
		  value: The value to add to the collections.
	**/
	public function add_to_collections(names:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns a context manager that makes this `Graph` the default graph.
		
		This method should be used if you want to create multiple graphs
		in the same process. For convenience, a global default graph is
		provided, and all ops will be added to this graph if you do not
		create a new graph explicitly.
		
		Use this method with the `with` keyword to specify that ops created within
		the scope of a block should be added to this graph. In this case, once
		the scope of the `with` is exited, the previous default graph is set again
		as default. There is a stack, so it's ok to have multiple nested levels
		of `as_default` calls.
		
		The default graph is a property of the current thread. If you
		create a new thread, and wish to use the default graph in that
		thread, you must explicitly add a `with g.as_default():` in that
		thread's function.
		
		The following code examples are equivalent:
		
		```python
		# 1. Using Graph.as_default():
		g = tf.Graph()
		with g.as_default():
		  c = tf.constant(5.0)
		  assert c.graph is g
		
		# 2. Constructing and making default:
		with tf.Graph().as_default() as g:
		  c = tf.constant(5.0)
		  assert c.graph is g
		```
		
		If eager execution is enabled ops created under this context manager will be
		added to the graph instead of executed eagerly.
		
		Returns:
		  A context manager for using this graph as the default graph.
	**/
	public function as_default():Dynamic;
	/**
		Returns a serialized `GraphDef` representation of this graph.
		
		The serialized `GraphDef` can be imported into another `Graph`
		(using `tf.import_graph_def`) or used with the
		[C++ Session API](../../api_docs/cc/index.md).
		
		This method is thread-safe.
		
		Args:
		  from_version: Optional.  If this is set, returns a `GraphDef`
		    containing only the nodes that were added to this graph since
		    its `version` property had the given value.
		  add_shapes: If true, adds an "_output_shapes" list attr to each
		    node with the inferred shapes of each of its outputs.
		
		Returns:
		  A
		  [`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		  protocol buffer.
		
		Raises:
		  ValueError: If the `graph_def` would be too large.
	**/
	public function as_graph_def(?from_version:Dynamic, ?add_shapes:Dynamic):Dynamic;
	/**
		Returns the object referred to by `obj`, as an `Operation` or `Tensor`.
		
		This function validates that `obj` represents an element of this
		graph, and gives an informative error message if it is not.
		
		This function is the canonical way to get/validate an object of
		one of the allowed types from an external argument reference in the
		Session API.
		
		This method may be called concurrently from multiple threads.
		
		Args:
		  obj: A `Tensor`, an `Operation`, or the name of a tensor or operation.
		    Can also be any object with an `_as_graph_element()` method that returns
		    a value of one of these types.
		  allow_tensor: If true, `obj` may refer to a `Tensor`.
		  allow_operation: If true, `obj` may refer to an `Operation`.
		
		Returns:
		  The `Tensor` or `Operation` in the Graph corresponding to `obj`.
		
		Raises:
		  TypeError: If `obj` is not a type we support attempting to convert
		    to types.
		  ValueError: If `obj` is of an appropriate type but invalid. For
		    example, an invalid string.
		  KeyError: If `obj` is not an object in the graph.
	**/
	public function as_graph_element(obj:Dynamic, ?allow_tensor:Dynamic, ?allow_operation:Dynamic):Dynamic;
	/**
		Returns True iff this graph represents a function.
	**/
	public var building_function : Dynamic;
	/**
		Captures `tensor` if it's external to this graph.
		
		If `tensor` is from a different graph, returns a placeholder for it.
		`tensor` and the placeholder will appear in self.captures, and the
		placeholder will appear in self.inputs.  Multiple calls to this method with
		the same `tensor` argument will return the same placeholder. If `tensor` is
		from this graph, returns `tensor`.
		
		Args:
		  tensor: Tensor. May be from this FuncGraph or a different graph.
		  name: Optional name if a placeholder is created.
		
		Returns:
		  Tensor from this FuncGraph.
	**/
	public function capture(tensor:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Clears all values in a collection.
		
		Args:
		  name: The key for the collection. The `GraphKeys` class contains many
		    standard names for collections.
	**/
	public function clear_collection(name:Dynamic):Dynamic;
	/**
		Returns the names of the collections known to this graph.
	**/
	public var collections : Dynamic;
	/**
		Returns a context manager that specifies an op to colocate with.
		
		Note: this function is not for public use, only for internal libraries.
		
		For example:
		
		```python
		a = tf.Variable([1.0])
		with g.colocate_with(a):
		  b = tf.constant(1.0)
		  c = tf.add(a, b)
		```
		
		`b` and `c` will always be colocated with `a`, no matter where `a`
		is eventually placed.
		
		**NOTE** Using a colocation scope resets any existing device constraints.
		
		If `op` is `None` then `ignore_existing` must be `True` and the new
		scope resets all colocation and device constraints.
		
		Args:
		  op: The op to colocate all created ops with, or `None`.
		  ignore_existing: If true, only applies colocation of this op within
		    the context, rather than applying all colocation properties
		    on the stack.  If `op` is `None`, this value must be `True`.
		
		Raises:
		  ValueError: if op is None but ignore_existing is False.
		
		Yields:
		  A context manager that specifies the op with which to colocate
		  newly created ops.
	**/
	public function colocate_with(op:Dynamic, ?ignore_existing:Dynamic):Dynamic;
	/**
		Returns a context manager that specifies the resource container to use.
		
		Stateful operations, such as variables and queues, can maintain their
		states on devices so that they can be shared by multiple processes.
		A resource container is a string name under which these stateful
		operations are tracked. These resources can be released or cleared
		with `tf.Session.reset()`.
		
		For example:
		
		```python
		with g.container('experiment0'):
		  # All stateful Operations constructed in this context will be placed
		  # in resource container "experiment0".
		  v1 = tf.Variable([1.0])
		  v2 = tf.Variable([2.0])
		  with g.container("experiment1"):
		    # All stateful Operations constructed in this context will be
		    # placed in resource container "experiment1".
		    v3 = tf.Variable([3.0])
		    q1 = tf.FIFOQueue(10, tf.float32)
		  # All stateful Operations constructed in this context will be
		  # be created in the "experiment0".
		  v4 = tf.Variable([4.0])
		  q1 = tf.FIFOQueue(20, tf.float32)
		  with g.container(""):
		    # All stateful Operations constructed in this context will be
		    # be placed in the default resource container.
		    v5 = tf.Variable([5.0])
		    q3 = tf.FIFOQueue(30, tf.float32)
		
		# Resets container "experiment0", after which the state of v1, v2, v4, q1
		# will become undefined (such as uninitialized).
		tf.Session.reset(target, ["experiment0"])
		```
		
		Args:
		  container_name: container name string.
		
		Returns:
		  A context manager for defining resource containers for stateful ops,
		    yields the container name.
	**/
	public function container(container_name:Dynamic):Dynamic;
	/**
		Returns a context manager that specifies control dependencies.
		
		Use with the `with` keyword to specify that all operations constructed
		within the context should have control dependencies on
		`control_inputs`. For example:
		
		```python
		with g.control_dependencies([a, b, c]):
		  # `d` and `e` will only run after `a`, `b`, and `c` have executed.
		  d = ...
		  e = ...
		```
		
		Multiple calls to `control_dependencies()` can be nested, and in
		that case a new `Operation` will have control dependencies on the union
		of `control_inputs` from all active contexts.
		
		```python
		with g.control_dependencies([a, b]):
		  # Ops constructed here run after `a` and `b`.
		  with g.control_dependencies([c, d]):
		    # Ops constructed here run after `a`, `b`, `c`, and `d`.
		```
		
		You can pass None to clear the control dependencies:
		
		```python
		with g.control_dependencies([a, b]):
		  # Ops constructed here run after `a` and `b`.
		  with g.control_dependencies(None):
		    # Ops constructed here run normally, not waiting for either `a` or `b`.
		    with g.control_dependencies([c, d]):
		      # Ops constructed here run after `c` and `d`, also not waiting
		      # for either `a` or `b`.
		```
		
		*N.B.* The control dependencies context applies *only* to ops that
		are constructed within the context. Merely using an op or tensor
		in the context does not add a control dependency. The following
		example illustrates this point:
		
		```python
		# WRONG
		def my_func(pred, tensor):
		  t = tf.matmul(tensor, tensor)
		  with tf.control_dependencies([pred]):
		    # The matmul op is created outside the context, so no control
		    # dependency will be added.
		    return t
		
		# RIGHT
		def my_func(pred, tensor):
		  with tf.control_dependencies([pred]):
		    # The matmul op is created in the context, so a control dependency
		    # will be added.
		    return tf.matmul(tensor, tensor)
		```
		
		Also note that though execution of ops created under this scope will trigger
		execution of the dependencies, the ops created under this scope might still
		be pruned from a normal tensorflow graph. For example, in the following
		snippet of code the dependencies are never executed:
		
		```python
		  loss = model.loss()
		  with tf.control_dependencies(dependencies):
		    loss = loss + tf.constant(1)  # note: dependencies ignored in the
		                                  # backward pass
		  return tf.gradients(loss, model.variables)
		```
		
		This is because evaluating the gradient graph does not require evaluating
		the constant(1) op created in the forward pass.
		
		Args:
		  control_inputs: A list of `Operation` or `Tensor` objects which
		    must be executed or computed before running the operations
		    defined in the context.  Can also be `None` to clear the control
		    dependencies.
		
		Returns:
		 A context manager that specifies control dependencies for all
		 operations constructed within the context.
		
		Raises:
		  TypeError: If `control_inputs` is not a list of `Operation` or
		    `Tensor` objects.
	**/
	public function control_dependencies(control_inputs:Dynamic):Dynamic;
	/**
		Like Graph.create_op, except handles external input tensors.
		
		This overload adds functionality to create_op to "capture" any external
		input tensors, i.e. tensors from the eager context or outer function graphs
		if this is a nested function. See `capture` for more information.
		
		Args:
		  op_type: The `Operation` type to create. This corresponds to the
		    `OpDef.name` field for the proto that defines the operation.
		  inputs: A list of `Tensor` objects that will be inputs to the `Operation`.
		  dtypes: A list of `DType` objects that will be the types of the tensors
		    that the operation produces.
		  input_types: (Optional.) A list of `DType`s that will be the types of
		    the tensors that the operation consumes. By default, uses the base
		    `DType` of each input in `inputs`. Operations that expect
		    reference-typed inputs must specify `input_types` explicitly.
		  name: (Optional.) A string name for the operation. If not specified, a
		    name is generated based on `op_type`.
		  attrs: (Optional.) A dictionary where the key is the attribute name (a
		    string) and the value is the respective `attr` attribute of the
		    `NodeDef` proto that will represent the operation (an `AttrValue`
		    proto).
		  op_def: (Optional.) The `OpDef` proto that describes the `op_type` that
		    the operation will have.
		  compute_shapes: (Optional.) Deprecated. Has no effect (shapes are always
		    computed).
		  compute_device: (Optional.) If True, device functions will be executed
		    to compute the device property of the Operation.
		
		Returns:
		  An `Operation` object.
	**/
	public function create_op(op_type:Dynamic, inputs:Dynamic, dtypes:Dynamic, ?input_types:Dynamic, ?name:Dynamic, ?attrs:Dynamic, ?op_def:Dynamic, ?compute_shapes:Dynamic, ?compute_device:Dynamic):Dynamic;
	/**
		Returns a context manager that specifies the default device to use.
		
		The `device_name_or_function` argument may either be a device name
		string, a device function, or None:
		
		* If it is a device name string, all operations constructed in
		  this context will be assigned to the device with that name, unless
		  overridden by a nested `device()` context.
		* If it is a function, it will be treated as a function from
		  Operation objects to device name strings, and invoked each time
		  a new Operation is created. The Operation will be assigned to
		  the device with the returned name.
		* If it is None, all `device()` invocations from the enclosing context
		  will be ignored.
		
		For information about the valid syntax of device name strings, see
		the documentation in
		[`DeviceNameUtils`](https://www.tensorflow.org/code/tensorflow/core/util/device_name_utils.h).
		
		For example:
		
		```python
		with g.device('/device:GPU:0'):
		  # All operations constructed in this context will be placed
		  # on GPU 0.
		  with g.device(None):
		    # All operations constructed in this context will have no
		    # assigned device.
		
		# Defines a function from `Operation` to device string.
		def matmul_on_gpu(n):
		  if n.type == "MatMul":
		    return "/device:GPU:0"
		  else:
		    return "/cpu:0"
		
		with g.device(matmul_on_gpu):
		  # All operations of type "MatMul" constructed in this context
		  # will be placed on GPU 0; all other operations will be placed
		  # on CPU 0.
		```
		
		**N.B.** The device scope may be overridden by op wrappers or
		other library code. For example, a variable assignment op
		`v.assign()` must be colocated with the `tf.Variable` `v`, and
		incompatible device scopes will be ignored.
		
		Args:
		  device_name_or_function: The device name or function to use in
		    the context.
		
		Yields:
		  A context manager that specifies the default device to use for newly
		  created ops.
	**/
	public function device(device_name_or_function:Dynamic):Dynamic;
	/**
		External tensors captured by this function.
	**/
	public var external_captures : Dynamic;
	/**
		Finalizes this graph, making it read-only.
		
		After calling `g.finalize()`, no new operations can be added to
		`g`.  This method is used to ensure that no operations are added
		to a graph when it is shared between multiple threads, for example
		when using a `tf.train.QueueRunner`.
	**/
	public function finalize():Dynamic;
	/**
		True if this graph has been finalized.
	**/
	public var finalized : Dynamic;
	/**
		Returns a list of collections used in this graph.
	**/
	public function get_all_collection_keys():Dynamic;
	/**
		Returns a list of values in the collection with the given `name`.
		
		This is different from `get_collection_ref()` which always returns the
		actual collection list if it exists in that it returns a new list each time
		it is called.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  The list of values in the collection with the given `name`, or
		  an empty list if no value has been added to that collection. The
		  list contains the values in the order under which they were
		  collected.
	**/
	public function get_collection(name:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Returns a list of values in the collection with the given `name`.
		
		If the collection exists, this returns the list itself, which can
		be modified in place to change the collection.  If the collection does
		not exist, it is created as an empty list and the list is returned.
		
		This is different from `get_collection()` which always returns a copy of
		the collection list if it exists and never creates an empty collection.
		
		Args:
		  name: The key for the collection. For example, the `GraphKeys` class
		    contains many standard names for collections.
		
		Returns:
		  The list of values in the collection with the given `name`, or an empty
		  list if no value has been added to that collection.
	**/
	public function get_collection_ref(name:Dynamic):Dynamic;
	/**
		Returns the current name scope.
		
		For example:
		
		```python
		with tf.name_scope('scope1'):
		  with tf.name_scope('scope2'):
		    print(tf.get_default_graph().get_name_scope())
		```
		would print the string `scope1/scope2`.
		
		Returns:
		  A string representing the current name scope.
	**/
	public function get_name_scope():Dynamic;
	/**
		Returns the `Operation` with the given `name`.
		
		This method may be called concurrently from multiple threads.
		
		Args:
		  name: The name of the `Operation` to return.
		
		Returns:
		  The `Operation` with the given `name`.
		
		Raises:
		  TypeError: If `name` is not a string.
		  KeyError: If `name` does not correspond to an operation in this graph.
	**/
	public function get_operation_by_name(name:Dynamic):Dynamic;
	/**
		Return the list of operations in the graph.
		
		You can modify the operations in place, but modifications
		to the list such as inserts/delete have no effect on the
		list of operations known to the graph.
		
		This method may be called concurrently from multiple threads.
		
		Returns:
		  A list of Operations.
	**/
	public function get_operations():Dynamic;
	/**
		Returns the `Tensor` with the given `name`.
		
		This method may be called concurrently from multiple threads.
		
		Args:
		  name: The name of the `Tensor` to return.
		
		Returns:
		  The `Tensor` with the given `name`.
		
		Raises:
		  TypeError: If `name` is not a string.
		  KeyError: If `name` does not correspond to a tensor in this graph.
	**/
	public function get_tensor_by_name(name:Dynamic):Dynamic;
	/**
		EXPERIMENTAL: A context manager for overriding gradient functions.
		
		This context manager can be used to override the gradient function
		that will be used for ops within the scope of the context.
		
		For example:
		
		```python
		@tf.RegisterGradient("CustomSquare")
		def _custom_square_grad(op, grad):
		  # ...
		
		with tf.Graph().as_default() as g:
		  c = tf.constant(5.0)
		  s_1 = tf.square(c)  # Uses the default gradient for tf.square.
		  with g.gradient_override_map({"Square": "CustomSquare"}):
		    s_2 = tf.square(s_2)  # Uses _custom_square_grad to compute the
		                          # gradient of s_2.
		```
		
		Args:
		  op_type_map: A dictionary mapping op type strings to alternative op
		    type strings.
		
		Returns:
		  A context manager that sets the alternative op type to be used for one
		  or more ops created in that context.
		
		Raises:
		  TypeError: If `op_type_map` is not a dictionary mapping strings to
		    strings.
	**/
	public function gradient_override_map(op_type_map:Dynamic):Dynamic;
	/**
		The GraphDef version information of this graph.
		
		For details on the meaning of each version, see
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto).
		
		Returns:
		  A `VersionDef`.
	**/
	public var graph_def_versions : Dynamic;
	/**
		Placeholders in this function corresponding captured tensors.
	**/
	public var internal_captures : Dynamic;
	/**
		Returns `True` if and only if `tensor` is feedable.
	**/
	public function is_feedable(tensor:Dynamic):Dynamic;
	/**
		Returns `True` if and only if `tensor_or_op` is fetchable.
	**/
	public function is_fetchable(tensor_or_op:Dynamic):Dynamic;
	/**
		Returns a context manager that creates hierarchical names for operations.
		
		A graph maintains a stack of name scopes. A `with name_scope(...):`
		statement pushes a new name onto the stack for the lifetime of the context.
		
		The `name` argument will be interpreted as follows:
		
		* A string (not ending with '/') will create a new name scope, in which
		  `name` is appended to the prefix of all operations created in the
		  context. If `name` has been used before, it will be made unique by
		  calling `self.unique_name(name)`.
		* A scope previously captured from a `with g.name_scope(...) as
		  scope:` statement will be treated as an "absolute" name scope, which
		  makes it possible to re-enter existing scopes.
		* A value of `None` or the empty string will reset the current name scope
		  to the top-level (empty) name scope.
		
		For example:
		
		```python
		with tf.Graph().as_default() as g:
		  c = tf.constant(5.0, name="c")
		  assert c.op.name == "c"
		  c_1 = tf.constant(6.0, name="c")
		  assert c_1.op.name == "c_1"
		
		  # Creates a scope called "nested"
		  with g.name_scope("nested") as scope:
		    nested_c = tf.constant(10.0, name="c")
		    assert nested_c.op.name == "nested/c"
		
		    # Creates a nested scope called "inner".
		    with g.name_scope("inner"):
		      nested_inner_c = tf.constant(20.0, name="c")
		      assert nested_inner_c.op.name == "nested/inner/c"
		
		    # Create a nested scope called "inner_1".
		    with g.name_scope("inner"):
		      nested_inner_1_c = tf.constant(30.0, name="c")
		      assert nested_inner_1_c.op.name == "nested/inner_1/c"
		
		      # Treats `scope` as an absolute name scope, and
		      # switches to the "nested/" scope.
		      with g.name_scope(scope):
		        nested_d = tf.constant(40.0, name="d")
		        assert nested_d.op.name == "nested/d"
		
		        with g.name_scope(""):
		          e = tf.constant(50.0, name="e")
		          assert e.op.name == "e"
		```
		
		The name of the scope itself can be captured by `with
		g.name_scope(...) as scope:`, which stores the name of the scope
		in the variable `scope`. This value can be used to name an
		operation that represents the overall result of executing the ops
		in a scope. For example:
		
		```python
		inputs = tf.constant(...)
		with g.name_scope('my_layer') as scope:
		  weights = tf.Variable(..., name="weights")
		  biases = tf.Variable(..., name="biases")
		  affine = tf.matmul(inputs, weights) + biases
		  output = tf.nn.relu(affine, name=scope)
		```
		
		NOTE: This constructor validates the given `name`. Valid scope
		names match one of the following regular expressions:
		
		    [A-Za-z0-9.][A-Za-z0-9_.\\-/]* (for scopes at the root)
		    [A-Za-z0-9_.\\-/]* (for other scopes)
		
		Args:
		  name: A name for the scope.
		
		Returns:
		  A context manager that installs `name` as a new name scope.
		
		Raises:
		  ValueError: If `name` is not a valid scope name, according to the rules
		    above.
	**/
	public function name_scope(name:Dynamic):Dynamic;
	public var output_shapes : Dynamic;
	public var output_types : Dynamic;
	/**
		Marks the given `tensor` as unfeedable in this graph.
	**/
	public function prevent_feeding(tensor:Dynamic):Dynamic;
	/**
		Marks the given `op` as unfetchable in this graph.
	**/
	public function prevent_fetching(op:Dynamic):Dynamic;
	/**
		The graph-level random seed of this graph.
	**/
	public var seed : Dynamic;
	/**
		Make device, colocation and dependencies stacks thread-local.
		
		Device, colocation and dependencies stacks are not thread-local be default.
		If multiple threads access them, then the state is shared.  This means that
		one thread may affect the behavior of another thread.
		
		After this method is called, the stacks become thread-local.  If multiple
		threads access them, then the state is not shared.  Each thread uses its own
		value; a thread doesn't affect other threads by mutating such a stack.
		
		The initial value for every thread's stack is set to the current value
		of the stack when `switch_to_thread_local()` was first called.
	**/
	public function switch_to_thread_local():Dynamic;
	/**
		Return a unique operation name for `name`.
		
		Note: You rarely need to call `unique_name()` directly.  Most of
		the time you just need to create `with g.name_scope()` blocks to
		generate structured names.
		
		`unique_name` is used to generate structured names, separated by
		`"/"`, to help identify operations when debugging a graph.
		Operation names are displayed in error messages reported by the
		TensorFlow runtime, and in various visualization tools such as
		TensorBoard.
		
		If `mark_as_used` is set to `True`, which is the default, a new
		unique name is created and marked as in use. If it's set to `False`,
		the unique name is returned without actually being marked as used.
		This is useful when the caller simply wants to know what the name
		to be created will be.
		
		Args:
		  name: The name for an operation.
		  mark_as_used: Whether to mark this name as being used.
		
		Returns:
		  A string to be passed to `create_op()` that will be used
		  to name the operation being created.
	**/
	public function unique_name(name:Dynamic, ?mark_as_used:Dynamic):Dynamic;
	/**
		A list of variables accessed by this FuncGraph.
		
		Note that functions keep only weak references to variables. Calling the
		function after a variable it accesses has been deleted is an error.
		
		Yields:
		  Strong references to variables accessed by this FuncGraph.
	**/
	public var variables : Dynamic;
	/**
		Returns a version number that increases as ops are added to the graph.
		
		Note that this is unrelated to the
		`tf.Graph.graph_def_versions`.
		
		Returns:
		   An integer version that increases as ops are added to the graph.
	**/
	public var version : Dynamic;
}