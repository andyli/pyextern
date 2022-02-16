/* This file is generated, do not edit! */
package tensorflow.python.distribute.one_device_strategy;
@:pythonImport("tensorflow.python.distribute.one_device_strategy", "OneDeviceStrategy") extern class OneDeviceStrategy {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Creates a `OneDeviceStrategy`.
		
		Args:
		  device: Device string identifier for the device on which the variables
		    should be placed. See class docs for more details on how the device is
		    used. Examples: "/cpu:0", "/gpu:0", "/device:CPU:0", "/device:GPU:0"
	**/
	@:native("__init__")
	public function ___init__(device:Dynamic):Dynamic;
	/**
		Creates a `OneDeviceStrategy`.
		
		Args:
		  device: Device string identifier for the device on which the variables
		    should be placed. See class docs for more details on how the device is
		    used. Examples: "/cpu:0", "/gpu:0", "/device:CPU:0", "/device:GPU:0"
	**/
	public function new(device:Dynamic):Void;
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
	/**
		Scope which sets a flag used for scaling losses in optimizer.
		
		Yields:
		  `_scale_loss_for_estimator_enabled` is a context manager with a
		  side effect, but doesn't return a value.
	**/
	public function _scale_loss_for_estimator_enabled():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns the cluster resolver associated with this strategy.
		
		In general, when using a multi-worker `tf.distribute` strategy such as
		`tf.distribute.experimental.MultiWorkerMirroredStrategy` or
		`tf.distribute.TPUStrategy()`, there is a
		`tf.distribute.cluster_resolver.ClusterResolver` associated with the
		strategy used, and such an instance is returned by this property.
		
		Strategies that intend to have an associated
		`tf.distribute.cluster_resolver.ClusterResolver` must set the
		relevant attribute, or override this property; otherwise, `None` is returned
		by default. Those strategies should also provide information regarding what
		is returned by this property.
		
		Single-worker strategies usually do not have a
		`tf.distribute.cluster_resolver.ClusterResolver`, and in those cases this
		property will return `None`.
		
		The `tf.distribute.cluster_resolver.ClusterResolver` may be useful when the
		user needs to access information such as the cluster spec, task type or task
		id. For example,
		
		```python
		
		os.environ['TF_CONFIG'] = json.dumps({
		  'cluster': {
		      'worker': ["localhost:12345", "localhost:23456"],
		      'ps': ["localhost:34567"]
		  },
		  'task': {'type': 'worker', 'index': 0}
		})
		
		# This implicitly uses TF_CONFIG for the cluster and current task info.
		strategy = tf.distribute.experimental.MultiWorkerMirroredStrategy()
		
		...
		
		if strategy.cluster_resolver.task_type == 'worker':
		  # Perform something that's only applicable on workers. Since we set this
		  # as a worker above, this block will run on this particular instance.
		elif strategy.cluster_resolver.task_type == 'ps':
		  # Perform something that's only applicable on parameter servers. Since we
		  # set this as a worker above, this block will not run on this particular
		  # instance.
		```
		
		For more information, please see
		`tf.distribute.cluster_resolver.ClusterResolver`'s API docstring.
		
		Returns:
		  The cluster resolver associated with this strategy. Returns `None` if a
		  cluster resolver is not applicable or available in this strategy.
	**/
	public var cluster_resolver : Dynamic;
	/**
		DEPRECATED: use extended.colocate_vars_with() instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		use extended.colocate_vars_with() instead.
	**/
	public function colocate_vars_with(colocate_with_variable:Dynamic):Dynamic;
	/**
		DEPRECATED: use `update_config_proto` instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		use `update_config_proto` instead.
		
		Configures the strategy class.
		
		DEPRECATED: This method's functionality has been split into the strategy
		constructor and `update_config_proto`. In the future, we will allow passing
		cluster and config_proto to the constructor to configure the strategy. And
		`update_config_proto` can be used to update the config_proto based on the
		specific strategy.
	**/
	public function configure(?session_config:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Distributes `tf.data.Dataset` instances created by calls to `dataset_fn`.
		
		`dataset_fn` will be called once for each worker in the strategy. In this
		case, we only have one worker and one device so `dataset_fn` is called
		once.
		
		The `dataset_fn` should take an `tf.distribute.InputContext` instance where
		information about batching and input replication can be accessed:
		
		```
		def dataset_fn(input_context):
		  batch_size = input_context.get_per_replica_batch_size(global_batch_size)
		  d = tf.data.Dataset.from_tensors([[1.]]).repeat().batch(batch_size)
		  return d.shard(
		      input_context.num_input_pipelines, input_context.input_pipeline_id)
		
		inputs = strategy.distribute_datasets_from_function(dataset_fn)
		
		for batch in inputs:
		  replica_results = strategy.run(replica_fn, args=(batch,))
		```
		
		IMPORTANT: The `tf.data.Dataset` returned by `dataset_fn` should have a
		per-replica batch size, unlike `experimental_distribute_dataset`, which uses
		the global batch size.  This may be computed using
		`input_context.get_per_replica_batch_size`.
		
		Args:
		  dataset_fn: A function taking a `tf.distribute.InputContext` instance and
		    returning a `tf.data.Dataset`.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
		
		Returns:
		  A "distributed `Dataset`", which the caller can iterate over like regular
		  datasets.
	**/
	public function distribute_datasets_from_function(dataset_fn:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Distributes a tf.data.Dataset instance provided via dataset.
		
		In this case, there is only one device, so this is only a thin wrapper
		around the input dataset. It will, however, prefetch the input data to the
		specified device. The returned distributed dataset can be iterated over
		similar to how regular datasets can.
		
		NOTE: Currently, the user cannot add any more transformations to a
		distributed dataset.
		
		Example:
		```
		strategy = tf.distribute.OneDeviceStrategy()
		dataset = tf.data.Dataset.range(10).batch(2)
		dist_dataset = strategy.experimental_distribute_dataset(dataset)
		for x in dist_dataset:
		  print(x)  # [0, 1], [2, 3],...
		```
		Args:
		  dataset: `tf.data.Dataset` to be prefetched to device.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
		Returns:
		  A "distributed `Dataset`" that the caller can iterate over.
	**/
	public function experimental_distribute_dataset(dataset:Dynamic, ?options:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		rename to distribute_datasets_from_function
	**/
	public function experimental_distribute_datasets_from_function(dataset_fn:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Generates `tf.distribute.DistributedValues` from `value_fn`.
		
		This function is to generate `tf.distribute.DistributedValues` to pass
		into `run`, `reduce`, or other methods that take
		distributed values when not using datasets.
		
		Args:
		  value_fn: The function to run to generate values. It is called for
		    each replica with `tf.distribute.ValueContext` as the sole argument. It
		    must return a Tensor or a type that can be converted to a Tensor.
		Returns:
		  A `tf.distribute.DistributedValues` containing a value for each replica.
		
		Example usage:
		
		1. Return constant value per replica:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> def value_fn(ctx):
		...   return tf.constant(1.)
		>>> distributed_values = (
		...      strategy.experimental_distribute_values_from_function(
		...        value_fn))
		>>> local_result = strategy.experimental_local_results(distributed_values)
		>>> local_result
		(<tf.Tensor: shape=(), dtype=float32, numpy=1.0>,
		 <tf.Tensor: shape=(), dtype=float32, numpy=1.0>)
		
		2. Distribute values in array based on replica_id:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> array_value = np.array([3., 2., 1.])
		>>> def value_fn(ctx):
		...   return array_value[ctx.replica_id_in_sync_group]
		>>> distributed_values = (
		...      strategy.experimental_distribute_values_from_function(
		...        value_fn))
		>>> local_result = strategy.experimental_local_results(distributed_values)
		>>> local_result
		(3.0, 2.0)
		
		3. Specify values using num_replicas_in_sync:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> def value_fn(ctx):
		...   return ctx.num_replicas_in_sync
		>>> distributed_values = (
		...      strategy.experimental_distribute_values_from_function(
		...        value_fn))
		>>> local_result = strategy.experimental_local_results(distributed_values)
		>>> local_result
		(2, 2)
		
		4. Place values on devices and distribute:
		
		```
		strategy = tf.distribute.TPUStrategy()
		worker_devices = strategy.extended.worker_devices
		multiple_values = []
		for i in range(strategy.num_replicas_in_sync):
		  with tf.device(worker_devices[i]):
		    multiple_values.append(tf.constant(1.0))
		
		def value_fn(ctx):
		  return multiple_values[ctx.replica_id_in_sync_group]
		
		distributed_values = strategy.
		  experimental_distribute_values_from_function(
		  value_fn)
		```
	**/
	public function experimental_distribute_values_from_function(value_fn:Dynamic):Dynamic;
	/**
		Returns the list of all local per-replica values contained in `value`.
		
		In `OneDeviceStrategy`, the `value` is always expected to be a single
		value, so the result is just the value in a tuple.
		
		Args:
		  value: A value returned by `experimental_run()`, `run()`,
		    `extended.call_for_each_replica()`, or a variable created in `scope`.
		
		Returns:
		  A tuple of values contained in `value`. If `value` represents a single
		  value, this returns `(value,).`
	**/
	public function experimental_local_results(value:Dynamic):Dynamic;
	/**
		DEPRECATED TF 1.x ONLY. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		use run() instead
	**/
	public function experimental_run(fn:Dynamic, ?input_iterator:Dynamic):Dynamic;
	/**
		`tf.distribute.StrategyExtended` with additional methods.
	**/
	public var extended : Dynamic;
	/**
		Gather `value` across replicas along `axis` to the current device.
		
		Given a `tf.distribute.DistributedValues` or `tf.Tensor`-like
		object `value`, this API gathers and concatenates `value` across replicas
		along the `axis`-th dimension. The result is copied to the "current" device,
		which would typically be the CPU of the worker on which the program is
		running. For `tf.distribute.TPUStrategy`, it is the first TPU host. For
		multi-client `tf.distribute.MultiWorkerMirroredStrategy`, this is the CPU of
		each worker.
		
		This API can only be called in the cross-replica context. For a counterpart
		in the replica context, see `tf.distribute.ReplicaContext.all_gather`.
		
		Note: For all strategies except `tf.distribute.TPUStrategy`, the input
		`value` on different replicas must have the same rank, and their shapes must
		be the same in all dimensions except the `axis`-th dimension. In other
		words, their shapes cannot be different in a dimension `d` where `d` does
		not equal to the `axis` argument. For example, given a
		`tf.distribute.DistributedValues` with component tensors of shape
		`(1, 2, 3)` and `(1, 3, 3)` on two replicas, you can call
		`gather(..., axis=1, ...)` on it, but not `gather(..., axis=0, ...)` or
		`gather(..., axis=2, ...)`. However, for `tf.distribute.TPUStrategy.gather`,
		all tensors must have exactly the same rank and same shape.
		
		Note: Given a `tf.distribute.DistributedValues` `value`, its component
		tensors must have a non-zero rank. Otherwise, consider using
		`tf.expand_dims` before gathering them.
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> # A DistributedValues with component tensor of shape (2, 1) on each replica
		... distributed_values = strategy.experimental_distribute_values_from_function(lambda _: tf.identity(tf.constant([[1], [2]])))
		>>> @tf.function
		... def run():
		...   return strategy.gather(distributed_values, axis=0)
		>>> run()
		<tf.Tensor: shape=(4, 1), dtype=int32, numpy=
		array([[1],
		       [2],
		       [1],
		       [2]], dtype=int32)>
		
		
		Consider the following example for more combinations:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1", "GPU:2", "GPU:3"])
		>>> single_tensor = tf.reshape(tf.range(6), shape=(1,2,3))
		>>> distributed_values = strategy.experimental_distribute_values_from_function(lambda _: tf.identity(single_tensor))
		>>> @tf.function
		... def run(axis):
		...   return strategy.gather(distributed_values, axis=axis)
		>>> axis=0
		>>> run(axis)
		<tf.Tensor: shape=(4, 2, 3), dtype=int32, numpy=
		array([[[0, 1, 2],
		        [3, 4, 5]],
		       [[0, 1, 2],
		        [3, 4, 5]],
		       [[0, 1, 2],
		        [3, 4, 5]],
		       [[0, 1, 2],
		        [3, 4, 5]]], dtype=int32)>
		>>> axis=1
		>>> run(axis)
		<tf.Tensor: shape=(1, 8, 3), dtype=int32, numpy=
		array([[[0, 1, 2],
		        [3, 4, 5],
		        [0, 1, 2],
		        [3, 4, 5],
		        [0, 1, 2],
		        [3, 4, 5],
		        [0, 1, 2],
		        [3, 4, 5]]], dtype=int32)>
		>>> axis=2
		>>> run(axis)
		<tf.Tensor: shape=(1, 2, 12), dtype=int32, numpy=
		array([[[0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2],
		        [3, 4, 5, 3, 4, 5, 3, 4, 5, 3, 4, 5]]], dtype=int32)>
		
		
		Args:
		  value: a `tf.distribute.DistributedValues` instance, e.g. returned by
		    `Strategy.run`, to be combined into a single tensor. It can also be a
		    regular tensor when used with `tf.distribute.OneDeviceStrategy` or the
		    default strategy. The tensors that constitute the DistributedValues
		    can only be dense tensors with non-zero rank, NOT a `tf.IndexedSlices`.
		  axis: 0-D int32 Tensor. Dimension along which to gather. Must be in the
		    range [0, rank(value)).
		
		Returns:
		   A `Tensor` that's the concatenation of `value` across replicas along
		   `axis` dimension.
	**/
	public function gather(value:Dynamic, axis:Dynamic):Dynamic;
	/**
		Shortcut for `tf.group(self.experimental_local_results(value))`.
	**/
	public function group(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED TF 1.x ONLY.
	**/
	public function make_dataset_iterator(dataset:Dynamic):Dynamic;
	/**
		DEPRECATED TF 1.x ONLY.
	**/
	public function make_input_fn_iterator(input_fn:Dynamic, ?replication_mode:Dynamic):Dynamic;
	/**
		Returns number of replicas over which gradients are aggregated.
	**/
	public var num_replicas_in_sync : Dynamic;
	/**
		Reduce `value` across replicas.
		
		In `OneDeviceStrategy`, there is only one replica, so if axis=None, value
		is simply returned. If axis is specified as something other than None,
		such as axis=0, value is reduced along that axis and returned.
		
		Example:
		```
		t = tf.range(10)
		
		result = strategy.reduce(tf.distribute.ReduceOp.SUM, t, axis=None).numpy()
		# result: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		
		result = strategy.reduce(tf.distribute.ReduceOp.SUM, t, axis=0).numpy()
		# result: 45
		```
		
		Args:
		  reduce_op: A `tf.distribute.ReduceOp` value specifying how values should
		    be combined.
		  value: A "per replica" value, e.g. returned by `run` to
		    be combined into a single tensor.
		  axis: Specifies the dimension to reduce along within each
		    replica's tensor. Should typically be set to the batch dimension, or
		    `None` to only reduce across replicas (e.g. if the tensor has no batch
		    dimension).
		
		Returns:
		  A `Tensor`.
	**/
	public function reduce(reduce_op:Dynamic, value:Dynamic, axis:Dynamic):Dynamic;
	/**
		Run `fn` on each replica, with the given arguments.
		
		In `OneDeviceStrategy`, `fn` is simply called within a device scope for the
		given device, with the provided arguments.
		
		Args:
		  fn: The function to run. The output must be a `tf.nest` of `Tensor`s.
		  args: (Optional) Positional arguments to `fn`.
		  kwargs: (Optional) Keyword arguments to `fn`.
		  options: (Optional) An instance of `tf.distribute.RunOptions` specifying
		    the options to run `fn`.
		
		Returns:
		  Return value from running `fn`.
	**/
	public function run(fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Returns a context manager selecting this Strategy as current.
		
		Inside a `with strategy.scope():` code block, this thread
		will use a variable creator set by `strategy`, and will
		enter its "cross-replica context".
		
		In `OneDeviceStrategy`, all variables created inside `strategy.scope()`
		will be on `device` specified at strategy construction time.
		See example in the docs for this class.
		
		Returns:
		  A context manager to use for creating variables with this strategy.
	**/
	public function scope():Dynamic;
	/**
		Returns the list of all local per-replica values contained in `value`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		use `experimental_local_results` instead.
		
		DEPRECATED: Please use `experimental_local_results` instead.
		
		Note: This only returns values on the workers initiated by this client.
		When using a `tf.distribute.Strategy` like
		`tf.distribute.experimental.MultiWorkerMirroredStrategy`, each worker
		will be its own client, and this function will only return values
		computed on that worker.
		
		Args:
		  value: A value returned by `experimental_run()`,
		    `extended.call_for_each_replica()`, or a variable created in `scope`.
		
		Returns:
		  A tuple of values contained in `value`. If `value` represents a single
		  value, this returns `(value,).`
	**/
	public function unwrap(value:Dynamic):Dynamic;
	/**
		DEPRECATED TF 1.x ONLY.
	**/
	public function update_config_proto(config_proto:Dynamic):Dynamic;
}