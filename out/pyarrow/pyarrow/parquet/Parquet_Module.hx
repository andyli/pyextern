/* This file is generated, do not edit! */
package pyarrow.parquet;
@:pythonImport("pyarrow.parquet") extern class Parquet_Module {
	static public var EXCLUDED_PARQUET_PATHS : Dynamic;
	static public var _DEPR_MSG : Dynamic;
	static public var _DNF_filter_doc : Dynamic;
	static public var _SPARK_DISALLOWED_CHARS : Dynamic;
	static public var _URI_STRIP_SCHEMES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_contains_null(val:Dynamic):Dynamic;
	/**
		Check if filters are well-formed.
	**/
	static public function _check_filters(filters:Dynamic, ?check_null_strings:Dynamic):Dynamic;
	static public function _ensure_filesystem(filesystem:Dynamic, ?use_mmap:Dynamic, ?allow_legacy_filesystem:Dynamic):Dynamic;
	/**
		Check if filters are well-formed.
		
		See _DNF_filter_doc above for more details.
	**/
	static public function _filters_to_expression(filters:Dynamic):Dynamic;
	static public function _get_filesystem_and_path(passed_filesystem:Dynamic, path:Dynamic):Dynamic;
	static public function _get_pandas_index_columns(keyvalues:Dynamic):Dynamic;
	static public function _is_local_file_system(fs:Dynamic):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	static public function _is_private_directory(x:Dynamic):Dynamic;
	static public function _make_manifest(path_or_paths:Dynamic, fs:Dynamic, ?pathsep:Dynamic, ?metadata_nthreads:Dynamic, ?open_file_func:Dynamic):Dynamic;
	static public function _mkdir_if_not_exists(fs:Dynamic, path:Dynamic):Dynamic;
	static public function _open_dataset_file(dataset:Dynamic, path:Dynamic, ?meta:Dynamic):Dynamic;
	static public var _parquet_writer_arg_docs : Dynamic;
	static public function _parse_hive_partition(value:Dynamic):Dynamic;
	static public function _parse_uri(path:Dynamic):Dynamic;
	static public function _path_split(path:Dynamic, sep:Dynamic):Dynamic;
	static public var _read_docstring_common : Dynamic;
	static public var _read_table_docstring : Dynamic;
	/**
		Return filesystem/path from path which could be an URI or a plain
		filesystem path.
	**/
	static public function _resolve_filesystem_and_path(path:Dynamic, ?filesystem:Dynamic, ?allow_legacy_filesystem:Dynamic):Dynamic;
	static public function _sanitize_schema(schema:Dynamic, flavor:Dynamic):Dynamic;
	static public function _sanitize_table(table:Dynamic, new_schema:Dynamic, flavor:Dynamic):Dynamic;
	static public function _sanitized_spark_field_name(name:Dynamic):Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	static public function guid():Dynamic;
	/**
		Read FileMetadata from footer of a single Parquet file.
		
		Parameters
		----------
		where : str (file path) or file-like object
		memory_map : bool, default False
		    Create memory map when the source is a file path.
		
		Returns
		-------
		metadata : FileMetadata
	**/
	static public function read_metadata(where:Dynamic, ?memory_map:Dynamic):Dynamic;
	/**
		Read a Table from Parquet format, also reading DataFrame
		index values if known in the file metadata
		
		Parameters
		----------
		source : str, pyarrow.NativeFile, or file-like object
		    If a string passed, can be a single file name or directory name. For
		    file-like objects, only read a single file. Use pyarrow.BufferReader to
		    read a file contained in a bytes or buffer-like object.
		columns : list
		    If not None, only these columns will be read from the file. A column
		    name may be a prefix of a nested field, e.g. 'a' will select 'a.b',
		    'a.c', and 'a.d.e'. If empty, no columns will be read. Note
		    that the table will still have the correct num_rows set despite having
		    no columns.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		metadata : FileMetaData
		    If separately computed
		read_dictionary : list, default None
		    List of names or column paths (for nested types) to read directly
		    as DictionaryArray. Only supported for BYTE_ARRAY storage. To read
		    a flat column as dictionary-encoded pass the column name. For
		    nested types, you must pass the full column "path", which could be
		    something like level1.level2.list.item. Refer to the Parquet
		    file's schema to obtain the paths.
		memory_map : bool, default False
		    If the source is a file path, use a memory map to read file, which can
		    improve performance in some environments.
		buffer_size : int, default 0
		    If positive, perform read buffering when deserializing individual
		    column chunks. Otherwise IO calls are unbuffered.
		partitioning : pyarrow.dataset.Partitioning or str or list of str, default "hive"
		    The partitioning scheme for a partitioned dataset. The default of "hive"
		    assumes directory names with key=value pairs like "/year=2009/month=11".
		    In addition, a scheme like "/2009/11" is also supported, in which case
		    you need to specify the field names or a full schema. See the
		    ``pyarrow.dataset.partitioning()`` function for more details.
		**kwargs
		    additional options for :func:`read_table`
		use_legacy_dataset : bool, default False
		    By default, `read_table` uses the new Arrow Datasets API since
		    pyarrow 1.0.0. Among other things, this allows to pass `filters`
		    for all columns and not only the partition keys, enables
		    different partitioning schemes, etc.
		    Set to True to use the legacy behaviour.
		ignore_prefixes : list, optional
		    Files matching any of these prefixes will be ignored by the
		    discovery process if use_legacy_dataset=False.
		    This is matched to the basename of a path.
		    By default this is ['.', '_'].
		    Note that discovery happens only if a directory is passed as source.
		filesystem : FileSystem, default None
		    If nothing passed, paths assumed to be found in the local on-disk
		    filesystem.
		filters : List[Tuple] or List[List[Tuple]] or None (default)
		    Rows which do not match the filter predicate will be removed from scanned
		    data. Partition keys embedded in a nested directory structure will be
		    exploited to avoid loading files at all if they contain no matching rows.
		    If `use_legacy_dataset` is True, filters can only reference partition
		    keys and only a hive-style directory structure is supported. When
		    setting `use_legacy_dataset` to False, also within-file level filtering
		    and different partitioning schemes are supported.
		
		    Predicates are expressed in disjunctive normal form (DNF), like
		    ``[[('x', '=', 0), ...], ...]``. DNF allows arbitrary boolean logical
		    combinations of single column predicates. The innermost tuples each
		    describe a single column predicate. The list of inner predicates is
		    interpreted as a conjunction (AND), forming a more selective and
		    multiple column predicate. Finally, the most outer list combines these
		    filters as a disjunction (OR).
		
		    Predicates may also be passed as List[Tuple]. This form is interpreted
		    as a single conjunction. To express OR in predicates, one must
		    use the (preferred) List[List[Tuple]] notation.
		
		    Each tuple has format: (``key``, ``op``, ``value``) and compares the
		    ``key`` with the ``value``.
		    The supported ``op`` are:  ``=`` or ``==``, ``!=``, ``<``, ``>``, ``<=``,
		    ``>=``, ``in`` and ``not in``. If the ``op`` is ``in`` or ``not in``, the
		    ``value`` must be a collection such as a ``list``, a ``set`` or a
		    ``tuple``.
		
		    Examples:
		
		    .. code-block:: python
		
		        ('x', '=', 0)
		        ('y', 'in', ['a', 'b', 'c'])
		        ('z', 'not in', {'a','b'})
		
		    
		pre_buffer : bool, default True
		    Coalesce and issue file reads in parallel to improve performance on
		    high-latency filesystems (e.g. S3). If True, Arrow will use a
		    background I/O thread pool. This option is only supported for
		    use_legacy_dataset=False. If using a filesystem layer that itself
		    performs readahead (e.g. fsspec's S3FS), disable readahead for best
		    results.
		coerce_int96_timestamp_unit : str, default None.
		    Cast timestamps that are stored in INT96 format to a particular
		    resolution (e.g. 'ms'). Setting to None is equivalent to 'ns'
		    and therefore INT96 timestamps will be infered as timestamps
		    in nanoseconds.
		
		Returns
		-------
		pyarrow.Table
		    Content of the file as a Table of Columns, including DataFrame
		    indexes as columns
	**/
	static public function read_pandas(source:Dynamic, ?columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Read effective Arrow schema from Parquet file metadata.
		
		Parameters
		----------
		where : str (file path) or file-like object
		memory_map : bool, default False
		    Create memory map when the source is a file path.
		
		Returns
		-------
		schema : pyarrow.Schema
	**/
	static public function read_schema(where:Dynamic, ?memory_map:Dynamic):Dynamic;
	/**
		Read a Table from Parquet format
		
		Note: starting with pyarrow 1.0, the default for `use_legacy_dataset` is
		switched to False.
		
		Parameters
		----------
		source : str, pyarrow.NativeFile, or file-like object
		    If a string passed, can be a single file name or directory name. For
		    file-like objects, only read a single file. Use pyarrow.BufferReader to
		    read a file contained in a bytes or buffer-like object.
		columns : list
		    If not None, only these columns will be read from the file. A column
		    name may be a prefix of a nested field, e.g. 'a' will select 'a.b',
		    'a.c', and 'a.d.e'. If empty, no columns will be read. Note
		    that the table will still have the correct num_rows set despite having
		    no columns.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		metadata : FileMetaData
		    If separately computed
		read_dictionary : list, default None
		    List of names or column paths (for nested types) to read directly
		    as DictionaryArray. Only supported for BYTE_ARRAY storage. To read
		    a flat column as dictionary-encoded pass the column name. For
		    nested types, you must pass the full column "path", which could be
		    something like level1.level2.list.item. Refer to the Parquet
		    file's schema to obtain the paths.
		memory_map : bool, default False
		    If the source is a file path, use a memory map to read file, which can
		    improve performance in some environments.
		buffer_size : int, default 0
		    If positive, perform read buffering when deserializing individual
		    column chunks. Otherwise IO calls are unbuffered.
		partitioning : pyarrow.dataset.Partitioning or str or list of str, default "hive"
		    The partitioning scheme for a partitioned dataset. The default of "hive"
		    assumes directory names with key=value pairs like "/year=2009/month=11".
		    In addition, a scheme like "/2009/11" is also supported, in which case
		    you need to specify the field names or a full schema. See the
		    ``pyarrow.dataset.partitioning()`` function for more details.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		use_legacy_dataset : bool, default False
		    By default, `read_table` uses the new Arrow Datasets API since
		    pyarrow 1.0.0. Among other things, this allows to pass `filters`
		    for all columns and not only the partition keys, enables
		    different partitioning schemes, etc.
		    Set to True to use the legacy behaviour.
		ignore_prefixes : list, optional
		    Files matching any of these prefixes will be ignored by the
		    discovery process if use_legacy_dataset=False.
		    This is matched to the basename of a path.
		    By default this is ['.', '_'].
		    Note that discovery happens only if a directory is passed as source.
		filesystem : FileSystem, default None
		    If nothing passed, paths assumed to be found in the local on-disk
		    filesystem.
		filters : List[Tuple] or List[List[Tuple]] or None (default)
		    Rows which do not match the filter predicate will be removed from scanned
		    data. Partition keys embedded in a nested directory structure will be
		    exploited to avoid loading files at all if they contain no matching rows.
		    If `use_legacy_dataset` is True, filters can only reference partition
		    keys and only a hive-style directory structure is supported. When
		    setting `use_legacy_dataset` to False, also within-file level filtering
		    and different partitioning schemes are supported.
		
		    Predicates are expressed in disjunctive normal form (DNF), like
		    ``[[('x', '=', 0), ...], ...]``. DNF allows arbitrary boolean logical
		    combinations of single column predicates. The innermost tuples each
		    describe a single column predicate. The list of inner predicates is
		    interpreted as a conjunction (AND), forming a more selective and
		    multiple column predicate. Finally, the most outer list combines these
		    filters as a disjunction (OR).
		
		    Predicates may also be passed as List[Tuple]. This form is interpreted
		    as a single conjunction. To express OR in predicates, one must
		    use the (preferred) List[List[Tuple]] notation.
		
		    Each tuple has format: (``key``, ``op``, ``value``) and compares the
		    ``key`` with the ``value``.
		    The supported ``op`` are:  ``=`` or ``==``, ``!=``, ``<``, ``>``, ``<=``,
		    ``>=``, ``in`` and ``not in``. If the ``op`` is ``in`` or ``not in``, the
		    ``value`` must be a collection such as a ``list``, a ``set`` or a
		    ``tuple``.
		
		    Examples:
		
		    .. code-block:: python
		
		        ('x', '=', 0)
		        ('y', 'in', ['a', 'b', 'c'])
		        ('z', 'not in', {'a','b'})
		
		    
		pre_buffer : bool, default True
		    Coalesce and issue file reads in parallel to improve performance on
		    high-latency filesystems (e.g. S3). If True, Arrow will use a
		    background I/O thread pool. This option is only supported for
		    use_legacy_dataset=False. If using a filesystem layer that itself
		    performs readahead (e.g. fsspec's S3FS), disable readahead for best
		    results.
		coerce_int96_timestamp_unit : str, default None.
		    Cast timestamps that are stored in INT96 format to a particular
		    resolution (e.g. 'ms'). Setting to None is equivalent to 'ns'
		    and therefore INT96 timestamps will be infered as timestamps
		    in nanoseconds.
		
		Returns
		-------
		pyarrow.Table
		    Content of the file as a table (of columns)
	**/
	static public function read_table(source:Dynamic, ?columns:Dynamic, ?use_threads:Dynamic, ?metadata:Dynamic, ?use_pandas_metadata:Dynamic, ?memory_map:Dynamic, ?read_dictionary:Dynamic, ?filesystem:Dynamic, ?filters:Dynamic, ?buffer_size:Dynamic, ?partitioning:Dynamic, ?use_legacy_dataset:Dynamic, ?ignore_prefixes:Dynamic, ?pre_buffer:Dynamic, ?coerce_int96_timestamp_unit:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Write metadata-only Parquet file from schema. This can be used with
		`write_to_dataset` to generate `_common_metadata` and `_metadata` sidecar
		files.
		
		Parameters
		----------
		schema : pyarrow.Schema
		where : string or pyarrow.NativeFile
		metadata_collector : list
		    where to collect metadata information.
		**kwargs : dict,
		    Additional kwargs for ParquetWriter class. See docstring for
		    `ParquetWriter` for more information.
		
		Examples
		--------
		
		Write a dataset and collect metadata information.
		
		>>> metadata_collector = []
		>>> write_to_dataset(
		...     table, root_path,
		...     metadata_collector=metadata_collector, **writer_kwargs)
		
		Write the `_common_metadata` parquet file without row groups statistics.
		
		>>> write_metadata(
		...     table.schema, root_path / '_common_metadata', **writer_kwargs)
		
		Write the `_metadata` parquet file with row groups statistics.
		
		>>> write_metadata(
		...     table.schema, root_path / '_metadata',
		...     metadata_collector=metadata_collector, **writer_kwargs)
	**/
	static public function write_metadata(schema:Dynamic, where:Dynamic, ?metadata_collector:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write a Table to Parquet format.
		
		Parameters
		----------
		table : pyarrow.Table
		where : string or pyarrow.NativeFile
		row_group_size : int
		    Maximum size of each written row group. If None, the
		    row group size will be the minimum of the Table size
		    and 64 * 1024 * 1024.
		version : {"1.0", "2.4", "2.6"}, default "1.0"
		    Determine which Parquet logical types are available for use, whether the
		    reduced set from the Parquet 1.x.x format or the expanded logical types
		    added in later format versions.
		    Files written with version='2.4' or '2.6' may not be readable in all
		    Parquet implementations, so version='1.0' is likely the choice that
		    maximizes file compatibility.
		    UINT32 and some logical types are only available with version '2.4'.
		    Nanosecond timestamps are only available with version '2.6'.
		    Other features such as compression algorithms or the new serialized
		    data page format must be enabled separately (see 'compression' and
		    'data_page_version').
		use_dictionary : bool or list
		    Specify if we should use dictionary encoding in general or only for
		    some columns.
		use_deprecated_int96_timestamps : bool, default None
		    Write timestamps to INT96 Parquet format. Defaults to False unless enabled
		    by flavor argument. This take priority over the coerce_timestamps option.
		coerce_timestamps : str, default None
		    Cast timestamps to a particular resolution. If omitted, defaults are chosen
		    depending on `version`. By default, for ``version='1.0'`` (the default)
		    and ``version='2.4'``, nanoseconds are cast to microseconds ('us'), while
		    for other `version` values, they are written natively without loss
		    of resolution.  Seconds are always cast to milliseconds ('ms') by default,
		    as Parquet does not have any temporal type with seconds resolution.
		    If the casting results in loss of data, it will raise an exception
		    unless ``allow_truncated_timestamps=True`` is given.
		    Valid values: {None, 'ms', 'us'}
		data_page_size : int, default None
		    Set a target threshold for the approximate encoded size of data
		    pages within a column chunk (in bytes). If None, use the default data page
		    size of 1MByte.
		allow_truncated_timestamps : bool, default False
		    Allow loss of data when coercing timestamps to a particular
		    resolution. E.g. if microsecond or nanosecond data is lost when coercing to
		    'ms', do not raise an exception. Passing ``allow_truncated_timestamp=True``
		    will NOT result in the truncation exception being ignored unless
		    ``coerce_timestamps`` is not None.
		compression : str or dict
		    Specify the compression codec, either on a general basis or per-column.
		    Valid values: {'NONE', 'SNAPPY', 'GZIP', 'BROTLI', 'LZ4', 'ZSTD'}.
		write_statistics : bool or list
		    Specify if we should write statistics in general (default is True) or only
		    for some columns.
		flavor : {'spark'}, default None
		    Sanitize schema or set other compatibility options to work with
		    various target systems.
		filesystem : FileSystem, default None
		    If nothing passed, will be inferred from `where` if path-like, else
		    `where` is already a file-like object so no filesystem is needed.
		compression_level : int or dict, default None
		    Specify the compression level for a codec, either on a general basis or
		    per-column. If None is passed, arrow selects the compression level for
		    the compression codec in use. The compression level has a different
		    meaning for each codec, so you have to read the documentation of the
		    codec you are using.
		    An exception is thrown if the compression codec does not allow specifying
		    a compression level.
		use_byte_stream_split : bool or list, default False
		    Specify if the byte_stream_split encoding should be used in general or
		    only for some columns. If both dictionary and byte_stream_stream are
		    enabled, then dictionary is preferred.
		    The byte_stream_split encoding is valid only for floating-point data types
		    and should be combined with a compression codec.
		column_encoding : string or dict, default None
		    Specify the encoding scheme on a per column basis.
		    Currently supported values: {'PLAIN', 'BYTE_STREAM_SPLIT'}.
		    Certain encodings are only compatible with certain data types.
		    Please refer to the encodings section of `Reading and writing Parquet
		    files <https://arrow.apache.org/docs/cpp/parquet.html#encodings>`_.
		data_page_version : {"1.0", "2.0"}, default "1.0"
		    The serialized Parquet data page format version to write, defaults to
		    1.0. This does not impact the file schema logical types and Arrow to
		    Parquet type casting behavior; for that use the "version" option.
		use_compliant_nested_type : bool, default False
		    Whether to write compliant Parquet nested type (lists) as defined
		    `here <https://github.com/apache/parquet-format/blob/master/
		    LogicalTypes.md#nested-types>`_, defaults to ``False``.
		    For ``use_compliant_nested_type=True``, this will write into a list
		    with 3-level structure where the middle level, named ``list``,
		    is a repeated group with a single field named ``element``::
		
		        <list-repetition> group <name> (LIST) {
		            repeated group list {
		                  <element-repetition> <element-type> element;
		            }
		        }
		
		    For ``use_compliant_nested_type=False``, this will also write into a list
		    with 3-level structure, where the name of the single field of the middle
		    level ``list`` is taken from the element name for nested columns in Arrow,
		    which defaults to ``item``::
		
		        <list-repetition> group <name> (LIST) {
		            repeated group list {
		                <element-repetition> <element-type> item;
		            }
		        }
		
		**kwargs : optional
		    Additional options for ParquetWriter
	**/
	static public function write_table(table:Dynamic, where:Dynamic, ?row_group_size:Dynamic, ?version:Dynamic, ?use_dictionary:Dynamic, ?compression:Dynamic, ?write_statistics:Dynamic, ?use_deprecated_int96_timestamps:Dynamic, ?coerce_timestamps:Dynamic, ?allow_truncated_timestamps:Dynamic, ?data_page_size:Dynamic, ?flavor:Dynamic, ?filesystem:Dynamic, ?compression_level:Dynamic, ?use_byte_stream_split:Dynamic, ?column_encoding:Dynamic, ?data_page_version:Dynamic, ?use_compliant_nested_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper around parquet.write_table for writing a Table to
		Parquet format by partitions.
		For each combination of partition columns and values,
		a subdirectories are created in the following
		manner:
		
		root_dir/
		  group1=value1
		    group2=value1
		      <uuid>.parquet
		    group2=value2
		      <uuid>.parquet
		  group1=valueN
		    group2=value1
		      <uuid>.parquet
		    group2=valueN
		      <uuid>.parquet
		
		Parameters
		----------
		table : pyarrow.Table
		root_path : str, pathlib.Path
		    The root directory of the dataset
		filesystem : FileSystem, default None
		    If nothing passed, paths assumed to be found in the local on-disk
		    filesystem
		partition_cols : list,
		    Column names by which to partition the dataset
		    Columns are partitioned in the order they are given
		partition_filename_cb : callable,
		    A callback function that takes the partition key(s) as an argument
		    and allow you to override the partition filename. If nothing is
		    passed, the filename will consist of a uuid.
		use_legacy_dataset : bool
		    Default is True unless a ``pyarrow.fs`` filesystem is passed.
		    Set to False to enable the new code path (experimental, using the
		    new Arrow Dataset API). This is more efficient when using partition
		    columns, but does not (yet) support `partition_filename_cb` and
		    `metadata_collector` keywords.
		**kwargs : dict,
		    Additional kwargs for write_table function. See docstring for
		    `write_table` or `ParquetWriter` for more information.
		    Using `metadata_collector` in kwargs allows one to collect the
		    file metadata instances of dataset pieces. The file paths in the
		    ColumnChunkMetaData will be set relative to `root_path`.
	**/
	static public function write_to_dataset(table:Dynamic, root_path:Dynamic, ?partition_cols:Dynamic, ?partition_filename_cb:Dynamic, ?filesystem:Dynamic, ?use_legacy_dataset:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}