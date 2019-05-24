/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.tpu_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.tpu_strategy", "_TPUReplicaContext") extern class _TPUReplicaContext {
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
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exception_type:Dynamic, exception_value:Dynamic, traceback:Dynamic):Dynamic;
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
	public function ___init__(distribution_strategy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(distribution_strategy:Dynamic):Void;
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
		Default implementation for single replica.
	**/
	public function _merge_call(merge_fn:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		The devices this replica is to be executed on, as a tuple of strings.
	**/
	public var devices : Dynamic;
	/**
		DEPRECATED: use `self.stratgey` instead.
	**/
	public var distribution_strategy : Dynamic;
	/**
		Merge args across replicas and run `merge_fn` in a cross-replica context.
		
		This allows communication and coordination when there are multiple calls
		to a model function triggered by a call to
		`strategy.extended.call_for_each_replica(model_fn, ...)`.
		
		See `tf.distribute.StrategyExtended.call_for_each_replica` for an
		explanation.
		
		If not inside a distributed scope, this is equivalent to:
		
		```
		strategy = tf.distribute.get_strategy()
		with cross-replica-context(strategy):
		  return merge_fn(strategy, *args, **kwargs)
		```
		
		Args:
		  merge_fn: function that joins arguments from threads that are given as
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
		Returns number of replicas over which gradients are aggregated.
	**/
	public var num_replicas_in_sync : Dynamic;
	/**
		Which replica is being defined, from 0 to `num_replicas_in_sync - 1`.
	**/
	public var replica_id_in_sync_group : Dynamic;
	/**
		The current `tf.distribute.Strategy` object.
	**/
	public var strategy : Dynamic;
}