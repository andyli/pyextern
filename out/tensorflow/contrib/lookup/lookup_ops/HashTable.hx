/* This file is generated, do not edit! */
package tensorflow.contrib.lookup.lookup_ops;
@:pythonImport("tensorflow.contrib.lookup.lookup_ops", "HashTable") extern class HashTable {
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
		Creates a non-initialized `HashTable` object.
		
		Creates a table, the type of its keys and values are specified by the
		initializer.
		Before using the table you will have to initialize it. After initialization
		the table will be immutable.
		
		Args:
		  initializer: The table initializer to use.
		  default_value: The value to use if a key is missing in the table.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `HashTable` object.
	**/
	@:native("__init__")
	public function ___init__(initializer:Dynamic, default_value:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Creates a non-initialized `HashTable` object.
		
		Creates a table, the type of its keys and values are specified by the
		initializer.
		Before using the table you will have to initialize it. After initialization
		the table will be immutable.
		
		Args:
		  initializer: The table initializer to use.
		  default_value: The value to use if a key is missing in the table.
		  shared_name: If non-empty, this table will be shared under
		    the given name across multiple sessions.
		  name: A name for the operation (optional).
		
		Returns:
		  A `HashTable` object.
	**/
	public function new(initializer:Dynamic, default_value:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Void;
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
	/**
		The default value of the table.
	**/
	public var default_value : Dynamic;
	/**
		The table initialization op.
	**/
	public var init : Dynamic;
	/**
		The table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		Looks up `keys` in a table, outputs the corresponding values.
		
		The `default_value` is used for keys not present in the table.
		
		Args:
		  keys: Keys to look up. May be either a `SparseTensor` or dense `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `SparseTensor` if keys are sparse, otherwise a dense `Tensor`.
		
		Raises:
		  TypeError: when `keys` or `default_value` doesn't match the table data
		    types.
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
		Get the underlying table reference.
	**/
	public var table_ref : Dynamic;
	/**
		The table value dtype.
	**/
	public var value_dtype : Dynamic;
}