/* This file is generated, do not edit! */
package tensorflow.python.distribute.distribute_lib;
@:pythonImport("tensorflow.python.distribute.distribute_lib", "ReplicaContextV1") extern class ReplicaContextV1 {
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