/* This file is generated, do not edit! */
package tensorflow.contrib.distribute.python.mirrored_strategy;
@:pythonImport("tensorflow.contrib.distribute.python.mirrored_strategy", "MirroredTowerContext") extern class MirroredTowerContext {
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
	public function ___init__(distribution_strategy:Dynamic, tower_id:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(distribution_strategy:Dynamic, tower_id:Dynamic):Void;
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
		Delegate to the main thread to actually perform merge_call().
	**/
	public function _merge_call(fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The device this tower is to be executed on, as a string.
	**/
	public var device : Dynamic;
	/**
		The current `DistributionStrategy` object.
	**/
	public var distribution_strategy : Dynamic;
	/**
		Returns whether there is a single tower or multiple.
	**/
	public var is_single_tower : Dynamic;
	/**
		Merge args across towers and run `merge_fn` in a cross-tower context.
		
		This allows communication and coordination when there are multiple calls
		to a model function triggered by a call to
		`distribution.call_for_each_tower(model_fn, ...)`.
		
		See `MirroredDistribution.call_for_each_tower()` for an explanation.
		
		Otherwise, this is equivalent to:
		
		```
		distribution = get_distribution_strategy()
		with cross-tower-context(distribution):
		  return merge_fn(distribution, *args, **kwargs)
		```
		
		Args:
		  merge_fn: function that joins arguments from threads that are given as
		    PerDevice. It accepts `DistributionStrategy` object as the first
		    argument.
		  *args: positional per-thread arguments for `merge_fn`
		  **kwargs: keyword per-thread arguments for `merge_fn`.
		
		Returns:
		  The return value of `merge_fn`, except for `PerDevice` values which are
		  unpacked.
	**/
	public function merge_call(merge_fn:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns number of towers, for purposes of averaging across towers.
	**/
	public var num_towers : Dynamic;
	/**
		Which tower is being defined, a number from 0 to `num_towers - 1`.
	**/
	public var tower_id : Dynamic;
}