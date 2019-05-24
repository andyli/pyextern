/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.collective_all_reduce_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.collective_all_reduce_strategy", "CollectiveAllReduceExtended") extern class CollectiveAllReduceExtended {
	/**
		A thread that runs() a function on a device.
	**/
	static public function _MirroredReplicaThread(dist:Dynamic, coord:Dynamic, device:Dynamic, variable_creator_fn:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(container_strategy:Dynamic, num_gpus_per_worker:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(container_strategy:Dynamic, num_gpus_per_worker:Dynamic):Void;
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
	public function _allow_variable_partition():Dynamic;
	public function _batch_reduce_to(reduce_op:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	public function _broadcast_to(tensor:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Call the `dataset_fn` with `input_context` as argument.
	**/
	public function _call_dataset_fn(dataset_fn:Dynamic):Dynamic;
	public function _call_for_each_replica(fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Configures the object.
		
		Args:
		  session_config: a `tf.ConfigProto`
		  cluster_spec: a dict, ClusterDef or ClusterSpec object specifying the
		    cluster configurations.
		  task_type: the current task type, such as "worker".
		  task_id: the current task id.
		
		Raises:
		  ValueError: if `task_type` is not in the `cluster_spec`.
	**/
	public function _configure(?session_config:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Get the containing `DistributionStrategy`.
		
		This should not generally be needed except when creating a new
		`ReplicaContext` and to validate that the caller is in the correct
		`scope()`.
		
		Returns:
		  The `DistributionStrategy` such that `strategy.extended` is `self`.
	**/
	public function _container_strategy():Dynamic;
	/**
		Create a mirrored variable. See `DistributionStrategy.scope`.
	**/
	public function _create_variable(next_creator:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Distributes the dataset to each local GPU.
	**/
	public function _distribute_dataset(dataset_fn:Dynamic):Dynamic;
	public function _experimental_run_steps_on_iterator(fn:Dynamic, iterator:Dynamic, iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	public function _finalize():Dynamic;
	public function _get_cross_device_ops():Dynamic;
	public function _get_devices_from(?colocate_with:Dynamic):Dynamic;
	public var _global_batch_size : Dynamic;
	/**
		Shortcut for `tf.group(distribution.unwrap(value))`.
	**/
	public function _group(value:Dynamic, ?name:Dynamic):Dynamic;
	public function _initialize():Dynamic;
	/**
		Initializes the object for local training.
	**/
	public function _initialize_local(devices:Dynamic):Dynamic;
	/**
		Initializes the object for local training.
	**/
	public function _initialize_local_worker(num_gpus_per_worker:Dynamic):Dynamic;
	/**
		Initializes the object for multi-worker training.
	**/
	public function _initialize_multi_worker(num_gpus_per_worker:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	public function _initialize_strategy(devices:Dynamic):Dynamic;
	/**
		Make iterator from dataset without splitting the batch.
		
		This implementation is different than the one in
		`tf.distribute.MirroredStrategy` for purposes of backward compatibility.
		We treat the incoming dataset's batch size as per replica batch size.
		
		Args:
		  dataset: `tf.data.Dataset` for input.
		Returns:
		  An `InputIterator` which returns inputs for each step of the computation.
	**/
	public function _make_dataset_iterator(dataset:Dynamic):Dynamic;
	/**
		Distributes the dataset to each local GPU.
	**/
	public function _make_input_fn_iterator(input_fn:Dynamic, ?replication_mode:Dynamic):Dynamic;
	/**
		Returns number of replicas over which gradients are aggregated.
	**/
	public var _num_replicas_in_sync : Dynamic;
	public function _reduce(reduce_op:Dynamic, value:Dynamic):Dynamic;
	public function _reduce_to(reduce_op:Dynamic, value:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Implementation of DistributionStrategy.scope().
	**/
	public function _scope(strategy:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	public function _unwrap(val:Dynamic):Dynamic;
	public function _update(_var:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic, group:Dynamic):Dynamic;
	public function _update_config_proto(config_proto:Dynamic):Dynamic;
	public function _update_non_slot(colocate_with:Dynamic, fn:Dynamic, args:Dynamic, kwargs:Dynamic, group:Dynamic):Dynamic;
	/**
		Combine multiple `reduce_to` calls into one for faster execution.
		
		Args:
		  reduce_op: Reduction type, an instance of `tf.distribute.ReduceOp` enum.
		    DEPRECATED but still accepted values:
		    `tf.VariableAggregation.SUM`,
		    `tf.VariableAggregation.MEAN`,
		  value_destination_pairs: A sequence of (value, destinations)
		    pairs. See `reduce_to()` for a description.
		
		Returns:
		  A list of mirrored values, one per pair in `value_destination_pairs`.
	**/
	public function batch_reduce_to(reduce_op:Dynamic, value_destination_pairs:Dynamic):Dynamic;
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
		  return sum(distribution.unwrap(three_plus_replica_id))
		
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
		  merged_results = distribution.call_for_each_replica(fn, args=[3])
		  # merged_results has the values from every replica execution of `fn`.
		  print(distribution.unwrap(merged_results))  # Prints a list
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
		tf.colocate_with() scope).
		
		This may only be used inside `self.scope()`.
		
		Example usage:
		
		```
		with strategy.scope():
		  var1 = tf.get_variable(...)
		  with strategy.extended.colocate_vars_with(v1):
		    # var2 and var3 will be created on the same device(s) as var1
		    var2 = tf.get_variable(...)
		    var3 = tf.get_variable(...)
		
		  def fn(v1, v2, v3):
		    # operates on v1 from var1, v2 from var2, and v3 from var3
		
		  # `fn` runs on every device `v1` is on, `v2` and `v3` will be there too.
		  strategy.extended.update(v1, fn, args=(v2, v3))
		```
		
		Args:
		  colocate_with_variable: A created in `self.scope()`. Variables created
		    while in the returned context manager will be on the same set of
		    devices as `colocate_with_variable`.
		
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
	public var experimental_require_static_shapes : Dynamic;
	/**
		Run `fn` with input from `iterator` for `iterations` times.
		
		This method can be used to run a step function for training a number of
		times using input from a dataset.
		
		Args:
		  fn: function to run using this distribution strategy. The function must
		    have the following signature: `def fn(context, inputs)`.
		    `context` is an instance of `MultiStepContext` that will be passed when
		    `fn` is run. `context` can be used to specify the outputs to be returned
		    from `fn` by calling `context.set_last_step_output`. It can also be used
		    to capture non tensor outputs by `context.set_non_tensor_output`.
		    See `MultiStepContext` documentation for more information.
		    `inputs` will have same type/structure as `iterator.get_next()`.
		    Typically, `fn` will use `call_for_each_replica` method of the strategy
		    to distribute the computation over multiple replicas.
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
		    - non_tensor_outputs: A dictionatry containing anything that was set by
		      `fn` by calling `context.set_non_tensor_output`.
	**/
	public function experimental_run_steps_on_iterator(fn:Dynamic, iterator:Dynamic, ?iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	/**
		Whether initialization is needed.
	**/
	public var experimental_should_init : Dynamic;
	/**
		Device(s) for non-slot variables.
		
		Create variables on these devices in a
		`with colocate_vars_with(non_slot_devices(...)):` block.
		Update those using `update_non_slot()`.
		
		Args:
		  var_list: The list of variables being optimized, needed with the
		    default `tf.distribute.Strategy`.
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
		
		Args:
		  reduce_op: Reduction type, an instance of `tf.distribute.ReduceOp` enum.
		    DEPRECATED but still accepted values:
		    `tf.VariableAggregation.SUM`,
		    `tf.VariableAggregation.MEAN`,
		  value: A per-replica value with one value per replica.
		  destinations: A mirrored variable, a per-replica tensor, or a device
		    string. The return value will be copied to all destination devices (or
		    all the devices where the `destinations` value resides). To perform an
		    all-reduction, pass `value` to `destinations`.
		
		Returns:
		  A value mirrored to `destinations`.
	**/
	public function reduce_to(reduce_op:Dynamic, value:Dynamic, destinations:Dynamic):Dynamic;
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
		
		If `var` is mirrored across multiple devices, then this implements
		logic like:
		
		```
		results = {}
		for device, v in var:
		  with tf.device(device):
		    # args and kwargs will be unwrapped if they are mirrored.
		    results[device] = fn(v, *args, **kwargs)
		return merged(results)
		```
		
		Otherwise this returns `fn(var, *args, **kwargs)` colocated with `var`.
		
		Neither `args` nor `kwargs` may contain per-replica values.
		If they contain mirrored values, they will be unwrapped before
		calling `fn`.
		
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
		
		Args:
		  colocate_with: The return value of `non_slot_devices()`.
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
		  value: A value returned by `call_for_each_replica()` or a variable
		    created in `scope()`.
		
		Returns:
		  A container that `value` belongs to.
		  If value does not belong to any container (including the case of
		  container having been destroyed), returns the value itself.
		  `value in unwrap(value_container(value))` will always be true.
	**/
	public function value_container(val:Dynamic):Dynamic;
	/**
		Returns the tuple of all devices used to for compute replica execution.
		    
	**/
	public var worker_devices : Dynamic;
}