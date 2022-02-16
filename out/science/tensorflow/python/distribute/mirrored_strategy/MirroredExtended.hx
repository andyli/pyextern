/* This file is generated, do not edit! */
package tensorflow.python.distribute.mirrored_strategy;
@:pythonImport("tensorflow.python.distribute.mirrored_strategy", "MirroredExtended") extern class MirroredExtended {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(container_strategy:Dynamic, ?devices:Dynamic, ?cross_device_ops:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(container_strategy:Dynamic, ?devices:Dynamic, ?cross_device_ops:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function _allow_variable_partition():Dynamic;
	public function _batch_gather_to(value_destination_pairs:Dynamic, axis:Dynamic, ?options:Dynamic):Dynamic;
	public function _batch_reduce_to(reduce_op:Dynamic, value_destination_pairs:Dynamic, options:Dynamic):Dynamic;
	public function _broadcast_to(tensor:Dynamic, destinations:Dynamic):Dynamic;
	public function _call_for_each_replica(fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Configures the strategy class.
	**/
	public function _configure(?session_config:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Get the containing `tf.distribute.Strategy`.
		
		This should not generally be needed except when creating a new
		`ReplicaContext` and to validate that the caller is in the correct
		`scope()`.
		
		Returns:
		  The `tf.distribute.Strategy` such that `strategy.extended` is `self`.
	**/
	public function _container_strategy():Dynamic;
	/**
		Create a mirrored variable. See `DistributionStrategy.scope`.
	**/
	public function _create_variable(next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _distribute_datasets_from_function(dataset_fn:Dynamic, options:Dynamic):Dynamic;
	public function _experimental_distribute_dataset(dataset:Dynamic, options:Dynamic):Dynamic;
	public function _experimental_distribute_values_from_function(value_fn:Dynamic):Dynamic;
	public function _experimental_make_numpy_dataset(numpy_input:Dynamic, session:Dynamic):Dynamic;
	public function _experimental_run_steps_on_iterator(fn:Dynamic, iterator:Dynamic, iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	/**
		Gather `value` across replicas along axis-th dimension to `destinations`.
		
		`gather_to` gathers `tf.distribute.DistributedValues` or `tf.Tensor`-like
		object, along `axis`-th dimension. It supports only dense tensors but NOT
		sparse tensor. This API can only be called in cross-replica context.
		
		Args:
		  value: a `tf.distribute.DistributedValues`, or a `tf.Tensor` like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to reduce to. To perform an all-gather, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is reduced
		    to the devices of that variable, and this method doesn't update the
		    variable.
		  axis: 0-D int32 Tensor. Dimension along which to gather. Must be in the
		    range [0, rank(value)).
		  options: a `tf.distribute.experimental.CommunicationOptions`. Options to
		    perform collective operations. This overrides the default options if the
		    `tf.distribute.Strategy` takes one in the constructor. See
		    `tf.distribute.experimental.CommunicationOptions` for details of the
		    options.
		
		Returns:
		  A tensor or value gathered to `destinations`.
	**/
	public function _gather_to(value:Dynamic, destinations:Dynamic, axis:Dynamic, ?options:Dynamic):Dynamic;
	public function _gather_to_implementation(value:Dynamic, destinations:Dynamic, axis:Dynamic, options:Dynamic):Dynamic;
	public function _get_cross_device_ops(value:Dynamic):Dynamic;
	public function _get_local_replica_id(replica_id_in_sync_group:Dynamic):Dynamic;
	public function _get_replica_id_in_sync_group(replica_id:Dynamic):Dynamic;
	/**
		Return the initial value for variables on a replica.
	**/
	public function _get_variable_creator_initial_value(replica_id:Dynamic, device:Dynamic, primary_var:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		`make_dataset_iterator` and `make_numpy_iterator` use global batch size.
		
		`make_input_fn_iterator` assumes per-replica batching.
		
		Returns:
		  Boolean.
	**/
	public var _global_batch_size : Dynamic;
	/**
		Implementation of `group`.
	**/
	public function _group(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Whether this strategy indicates working in multi-worker settings.
	**/
	public function _in_multi_worker_mode():Dynamic;
	/**
		Initializes the object for multi-worker training.
	**/
	public function _initialize_multi_worker(devices:Dynamic):Dynamic;
	/**
		Initializes the object for single-worker training.
	**/
	public function _initialize_single_worker(devices:Dynamic):Dynamic;
	public function _initialize_strategy(devices:Dynamic):Dynamic;
	public var _input_workers : Dynamic;
	public function _input_workers_with_options(?options:Dynamic):Dynamic;
	/**
		Returns local results per replica as a tuple.
	**/
	public function _local_results(val:Dynamic):Dynamic;
	public function _make_collective_ops(devices:Dynamic):Dynamic;
	public function _make_dataset_iterator(dataset:Dynamic):Dynamic;
	public function _make_input_fn_iterator(input_fn:Dynamic, ?replication_mode:Dynamic):Dynamic;
	/**
		Returns number of replicas over which gradients are aggregated.
	**/
	public var _num_replicas_in_sync : Dynamic;
	static public var _prefer_collective_ops : Dynamic;
	public function _reduce(reduce_op:Dynamic, value:Dynamic):Dynamic;
	public function _reduce_to(reduce_op:Dynamic, value:Dynamic, destinations:Dynamic, options:Dynamic):Dynamic;
	/**
		Implements `StrategyExtendedV2._replica_ctx_all_reduce`.
	**/
	public function _replica_ctx_all_reduce(reduce_op:Dynamic, value:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Run `fn` with `args` and `kwargs` to update `var`.
	**/
	public function _replica_ctx_update(_var:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic, group:Dynamic):Dynamic;
	/**
		Returns one or a list of ops.resource_creator_scope for some Strategy.
	**/
	public function _resource_creator_scope():Dynamic;
	/**
		Implementation of tf.distribute.Strategy.scope().
	**/
	public function _scope(strategy:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _update(_var:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic, group:Dynamic):Dynamic;
	public function _update_config_proto(config_proto:Dynamic):Dynamic;
	public function _update_non_slot(colocate_with:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic, group:Dynamic):Dynamic;
	/**
		Whether to use merge-calls inside the distributed strategy.
	**/
	public function _use_merge_call():Dynamic;
	/**
		Validate `colocate_with_variable` argument to `colocate_vars_with`.
	**/
	public function _validate_colocate_with_variable(colocate_with_variable:Dynamic):Dynamic;
	/**
		Combine multiple `reduce_to` calls into one for faster execution.
		
		Similar to `reduce_to`, but accepts a list of (value, destinations) pairs.
		It's more efficient than reduce each value separately.
		
		This API currently can only be called in cross-replica context. Other
		variants to reduce values across replicas are:
		* `tf.distribute.StrategyExtended.reduce_to`: the non-batch version of
		  this API.
		* `tf.distribute.ReplicaContext.all_reduce`: the counterpart of this API
		  in replica context. It supports both batched and non-batched all-reduce.
		* `tf.distribute.Strategy.reduce`: a more convenient method to reduce
		  to the host in cross-replica context.
		
		See `reduce_to` for more information.
		
		>>> @tf.function
		... def step_fn(var):
		...
		...   def merge_fn(strategy, value, var):
		...     # All-reduce the value. Note that `value` here is a
		...     # `tf.distribute.DistributedValues`.
		...     reduced = strategy.extended.batch_reduce_to(
		...         tf.distribute.ReduceOp.SUM, [(value, var)])[0]
		...     strategy.extended.update(var, lambda var, value: var.assign(value),
		...         args=(reduced,))
		...
		...   value = tf.identity(1.)
		...   tf.distribute.get_replica_context().merge_call(merge_fn,
		...     args=(value, var))
		>>>
		>>> def run(strategy):
		...   with strategy.scope():
		...     v = tf.Variable(0.)
		...     strategy.run(step_fn, args=(v,))
		...     return v
		>>>
		>>> run(tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"]))
		MirroredVariable:{
		  0: <tf.Variable 'Variable:0' shape=() dtype=float32, numpy=2.0>,
		  1: <tf.Variable 'Variable/replica_1:0' shape=() dtype=float32, numpy=2.0>
		}
		>>> run(tf.distribute.experimental.CentralStorageStrategy(
		...     compute_devices=["GPU:0", "GPU:1"], parameter_device="CPU:0"))
		<tf.Variable 'Variable:0' shape=() dtype=float32, numpy=2.0>
		>>> run(tf.distribute.OneDeviceStrategy("GPU:0"))
		<tf.Variable 'Variable:0' shape=() dtype=float32, numpy=1.0>
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` value specifying how values should
		    be combined. Allows using string representation of the enum such as
		    "SUM", "MEAN".
		  value_destination_pairs: a sequence of (value, destinations) pairs. See
		    `tf.distribute.Strategy.reduce_to` for descriptions.
		  options: a `tf.distribute.experimental.CommunicationOptions`. Options to
		    perform collective operations. This overrides the default options if the
		    `tf.distribute.Strategy` takes one in the constructor. See
		    `tf.distribute.experimental.CommunicationOptions` for details of the
		    options.
		
		Returns:
		  A list of reduced values, one per pair in `value_destination_pairs`.
	**/
	public function batch_reduce_to(reduce_op:Dynamic, value_destination_pairs:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Mirror a tensor on one device to all worker devices.
		
		Args:
		  tensor: A Tensor value to broadcast.
		  destinations: A mirrored variable or device string specifying the
		    destination devices to copy `tensor` to.
		
		Returns:
		  A value mirrored to `destinations` devices.
	**/
	public function broadcast_to(tensor:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Run `fn` once per replica.
		
		`fn` may call `tf.get_replica_context()` to access methods such as
		`replica_id_in_sync_group` and `merge_call()`.
		
		`merge_call()` is used to communicate between the replicas and
		re-enter the cross-replica context. All replicas pause their execution
		having encountered a `merge_call()` call. After that the
		`merge_fn`-function is executed. Its results are then unwrapped and
		given back to each replica call. After that execution resumes until
		`fn` is complete or encounters another `merge_call()`.  Example:
		
		```python
		# Called once in "cross-replica" context.
		def merge_fn(distribution, three_plus_replica_id):
		  # sum the values across replicas
		  return sum(distribution.experimental_local_results(three_plus_replica_id))
		
		# Called once per replica in `distribution`, in a "replica" context.
		def fn(three):
		  replica_ctx = tf.get_replica_context()
		  v = three + replica_ctx.replica_id_in_sync_group
		  # Computes the sum of the `v` values across all replicas.
		  s = replica_ctx.merge_call(merge_fn, args=(v,))
		  return s + v
		
		with distribution.scope():
		  # in "cross-replica" context
		  ...
		  merged_results = distribution.run(fn, args=[3])
		  # merged_results has the values from every replica execution of `fn`.
		  # This statement prints a list:
		  print(distribution.experimental_local_results(merged_results))
		```
		
		Args:
		  fn: function to run (will be run once per replica).
		  args: Tuple or list with positional arguments for `fn`.
		  kwargs: Dict with keyword arguments for `fn`.
		
		Returns:
		  Merged return value of `fn` across all replicas.
	**/
	public function call_for_each_replica(fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Scope that controls which devices variables will be created on.
		
		No operations should be added to the graph inside this scope, it
		should only be used when creating variables (some implementations
		work by changing variable creation, others work by using a
		tf.compat.v1.colocate_with() scope).
		
		This may only be used inside `self.scope()`.
		
		Example usage:
		
		```
		with strategy.scope():
		  var1 = tf.Variable(...)
		  with strategy.extended.colocate_vars_with(var1):
		    # var2 and var3 will be created on the same device(s) as var1
		    var2 = tf.Variable(...)
		    var3 = tf.Variable(...)
		
		  def fn(v1, v2, v3):
		    # operates on v1 from var1, v2 from var2, and v3 from var3
		
		  # `fn` runs on every device `var1` is on, `var2` and `var3` will be there
		  # too.
		  strategy.extended.update(var1, fn, args=(var2, var3))
		```
		
		Args:
		  colocate_with_variable: A variable created in this strategy's `scope()`.
		    Variables created while in the returned context manager will be on the
		    same set of devices as `colocate_with_variable`.
		
		Returns:
		  A context manager.
	**/
	public function colocate_vars_with(colocate_with_variable:Dynamic):Dynamic;
	/**
		Whether the strategy uses between-graph replication or not.
		
		This is expected to return a constant value that will not be changed
		throughout its life cycle.
	**/
	public var experimental_between_graph : Dynamic;
	/**
		Makes a dataset for input provided via a numpy array.
		
		This avoids adding `numpy_input` as a large constant in the graph,
		and copies the data to the machine or machines that will be processing
		the input.
		
		Args:
		  numpy_input: A nest of NumPy input arrays that will be distributed evenly
		    across all replicas. Note that lists of Numpy arrays are stacked, as
		    that is normal `tf.data.Dataset` behavior.
		  session: (TensorFlow v1.x graph execution only) A session used for
		    initialization.
		
		Returns:
		  A `tf.data.Dataset` representing `numpy_input`.
	**/
	public function experimental_make_numpy_dataset(numpy_input:Dynamic, ?session:Dynamic):Dynamic;
	/**
		Returns `True` if static shape is required; `False` otherwise.
	**/
	public var experimental_require_static_shapes : Dynamic;
	/**
		DEPRECATED: please use `run` instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		please use `run` instead.
		
		Run `fn` with input from `iterator` for `iterations` times.
		
		This method can be used to run a step function for training a number of
		times using input from a dataset.
		
		Args:
		  fn: function to run using this distribution strategy. The function must
		    have the following signature: `def fn(context, inputs)`. `context` is an
		      instance of `MultiStepContext` that will be passed when `fn` is run.
		      `context` can be used to specify the outputs to be returned from `fn`
		      by calling `context.set_last_step_output`. It can also be used to
		      capture non tensor outputs by `context.set_non_tensor_output`. See
		      `MultiStepContext` documentation for more information. `inputs` will
		      have same type/structure as `iterator.get_next()`. Typically, `fn`
		      will use `call_for_each_replica` method of the strategy to distribute
		      the computation over multiple replicas.
		  iterator: Iterator of a dataset that represents the input for `fn`. The
		    caller is responsible for initializing the iterator as needed.
		  iterations: (Optional) Number of iterations that `fn` should be run.
		    Defaults to 1.
		  initial_loop_values: (Optional) Initial values to be passed into the
		    loop that runs `fn`. Defaults to `None`. # TODO(priyag): Remove
		      initial_loop_values argument when we have a mechanism to infer the
		      outputs of `fn`.
		
		Returns:
		  Returns the `MultiStepContext` object which has the following properties,
		  among other things:
		    - run_op: An op that runs `fn` `iterations` times.
		    - last_step_outputs: A dictionary containing tensors set using
		    `context.set_last_step_output`. Evaluating this returns the value of
		    the tensors after the last iteration.
		    - non_tensor_outputs: A dictionary containing anything that was set by
		      `fn` by calling `context.set_non_tensor_output`.
	**/
	public function experimental_run_steps_on_iterator(fn:Dynamic, iterator:Dynamic, ?iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	/**
		Whether initialization is needed.
	**/
	public var experimental_should_init : Dynamic;
	/**
		Device(s) for non-slot variables.
		
		DEPRECATED: TF 1.x ONLY.
		
		This method returns non-slot devices where non-slot variables are placed.
		Users can create non-slot variables on these devices by using a block:
		
		```python
		with tf.distribute.StrategyExtended.colocate_vars_with(tf.distribute.StrategyExtended.non_slot_devices(...)):
		  ...
		```
		
		Args:
		  var_list: The list of variables being optimized, needed with the
		    default `tf.distribute.Strategy`.
		Returns:
		  A sequence of devices for non-slot variables.
	**/
	public function non_slot_devices(var_list:Dynamic):Dynamic;
	/**
		Returns the tuple of all devices used to place variables.
	**/
	public var parameter_devices : Dynamic;
	/**
		Read the aggregate value of a replica-local variable.
	**/
	public function read_var(replica_local_var:Dynamic):Dynamic;
	/**
		Combine (via e.g. sum or mean) values across replicas.
		
		`reduce_to` aggregates `tf.distribute.DistributedValues` and distributed
		variables. It supports both dense values and `tf.IndexedSlices`.
		
		This API currently can only be called in cross-replica context. Other
		variants to reduce values across replicas are:
		* `tf.distribute.StrategyExtended.batch_reduce_to`: the batch version of
		  this API.
		* `tf.distribute.ReplicaContext.all_reduce`: the counterpart of this API
		  in replica context. It supports both batched and non-batched all-reduce.
		* `tf.distribute.Strategy.reduce`: a more convenient method to reduce
		  to the host in cross-replica context.
		
		`destinations` specifies where to reduce the value to, e.g. "GPU:0". You can
		also pass in a `Tensor`, and the destinations will be the device of that
		tensor. For all-reduce, pass the same to `value` and `destinations`.
		
		It can be used in `tf.distribute.ReplicaContext.merge_call` to write code
		that works for all `tf.distribute.Strategy`.
		
		>>> @tf.function
		... def step_fn(var):
		...
		...   def merge_fn(strategy, value, var):
		...     # All-reduce the value. Note that `value` here is a
		...     # `tf.distribute.DistributedValues`.
		...     reduced = strategy.extended.reduce_to(tf.distribute.ReduceOp.SUM,
		...         value, destinations=var)
		...     strategy.extended.update(var, lambda var, value: var.assign(value),
		...         args=(reduced,))
		...
		...   value = tf.identity(1.)
		...   tf.distribute.get_replica_context().merge_call(merge_fn,
		...     args=(value, var))
		>>>
		>>> def run(strategy):
		...   with strategy.scope():
		...     v = tf.Variable(0.)
		...     strategy.run(step_fn, args=(v,))
		...     return v
		>>>
		>>> run(tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"]))
		MirroredVariable:{
		  0: <tf.Variable 'Variable:0' shape=() dtype=float32, numpy=2.0>,
		  1: <tf.Variable 'Variable/replica_1:0' shape=() dtype=float32, numpy=2.0>
		}
		>>> run(tf.distribute.experimental.CentralStorageStrategy(
		...     compute_devices=["GPU:0", "GPU:1"], parameter_device="CPU:0"))
		<tf.Variable 'Variable:0' shape=() dtype=float32, numpy=2.0>
		>>> run(tf.distribute.OneDeviceStrategy("GPU:0"))
		<tf.Variable 'Variable:0' shape=() dtype=float32, numpy=1.0>
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` value specifying how values should
		    be combined. Allows using string representation of the enum such as
		    "SUM", "MEAN".
		  value: a `tf.distribute.DistributedValues`, or a `tf.Tensor` like object.
		  destinations: a `tf.distribute.DistributedValues`, a `tf.Variable`, a
		    `tf.Tensor` alike object, or a device string. It specifies the devices
		    to reduce to. To perform an all-reduce, pass the same to `value` and
		    `destinations`. Note that if it's a `tf.Variable`, the value is reduced
		    to the devices of that variable, and this method doesn't update the
		    variable.
		  options: a `tf.distribute.experimental.CommunicationOptions`. Options to
		    perform collective operations. This overrides the default options if the
		    `tf.distribute.Strategy` takes one in the constructor. See
		    `tf.distribute.experimental.CommunicationOptions` for details of the
		    options.
		
		Returns:
		  A tensor or value reduced to `destinations`.
	**/
	public function reduce_to(reduce_op:Dynamic, value:Dynamic, destinations:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Whether checkpointing is needed.
	**/
	public var should_checkpoint : Dynamic;
	/**
		Whether saving summaries is needed.
	**/
	public var should_save_summary : Dynamic;
	/**
		Run `fn` to update `var` using inputs mirrored to the same devices.
		
		`tf.distribute.StrategyExtended.update` takes a distributed variable `var`
		to be updated, an update function `fn`, and `args` and `kwargs` for `fn`. It
		applies `fn` to each component variable of `var` and passes corresponding
		values from `args` and `kwargs`. Neither `args` nor `kwargs` may contain
		per-replica values. If they contain mirrored values, they will be unwrapped
		before calling `fn`. For example, `fn` can be `assign_add` and `args` can be
		a mirrored DistributedValues where each component contains the value to be
		added to this mirrored variable `var`. Calling `update` will call
		`assign_add` on each component variable of `var` with the corresponding
		tensor value on that device.
		
		Example usage:
		
		```python
		strategy = tf.distribute.MirroredStrategy(['GPU:0', 'GPU:1']) # With 2
		devices
		with strategy.scope():
		  v = tf.Variable(5.0, aggregation=tf.VariableAggregation.SUM)
		def update_fn(v):
		  return v.assign(1.0)
		result = strategy.extended.update(v, update_fn)
		# result is
		# Mirrored:{
		#  0: tf.Tensor(1.0, shape=(), dtype=float32),
		#  1: tf.Tensor(1.0, shape=(), dtype=float32)
		# }
		```
		
		If `var` is mirrored across multiple devices, then this method implements
		logic as following:
		
		```python
		results = {}
		for device, v in var:
		  with tf.device(device):
		    # args and kwargs will be unwrapped if they are mirrored.
		    results[device] = fn(v, *args, **kwargs)
		return merged(results)
		```
		
		Otherwise, this method returns `fn(var, *args, **kwargs)` colocated with
		`var`.
		
		Args:
		  var: Variable, possibly mirrored to multiple devices, to operate on.
		  fn: Function to call. Should take the variable as the first argument.
		  args: Tuple or list. Additional positional arguments to pass to `fn()`.
		  kwargs: Dict with keyword arguments to pass to `fn()`.
		  group: Boolean. Defaults to True. If False, the return value will be
		    unwrapped.
		
		Returns:
		  By default, the merged return value of `fn` across all replicas.  The
		  merged result has dependencies to make sure that if it is evaluated at
		  all, the side effects (updates) will happen on every replica. If instead
		  "group=False" is specified, this function will return a nest of lists
		  where each list has an element per replica, and the caller is responsible
		  for ensuring all elements are executed.
	**/
	public function update(_var:Dynamic, fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Runs `fn(*args, **kwargs)` on `colocate_with` devices.
		
		Used to update non-slot variables.
		
		DEPRECATED: TF 1.x ONLY.
		
		Args:
		  colocate_with: Devices returned by `non_slot_devices()`.
		  fn: Function to execute.
		  args: Tuple or list. Positional arguments to pass to `fn()`.
		  kwargs: Dict with keyword arguments to pass to `fn()`.
		  group: Boolean. Defaults to True. If False, the return value will be
		    unwrapped.
		
		Returns:
		  Return value of `fn`, possibly merged across devices.
	**/
	public function update_non_slot(colocate_with:Dynamic, fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Returns the container that this per-replica `value` belongs to.
		
		Args:
		  value: A value returned by `run()` or a variable created in `scope()`.
		
		Returns:
		  A container that `value` belongs to.
		  If value does not belong to any container (including the case of
		  container having been destroyed), returns the value itself.
		  `value in experimental_local_results(value_container(value))` will
		  always be true.
	**/
	public function value_container(val:Dynamic):Dynamic;
	/**
		Tests whether `v` was created while this strategy scope was active.
		
		Variables created inside the strategy scope are "owned" by it:
		
		>>> strategy = tf.distribute.MirroredStrategy()
		>>> with strategy.scope():
		...   v = tf.Variable(1.)
		>>> strategy.extended.variable_created_in_scope(v)
		True
		
		Variables created outside the strategy are not owned by it:
		
		>>> strategy = tf.distribute.MirroredStrategy()
		>>> v = tf.Variable(1.)
		>>> strategy.extended.variable_created_in_scope(v)
		False
		
		Args:
		  v: A `tf.Variable` instance.
		
		Returns:
		  True if `v` was created inside the scope, False if not.
	**/
	public function variable_created_in_scope(v:Dynamic):Dynamic;
	/**
		Returns the tuple of all devices used to for compute replica execution.
		    
	**/
	public var worker_devices : Dynamic;
	public var worker_devices_by_replica : Dynamic;
}