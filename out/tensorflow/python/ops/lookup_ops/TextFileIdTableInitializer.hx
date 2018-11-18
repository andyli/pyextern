/* This file is generated, do not edit! */
package tensorflow.python.ops.lookup_ops;
@:pythonImport("tensorflow.python.ops.lookup_ops", "TextFileIdTableInitializer") extern class TextFileIdTableInitializer {
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
		Constructs an initializer for an string-to-id table from a text file.
		
		It populates a table that its key and value types are string and int64,
		respectively. It generates one key-value pair per line.
		The content of the key and value are specified by the key_index
		and value_index.
		
		- TextFileIndex.LINE_NUMBER means use the line number starting from zero,
		  expects data type int64.
		- TextFileIndex.WHOLE_LINE means use the whole line content, expects data
		  type string.
		- A value >=0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  filename: The filename of the text file to be used for initialization.
		    The path must be accessible from wherever the graph is initialized
		    (eg. trainer or eval workers). The filename may be a scalar `Tensor`.
		  key_column_index: The column index from the text file to get the `key`
		    values from. The default is to use the whole line content.
		  value_column_index: The column index from the text file to get the `value`
		    values from. The default is to use the line number, starting from zero.
		  vocab_size: The number of elements in the file, if known.
		  delimiter: The delimiter to separate fields in a line.
		  name: Optional name for the op.
		  key_dtype: The `key` data type.
		
		Raises:
		  TypeError: when the filename is empty, or when the table key and value
		  data types do not match the expected data types.
	**/
	@:native("__init__")
	public function ___init__(filename:Dynamic, ?key_column_index:Dynamic, ?value_column_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?name:Dynamic, ?key_dtype:Dynamic):Dynamic;
	/**
		Constructs an initializer for an string-to-id table from a text file.
		
		It populates a table that its key and value types are string and int64,
		respectively. It generates one key-value pair per line.
		The content of the key and value are specified by the key_index
		and value_index.
		
		- TextFileIndex.LINE_NUMBER means use the line number starting from zero,
		  expects data type int64.
		- TextFileIndex.WHOLE_LINE means use the whole line content, expects data
		  type string.
		- A value >=0 means use the index (starting at zero) of the split line based
		  on `delimiter`.
		
		Args:
		  filename: The filename of the text file to be used for initialization.
		    The path must be accessible from wherever the graph is initialized
		    (eg. trainer or eval workers). The filename may be a scalar `Tensor`.
		  key_column_index: The column index from the text file to get the `key`
		    values from. The default is to use the whole line content.
		  value_column_index: The column index from the text file to get the `value`
		    values from. The default is to use the line number, starting from zero.
		  vocab_size: The number of elements in the file, if known.
		  delimiter: The delimiter to separate fields in a line.
		  name: Optional name for the op.
		  key_dtype: The `key` data type.
		
		Raises:
		  TypeError: when the filename is empty, or when the table key and value
		  data types do not match the expected data types.
	**/
	public function new(filename:Dynamic, ?key_column_index:Dynamic, ?value_column_index:Dynamic, ?vocab_size:Dynamic, ?delimiter:Dynamic, ?name:Dynamic, ?key_dtype:Dynamic):Void;
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
		Initializes the table from a text file.
		
		Args:
		  table: The table to be initialized.
		
		Returns:
		  The operation that initializes the table.
		
		Raises:
		  TypeError: when the keys and values data types do not match the table
		  key and value data types.
	**/
	public function initialize(table:Dynamic):Dynamic;
	/**
		The expected table key dtype.
	**/
	public var key_dtype : Dynamic;
	/**
		The expected table value dtype.
	**/
	public var value_dtype : Dynamic;
}