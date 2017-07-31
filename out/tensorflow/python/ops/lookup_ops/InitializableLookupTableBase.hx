/* This file is generated, do not edit! */
package tensorflow.python.ops.lookup_ops;
@:pythonImport("tensorflow.python.ops.lookup_ops", "InitializableLookupTableBase") extern class InitializableLookupTableBase {
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
		Construct a table object from a table reference.
		
		If requires a table initializer object (subclass of `TableInitializerBase`).
		It provides the table key and value types, as well as the op to initialize
		the table. The caller is responsible to execute the initialization op.
		
		Args:
		  table_ref: The table reference, i.e. the output of the lookup table ops.
		  default_value: The value to use if a key is missing in the table.
		  initializer: The table initializer to use.
	**/
	@:native("__init__")
	public function ___init__(table_ref:Dynamic, default_value:Dynamic, initializer:Dynamic):Dynamic;
	/**
		Construct a table object from a table reference.
		
		If requires a table initializer object (subclass of `TableInitializerBase`).
		It provides the table key and value types, as well as the op to initialize
		the table. The caller is responsible to execute the initialization op.
		
		Args:
		  table_ref: The table reference, i.e. the output of the lookup table ops.
		  default_value: The value to use if a key is missing in the table.
		  initializer: The table initializer to use.
	**/
	public function new(table_ref:Dynamic, default_value:Dynamic, initializer:Dynamic):Void;
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