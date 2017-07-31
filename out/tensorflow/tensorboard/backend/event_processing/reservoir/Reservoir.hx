/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.reservoir;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.reservoir", "Reservoir") extern class Reservoir {
	/**
		Add a new item to the Reservoir with the given tag.
		
		If the reservoir has not yet reached full size, the new item is guaranteed
		to be added. If the reservoir is full, then behavior depends on the
		always_keep_last boolean.
		
		If always_keep_last was set to true, the new item is guaranteed to be added
		to the reservoir, and either the previous last item will be replaced, or
		(with low probability) an older item will be replaced.
		
		If always_keep_last was set to false, then the new item will replace an
		old item with low probability.
		
		If f is provided, it will be applied to transform item (lazily, iff item is
		  going to be included in the reservoir).
		
		Args:
		  key: The key to store the item under.
		  item: The item to add to the reservoir.
		  f: An optional function to transform the item prior to addition.
	**/
	public function AddItem(key:Dynamic, item:Dynamic, ?f:Dynamic):Dynamic;
	/**
		Filter items within a Reservoir, using a filtering function.
		
		Args:
		  filterFn: A function that returns True for the items to be kept.
		  key: An optional bucket key to filter. If not specified, will filter all
		    all buckets.
		
		Returns:
		  The number of items removed.
	**/
	public function FilterItems(filterFn:Dynamic, ?key:Dynamic):Dynamic;
	/**
		Return items associated with given key.
		
		Args:
		  key: The key for which we are finding associated items.
		
		Raises:
		  KeyError: If the key is not found in the reservoir.
		
		Returns:
		  [list, of, items] associated with that key.
	**/
	public function Items(key:Dynamic):Dynamic;
	/**
		Return all the keys in the reservoir.
		
		Returns:
		  ['list', 'of', 'keys'] in the Reservoir.
	**/
	public function Keys():Dynamic;
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
		Creates a new reservoir.
		
		Args:
		  size: The number of values to keep in the reservoir for each tag. If 0,
		    all values will be kept.
		  seed: The seed of the random number generator to use when sampling.
		    Different values for |seed| will produce different samples from the same
		    input items.
		  always_keep_last: Whether to always keep the latest seen item in the
		    end of the reservoir. Defaults to True.
		
		Raises:
		  ValueError: If size is negative or not an integer.
	**/
	@:native("__init__")
	public function ___init__(size:Dynamic, ?seed:Dynamic, ?always_keep_last:Dynamic):Dynamic;
	/**
		Creates a new reservoir.
		
		Args:
		  size: The number of values to keep in the reservoir for each tag. If 0,
		    all values will be kept.
		  seed: The seed of the random number generator to use when sampling.
		    Different values for |seed| will produce different samples from the same
		    input items.
		  always_keep_last: Whether to always keep the latest seen item in the
		    end of the reservoir. Defaults to True.
		
		Raises:
		  ValueError: If size is negative or not an integer.
	**/
	public function new(size:Dynamic, ?seed:Dynamic, ?always_keep_last:Dynamic):Void;
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