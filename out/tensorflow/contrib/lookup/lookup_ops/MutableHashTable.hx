/* This file is generated, do not edit! */
package tensorflow.contrib.lookup.lookup_ops;
@:pythonImport("tensorflow.contrib.lookup.lookup_ops", "MutableHashTable") extern class MutableHashTable {
	/**
		SaveableObject implementation for MutableHashTable.
	**/
	static public function _Saveable(table:Dynamic, name:Dynamic):Dynamic;
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
		Creates an empty `MutableHashTable` object.
		
		Creates a table, the type of its keys and values are specified by key_dtype
		and value_dtype, respectively.
		
		Args:
		  key_dtype: the type of the key tensors.
		  value_dtype: the type of the value tensors.
		  default_value: The value to use if a key is missing in the table.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		  checkpoint: if True, the contents of the table are saved to and restored
		    from checkpoints. If `shared_name` is empty for a checkpointed table, it
		    is shared using the table node name.
		
		Returns:
		  A `MutableHashTable` object.
		
		Raises:
		  ValueError: If checkpoint is True and no name was specified.
	**/
	@:native("__init__")
	public function ___init__(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?checkpoint:Dynamic):Dynamic;
	/**
		Creates an empty `MutableHashTable` object.
		
		Creates a table, the type of its keys and values are specified by key_dtype
		and value_dtype, respectively.
		
		Args:
		  key_dtype: the type of the key tensors.
		  value_dtype: the type of the value tensors.
		  default_value: The value to use if a key is missing in the table.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		  checkpoint: if True, the contents of the table are saved to and restored
		    from checkpoints. If `shared_name` is empty for a checkpointed table, it
		    is shared using the table node name.
		
		Returns:
		  A `MutableHashTable` object.
		
		Raises:
		  ValueError: If checkpoint is True and no name was specified.
	**/
	public function new(key_dtype:Dynamic, value_dtype:Dynamic, default_value:Dynamic, ?shared_name:Dynamic, ?name:Dynamic, ?checkpoint:Dynamic):Void;
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
	/**
		Check that the given key_dtype and value_dtype matches the table dtypes.
		
		Args:
		  key_dtype: The key data type to check.
		  value_dtype: The value data type to check.
		
		Raises:
		  TypeError: when 'key_dtype' or 'value_dtype' doesn't match the table data
		    types.
	**/
	public function check_table_dtypes(key_dtype:Dynamic, value_dtype:Dynamic):Dynamic;
	/**
		Returns tensors of all keys and values in the table.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A pair of tensors with the first tensor containing all keys and the
		    second tensors containing all values in the table.
	**/
	public function export(?name:Dynamic):Dynamic;
	/**
		The table initialization op.
	**/
	public var init : Dynamic;
	/**
		Associates `keys` with `values`.
		
		Args:
		  keys: Keys to insert. Can be a tensor of any shape. Must match the
		    table's key type.
		  values: Values to be associated with keys. Must be a tensor of the same
		    shape as `keys` and match the table's value type.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
		
		Raises:
		  TypeError: when `keys` or `values` doesn't match the table data
		    types.
	**/
	public function insert(keys:Dynamic, values:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		Looks up `keys` in a table, outputs the corresponding values.
		
		The `default_value` is used for keys not present in the table.
		
		Args:
		  keys: Keys to look up. Can be a tensor of any shape. Must match the
		    table's key_dtype.
		  name: A name for the operation (optional).
		
		Returns:
		  A tensor containing the values in the same shape as `keys` using the
		    table's value type.
		
		Raises:
		  TypeError: when `keys` do not match the table data types.
	**/
	public function lookup(keys:Dynamic, ?name:Dynamic):Dynamic;
	/**
		The name of the table.
	**/
	public var name : Dynamic;
	/**
		Compute the number of elements in this table.
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A scalar tensor containing the number of elements in this table.
	**/
	public function size(?name:Dynamic):Dynamic;
	/**
		The table value dtype.
	**/
	public var value_dtype : Dynamic;
}