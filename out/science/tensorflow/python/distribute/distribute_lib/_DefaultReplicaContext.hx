/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_lib;
@:pythonImport("tensorflow.python.distribute.distribute_lib", "_DefaultReplicaContext") extern class _DefaultReplicaContext {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exception_type:Dynamic, exception_value:Dynamic, traceback:Dynamic):Dynamic;
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
		Creates a ReplicaContext.
		
		Args:
		  strategy: A `tf.distribute.Strategy`.
		  replica_id_in_sync_group: An integer, a `Tensor` or None. Prefer an
		    integer whenever possible to avoid issues with nested `tf.function`. It
		    accepts a `Tensor` only to be compatible with `tpu.replicate`.
	**/
	@:native("__init__")
	public function ___init__(strategy:Dynamic, replica_id_in_sync_group:Dynamic):Dynamic;
	/**
		Creates a ReplicaContext.
		
		Args:
		  strategy: A `tf.distribute.Strategy`.
		  replica_id_in_sync_group: An integer, a `Tensor` or None. Prefer an
		    integer whenever possible to avoid issues with nested `tf.function`. It
		    accepts a `Tensor` only to be compatible with `tpu.replicate`.
	**/
	public function new(strategy:Dynamic, replica_id_in_sync_group:Dynamic):Void;
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
		Default implementation for single replica.
	**/
	public function _merge_call(merge_fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This is the local replica id in a given sync group.
	**/
	public var _replica_id : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Run `fn` to update `var` with `args` and `kwargs` in replica context.
		
		`tf.distribute.ReplicaContext.update` takes a (distributed) variable `var`
		to be updated, an update function `fn`, and `args` and `kwargs` for `fn`.
		`fn` applies to each component variable of `var` with corresponding input
		values from `args` and `kwargs`.
		
		Example usage:
		
		>>> strategy = tf.distribute.MirroredStrategy(['GPU:0', 'GPU:1']) # 2 replicas
		>>> with strategy.scope():
		...   distributed_variable = tf.Variable(5.0)
		>>> distributed_variable
		MirroredVariable:{
		  0: <tf.Variable 'Variable:0' shape=() dtype=float32, numpy=5.0>,
		  1: <tf.Variable 'Variable/replica_1:0' shape=() dtype=float32, numpy=5.0>
		}
		>>> def replica_fn(v):
		...   value = tf.identity(1.0)
		...   replica_context = tf.distribute.get_replica_context()
		...   update_fn = lambda var, value: var.assign(value)
		...   replica_context._update(v, update_fn, args=(value,))
		>>> strategy.run(replica_fn, args=(distributed_variable,))
		>>> distributed_variable
		MirroredVariable:{
		  0: <tf.Variable 'Variable:0' shape=() dtype=float32, numpy=1.0>,
		  1: <tf.Variable 'Variable/replica_1:0' shape=() dtype=float32, numpy=1.0>
		}
		
		This API must be called in a replica context.
		
		Note that if `var` is a MirroredVariable (i.e., the type of variable created
		under the scope of a synchronous strategy, and is synchronized on-write, see
		`tf.VariableSynchronization` for more information) and `args`/`kwargs`
		contains different values for different replicas, `var` will be dangerously
		out of synchronization. Thus we recommend using `variable.assign(value)` as
		long as you can, which under the hood aggregates the updates and guarantees
		the synchronization. The case where you actually want this API instead of
		`variable.assign(value)` is that before assigning `value` to the `variable`,
		you'd like to conduct some pre-`assign` computation colocated with the
		variable devices (i.e. where variables reside, for MirroredStrategy they are
		the same as the compute device, for ParameterServerStrategy they refer to
		parameter servers). E.g.,
		
		```python
		strategy = tf.distribute.MirroredStrategy(['GPU:0', 'GPU:1']) # 2 replicas
		with strategy.scope():
		  v = tf.Variable(5.0, aggregation=tf.VariableAggregation.SUM)
		def replica_fn(inputs):
		  value = computation(inputs)
		  replica_context = tf.distribute.get_replica_context()
		  reduced_value = replica_context.all_reduce(value)
		
		  def update_fn(var, value):
		    # this computation will colocate with `var`'s device
		    updated_value = post_reduce_pre_update_computation(value)
		    var.assign(value)
		
		  replica_context._update(v, update_fn, args=(reduced_value,))
		
		strategy.run(replica_fn, args=(inputs,))
		```
		
		This code snippet is consistent across all strategies. If you directly
		compute and use `assign` in the replica context instead of wrapping it with
		`update`, for strategies with fewer variable devices than compute devices
		(e.g., parameter server strategy, usually), the
		`post_reduce_pre_update_computation` will happen
		N==number_of_compute_devices times which is less performant.
		
		
		Args:
		  var: Variable, possibly distributed to multiple devices, to operate on.
		  fn: Function to call. Should take the variable as the first argument.
		  args: Tuple or list. Additional positional arguments to pass to `fn()`.
		  kwargs: Dict with keyword arguments to pass to `fn()`.
		  group: Boolean. Defaults to True. Most strategies enter a merge_call to
		  conduct update in cross-replica context, and group=True guarantees updates
		  on all replicas is executed.
		
		Returns:
		  The return value of `fn` for the local replica.
	**/
	public function _update(_var:Dynamic, fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic, ?group:Dynamic):Dynamic;
	/**
		All-gathers `value` across all replicas along `axis`.
		
		Note: An `all_gather` method can only be called in replica context. For
		a cross-replica context counterpart, see `tf.distribute.Strategy.gather`.
		All replicas need to participate in the all-gather, otherwise this
		operation hangs. So if `all_gather` is called in any replica, it must be
		called in all replicas.
		
		Note: If there are multiple `all_gather` calls, they need to be executed in
		the same order on all replicas. Dispatching `all_gather` based on conditions
		is usually error-prone.
		
		For all strategies except `tf.distribute.TPUStrategy`, the input
		`value` on different replicas must have the same rank, and their shapes must
		be the same in all dimensions except the `axis`-th dimension. In other
		words, their shapes cannot be different in a dimension `d` where `d` does
		not equal to the `axis` argument. For example, given a
		`tf.distribute.DistributedValues` with component tensors of shape
		`(1, 2, 3)` and `(1, 3, 3)` on two replicas, you can call
		`all_gather(..., axis=1, ...)` on it, but not `all_gather(..., axis=0, ...)`
		or `all_gather(..., axis=2, ...)`. However, with
		`tf.distribute.TPUStrategy`, all tensors must have exactly the same rank and
		same shape.
		
		Note: The input `value` must have a non-zero rank. Otherwise, consider using
		`tf.expand_dims` before gathering them.
		
		You can pass in a single tensor to all-gather:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> @tf.function
		... def gather_value():
		...   ctx = tf.distribute.get_replica_context()
		...   local_value = tf.constant([1, 2, 3])
		...   return ctx.all_gather(local_value, axis=0)
		>>> result = strategy.run(gather_value)
		>>> result
		PerReplica:{
		  0: <tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>,
		  1: <tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>
		}
		>>> strategy.experimental_local_results(result)
		(<tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3],
		dtype=int32)>,
		<tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3],
		dtype=int32)>)
		
		
		You can also pass in a nested structure of tensors to all-gather, say, a
		list:
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> @tf.function
		... def gather_nest():
		...   ctx = tf.distribute.get_replica_context()
		...   value_1 = tf.constant([1, 2, 3])
		...   value_2 = tf.constant([[1, 2], [3, 4]])
		...   # all_gather a nest of `tf.distribute.DistributedValues`
		...   return ctx.all_gather([value_1, value_2], axis=0)
		>>> result = strategy.run(gather_nest)
		>>> result
		[PerReplica:{
		  0: <tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>,
		  1: <tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>
		}, PerReplica:{
		  0: <tf.Tensor: shape=(4, 2), dtype=int32, numpy=
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]], dtype=int32)>,
		  1: <tf.Tensor: shape=(4, 2), dtype=int32, numpy=
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]], dtype=int32)>
		}]
		>>> strategy.experimental_local_results(result)
		([<tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>,
		<tf.Tensor: shape=(4, 2), dtype=int32, numpy=
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]], dtype=int32)>],
		       [<tf.Tensor: shape=(6,), dtype=int32, numpy=array([1, 2, 3, 1, 2, 3], dtype=int32)>,
		       <tf.Tensor: shape=(4, 2), dtype=int32, numpy=
		array([[1, 2],
		       [3, 4],
		       [1, 2],
		       [3, 4]], dtype=int32)>])
		
		
		What if you are all-gathering tensors with different shapes on different
		replicas? Consider the following example with two replicas, where you have
		`value` as a nested structure consisting of two items to all-gather, `a` and
		`b`.
		
		  On Replica 0, `value` is `{'a': [0], 'b': [[0, 1]]}`.
		
		  On Replica 1, `value` is `{'a': [1], 'b': [[2, 3], [4, 5]]}`.
		
		  Result for `all_gather` with `axis`=0 (on each of the replicas) is:
		
		  ```{'a': [1, 2], 'b': [[0, 1], [2, 3], [4, 5]]}```
		
		Args:
		  value: a nested structure of `tf.Tensor` which `tf.nest.flatten` accepts,
		    or a `tf.distribute.DistributedValues` instance. The structure of the
		    `tf.Tensor` need to be same on all replicas. The underlying tensor
		    constructs can only be dense tensors with non-zero rank, NOT
		    `tf.IndexedSlices`.
		  axis: 0-D int32 Tensor. Dimension along which to gather.
		  options: a `tf.distribute.experimental.CommunicationOptions`. Options to
		    perform collective operations. This overrides the default options if the
		    `tf.distribute.Strategy` takes one in the constructor. See
		    `tf.distribute.experimental.CommunicationOptions` for details of the
		    options.
		
		Returns:
		   A nested structure of `tf.Tensor` with the gathered values. The structure
		   is the same as `value`.
	**/
	public function all_gather(value:Dynamic, axis:Dynamic, ?options:Dynamic):Dynamic;
	/**
		All-reduces `value` across all replicas.
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> def step_fn():
		...   ctx = tf.distribute.get_replica_context()
		...   value = tf.identity(1.)
		...   return ctx.all_reduce(tf.distribute.ReduceOp.SUM, value)
		>>> strategy.experimental_local_results(strategy.run(step_fn))
		(<tf.Tensor: shape=(), dtype=float32, numpy=2.0>,
		 <tf.Tensor: shape=(), dtype=float32, numpy=2.0>)
		
		It supports batched operations. You can pass a list of values and it
		attempts to batch them when possible. You can also specify `options`
		to indicate the desired batching behavior, e.g. batch the values into
		multiple packs so that they can better overlap with computations.
		
		>>> strategy = tf.distribute.MirroredStrategy(["GPU:0", "GPU:1"])
		>>> def step_fn():
		...   ctx = tf.distribute.get_replica_context()
		...   value1 = tf.identity(1.)
		...   value2 = tf.identity(2.)
		...   return ctx.all_reduce(tf.distribute.ReduceOp.SUM, [value1, value2])
		>>> strategy.experimental_local_results(strategy.run(step_fn))
		([<tf.Tensor: shape=(), dtype=float32, numpy=2.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=4.0>],
		[<tf.Tensor: shape=(), dtype=float32, numpy=2.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=4.0>])
		
		Note that all replicas need to participate in the all-reduce, otherwise this
		operation hangs. Note that if there're multiple all-reduces, they need to
		execute in the same order on all replicas. Dispatching all-reduce based on
		conditions is usually error-prone.
		
		Known limitation: if `value` contains `tf.IndexedSlices`, attempting to
		compute gradient w.r.t `value` would result in an error.
		
		This API currently can only be called in the replica context. Other
		variants to reduce values across replicas are:
		* `tf.distribute.StrategyExtended.reduce_to`: the reduce and all-reduce API
		  in the cross-replica context.
		* `tf.distribute.StrategyExtended.batch_reduce_to`: the batched reduce and
		  all-reduce API in the cross-replica context.
		* `tf.distribute.Strategy.reduce`: a more convenient method to reduce
		  to the host in cross-replica context.
		
		Args:
		  reduce_op: a `tf.distribute.ReduceOp` value specifying how values should
		    be combined. Allows using string representation of the enum such as
		    "SUM", "MEAN".
		  value: a potentially nested structure of `tf.Tensor` or `tf.IndexedSlices` which
		    `tf.nest.flatten` accepts. The structure and the shapes of `value` need to be
		    same on all replicas.
		  options: a `tf.distribute.experimental.CommunicationOptions`. Options to
		    perform collective operations. This overrides the default options if the
		    `tf.distribute.Strategy` takes one in the constructor. See
		    `tf.distribute.experimental.CommunicationOptions` for details of the
		    options.
		
		Returns:
		   A nested structure of `tf.Tensor` with the reduced values. The structure
		   is the same as `value`.
	**/
	public function all_reduce(reduce_op:Dynamic, value:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Returns the devices this replica is to be executed on, as a tuple of strings. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please avoid relying on devices property.
		
		NOTE: For `tf.distribute.MirroredStrategy` and
		`tf.distribute.experimental.MultiWorkerMirroredStrategy`, this returns a
		nested
		list of device strings, e.g, [["GPU:0"]].
	**/
	public var devices : Dynamic;
	/**
		Merge args across replicas and run `merge_fn` in a cross-replica context.
		
		This allows communication and coordination when there are multiple calls
		to the step_fn triggered by a call to `strategy.run(step_fn, ...)`.
		
		See `tf.distribute.Strategy.run` for an explanation.
		
		If not inside a distributed scope, this is equivalent to:
		
		```
		strategy = tf.distribute.get_strategy()
		with cross-replica-context(strategy):
		  return merge_fn(strategy, *args, **kwargs)
		```
		
		Args:
		  merge_fn: Function that joins arguments from threads that are given as
		    PerReplica. It accepts `tf.distribute.Strategy` object as
		    the first argument.
		  args: List or tuple with positional per-thread arguments for `merge_fn`.
		  kwargs: Dict with keyword per-thread arguments for `merge_fn`.
		
		Returns:
		  The return value of `merge_fn`, except for `PerReplica` values which are
		  unpacked.
	**/
	public function merge_call(merge_fn:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Returns number of replicas that are kept in sync.
	**/
	public var num_replicas_in_sync : Dynamic;
	/**
		Returns the id of the replica.
		
		This identifies the replica among all replicas that are kept in sync. The
		value of the replica id can range from 0 to
		`tf.distribute.ReplicaContext.num_replicas_in_sync` - 1.
		
		NOTE: This is not guaranteed to be the same ID as the XLA replica ID use
		for low-level operations such as collective_permute.
		
		Returns:
		  a `Tensor`.
	**/
	public var replica_id_in_sync_group : Dynamic;
	/**
		The current `tf.distribute.Strategy` object.
	**/
	public var strategy : Dynamic;
}