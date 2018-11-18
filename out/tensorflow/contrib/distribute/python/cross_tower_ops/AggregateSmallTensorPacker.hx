/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.cross_tower_ops;
@:pythonImport("tensorflow.contrib.distribute.python.cross_tower_ops", "AggregateSmallTensorPacker") extern class AggregateSmallTensorPacker {
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
		Initialize the AggregateSmallTensorPacker object.
		
		Args:
		  agg_small_grads_max_bytes: largest tensor eligible for aggregation,
		    in number of bytes.
		  agg_small_grads_max_group: largest permitted aggregation of small
		    tensors.
		
		Raises:
		  ValueError: if `agg_small_grads_max_bytes` or `agg_small_grads_max_group`
		    is not greater than 0.
	**/
	@:native("__init__")
	public function ___init__(?agg_small_grads_max_bytes:Dynamic, ?agg_small_grads_max_group:Dynamic):Dynamic;
	/**
		Initialize the AggregateSmallTensorPacker object.
		
		Args:
		  agg_small_grads_max_bytes: largest tensor eligible for aggregation,
		    in number of bytes.
		  agg_small_grads_max_group: largest permitted aggregation of small
		    tensors.
		
		Raises:
		  ValueError: if `agg_small_grads_max_bytes` or `agg_small_grads_max_group`
		    is not greater than 0.
	**/
	public function new(?agg_small_grads_max_bytes:Dynamic, ?agg_small_grads_max_group:Dynamic):Void;
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
		Aggregate small tensors.
	**/
	public function pack(grouped_grads_and_vars:Dynamic):Dynamic;
	/**
		Reverse the aggregation process.
	**/
	public function unpack(summed_device_grad_packs:Dynamic):Dynamic;
}