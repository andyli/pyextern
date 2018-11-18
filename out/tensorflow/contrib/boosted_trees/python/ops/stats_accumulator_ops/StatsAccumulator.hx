/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.python.ops.stats_accumulator_ops;
@:pythonImport("tensorflow.contrib.boosted_trees.python.ops.stats_accumulator_ops", "StatsAccumulator") extern class StatsAccumulator {
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
		Creates a stats accumulator and returns a handle to it.
		
		Args:
		  stamp_token: An int64, initial value to use for the stamp token.
		  gradient_shape: A TensorShape, containing shape of gradients.
		  hessian_shape: A TensorShape, containing shape of hessians.
		  name: A name for the stats accumulator variable.
		  container: An optional `string`. Defaults to `""`.
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the stats accumulator.
	**/
	@:native("__init__")
	public function ___init__(stamp_token:Dynamic, gradient_shape:Dynamic, hessian_shape:Dynamic, ?name:Dynamic, ?container:Dynamic):Dynamic;
	/**
		Creates a stats accumulator and returns a handle to it.
		
		Args:
		  stamp_token: An int64, initial value to use for the stamp token.
		  gradient_shape: A TensorShape, containing shape of gradients.
		  hessian_shape: A TensorShape, containing shape of hessians.
		  name: A name for the stats accumulator variable.
		  container: An optional `string`. Defaults to `""`.
		
		Returns:
		  A `Tensor` of type mutable `string`. The handle to the stats accumulator.
	**/
	public function new(stamp_token:Dynamic, gradient_shape:Dynamic, hessian_shape:Dynamic, ?name:Dynamic, ?container:Dynamic):Void;
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
	public function _make_summary(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		Updates the stats accumulator.
	**/
	public function add(stamp_token:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		Resets the stats accumulator with the serialized state.
	**/
	public function deserialize(stamp_token:Dynamic, num_updates:Dynamic, partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		The device for SaveSpec Tensors.
	**/
	public var device : Dynamic;
	/**
		Flushes the stats accumulator.
	**/
	public function flush(stamp_token:Dynamic, next_stamp_token:Dynamic):Dynamic;
	public function resource():Dynamic;
	/**
		Restores the associated tree ensemble from 'restored_tensors'.
		
		Args:
		  restored_tensors: the tensors that were loaded from a checkpoint.
		  unused_restored_shapes: the shapes this object should conform to after
		    restore. Not meaningful for trees.
		
		Returns:
		  The operation that restores the state of the tree ensemble variable.
	**/
	public function restore(restored_tensors:Dynamic, unused_restored_shapes:Dynamic):Dynamic;
	/**
		Schedules an update to the stats accumulator.
	**/
	public function schedule_add(partition_ids:Dynamic, feature_ids:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		Serializes the stats accumulator state.
	**/
	public function serialize():Dynamic;
}