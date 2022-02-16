/* This file is generated, do not edit! */
package tensorflow.python.distribute.central_storage_strategy;
@:pythonImport("tensorflow.python.distribute.central_storage_strategy", "CentralStorageStrategy") extern class CentralStorageStrategy {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?compute_devices:Dynamic, ?parameter_device:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?compute_devices:Dynamic, ?parameter_device:Dynamic):Void;
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
	static public function _from_num_gpus(num_gpus:Dynamic):Dynamic;
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
		
		The argument `dataset_fn` that users pass in is an input function that has a
		`tf.distribute.InputContext` argument and returns a `tf.data.Dataset`
		instance. It is expected that the returned dataset from `dataset_fn` is
		already batched by per-replica batch size (i.e. global batch size divided by
		the number of replicas in sync) and sharded.
		`tf.distribute.Strategy.distribute_datasets_from_function` does
		not batch or shard the `tf.data.Dataset` instance
		returned from the input function. `dataset_fn` will be called on the CPU
		device of each of the workers and each generates a dataset where every
		replica on that worker will dequeue one batch of inputs (i.e. if a worker
		has two replicas, two batches will be dequeued from the `Dataset` every
		step).
		
		This method can be used for several purposes. First, it allows you to
		specify your own batching and sharding logic. (In contrast,
		`tf.distribute.experimental_distribute_dataset` does batching and sharding
		for you.) For example, where
		`experimental_distribute_dataset` is unable to shard the input files, this
		method might be used to manually shard the dataset (avoiding the slow
		fallback behavior in `experimental_distribute_dataset`). In cases where the
		dataset is infinite, this sharding can be done by creating dataset replicas
		that differ only in their random seed.
		
		The `dataset_fn` should take an `tf.distribute.InputContext` instance where
		information about batching and input replication can be accessed.
		
		You can use `element_spec` property of the
		`tf.distribute.DistributedDataset` returned by this API to query the
		`tf.TypeSpec` of the elements returned by the iterator. This can be used to
		set the `input_signature` property of a `tf.function`. Follow
		`tf.distribute.DistributedDataset.element_spec` to see an example.
		
		IMPORTANT: The `tf.data.Dataset` returned by `dataset_fn` should have a
		per-replica batch size, unlike `experimental_distribute_dataset`, which uses
		the global batch size. This may be computed using
		`input_context.get_per_replica_batch_size`.
		
		Note: If you are using TPUStrategy, the order in which the data is processed
		by the workers when using
		`tf.distribute.Strategy.experimental_distribute_dataset` or
		`tf.distribute.Strategy.distribute_datasets_from_function` is
		not guaranteed. This is typically required if you are using
		`tf.distribute` to scale prediction. You can however insert an index for
		each element in the batch and order outputs accordingly. Refer to [this
		snippet](https://www.tensorflow.org/tutorials/distribute/input#caveats)
		for an example of how to order outputs.
		
		Note: Stateful dataset transformations are currently not supported with
		`tf.distribute.experimental_distribute_dataset` or
		`tf.distribute.distribute_datasets_from_function`. Any stateful
		ops that the dataset may have are currently ignored. For example, if your
		dataset has a `map_fn` that uses `tf.random.uniform` to rotate an image,
		then you have a dataset graph that depends on state (i.e the random seed) on
		the local machine where the python process is being executed.
		
		For a tutorial on more usage and properties of this method, refer to the
		[tutorial on distributed input](https://www.tensorflow.org/tutorials/distribute/input#tfdistributestrategyexperimental_distribute_datasets_from_function)).
		If you are interested in last partial batch handling, read [this section](https://www.tensorflow.org/tutorials/distribute/input#partial_batches).
		
		Args:
		  dataset_fn: A function taking a `tf.distribute.InputContext` instance and
		    returning a `tf.data.Dataset`.
		  options: `tf.distribute.InputOptions` used to control options on how this
		    dataset is distributed.
		
		Returns:
		  A `tf.distribute.DistributedDataset`.
	**/
	public function distribute_datasets_from_function(dataset_fn:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Distributes a tf.data.Dataset instance provided via dataset.
		
		The returned dataset is a wrapped strategy dataset which creates a
		multidevice iterator under the hood. It prefetches the input data to the
		specified devices on the worker. The returned distributed dataset can be
		iterated over similar to how regular datasets can.
		
		NOTE: Currently, the user cannot add any more transformations to a
		distributed dataset.
		
		For Example:
		```
		strategy = tf.distribute.CentralStorageStrategy()  # with 1 CPU and 1 GPU
		dataset = tf.data.Dataset.range(10).batch(2)
		dist_dataset = strategy.experimental_distribute_dataset(dataset)
		for x in dist_dataset:
		  print(x)  # Prints PerReplica values [0, 1], [2, 3],...
		
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
		
		In `CentralStorageStrategy` there is a single worker so the value returned
		will be all the values on that worker.
		
		Args:
		  value: A value returned by `run()`, `extended.call_for_each_replica()`,
		  or a variable created in `scope`.
		
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
		
		Given a per-replica value returned by `run`, say a
		per-example loss, the batch will be divided across all the replicas. This
		function allows you to aggregate across replicas and optionally also across
		batch elements.  For example, if you have a global batch size of 8 and 2
		replicas, values for examples `[0, 1, 2, 3]` will be on replica 0 and
		`[4, 5, 6, 7]` will be on replica 1. By default, `reduce` will just
		aggregate across replicas, returning `[0+4, 1+5, 2+6, 3+7]`. This is useful
		when each replica is computing a scalar or some other value that doesn't
		have a "batch" dimension (like a gradient). More often you will want to
		aggregate across the global batch, which you can get by specifying the batch
		dimension as the `axis`, typically `axis=0`. In this case it would return a
		scalar `0+1+2+3+4+5+6+7`.
		
		If there is a last partial batch, you will need to specify an axis so
		that the resulting shape is consistent across replicas. So if the last
		batch has size 6 and it is divided into [0, 1, 2, 3] and [4, 5], you
		would get a shape mismatch unless you specify `axis=0`. If you specify
		`tf.distribute.ReduceOp.MEAN`, using `axis=0` will use the correct
		denominator of 6. Contrast this with computing `reduce_mean` to get a
		scalar value on each replica and this function to average those means,
		which will weigh some values `1/8` and others `1/4`.
		
		For Example:
		```
		strategy = tf.distribute.experimental.CentralStorageStrategy(
		    compute_devices=['CPU:0', 'GPU:0'], parameter_device='CPU:0')
		ds = tf.data.Dataset.range(10)
		# Distribute that dataset
		dist_dataset = strategy.experimental_distribute_dataset(ds)
		
		with strategy.scope():
		  @tf.function
		  def train_step(val):
		    # pass through
		    return val
		
		  # Iterate over the distributed dataset
		  for x in dist_dataset:
		    result = strategy.run(train_step, args=(x,))
		
		result = strategy.reduce(tf.distribute.ReduceOp.SUM, result,
		                         axis=None).numpy()
		# result: array([ 4,  6,  8, 10])
		
		result = strategy.reduce(tf.distribute.ReduceOp.SUM, result, axis=0).numpy()
		# result: 28
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
		
		In `CentralStorageStrategy`, `fn` is  called on each of the compute
		replicas, with the provided "per replica" arguments specific to that device.
		
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
		Context manager to make the strategy current and distribute variables.
		
		This method returns a context manager, and is used as follows:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> # Variable created inside scope:
		>>> with strategy.scope():
		...   mirrored_variable = tf.Variable(1.)
		>>> mirrored_variable
		MirroredVariable:{
		  0: <tf.Variable 'Variable:0' shape=() dtype=float32, numpy=1.0>,
		  1: <tf.Variable 'Variable/replica_1:0' shape=() dtype=float32, numpy=1.0>
		}
		>>> # Variable created outside scope:
		>>> regular_variable = tf.Variable(1.)
		>>> regular_variable
		<tf.Variable 'Variable:0' shape=() dtype=float32, numpy=1.0>
		
		_What happens when Strategy.scope is entered?_
		
		* `strategy` is installed in the global context as the "current" strategy.
		  Inside this scope, `tf.distribute.get_strategy()` will now return this
		  strategy. Outside this scope, it returns the default no-op strategy.
		* Entering the scope also enters the "cross-replica context". See
		  `tf.distribute.StrategyExtended` for an explanation on cross-replica and
		  replica contexts.
		* Variable creation inside `scope` is intercepted by the strategy. Each
		  strategy defines how it wants to affect the variable creation. Sync
		  strategies like `MirroredStrategy`, `TPUStrategy` and
		  `MultiWorkerMiroredStrategy` create variables replicated on each replica,
		  whereas `ParameterServerStrategy` creates variables on the parameter
		  servers. This is done using a custom `tf.variable_creator_scope`.
		* In some strategies, a default device scope may also be entered: in
		  `MultiWorkerMiroredStrategy`, a default device scope of "/CPU:0" is
		  entered on each worker.
		
		Note: Entering a scope does not automatically distribute a computation, except
		  in the case of high level training framework like keras `model.fit`. If
		  you're not using `model.fit`, you
		  need to use `strategy.run` API to explicitly distribute that computation.
		  See an example in the [custom training loop tutorial](https://www.tensorflow.org/tutorials/distribute/custom_training).
		
		
		_What should be in scope and what should be outside?_
		
		There are a number of requirements on what needs to happen inside the scope.
		However, in places where we have information about which strategy is in use,
		we often enter the scope for the user, so they don't have to do it
		explicitly (i.e. calling those either inside or outside the scope is OK).
		
		* Anything that creates variables that should be distributed variables
		  must be called in a `strategy.scope`. This can be accomplished either by
		  directly calling the variable creating function within the scope context,
		  or by relying on another API like `strategy.run` or `keras.Model.fit` to
		  automatically enter it for you. Any variable that is created outside scope
		  will not be distributed and may have performance implications. Some common
		  objects that create variables in TF are Models, Optimizers, Metrics. Such
		  objects should always be initialized in the scope, and any functions
		  that may lazily create variables (e.g., `Model.__call__()`, tracing a
		  `tf.function`, etc.) should similarly be called within scope. Another
		  source of variable creation can be a checkpoint restore - when variables
		  are created lazily. Note that any variable created inside a strategy
		  captures the strategy information. So reading and writing to these
		  variables outside the `strategy.scope` can also work seamlessly, without
		  the user having to enter the scope.
		* Some strategy APIs (such as `strategy.run` and `strategy.reduce`) which
		  require to be in a strategy's scope, enter the scope automatically, which
		  means when using those APIs you don't need to explicitly enter the scope
		  yourself.
		* When a `tf.keras.Model` is created inside a `strategy.scope`, the Model
		  object captures the scope information. When high level training framework
		  methods such as `model.compile`, `model.fit`, etc. are then called, the
		  captured scope will be automatically entered, and the associated strategy
		  will be used to distribute the training etc. See a detailed example in
		  [distributed keras tutorial](https://www.tensorflow.org/tutorials/distribute/keras).
		  WARNING: Simply calling `model(..)` does not automatically enter the
		  captured scope -- only high level training framework APIs support this
		  behavior: `model.compile`, `model.fit`, `model.evaluate`, `model.predict`
		  and `model.save` can all be called inside or outside the scope.
		* The following can be either inside or outside the scope:
		    * Creating the input datasets
		    * Defining `tf.function`s that represent your training step
		    * Saving APIs such as `tf.saved_model.save`. Loading creates variables,
		      so that should go inside the scope if you want to train the model in a
		      distributed way.
		    * Checkpoint saving. As mentioned above - `checkpoint.restore` may
		      sometimes need to be inside scope if it creates variables.
		
		Returns:
		  A context manager.
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