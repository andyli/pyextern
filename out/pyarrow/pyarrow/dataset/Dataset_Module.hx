/* This file is generated, do not edit! */
package pyarrow.dataset;
@:pythonImport("pyarrow.dataset") extern class Dataset_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(name:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _ensure_format(obj:Dynamic):Dynamic;
	/**
		Treat a list of paths as files belonging to a single file system
		
		If the file system is local then also validates that all paths
		are referencing existing *files* otherwise any non-file paths will be
		silently skipped (for example on a remote filesystem).
		
		Parameters
		----------
		paths : list of path-like
		    Note that URIs are not allowed.
		filesystem : FileSystem or str, optional
		    If an URI is passed, then its path component will act as a prefix for
		    the file paths.
		
		Returns
		-------
		(FileSystem, list of str)
		    File system object and a list of normalized paths.
		
		Raises
		------
		TypeError
		    If the passed filesystem has wrong type.
		IOError
		    If the file system is local and a referenced path is not available or
		    not a file.
	**/
	static public function _ensure_multiple_sources(paths:Dynamic, ?filesystem:Dynamic):Dynamic;
	/**
		Validate input and return a Partitioning(Factory).
		
		It passes None through if no partitioning scheme is defined.
	**/
	static public function _ensure_partitioning(scheme:Dynamic):Dynamic;
	/**
		Treat path as either a recursively traversable directory or a single file.
		
		Parameters
		----------
		path : path-like
		filesystem : FileSystem or str, optional
		    If an URI is passed, then its path component will act as a prefix for
		    the file paths.
		
		Returns
		-------
		(FileSystem, list of str or fs.Selector)
		    File system object and either a single item list pointing to a file or
		    an fs.Selector object pointing to a directory.
		
		Raises
		------
		TypeError
		    If the passed filesystem has wrong type.
		FileNotFoundError
		    If the referenced file or directory doesn't exist.
	**/
	static public function _ensure_single_source(path:Dynamic, ?filesystem:Dynamic):Dynamic;
	static public function _ensure_write_partitioning(part:Dynamic, schema:Dynamic, flavor:Dynamic):Dynamic;
	/**
		Create a FileSystemDataset which can be used to build a Dataset.
		
		Parameters are documented in the dataset function.
		
		Returns
		-------
		FileSystemDataset
	**/
	static public function _filesystem_dataset(source:Dynamic, ?schema:Dynamic, ?filesystem:Dynamic, ?partitioning:Dynamic, ?format:Dynamic, ?partition_base_dir:Dynamic, ?exclude_invalid_files:Dynamic, ?selector_ignore_prefixes:Dynamic):Dynamic;
	/**
		_filesystemdataset_write(Scanner data, base_dir, unicode basename_template, FileSystem filesystem, Partitioning partitioning, FileWriteOptions file_options, int max_partitions, file_visitor, unicode existing_data_behavior, int max_open_files, int max_rows_per_file, int min_rows_per_group, int max_rows_per_group)
		
		CFileSystemDataset.Write wrapper
	**/
	static public function _filesystemdataset_write(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_partition_keys(Expression partition_expression)
		
		Extract partition keys (equality constraints between a field and a scalar)
		from an expression as a dict mapping the field's name to its value.
		
		NB: All expressions yielded by a HivePartitioning or DirectoryPartitioning
		will be conjunctions of equality conditions and are accessible through this
		function. Other subexpressions will be ignored.
		
		For example, an expression of
		<pyarrow.dataset.Expression ((part == A:string) and (year == 2016:int32))>
		is converted to {'part': 'A', 'year': 2016}
	**/
	static public function _get_partition_keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _in_memory_dataset(source:Dynamic, ?schema:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _is_iterable(obj:Dynamic):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	static public var _orc_available : Dynamic;
	static public var _orc_msg : Dynamic;
	static public var _parquet_available : Dynamic;
	static public var _parquet_msg : Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	static public function _union_dataset(children:Dynamic, ?schema:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Open a dataset.
		
		Datasets provides functionality to efficiently work with tabular,
		potentially larger than memory and multi-file dataset.
		
		- A unified interface for different sources, like Parquet and Feather
		- Discovery of sources (crawling directories, handle directory-based
		  partitioned datasets, basic schema normalization)
		- Optimized reading with predicate pushdown (filtering rows), projection
		  (selecting columns), parallel reading or fine-grained managing of tasks.
		
		Note that this is the high-level API, to have more control over the dataset
		construction use the low-level API classes (FileSystemDataset,
		FilesystemDatasetFactory, etc.)
		
		Parameters
		----------
		source : path, list of paths, dataset, list of datasets, (list of) RecordBatch or Table, iterable of RecordBatch, RecordBatchReader, or URI
		    Path pointing to a single file:
		        Open a FileSystemDataset from a single file.
		    Path pointing to a directory:
		        The directory gets discovered recursively according to a
		        partitioning scheme if given.
		    List of file paths:
		        Create a FileSystemDataset from explicitly given files. The files
		        must be located on the same filesystem given by the filesystem
		        parameter.
		        Note that in contrary of construction from a single file, passing
		        URIs as paths is not allowed.
		    List of datasets:
		        A nested UnionDataset gets constructed, it allows arbitrary
		        composition of other datasets.
		        Note that additional keyword arguments are not allowed.
		    (List of) batches or tables, iterable of batches, or RecordBatchReader:
		        Create an InMemoryDataset. If an iterable or empty list is given,
		        a schema must also be given. If an iterable or RecordBatchReader
		        is given, the resulting dataset can only be scanned once; further
		        attempts will raise an error.
		schema : Schema, optional
		    Optionally provide the Schema for the Dataset, in which case it will
		    not be inferred from the source.
		format : FileFormat or str
		    Currently "parquet", "ipc"/"arrow"/"feather", "csv", and "orc" are
		    supported. For Feather, only version 2 files are supported.
		filesystem : FileSystem or URI string, default None
		    If a single path is given as source and filesystem is None, then the
		    filesystem will be inferred from the path.
		    If an URI string is passed, then a filesystem object is constructed
		    using the URI's optional path component as a directory prefix. See the
		    examples below.
		    Note that the URIs on Windows must follow 'file:///C:...' or
		    'file:/C:...' patterns.
		partitioning : Partitioning, PartitioningFactory, str, list of str
		    The partitioning scheme specified with the ``partitioning()``
		    function. A flavor string can be used as shortcut, and with a list of
		    field names a DirectionaryPartitioning will be inferred.
		partition_base_dir : str, optional
		    For the purposes of applying the partitioning, paths will be
		    stripped of the partition_base_dir. Files not matching the
		    partition_base_dir prefix will be skipped for partitioning discovery.
		    The ignored files will still be part of the Dataset, but will not
		    have partition information.
		exclude_invalid_files : bool, optional (default True)
		    If True, invalid files will be excluded (file format specific check).
		    This will incur IO for each files in a serial and single threaded
		    fashion. Disabling this feature will skip the IO, but unsupported
		    files may be present in the Dataset (resulting in an error at scan
		    time).
		ignore_prefixes : list, optional
		    Files matching any of these prefixes will be ignored by the
		    discovery process. This is matched to the basename of a path.
		    By default this is ['.', '_'].
		    Note that discovery happens only if a directory is passed as source.
		
		Returns
		-------
		dataset : Dataset
		    Either a FileSystemDataset or a UnionDataset depending on the source
		    parameter.
		
		Examples
		--------
		Opening a single file:
		
		>>> dataset("path/to/file.parquet", format="parquet")
		
		Opening a single file with an explicit schema:
		
		>>> dataset("path/to/file.parquet", schema=myschema, format="parquet")
		
		Opening a dataset for a single directory:
		
		>>> dataset("path/to/nyc-taxi/", format="parquet")
		>>> dataset("s3://mybucket/nyc-taxi/", format="parquet")
		
		Opening a dataset from a list of relatives local paths:
		
		>>> dataset([
		...     "part0/data.parquet",
		...     "part1/data.parquet",
		...     "part3/data.parquet",
		... ], format='parquet')
		
		With filesystem provided:
		
		>>> paths = [
		...     'part0/data.parquet',
		...     'part1/data.parquet',
		...     'part3/data.parquet',
		... ]
		>>> dataset(paths, filesystem='file:///directory/prefix, format='parquet')
		
		Which is equivalent with:
		
		>>> fs = SubTreeFileSystem("/directory/prefix", LocalFileSystem())
		>>> dataset(paths, filesystem=fs, format='parquet')
		
		With a remote filesystem URI:
		
		>>> paths = [
		...     'nested/directory/part0/data.parquet',
		...     'nested/directory/part1/data.parquet',
		...     'nested/directory/part3/data.parquet',
		... ]
		>>> dataset(paths, filesystem='s3://bucket/', format='parquet')
		
		Similarly to the local example, the directory prefix may be included in the
		filesystem URI:
		
		>>> dataset(paths, filesystem='s3://bucket/nested/directory',
		...         format='parquet')
		
		Construction of a nested dataset:
		
		>>> dataset([
		...     dataset("s3://old-taxi-data", format="parquet"),
		...     dataset("local/path/to/data", format="ipc")
		... ])
	**/
	static public function dataset(source:Dynamic, ?schema:Dynamic, ?format:Dynamic, ?filesystem:Dynamic, ?partitioning:Dynamic, ?partition_base_dir:Dynamic, ?exclude_invalid_files:Dynamic, ?ignore_prefixes:Dynamic):Dynamic;
	/**
		Reference a named column of the dataset.
		
		Stores only the field's name. Type and other information is known only when
		the expression is bound to a dataset having an explicit scheme.
		
		Parameters
		----------
		name : string
		    The name of the field the expression references to.
		
		Returns
		-------
		field_expr : Expression
	**/
	static public function field(name:Dynamic):Dynamic;
	/**
		Create a FileSystemDataset from a `_metadata` file created via
		`pyarrrow.parquet.write_metadata`.
		
		Parameters
		----------
		metadata_path : path,
		    Path pointing to a single file parquet metadata file
		schema : Schema, optional
		    Optionally provide the Schema for the Dataset, in which case it will
		    not be inferred from the source.
		filesystem : FileSystem or URI string, default None
		    If a single path is given as source and filesystem is None, then the
		    filesystem will be inferred from the path.
		    If an URI string is passed, then a filesystem object is constructed
		    using the URI's optional path component as a directory prefix. See the
		    examples below.
		    Note that the URIs on Windows must follow 'file:///C:...' or
		    'file:/C:...' patterns.
		format : ParquetFileFormat
		    An instance of a ParquetFileFormat if special options needs to be
		    passed.
		partitioning : Partitioning, PartitioningFactory, str, list of str
		    The partitioning scheme specified with the ``partitioning()``
		    function. A flavor string can be used as shortcut, and with a list of
		    field names a DirectionaryPartitioning will be inferred.
		partition_base_dir : str, optional
		    For the purposes of applying the partitioning, paths will be
		    stripped of the partition_base_dir. Files not matching the
		    partition_base_dir prefix will be skipped for partitioning discovery.
		    The ignored files will still be part of the Dataset, but will not
		    have partition information.
		
		Returns
		-------
		FileSystemDataset
	**/
	static public function parquet_dataset(metadata_path:Dynamic, ?schema:Dynamic, ?filesystem:Dynamic, ?format:Dynamic, ?partitioning:Dynamic, ?partition_base_dir:Dynamic):Dynamic;
	/**
		Specify a partitioning scheme.
		
		The supported schemes include:
		
		- "DirectoryPartitioning": this scheme expects one segment in the file path
		  for each field in the specified schema (all fields are required to be
		  present). For example given schema<year:int16, month:int8> the path
		  "/2009/11" would be parsed to ("year"_ == 2009 and "month"_ == 11).
		- "HivePartitioning": a scheme for "/$key=$value/" nested directories as
		  found in Apache Hive. This is a multi-level, directory based partitioning
		  scheme. Data is partitioned by static values of a particular column in
		  the schema. Partition keys are represented in the form $key=$value in
		  directory names. Field order is ignored, as are missing or unrecognized
		  field names.
		  For example, given schema<year:int16, month:int8, day:int8>, a possible
		  path would be "/year=2009/month=11/day=15" (but the field order does not
		  need to match).
		
		Parameters
		----------
		schema : pyarrow.Schema, default None
		    The schema that describes the partitions present in the file path.
		    If not specified, and `field_names` and/or `flavor` are specified,
		    the schema will be inferred from the file path (and a
		    PartitioningFactory is returned).
		field_names :  list of str, default None
		    A list of strings (field names). If specified, the schema's types are
		    inferred from the file paths (only valid for DirectoryPartitioning).
		flavor : str, default None
		    The default is DirectoryPartitioning. Specify ``flavor="hive"`` for
		    a HivePartitioning.
		dictionaries : dict[str, Array]
		    If the type of any field of `schema` is a dictionary type, the
		    corresponding entry of `dictionaries` must be an array containing
		    every value which may be taken by the corresponding column or an
		    error will be raised in parsing. Alternatively, pass `infer` to have
		    Arrow discover the dictionary values, in which case a
		    PartitioningFactory is returned.
		
		Returns
		-------
		Partitioning or PartitioningFactory
		
		Examples
		--------
		
		Specify the Schema for paths like "/2009/June":
		
		>>> partitioning(pa.schema([("year", pa.int16()), ("month", pa.string())]))
		
		or let the types be inferred by only specifying the field names:
		
		>>> partitioning(field_names=["year", "month"])
		
		For paths like "/2009/June", the year will be inferred as int32 while month
		will be inferred as string.
		
		Specify a Schema with dictionary encoding, providing dictionary values:
		
		>>> partitioning(
		...     pa.schema([
		...         ("year", pa.int16()),
		...         ("month", pa.dictionary(pa.int8(), pa.string()))
		...     ]),
		...     dictionaries={
		...         "month": pa.array(["January", "February", "March"]),
		...     })
		
		Alternatively, specify a Schema with dictionary encoding, but have Arrow
		infer the dictionary values:
		
		>>> partitioning(
		...     pa.schema([
		...         ("year", pa.int16()),
		...         ("month", pa.dictionary(pa.int8(), pa.string()))
		...     ]),
		...     dictionaries="infer")
		
		Create a Hive scheme for a path like "/year=2009/month=11":
		
		>>> partitioning(
		...     pa.schema([("year", pa.int16()), ("month", pa.int8())]),
		...     flavor="hive")
		
		A Hive scheme can also be discovered from the directory structure (and
		types will be inferred):
		
		>>> partitioning(flavor="hive")
	**/
	static public function partitioning(?schema:Dynamic, ?field_names:Dynamic, ?flavor:Dynamic, ?dictionaries:Dynamic):Dynamic;
	/**
		Expression representing a scalar value.
		
		Parameters
		----------
		value : bool, int, float or string
		    Python value of the scalar. Note that only a subset of types are
		    currently supported.
		
		Returns
		-------
		scalar_expr : Expression
	**/
	static public function scalar(value:Dynamic):Dynamic;
	/**
		Write a dataset to a given format and partitioning.
		
		Parameters
		----------
		data : Dataset, Table/RecordBatch, RecordBatchReader, list of Table/RecordBatch, or iterable of RecordBatch
		    The data to write. This can be a Dataset instance or
		    in-memory Arrow data. If an iterable is given, the schema must
		    also be given.
		base_dir : str
		    The root directory where to write the dataset.
		basename_template : str, optional
		    A template string used to generate basenames of written data files.
		    The token '{i}' will be replaced with an automatically incremented
		    integer. If not specified, it defaults to
		    "part-{i}." + format.default_extname
		format : FileFormat or str
		    The format in which to write the dataset. Currently supported:
		    "parquet", "ipc"/"arrow"/"feather", and "csv". If a FileSystemDataset
		    is being written and `format` is not specified, it defaults to the
		    same format as the specified FileSystemDataset. When writing a
		    Table or RecordBatch, this keyword is required.
		partitioning : Partitioning or list[str], optional
		    The partitioning scheme specified with the ``partitioning()``
		    function or a list of field names. When providing a list of
		    field names, you can use ``partitioning_flavor`` to drive which
		    partitioning type should be used.
		partitioning_flavor : str, optional
		    One of the partitioning flavors supported by
		    ``pyarrow.dataset.partitioning``. If omitted will use the
		    default of ``partitioning()`` which is directory partitioning.
		schema : Schema, optional
		filesystem : FileSystem, optional
		file_options : pyarrow.dataset.FileWriteOptions, optional
		    FileFormat specific write options, created using the
		    ``FileFormat.make_write_options()`` function.
		use_threads : bool, default True
		    Write files in parallel. If enabled, then maximum parallelism will be
		    used determined by the number of available CPU cores.
		max_partitions : int, default 1024
		    Maximum number of partitions any batch may be written into.
		max_open_files : int, default 1024
		    If greater than 0 then this will limit the maximum number of
		    files that can be left open. If an attempt is made to open
		    too many files then the least recently used file will be closed.
		    If this setting is set too low you may end up fragmenting your
		    data into many small files.
		max_rows_per_file : int, default 0
		    Maximum number of rows per file. If greater than 0 then this will
		    limit how many rows are placed in any single file. Otherwise there
		    will be no limit and one file will be created in each output
		    directory unless files need to be closed to respect max_open_files
		min_rows_per_group : int, default 0
		    Minimum number of rows per group. When the value is greater than 0,
		    the dataset writer will batch incoming data and only write the row
		    groups to the disk when sufficient rows have accumulated.
		max_rows_per_group : int, default 1024 * 1024
		    Maximum number of rows per group. If the value is greater than 0,
		    then the dataset writer may split up large incoming batches into
		    multiple row groups.  If this value is set, then min_rows_per_group
		    should also be set. Otherwise it could end up with very small row
		    groups.
		file_visitor : function
		    If set, this function will be called with a WrittenFile instance
		    for each file created during the call.  This object will have both
		    a path attribute and a metadata attribute.
		
		    The path attribute will be a string containing the path to
		    the created file.
		
		    The metadata attribute will be the parquet metadata of the file.
		    This metadata will have the file path attribute set and can be used
		    to build a _metadata file.  The metadata attribute will be None if
		    the format is not parquet.
		
		    Example visitor which simple collects the filenames created::
		
		        visited_paths = []
		
		        def file_visitor(written_file):
		            visited_paths.append(written_file.path)
		existing_data_behavior : 'error' | 'overwrite_or_ignore' | 'delete_matching'
		    Controls how the dataset will handle data that already exists in
		    the destination.  The default behavior ('error') is to raise an error
		    if any data exists in the destination.
		
		    'overwrite_or_ignore' will ignore any existing data and will
		    overwrite files with the same name as an output file.  Other
		    existing files will be ignored.  This behavior, in combination
		    with a unique basename_template for each write, will allow for
		    an append workflow.
		
		    'delete_matching' is useful when you are writing a partitioned
		    dataset.  The first time each partition directory is encountered
		    the entire directory will be deleted.  This allows you to overwrite
		    old partitions completely.
	**/
	static public function write_dataset(data:Dynamic, base_dir:Dynamic, ?basename_template:Dynamic, ?format:Dynamic, ?partitioning:Dynamic, ?partitioning_flavor:Dynamic, ?schema:Dynamic, ?filesystem:Dynamic, ?file_options:Dynamic, ?use_threads:Dynamic, ?max_partitions:Dynamic, ?max_open_files:Dynamic, ?max_rows_per_file:Dynamic, ?min_rows_per_group:Dynamic, ?max_rows_per_group:Dynamic, ?file_visitor:Dynamic, ?existing_data_behavior:Dynamic):Dynamic;
}