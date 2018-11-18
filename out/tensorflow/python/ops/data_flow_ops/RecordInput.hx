/* This file is generated, do not edit! */
package tensorflow.python.ops.data_flow_ops;
@:pythonImport("tensorflow.python.ops.data_flow_ops", "RecordInput") extern class RecordInput {
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
		Constructs a RecordInput Op.
		
		Args:
		  file_pattern: File path to the dataset, possibly containing wildcards.
		    All matching files will be iterated over each epoch.
		  batch_size: How many records to return at a time.
		  buffer_size: The maximum number of records the buffer will contain.
		  parallelism: How many reader threads to use for reading from files.
		  shift_ratio: What percentage of the total number files to move the start
		    file forward by each epoch.
		  seed: Specify the random number seed used by generator that randomizes
		    records.
		  name: Optional name for the operation.
		  batches: None by default, creating a single batch op. Otherwise specifies
		    how many batches to create, which are returned as a list when
		    `get_yield_op()` is called. An example use case is to split processing
		    between devices on one computer.
		  compression_type: The type of compression for the file. Currently ZLIB and
		    GZIP are supported. Defaults to none.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	@:native("__init__")
	public function ___init__(file_pattern:Dynamic, ?batch_size:Dynamic, ?buffer_size:Dynamic, ?parallelism:Dynamic, ?shift_ratio:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?batches:Dynamic, ?compression_type:Dynamic):Dynamic;
	/**
		Constructs a RecordInput Op.
		
		Args:
		  file_pattern: File path to the dataset, possibly containing wildcards.
		    All matching files will be iterated over each epoch.
		  batch_size: How many records to return at a time.
		  buffer_size: The maximum number of records the buffer will contain.
		  parallelism: How many reader threads to use for reading from files.
		  shift_ratio: What percentage of the total number files to move the start
		    file forward by each epoch.
		  seed: Specify the random number seed used by generator that randomizes
		    records.
		  name: Optional name for the operation.
		  batches: None by default, creating a single batch op. Otherwise specifies
		    how many batches to create, which are returned as a list when
		    `get_yield_op()` is called. An example use case is to split processing
		    between devices on one computer.
		  compression_type: The type of compression for the file. Currently ZLIB and
		    GZIP are supported. Defaults to none.
		
		Raises:
		  ValueError: If one of the arguments is invalid.
	**/
	public function new(file_pattern:Dynamic, ?batch_size:Dynamic, ?buffer_size:Dynamic, ?parallelism:Dynamic, ?shift_ratio:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?batches:Dynamic, ?compression_type:Dynamic):Void;
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
		Adds a node that yields a group of records every time it is executed.
		If RecordInput `batches` parameter is not None, it yields a list of
		record batches with the specified `batch_size`.
	**/
	public function get_yield_op():Dynamic;
}