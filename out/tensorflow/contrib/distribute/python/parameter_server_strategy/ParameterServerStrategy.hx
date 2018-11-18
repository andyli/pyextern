/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.parameter_server_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.parameter_server_strategy", "ParameterServerStrategy") extern class ParameterServerStrategy {
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
		Initializes this strategy.
		
		Args:
		  num_gpus_per_worker: number of local GPUs or GPUs per worker, the default
		    is 0 meaning CPU only.
		
		Raises:
		  ValueError: if `cluster_spec` is given but `task_type` or `task_id` is
		    not.
	**/
	@:native("__init__")
	public function ___init__(?num_gpus_per_worker:Dynamic):Dynamic;
	/**
		Initializes this strategy.
		
		Args:
		  num_gpus_per_worker: number of local GPUs or GPUs per worker, the default
		    is 0 meaning CPU only.
		
		Raises:
		  ValueError: if `cluster_spec` is given but `task_type` or `task_id` is
		    not.
	**/
	public function new(?num_gpus_per_worker:Dynamic):Void;
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
	public function _batch_reduce(aggregation:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	public function _broadcast(tensor:Dynamic, destinations:Dynamic):Dynamic;
	public function _call_dataset_fn(dataset_fn:Dynamic):Dynamic;
	public function _call_for_each_tower(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _create_variable(next_creator:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize internal devices for local training.
	**/
	public function _initialize_local(num_gpus_per_worker:Dynamic):Dynamic;
	/**
		Initialize devices for multiple workers.
		
		It creates variable devices and compute devices. Variables and operations
		will be assigned to them respectively. We have one compute device per tower.
		The variable device is a device function or device string. The default
		variable device assigns variables to parameter servers in a round-robin
		fashion.
		
		Args:
		  num_gpus_per_worker: number of local GPUs or GPUs per worker.
		  cluster_spec: a dict, ClusterDef or ClusterSpec object specifying the
		    cluster configurations.
		  task_type: the current task type.
		  task_id: the current task id.
		
		Raises:
		  ValueError: if the cluster_spec doesn't have ps jobs.
	**/
	public function _initialize_multi_worker(num_gpus_per_worker:Dynamic, cluster_spec:Dynamic, task_type:Dynamic, task_id:Dynamic):Dynamic;
	public function _reduce(aggregation:Dynamic, value:Dynamic, destinations:Dynamic):Dynamic;
	public function _run_steps_on_dataset(fn:Dynamic, iterator:Dynamic, iterations:Dynamic, initial_loop_values:Dynamic):Dynamic;
	/**
		Select any single values in `structured`.
	**/
	public function _select_single_value(structured:Dynamic):Dynamic;
	public function _unwrap(val:Dynamic):Dynamic;
	public function _update(_var:Dynamic, options:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _update_non_slot(colocate_with:Dynamic, options:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _verify_destinations_not_different_worker(destinations:Dynamic):Dynamic;
	public function _worker_device_index():Dynamic;
	/**
		Combine multiple `reduce` calls into one for faster execution.
		
		Args:
		  aggregation: Indicates how a variable will be aggregated. Accepted values
		    are `tf.VariableAggregation.SUM`, `tf.VariableAggregation.MEAN`,
		    `tf.VariableAggregation.ONLY_FIRST_TOWER`.
		  value_destination_pairs: A sequence of (value, destinations)
		    pairs. See `reduce()` for a description.
		
		Returns:
		  A list of mirrored values, one per pair in `value_destination_pairs`.
	**/
	public function batch_reduce(aggregation:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	/**
		Whether the strategy uses between-graph replication or not.
		
		This is expected to return a constant value that will not be changed
		throughout its life cycle.
	**/
	public var between_graph : Dynamic;
	/**
		Mirror a tensor on one device to all worker devices.
		
		Args:
		  tensor: A Tensor value to broadcast.
		  destinations: An optional mirrored variable, device string, or
		    list of device strings, specifying the destination devices
		    to copy `tensor` to. Defaults to `self.worker_devices`.
		
		Returns:
		  A value mirrored to `destinations` devices.
	**/
	public function broadcast(tensor:Dynamic, ?destinations:Dynamic):Dynamic;
	/**
		Run `fn` once per tower.
		
		`fn` may call `tf.get_tower_context()` to access methods such as
		`tower_id()` and `merge_call()`.
		
		`merge_call()` is used to communicate between the towers and
		re-enter the cross-tower context. All towers pause their execution
		having encountered a `merge_call()` call. After that the
		`merge_fn`-function is executed. Its results are then unwrapped and
		given back to each tower call. After that execution resumes until
		`fn` is complete or encounters another `merge_call()`.  Example:
		
		```python
		# Called once in "cross-tower" context.
		def merge_fn(distribution, three_plus_tower_id):
		  # sum the values across towers
		  return sum(distribution.unwrap(three_plus_tower_id))
		
		# Called once per tower in `distribution`, in a "tower" context.
		def fn(three):
		  tower_ctx = tf.get_tower_context()
		  v = three + tower_ctx.tower_id
		  # Computes the sum of the `v` values across all towers.
		  s = tower_ctx.merge_call(merge_fn, v)
		  return s + v
		
		with distribution.scope():
		  # in "cross-tower" context
		  ...
		  merged_results = distribution.call_for_each_tower(fn, 3)
		  # merged_results has the values from every tower execution of `fn`.
		  print(distribution.unwrap(merged_results))  # Prints a list
		```
		
		Args:
		  fn: function to run (will be run once per tower).
		  *args: positional arguments for `fn`
		  **kwargs: keyword arguments for `fn`.
		      `"run_concurrently"`: Boolean indicating whether executions of `fn`
		         can be run concurrently (under eager execution only), defaults to
		         `True`.
		
		Returns:
		  Merged return value of `fn` across all towers.
	**/
	public function call_for_each_tower(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Scope that controls which devices variables will be created on.
		
		No operations should be added to the graph inside this scope, it
		should only be used when creating variables (some implementations
		work by changing variable creation, others work by using a
		tf.colocate_with() scope).
		
		This may only be used inside `self.scope()`.
		
		Example usage:
		
		```
		with distribution_strategy.scope():
		  var1 = tf.get_variable(...)
		  with distribution_strategy.colocate_vars_with(v1):
		    # var2 and var3 will be created on the same device(s) as var1
		    var2 = tf.get_variable(...)
		    var3 = tf.get_variable(...)
		
		  def fn(v1, v2, v3):
		    # operates on v1 from var1, v2 from var2, and v3 from var3
		
		  # `fn` runs on every device `v1` is on, `v2` and `v3` will be there too.
		  distribution_strategy.update(v1, fn, v2, v3)
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
		Configures the strategy class.
		
		The strategy object will be re-initialized if `cluster_spec` is given but
		was not passed in the constructor.
		
		Args:
		  session_config: not used currently.
		  cluster_spec: a dict, ClusterDef or ClusterSpec object specifying the
		    cluster configurations.
		  task_type: the current task type.
		  task_id: the current task id.
		
		Raises:
		  ValueError: if `cluster_spec` is given but `task_type` or `task_id` is
		    not.
	**/
	public function configure(?session_config:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Distributes the dataset to each local GPU.
	**/
	public function distribute_dataset(dataset_fn:Dynamic):Dynamic;
	/**
		Any final actions to be done at the end of all computations.
		
		In eager mode, it executes any finalize actions as a side effect.
		In graph mode, it creates the finalize ops and returns them.
		
		For example, TPU shutdown ops.
		
		Returns:
		  In eager mode, returns `None`.
		  In graph mode, a list of ops to execute. Empty list if nothing to be done.
	**/
	public function finalize():Dynamic;
	/**
		Shortcut for `tf.group(distribution.unwrap(value))`.
	**/
	public function group(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Any initialization to be done before running any computations.
		
		In eager mode, it executes any initialization as a side effect.
		In graph mode, it creates the initialization ops and returns them.
		
		For example, TPU initialize_system ops.
		
		Returns:
		  In eager mode, returns `None`.
		  In graph mode, a list of ops to execute. Empty list if nothing to be done.
	**/
	public function initialize():Dynamic;
	/**
		Returns whether there is a single tower or multiple.
		
		Returns:
		  A boolean. If `True`, `call_for_each_tower(fn)` will only call `fn` once.
		  If `False`, `call_for_each_tower(fn)` may call `fn` multiple times.
	**/
	public var is_single_tower : Dynamic;
	/**
		Device(s) for non-slot variables.
		
		Create variables on these devices in a
		`with colocate_vars_with(non_slot_devices(...)):` block.
		Update those using `update_non_slot()`.
		
		Args:
		  var_list: The list of variables being optimized, needed with the
		    default `DistributionStrategy`.
	**/
	public function non_slot_devices(var_list:Dynamic):Dynamic;
	/**
		Returns number of towers, for purposes of averaging across towers.
	**/
	public var num_towers : Dynamic;
	/**
		Returns the list of devices used for variable and `update` placement.
	**/
	public var parameter_devices : Dynamic;
	/**
		Reads the value of a variable.
		
		Returns the aggregate value of a tower-local variable, or the
		(read-only) value of any other variable.
		
		Args:
		  v: A variable allocated within the scope of this `DistributionStrategy`.
		
		Returns:
		  A tensor representing the value of `v`, aggregated across towers if
		  necessary.
	**/
	public function read_var(_var:Dynamic):Dynamic;
	/**
		Combine (via e.g. sum or mean) values across towers.
		
		Args:
		  aggregation: Indicates how a variable will be aggregated. Accepted values
		    are `tf.VariableAggregation.SUM`, `tf.VariableAggregation.MEAN`,
		    `tf.VariableAggregation.ONLY_FIRST_TOWER`.
		  value: A per-device value with one value per tower.
		  destinations: A mirrored variable, a per-device tensor, a device string,
		    or list of device strings. The return value will be copied to all
		    destination devices (or all the devices where the `destinations` value
		    resides). To perform an all-reduction, pass `value` to `destinations`.
		
		Returns:
		  A value mirrored to `destinations`.
	**/
	public function reduce(aggregation:Dynamic, value:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Run `fn` with input from `iterator` for `iterations` times.
		
		This method can be used to run a step function for training a number of
		times using input from a dataset.
		
		Args:
		  fn: function to run using this distribution strategy. The function must
		    have the following signature: def fn(context, *inputs).
		    `context` is an instance of `MultiStepContext` that will be passed when
		    `fn` is run. `context` can be used to specify the outputs to be returned
		    from `fn` by calling `context.set_last_step_output`. It can also be used
		    to capture non tensor outputs by `context.set_non_tensor_output`.
		    See `MultiStepContext` documentation for more information.
		    `inputs` will have same type/structure as `iterator.get_next()`. If the
		    `iterator.get_next()` returns a tuple say `return x, y` then whose will
		    be unpacked and passed to the `step_fn`; and step_fn signature would
		    look like `def step_fn(context, x, y)`. If the iterator returns a single
		    value say `return x` then the value is passed as is; the step_fn
		    signature would look like `def step_fn(context, x)`.
		    Typically, `fn` will use `call_for_each_tower` method of the strategy
		    to distribute the computation over multiple towers.
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
	public function run_steps_on_dataset(fn:Dynamic, iterator:Dynamic, ?iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	/**
		Returns a context manager selecting this DistributionStrategy as current.
		
		Inside a `with distribution_strategy.scope():` code block, this thread
		will use a variable creator set by `distribution_strategy`, and will
		enter its "cross-tower context".
		
		Returns:
		  A context manager.
	**/
	public function scope():Dynamic;
	/**
		Whether checkpointing is needed.
	**/
	public var should_checkpoint : Dynamic;
	/**
		Whether initialization is needed.
	**/
	public var should_init : Dynamic;
	/**
		Whether saving summaries is needed.
	**/
	public var should_save_summary : Dynamic;
	/**
		Returns the list of all per-device values contained in `value`.
		
		Args:
		  value: A value returned by `call_for_each_tower()` or a variable
		    created in `scope()`.
		
		Returns:
		  A list of values contained in `value`. If `value` represents a single
		  value, this returns `[value].`
	**/
	public function unwrap(value:Dynamic):Dynamic;
	/**
		Run `fn` to update `var` using inputs mirrored to the same devices.
		
		If `var` is mirrored across multiple devices, then this implements
		logic like:
		
		```
		results = {}
		for device, v in var:
		  with tf.device(device):
		    # *args and **kwargs will be unwrapped if they are mirrored.
		    results[device] = fn(v, *args, **kwargs)
		return merged(results)
		```
		
		Otherwise this returns `fn(var, *args, **kwargs)` colocated with `var`.'
		
		Neither *args nor **kwargs may contain per-device values.
		If they contain mirrored values, they will be unwrapped before
		calling `fn`.
		
		Args:
		  var: Variable, possibly mirrored to multiple devices, to operate on.
		  fn: Function to call. Should take the variable as the first argument.
		  *args: Additional positional arguments to pass to `fn()`.
		  **kwargs: Keyword arguments to pass to `fn()`. If "grouped=False" is
		    specified, the return value will be unwrapped.
		
		Returns:
		  By default, the merged return value of `fn` across all towers.  The merged
		  result has dependencies to make sure that if it is evaluated at all, the
		  side effects (updates) will happen on every tower. If instead
		  "grouped=False" is specified, this function will return a nest of lists
		  where each list has an element per tower, and the caller is responsible
		  for ensuring all elements are executed.
	**/
	public function update(_var:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Runs `fn(*args, **kwargs)` on `colocate_with` devices.
		
		Args:
		  colocate_with: The return value of `non_slot_devices()`.
		  fn: Function to execute.
		  *args: Positional arguments to pass to `fn()`.
		  **kwargs: Keyword arguments to pass to `fn()`. If "grouped=False" is
		    specified, the return value will be unwrapped and the caller is
		    responsible for ensuring all elements are executed.
		
		Returns:
		  Return value of `fn`, possibly merged across devices.
	**/
	public function update_non_slot(colocate_with:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the container that this per-device `value` belongs to.
		
		Args:
		  value: A value returned by `call_for_each_tower()` or a variable
		    created in `scope()`.
		
		Returns:
		  A container that `value` belongs to.
		  If value does not belong to any container (including the case of
		  container having been destroyed), returns the value itself.
		  `value in unwrap(value_container(value))` will always be true.
	**/
	public function value_container(val:Dynamic):Dynamic;
	/**
		An object mapping worker device to an id.
		
		This might be passed as an argument to `call_for_each_tower()`, as in:
		
		```
		with distribution_strategy.scope():
		
		  def fn(device_id):
		    # device_id is an integer. `fn` is being executed on device:
		    #    distribution_strategy.worker_devices[device_id].
		
		  distribution_strategy.call_for_each_tower(
		      fn, distribution_strategy.worker_device_index)
		```
		
		Returns:
		  An index object, or the integer 0 if there is only a single tower.
	**/
	public var worker_device_index : Dynamic;
	/**
		Returns the list of devices used to run `call_for_each_tower()` calls.
	**/
	public var worker_devices : Dynamic;
}