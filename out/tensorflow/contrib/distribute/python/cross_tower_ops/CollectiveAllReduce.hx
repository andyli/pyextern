/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.cross_tower_ops;
@:pythonImport("tensorflow.contrib.distribute.python.cross_tower_ops", "CollectiveAllReduce") extern class CollectiveAllReduce {
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
		Initializes the object.
		
		Args:
		  num_workers: number of workers in the between-graph replicated training.
		  num_gpus_per_worker: number of GPUs per worker.
		  all_reduce_merge_scope: size of groups into which to partition consecutive
		    gradients grouped under a common 'allreduce' name scope. This is useful
		    for some optimization of collective ops.
		  collective_keys: an optional CollectiveKey object.
	**/
	@:native("__init__")
	public function ___init__(?num_workers:Dynamic, ?num_gpus_per_worker:Dynamic, ?all_reduce_merge_scope:Dynamic, ?collective_keys:Dynamic):Dynamic;
	/**
		Initializes the object.
		
		Args:
		  num_workers: number of workers in the between-graph replicated training.
		  num_gpus_per_worker: number of GPUs per worker.
		  all_reduce_merge_scope: size of groups into which to partition consecutive
		    gradients grouped under a common 'allreduce' name scope. This is useful
		    for some optimization of collective ops.
		  collective_keys: an optional CollectiveKey object.
	**/
	public function new(?num_workers:Dynamic, ?num_gpus_per_worker:Dynamic, ?all_reduce_merge_scope:Dynamic, ?collective_keys:Dynamic):Void;
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
		All-reduce across all workers in a batch.
	**/
	public function _batch_all_reduce(aggregation:Dynamic, per_device_values:Dynamic):Dynamic;
	public function _batch_reduce(aggregation:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	public function _broadcast(tensor:Dynamic, destinations:Dynamic):Dynamic;
	public function _reduce(aggregation:Dynamic, per_device_value:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Reduce PerDevice objects in a batch.
		
		Reduce each first element in `value_destination_pairs` to each second
		element which indicates the destinations.
		
		Args:
		  aggregation: Indicates how a variable will be aggregated. Accepted values
		    are `tf.VariableAggregation.SUM`, `tf.VariableAggregation.MEAN`.
		  value_destination_pairs: a list or a tuple of tuples of PerDevice objects
		    (or tensors with device set if there is one tower) and destinations.
		
		Returns:
		  a list of Mirrored objects.
		
		Raises:
		  ValueError: if `value_destination_pairs` is not a list or a tuple of
		    tuples of PerDevice objects and destinations
	**/
	public function batch_reduce(aggregation:Dynamic, value_destination_pairs:Dynamic):Dynamic;
	/**
		Broadcast the `tensor` to destinations.
		
		Args:
		  tensor: the tensor to broadcast.
		  destinations: the broadcast destinations.
		
		Returns:
		  a Mirrored object.
	**/
	public function broadcast(tensor:Dynamic, destinations:Dynamic):Dynamic;
	/**
		Reduce `per_device_value` to `destinations`.
		
		It runs the reduction operation defined by `aggregation` and put the
		result on `destinations`.
		
		Args:
		  aggregation: Indicates how a variable will be aggregated. Accepted values
		    are `tf.VariableAggregation.SUM`, `tf.VariableAggregation.MEAN`.
		  per_device_value: a PerDevice object or a tensor with device set.
		  destinations: the reduction destinations.
		
		Returns:
		  a Mirrored object.
		
		Raises:
		  ValueError: if per_device_value is not a PerDevice object.
	**/
	public function reduce(aggregation:Dynamic, per_device_value:Dynamic, destinations:Dynamic):Dynamic;
}