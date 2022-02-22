/* This file is generated, do not edit! */
package pyarrow.orc;
@:pythonImport("pyarrow.orc") extern class Orc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _orc_writer_args_docs : Dynamic;
	/**
		Return filesystem/path from path which could be an URI or a plain
		filesystem path.
	**/
	static public function _resolve_filesystem_and_path(path:Dynamic, ?filesystem:Dynamic, ?allow_legacy_filesystem:Dynamic):Dynamic;
	/**
		Read a Table from an ORC file.
		
		Parameters
		----------
		source : str, pyarrow.NativeFile, or file-like object
		    If a string passed, can be a single file name. For file-like objects,
		    only read a single file. Use pyarrow.BufferReader to read a file
		    contained in a bytes or buffer-like object.
		columns : list
		    If not None, only these columns will be read from the file. A column
		    name may be a prefix of a nested field, e.g. 'a' will select 'a.b',
		    'a.c', and 'a.d.e'. If empty, no columns will be read. Note
		    that the table will still have the correct num_rows set despite having
		    no columns.
		filesystem : FileSystem, default None
		    If nothing passed, paths assumed to be found in the local on-disk
		    filesystem.
	**/
	static public function read_table(source:Dynamic, ?columns:Dynamic, ?filesystem:Dynamic):Dynamic;
	/**
		Write a table into an ORC file.
		
		Parameters
		----------
		table : pyarrow.lib.Table
		    The table to be written into the ORC file
		where : str or pyarrow.io.NativeFile
		    Writable target. For passing Python file objects or byte buffers,
		    see pyarrow.io.PythonFileInterface, pyarrow.io.BufferOutputStream
		    or pyarrow.io.FixedSizeBufferWriter.
		file_version : {"0.11", "0.12"}, default "0.12"
		    Determine which ORC file version to use.
		    `Hive 0.11 / ORC v0 <https://orc.apache.org/specification/ORCv0/>`_
		    is the older version
		    while `Hive 0.12 / ORC v1 <https://orc.apache.org/specification/ORCv1/>`_
		    is the newer one.
		batch_size : int, default 1024
		    Number of rows the ORC writer writes at a time.
		stripe_size : int, default 64 * 1024 * 1024
		    Size of each ORC stripe in bytes.
		compression : string, default 'uncompressed'
		    The compression codec.
		    Valid values: {'UNCOMPRESSED', 'SNAPPY', 'ZLIB', 'LZ4', 'ZSTD'}
		    Note that LZ0 is currently not supported.
		compression_block_size : int, default 64 * 1024
		    Size of each compression block in bytes.
		compression_strategy : string, default 'speed'
		    The compression strategy i.e. speed vs size reduction.
		    Valid values: {'SPEED', 'COMPRESSION'}
		row_index_stride : int, default 10000
		    The row index stride i.e. the number of rows per
		    an entry in the row index.
		padding_tolerance : double, default 0.0
		    The padding tolerance.
		dictionary_key_size_threshold : double, default 0.0
		    The dictionary key size threshold. 0 to disable dictionary encoding.
		    1 to always enable dictionary encoding.
		bloom_filter_columns : None, set-like or list-like, default None
		    Columns that use the bloom filter.
		bloom_filter_fpp : double, default 0.05
		    Upper limit of the false-positive rate of the bloom filter.
	**/
	static public function write_table(table:Dynamic, where:Dynamic, ?file_version:Dynamic, ?batch_size:Dynamic, ?stripe_size:Dynamic, ?compression:Dynamic, ?compression_block_size:Dynamic, ?compression_strategy:Dynamic, ?row_index_stride:Dynamic, ?padding_tolerance:Dynamic, ?dictionary_key_size_threshold:Dynamic, ?bloom_filter_columns:Dynamic, ?bloom_filter_fpp:Dynamic):Dynamic;
}