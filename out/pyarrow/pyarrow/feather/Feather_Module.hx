/* This file is generated, do not edit! */
package pyarrow.feather;
@:pythonImport("pyarrow.feather") extern class Feather_Module {
	static public var _FEATHER_SUPPORTED_CODECS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_pandas_version():Dynamic;
	static public var _pandas_api : Dynamic;
	static public function check_chunked_overflow(name:Dynamic, col:Dynamic):Dynamic;
	/**
		concat_tables(tables, bool promote=False, MemoryPool memory_pool=None)
		
		Concatenate pyarrow.Table objects.
		
		If promote==False, a zero-copy concatenation will be performed. The schemas
		of all the Tables must be the same (except the metadata), otherwise an
		exception will be raised. The result Table will share the metadata with the
		first table.
		
		If promote==True, any null type arrays will be casted to the type of other
		arrays in the column of the same name. If a table is missing a particular
		field, null values of the appropriate type will be generated to take the
		place of the missing field. The new schema will share the metadata with the
		first table. Each field in the new schema will share the metadata with the
		first table which has the field defined. Note that type promotions may
		involve additional allocations on the given ``memory_pool``.
		
		Parameters
		----------
		tables : iterable of pyarrow.Table objects
		    Pyarrow tables to concatenate into a single Table.
		promote : bool, default False
		    If True, concatenate tables with null-filling and null type promotion.
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool.
	**/
	static public function concat_tables(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Read a pandas.DataFrame from Feather format. To read as pyarrow.Table use
		feather.read_table.
		
		Parameters
		----------
		source : str file path, or file-like object
		columns : sequence, optional
		    Only read a specific set of columns. If not provided, all columns are
		    read.
		use_threads : bool, default True
		    Whether to parallelize reading using multiple threads. If false the
		    restriction is used in the conversion to Pandas as well as in the
		    reading from Feather format.
		memory_map : boolean, default True
		    Use memory mapping when opening file on disk
		
		Returns
		-------
		df : pandas.DataFrame
	**/
	static public function read_feather(source:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?memory_map:Dynamic):Dynamic;
	/**
		Read a pyarrow.Table from Feather format
		
		Parameters
		----------
		source : str file path, or file-like object
		columns : sequence, optional
		    Only read a specific set of columns. If not provided, all columns are
		    read.
		memory_map : boolean, default True
		    Use memory mapping when opening file on disk
		use_threads : bool, default True
		    Whether to parallelize reading using multiple threads.
		
		Returns
		-------
		table : pyarrow.Table
	**/
	static public function read_table(source:Dynamic, ?columns:Dynamic, ?memory_map:Dynamic, ?use_threads:Dynamic):Dynamic;
	/**
		schema(fields, metadata=None)
		
		Construct pyarrow.Schema from collection of fields.
		
		Parameters
		----------
		fields : iterable of Fields or tuples, or mapping of strings to DataTypes
		metadata : dict, default None
		    Keys and values must be coercible to bytes.
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.schema([
		...     ('some_int', pa.int32()),
		...     ('some_string', pa.string())
		... ])
		some_int: int32
		some_string: string
		>>> pa.schema([
		...     pa.field('some_int', pa.int32()),
		...     pa.field('some_string', pa.string())
		... ])
		some_int: int32
		some_string: string
		
		Returns
		-------
		schema : pyarrow.Schema
	**/
	static public function schema(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Write a pandas.DataFrame to Feather format.
		
		Parameters
		----------
		df : pandas.DataFrame or pyarrow.Table
		    Data to write out as Feather format.
		dest : str
		    Local destination path.
		compression : string, default None
		    Can be one of {"zstd", "lz4", "uncompressed"}. The default of None uses
		    LZ4 for V2 files if it is available, otherwise uncompressed.
		compression_level : int, default None
		    Use a compression level particular to the chosen compressor. If None
		    use the default compression level
		chunksize : int, default None
		    For V2 files, the internal maximum size of Arrow RecordBatch chunks
		    when writing the Arrow IPC file format. None means use the default,
		    which is currently 64K
		version : int, default 2
		    Feather file version. Version 2 is the current. Version 1 is the more
		    limited legacy format
	**/
	static public function write_feather(df:Dynamic, dest:Dynamic, ?compression:Dynamic, ?compression_level:Dynamic, ?chunksize:Dynamic, ?version:Dynamic):Dynamic;
}