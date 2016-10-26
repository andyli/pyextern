/* This file is generated, do not edit! */
package tensorflow.contrib.linear_optimizer.python.ops.sdca_ops;
@:pythonImport("tensorflow.contrib.linear_optimizer.python.ops.sdca_ops", "_ShardedMutableHashTable") extern class _ShardedMutableHashTable {
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
		Construct a lookup table interface.
		
		Args:
		  key_dtype: The table key type.
		  value_dtype: The table value type.
		  name: A name for the operation (optional).
	**/
	@:native("__init__")
	public function ___init__(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?num_shards:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a lookup table interface.
		
		Args:
		  key_dtype: The table key type.
		  value_dtype: The table value type.
		  name: A name for the operation (optional).
	**/
	public function new(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?num_shards:Dynamic, ?name:Dynamic):Void;
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
	/**
		Check that the given key_dtype and value_dtype matches the table dtypes.
		
		Args:
		  key_dtype: The key data type to check.
		  value_dtype: The value data type to check.
		
		Raises:
		  TypeError: when 'key_dtype' or 'value_dtype' doesn't match the table data
		    types.
	**/
	public function _check_table_dtypes(key_dtype:Dynamic, value_dtype:Dynamic):Dynamic;
	public var _num_shards : Dynamic;
	public function _shard_indices(keys:Dynamic):Dynamic;
	/**
		The table initialization op.
	**/
	public var init : Dynamic;
	public function insert(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		Looks up `keys` in a table, outputs the corresponding values.
	**/
	public function lookup(keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The name of the table.
	**/
	public var name : Dynamic;
	/**
		Compute the number of elements in this table.
	**/
	public function size(?name:Dynamic):Dynamic;
	public var table_shards : Dynamic;
	/**
		The table value dtype.
	**/
	public var value_dtype : Dynamic;
	/**
		Computes reduce_sum reducing dimension 0 across all values in all shards.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor with the sum across all values in the same shape as the table's
		  value shape.
	**/
	public function values_reduce_sum(?name:Dynamic):Dynamic;
}