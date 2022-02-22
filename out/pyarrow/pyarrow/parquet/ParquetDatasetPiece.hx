/* This file is generated, do not edit! */
package pyarrow.parquet;
@:pythonImport("pyarrow.parquet", "ParquetDatasetPiece") extern class ParquetDatasetPiece {
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
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(path:Dynamic, ?open_file_func:Dynamic, ?file_options:Dynamic, ?row_group:Dynamic, ?partition_keys:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path:Dynamic, ?open_file_func:Dynamic, ?file_options:Dynamic, ?row_group:Dynamic, ?partition_keys:Dynamic):Void;
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
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public function _create(path:Dynamic, ?open_file_func:Dynamic, ?file_options:Dynamic, ?row_group:Dynamic, ?partition_keys:Dynamic):Dynamic;
	public function _init(path:Dynamic, open_file_func:Dynamic, file_options:Dynamic, row_group:Dynamic, partition_keys:Dynamic):Dynamic;
	/**
		Return the file's metadata.
		
		Returns
		-------
		metadata : FileMetaData
	**/
	public function get_metadata():Dynamic;
	/**
		Return instance of ParquetFile.
	**/
	public function open():Dynamic;
	/**
		Read this piece as a pyarrow.Table.
		
		Parameters
		----------
		columns : list of column names, default None
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		partitions : ParquetPartitions, default None
		file : file-like object
		    Passed to ParquetFile.
		use_pandas_metadata : bool
		    If pandas metadata should be used or not.
		
		Returns
		-------
		table : pyarrow.Table
	**/
	public function read(?columns:Dynamic, ?use_threads:Dynamic, ?partitions:Dynamic, ?file:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
}