/* This file is generated, do not edit! */
package pyarrow.parquet;
@:pythonImport("pyarrow.parquet", "_ParquetDatasetV2") extern class _ParquetDatasetV2 {
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
	public function __eq__(value:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(path_or_paths:Dynamic, ?filesystem:Dynamic, ?filters:Dynamic, ?partitioning:Dynamic, ?read_dictionary:Dynamic, ?buffer_size:Dynamic, ?memory_map:Dynamic, ?ignore_prefixes:Dynamic, ?pre_buffer:Dynamic, ?coerce_int96_timestamp_unit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(path_or_paths:Dynamic, ?filesystem:Dynamic, ?filters:Dynamic, ?partitioning:Dynamic, ?read_dictionary:Dynamic, ?buffer_size:Dynamic, ?memory_map:Dynamic, ?ignore_prefixes:Dynamic, ?pre_buffer:Dynamic, ?coerce_int96_timestamp_unit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public var files : Dynamic;
	public var filesystem : Dynamic;
	public var fragments : Dynamic;
	/**
		The partitioning of the Dataset source, if discovered.
	**/
	public var partitioning : Dynamic;
	public var pieces : Dynamic;
	/**
		Read (multiple) Parquet files as a single pyarrow.Table.
		
		Parameters
		----------
		columns : List[str]
		    Names of columns to read from the dataset. The partition fields
		    are not automatically included (in contrast to when setting
		    ``use_legacy_dataset=True``).
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		pyarrow.Table
		    Content of the file as a table (of columns).
	**/
	public function read(?columns:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Read dataset including pandas metadata, if any. Other arguments passed
		through to ParquetDataset.read, see docstring for further details.
	**/
	public function read_pandas(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var schema : Dynamic;
}