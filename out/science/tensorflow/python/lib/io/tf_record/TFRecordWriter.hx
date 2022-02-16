/* This file is generated, do not edit! */
package tensorflow.python.lib.io.tf_record;
@:pythonImport("tensorflow.python.lib.io.tf_record", "TFRecordWriter") extern class TFRecordWriter {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		__enter__(self: object) -> object
	**/
	public function __enter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		__exit__(self: tensorflow.python.lib.io._pywrap_record_io.RecordWriter, *args) -> None
	**/
	public function __exit__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Opens file `path` and creates a `TFRecordWriter` writing to it.
		
		Args:
		  path: The path to the TFRecords file.
		  options: (optional) String specifying compression type,
		      `TFRecordCompressionType`, or `TFRecordOptions` object.
		
		Raises:
		  IOError: If `path` cannot be opened for writing.
		  ValueError: If valid compression_type can't be determined from `options`.
	**/
	@:native("__init__")
	public function ___init__(path:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Opens file `path` and creates a `TFRecordWriter` writing to it.
		
		Args:
		  path: The path to the TFRecords file.
		  options: (optional) String specifying compression type,
		      `TFRecordCompressionType`, or `TFRecordOptions` object.
		
		Raises:
		  IOError: If `path` cannot be opened for writing.
		  ValueError: If valid compression_type can't be determined from `options`.
	**/
	public function new(path:Dynamic, ?options:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	static public var _tf_deprecated_api_names : Dynamic;
	/**
		Close the file.
	**/
	public function close():Dynamic;
	/**
		Flush the file.
	**/
	public function flush():Dynamic;
	/**
		Write a string record to the file.
		
		Args:
		  record: str
	**/
	public function write(record:Dynamic):Dynamic;
}