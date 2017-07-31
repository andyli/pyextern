/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.reservoir;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.reservoir", "_ReservoirBucket") extern class _ReservoirBucket {
	/**
		Add an item to the ReservoirBucket, replacing an old item if necessary.
		
		The new item is guaranteed to be added to the bucket, and to be the last
		element in the bucket. If the bucket has reached capacity, then an old item
		will be replaced. With probability (_max_size/_num_items_seen) a random item
		in the bucket will be popped out and the new item will be appended
		to the end. With probability (1 - _max_size/_num_items_seen)
		the last item in the bucket will be replaced.
		
		Since the O(n) replacements occur with O(1/_num_items_seen) likelihood,
		the amortized runtime is O(1).
		
		Args:
		  item: The item to add to the bucket.
		  f: A function to transform item before addition, if it will be kept in
		    the reservoir.
	**/
	public function AddItem(item:Dynamic, ?f:Dynamic):Dynamic;
	/**
		Filter items in a ReservoirBucket, using a filtering function.
		
		Filtering items from the reservoir bucket must update the
		internal state variable self._num_items_seen, which is used for determining
		the rate of replacement in reservoir sampling. Ideally, self._num_items_seen
		would contain the exact number of items that have ever seen by the
		ReservoirBucket and satisfy filterFn. However, the ReservoirBucket does not
		have access to all items seen -- it only has access to the subset of items
		that have survived sampling (self.items). Therefore, we estimate
		self._num_items_seen by scaling it by the same ratio as the ratio of items
		not removed from self.items.
		
		Args:
		  filterFn: A function that returns True for items to be kept.
		
		Returns:
		  The number of items removed from the bucket.
	**/
	public function FilterItems(filterFn:Dynamic):Dynamic;
	/**
		Get all the items in the bucket.
	**/
	public function Items():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create the _ReservoirBucket.
		
		Args:
		  _max_size: The maximum size the reservoir bucket may grow to. If size is
		    zero, the bucket has unbounded size.
		  _random: The random number generator to use. If not specified, defaults to
		    random.Random(0).
		  always_keep_last: Whether the latest seen item should always be included
		    in the end of the bucket.
		
		Raises:
		  ValueError: if the size is not a nonnegative integer.
	**/
	@:native("__init__")
	public function ___init__(_max_size:Dynamic, ?_random:Dynamic, ?always_keep_last:Dynamic):Dynamic;
	/**
		Create the _ReservoirBucket.
		
		Args:
		  _max_size: The maximum size the reservoir bucket may grow to. If size is
		    zero, the bucket has unbounded size.
		  _random: The random number generator to use. If not specified, defaults to
		    random.Random(0).
		  always_keep_last: Whether the latest seen item should always be included
		    in the end of the bucket.
		
		Raises:
		  ValueError: if the size is not a nonnegative integer.
	**/
	public function new(_max_size:Dynamic, ?_random:Dynamic, ?always_keep_last:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}