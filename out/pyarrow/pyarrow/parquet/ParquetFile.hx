/* This file is generated, do not edit! */
package pyarrow.parquet;
@:pythonImport("pyarrow.parquet", "ParquetFile") extern class ParquetFile {
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
	public function ___init__(source:Dynamic, ?metadata:Dynamic, ?common_metadata:Dynamic, ?read_dictionary:Dynamic, ?memory_map:Dynamic, ?buffer_size:Dynamic, ?pre_buffer:Dynamic, ?coerce_int96_timestamp_unit:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(source:Dynamic, ?metadata:Dynamic, ?common_metadata:Dynamic, ?read_dictionary:Dynamic, ?memory_map:Dynamic, ?buffer_size:Dynamic, ?pre_buffer:Dynamic, ?coerce_int96_timestamp_unit:Dynamic):Void;
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
	public function _build_nested_paths():Dynamic;
	public function _get_column_indices(column_names:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Read streaming batches from a Parquet file
		
		Parameters
		----------
		batch_size : int, default 64K
		    Maximum number of records to yield per batch. Batches may be
		    smaller if there aren't enough rows in the file.
		row_groups : list
		    Only these row groups will be read from the file.
		columns : list
		    If not None, only these columns will be read from the file. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'.
		use_threads : boolean, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : boolean, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		iterator of pyarrow.RecordBatch
		    Contents of each batch as a record batch
	**/
	public function iter_batches(?batch_size:Dynamic, ?row_groups:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	public var metadata : Dynamic;
	public var num_row_groups : Dynamic;
	/**
		Read a Table from Parquet format,
		
		Parameters
		----------
		columns : list
		    If not None, only these columns will be read from the file. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		pyarrow.table.Table
		    Content of the file as a table (of columns).
	**/
	public function read(?columns:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Read a single row group from a Parquet file.
		
		Parameters
		----------
		i : int
		    Index of the individual row group that we want to read.
		columns : list
		    If not None, only these columns will be read from the row group. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		pyarrow.table.Table
		    Content of the row group as a table (of columns)
	**/
	public function read_row_group(i:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Read a multiple row groups from a Parquet file.
		
		Parameters
		----------
		row_groups : list
		    Only these row groups will be read from the file.
		columns : list
		    If not None, only these columns will be read from the row group. A
		    column name may be a prefix of a nested field, e.g. 'a' will select
		    'a.b', 'a.c', and 'a.d.e'.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		pyarrow.table.Table
		    Content of the row groups as a table (of columns).
	**/
	public function read_row_groups(row_groups:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Read contents of file for the given columns and batch size.
		
		Notes
		-----
		This function's primary purpose is benchmarking.
		The scan is executed on a single thread.
		
		Parameters
		----------
		columns : list of integers, default None
		    Select columns to read, if None scan all columns.
		batch_size : int, default 64K
		    Number of rows to read at a time internally.
		
		Returns
		-------
		num_rows : number of rows in file
	**/
	public function scan_contents(?columns:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Return the Parquet schema, unconverted to Arrow types
	**/
	public var schema : Dynamic;
	/**
		Return the inferred Arrow schema, converted from the whole Parquet
		file's schema
	**/
	public var schema_arrow : Dynamic;
}