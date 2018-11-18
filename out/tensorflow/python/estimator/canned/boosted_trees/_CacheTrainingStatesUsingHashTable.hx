/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.boosted_trees;
@:pythonImport("tensorflow.python.estimator.canned.boosted_trees", "_CacheTrainingStatesUsingHashTable") extern class _CacheTrainingStatesUsingHashTable {
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
		Creates a cache with the given configuration.
		
		It maintains a MutableDenseHashTable for all values.
		The API lookup() and insert() would have those specs,
		  tree_ids: shape=[batch_size], dtype=int32
		  node_ids: shape=[batch_size], dtype=int32
		  logits: shape=[batch_size, logits_dimension], dtype=float32
		However in the MutableDenseHashTable, ids are bitcasted into float32 and
		all values are concatenated as a single tensor (of float32).
		
		Hence conversion happens internally before inserting to the HashTable and
		after lookup from it.
		
		Args:
		  example_ids: a Rank 1 tensor to be used as a key of the cache.
		  logits_dimension: a constant (int) for the dimension of logits.
		
		Raises:
		  ValueError: if example_ids is other than int64 or string.
	**/
	@:native("__init__")
	public function ___init__(example_ids:Dynamic, logits_dimension:Dynamic):Dynamic;
	/**
		Creates a cache with the given configuration.
		
		It maintains a MutableDenseHashTable for all values.
		The API lookup() and insert() would have those specs,
		  tree_ids: shape=[batch_size], dtype=int32
		  node_ids: shape=[batch_size], dtype=int32
		  logits: shape=[batch_size, logits_dimension], dtype=float32
		However in the MutableDenseHashTable, ids are bitcasted into float32 and
		all values are concatenated as a single tensor (of float32).
		
		Hence conversion happens internally before inserting to the HashTable and
		after lookup from it.
		
		Args:
		  example_ids: a Rank 1 tensor to be used as a key of the cache.
		  logits_dimension: a constant (int) for the dimension of logits.
		
		Raises:
		  ValueError: if example_ids is other than int64 or string.
	**/
	public function new(example_ids:Dynamic, logits_dimension:Dynamic):Void;
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
		Inserts values and returns the op.
	**/
	public function insert(tree_ids:Dynamic, node_ids:Dynamic, logits:Dynamic):Dynamic;
	/**
		Returns cached_tree_ids, cached_node_ids, cached_logits.
	**/
	public function lookup():Dynamic;
}