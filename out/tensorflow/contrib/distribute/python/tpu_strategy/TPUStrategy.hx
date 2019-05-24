/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.tpu_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.tpu_strategy", "TPUStrategy") extern class TPUStrategy {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__():Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Initializes the TPUStrategy object.
		
		Args:
		  tpu_cluster_resolver: A tf.contrib.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		  steps_per_run: Number of steps to run on device before returning to the
		      host. Note that this can have side-effects on performance, hooks,
		      metrics, summaries etc.
		      This parameter is only used when Distribution Strategy is used with
		      estimator or keras.
		  num_cores: Number of cores to use on the TPU. If None specified, then
		      auto-detect the cores and topology of the TPU system.
	**/
	@:native("__init__")
	public function ___init__(tpu_cluster_resolver:Dynamic, steps_per_run:Dynamic, ?num_cores:Dynamic):Dynamic;
	/**
		Initializes the TPUStrategy object.
		
		Args:
		  tpu_cluster_resolver: A tf.contrib.cluster_resolver.TPUClusterResolver,
		      which provides information about the TPU cluster.
		  steps_per_run: Number of steps to run on device before returning to the
		      host. Note that this can have side-effects on performance, hooks,
		      metrics, summaries etc.
		      This parameter is only used when Distribution Strategy is used with
		      estimator or keras.
		  num_cores: Number of cores to use on the TPU. If None specified, then
		      auto-detect the cores and topology of the TPU system.
	**/
	public function new(tpu_cluster_resolver:Dynamic, steps_per_run:Dynamic, ?num_cores:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		DEPRECATED: use extended.batch_reduce_to() instead.
	**/
	public function batch_reduce(aggregation:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.experimental_between_graph instead.
	**/
	public var between_graph : Dynamic;
	/**
		DEPRECATED: use extended.broadcast_to() instead.
	**/
	public function broadcast(tensor:Dynamic, ?destinations:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.call_for_each_replica() instead.
	**/
	public function call_for_each_replica(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		DEPRECATED: use extended.colocate_vars_with() instead.
	**/
	public function colocate_vars_with(colocate_with_variable:Dynamic):Dynamic;
	/**
		DEPRECATED: use `update_config_proto` instead.
		
		Configures the strategy class.
		
		DEPRECATED: This method's functionality has been split into the strategy
		constructor and `update_config_proto`. In the future, we will allow passing
		cluster and config_proto to the constructor to configure the strategy. And
		`update_config_proto` can be used to update the config_proto based on the
		specific strategy.
	**/
	public function configure(?session_config:Dynamic, ?cluster_spec:Dynamic, ?task_type:Dynamic, ?task_id:Dynamic):Dynamic;
	/**
		Return a `dataset` split across all replicas.  DEPRECATED.
		
		DEPRECATED: Please use `make_dataset_iterator` or
		`make_input_fn_iterator` instead.
		
		Suitable for providing input to `extended.call_for_each_replica()` by
		creating an iterator:
		
		```
		def dataset_fn():
		  return tf.data.Dataset.from_tensors([[1.]]).repeat()
		
		with strategy.scope():
		  distributed_dataset = strategy.distribute_dataset(dataset_fn)
		  iterator = distributed_dataset.make_initializable_iterator()
		  replica_results = strategy.extended.call_for_each_replica(
		      replica_fn, args=(iterator.get_next(),))
		```
		
		Args:
		  dataset_fn: A function that returns a `tf.data.Dataset`.
		
		Returns:
		  A `PerReplicaDataset` that will produce data for each replica.
	**/
	public function distribute_dataset(dataset_fn:Dynamic):Dynamic;
	/**
		Any final actions to be done at the end of all computations.
		
		In eager mode, it executes any finalize actions as a side effect.
		In graph mode, it creates the finalize ops and returns them.
		
		For example, TPU shutdown ops.
		
		Returns:
		  A list of ops to execute.
	**/
	public function experimental_finalize():Dynamic;
	/**
		Any initialization to be done before running any computations.
		
		In eager mode, it executes any initialization as a side effect.
		In graph mode, it creates the initialization ops and returns them.
		
		For example, TPU initialize_system ops.
		
		Returns:
		  A list of ops to execute.
	**/
	public function experimental_initialize():Dynamic;
	/**
		Runs ops in `fn` on each replica, with inputs from `input_iterator`.
		
		When eager execution is enabled, executes ops specified by `fn` on each
		replica.  Otherwise, builds a graph to execute the ops on each replica.
		
		Each replica will take a single, different input from the inputs provided by
		one `get_next` call on the input iterator.
		
		`fn` may call `tf.distribute.get_replica_context()` to access members such
		as `replica_id_in_sync_group`.
		
		IMPORTANT: Depending on the `DistributionStrategy` being used, and whether
		eager execution is enabled, `fn` may be called one or more times (once for
		each replica).
		
		Args:
		  fn: function to run. The inputs to the function must match the outputs of
		    `input_iterator.get_next()`. The output must be a `tf.nest` of
		    `Tensor`s.
		  input_iterator: (Optional) input iterator from which the inputs are taken.
		
		Returns:
		  Merged return value of `fn` across replicas. The structure of the return
		  value is the same as the return value from `fn`. Each element in the
		  structure can either be `PerReplica` (if the values are unsynchronized),
		  `Mirrored` (if the values are kept in sync), or `Tensor` (if running on a
		  single replica).
	**/
	public function experimental_run(fn:Dynamic, ?input_iterator:Dynamic):Dynamic;
	/**
		`tf.distribute.StrategyExtended` with additional methods.
	**/
	public var extended : Dynamic;
	/**
		DEPRECATED: Use `experimental_finalize()` instead.
	**/
	public function finalize():Dynamic;
	/**
		Shortcut for `tf.group(self.unwrap(value))`.
	**/
	public function group(value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		DEPRECATED: Use `experimental_initialize()` instead.
	**/
	public function initialize():Dynamic;
	/**
		Makes an iterator for input provided via input_dataset.
		
		Data from the given dataset will be distributed evenly across all the
		compute replicas. We will assume that the input dataset is batched by the
		global batch size. With this assumption, we will make a best effort to
		divide each batch across all the replicas (one or more workers).
		If this effort fails, an error will be thrown, and the user should instead
		use `make_input_fn_iterator` which provides more control to the user, and
		does not try to divide a batch across replicas.
		
		The user could also use `make_input_fn_iterator` if they want to
		customize which input is fed to which replica/worker etc.
		
		Args:
		  dataset: `tf.data.Dataset` that will be distributed evenly across all
		    replicas.
		
		Returns:
		  An `tf.distribute.InputIterator` which returns inputs for each step of the
		  computation.  User should call `initialize` on the returned iterator.
	**/
	public function make_dataset_iterator(dataset:Dynamic):Dynamic;
	/**
		Returns an iterator split across replicas created from an input function.
		
		The `input_fn` should take an `tf.distribute.InputContext` object where
		information about input sharding can be accessed:
		
		```
		def input_fn(input_context):
		  d = tf.data.Dataset.from_tensors([[1.]]).repeat()
		  return d.shard(input_context.num_input_pipelines,
		                 input_context.input_pipeline_id)
		with strategy.scope():
		  iterator = strategy.make_input_fn_iterator(
		      input_fn)
		  replica_results = strategy.extended.call_for_each_replica(
		      replica_fn, iterator.get_next())
		```
		
		Args:
		  input_fn: A function that returns a `tf.data.Dataset`. This function is
		    expected to take an `tf.distribute.InputContext` object.
		  replication_mode: an enum value of `tf.distribute.InputReplicationMode`.
		    Only `PER_WORKER` is supported currently.
		
		Returns:
		  An iterator object that can be initialized and fetched next element.
	**/
	public function make_input_fn_iterator(input_fn:Dynamic, ?replication_mode:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.non_slot_devices instead.
	**/
	public function non_slot_devices(var_list:Dynamic):Dynamic;
	/**
		Returns number of replicas over which gradients are aggregated.
	**/
	public var num_replicas_in_sync : Dynamic;
	/**
		DEPRECATED: use extended.parameter_devices instead.
	**/
	public var parameter_devices : Dynamic;
	/**
		DEPRECATED: use extended.read_var() instead.
	**/
	public function read_var(v:Dynamic):Dynamic;
	/**
		Reduce `value` across replicas.
		
		Args:
		  reduce_op: A `tf.distribute.ReduceOp` value specifying how values should
		    be combined.
		  value: A "per replica" value to be combined into a single tensor.
		
		Returns:
		  A `Tensor`.
	**/
	public function reduce(reduce_op:Dynamic, value:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.require_static_shapes instead.
	**/
	public var require_static_shapes : Dynamic;
	/**
		DEPRECATED: use extended.experimental_run_steps_on_iterator() instead.
	**/
	public function run_steps_on_dataset(fn:Dynamic, iterator:Dynamic, ?iterations:Dynamic, ?initial_loop_values:Dynamic):Dynamic;
	/**
		Returns a context manager selecting this Strategy as current.
		
		Inside a `with strategy.scope():` code block, this thread
		will use a variable creator set by `strategy`, and will
		enter its "cross-replica context".
		
		Returns:
		  A context manager.
	**/
	public function scope():Dynamic;
	/**
		DEPRECATED: use extended.should_checkpoint instead.
	**/
	public var should_checkpoint : Dynamic;
	/**
		DEPRECATED: use extended.should_init instead.
	**/
	public var should_init : Dynamic;
	/**
		DEPRECATED: use extended.should_save_summary instead.
	**/
	public var should_save_summary : Dynamic;
	/**
		DEPRECATED: use .extended.steps_per_run instead.
	**/
	public var steps_per_run : Dynamic;
	/**
		Returns the list of all per-replica values contained in `value`.
		
		Args:
		  value: A value returned by `extended.call_for_each_replica()` or a
		    variable created in `scope`.
		
		Returns:
		  A tuple of values contained in `value`. If `value` represents a single
		  value, this returns `(value,).`
	**/
	public function unwrap(value:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.update() instead.
	**/
	public function update(_var:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a copy of `config_proto` modified for use with this strategy.
		
		The updated config has something needed to run a strategy, e.g.
		configuration to run collective ops, or device filters to improve
		distributed training performance.
		
		Args:
		  config_proto: a `tf.ConfigProto` object.
		
		Returns:
		  The updated copy of the `config_proto`.
	**/
	public function update_config_proto(config_proto:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.update_non_slot() instead.
	**/
	public function update_non_slot(colocate_with:Dynamic, fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		DEPRECATED: use extended.value_container() instead.
	**/
	public function value_container(value:Dynamic):Dynamic;
	/**
		DEPRECATED: use extended.worker_devices instead.
	**/
	public var worker_devices : Dynamic;
}