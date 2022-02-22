/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib") extern class Lib_Module {
	static public var DEFAULT_BUFFER_SIZE : Dynamic;
	static public var NA : Dynamic;
	static public var Type_BINARY : Dynamic;
	static public var Type_BOOL : Dynamic;
	static public var Type_DATE32 : Dynamic;
	static public var Type_DATE64 : Dynamic;
	static public var Type_DECIMAL128 : Dynamic;
	static public var Type_DECIMAL256 : Dynamic;
	static public var Type_DENSE_UNION : Dynamic;
	static public var Type_DICTIONARY : Dynamic;
	static public var Type_DOUBLE : Dynamic;
	static public var Type_DURATION : Dynamic;
	static public var Type_FIXED_SIZE_BINARY : Dynamic;
	static public var Type_FIXED_SIZE_LIST : Dynamic;
	static public var Type_FLOAT : Dynamic;
	static public var Type_HALF_FLOAT : Dynamic;
	static public var Type_INT16 : Dynamic;
	static public var Type_INT32 : Dynamic;
	static public var Type_INT64 : Dynamic;
	static public var Type_INT8 : Dynamic;
	static public var Type_INTERVAL_MONTH_DAY_NANO : Dynamic;
	static public var Type_LARGE_BINARY : Dynamic;
	static public var Type_LARGE_LIST : Dynamic;
	static public var Type_LARGE_STRING : Dynamic;
	static public var Type_LIST : Dynamic;
	static public var Type_MAP : Dynamic;
	static public var Type_NA : Dynamic;
	static public var Type_SPARSE_UNION : Dynamic;
	static public var Type_STRING : Dynamic;
	static public var Type_STRUCT : Dynamic;
	static public var Type_TIME32 : Dynamic;
	static public var Type_TIME64 : Dynamic;
	static public var Type_TIMESTAMP : Dynamic;
	static public var Type_UINT16 : Dynamic;
	static public var Type_UINT32 : Dynamic;
	static public var Type_UINT64 : Dynamic;
	static public var Type_UINT8 : Dynamic;
	static public var UnionMode_DENSE : Dynamic;
	static public var UnionMode_SPARSE : Dynamic;
	static public var V1 : Dynamic;
	static public var V2 : Dynamic;
	static public var V3 : Dynamic;
	static public var V4 : Dynamic;
	static public var V5 : Dynamic;
	static public var _NULL : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	/**
		__pyx_unpickle_SerializationContext(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle_SerializationContext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle__PandasAPIShim(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle__PandasAPIShim(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__pyx_unpickle__PandasConvertible(__pyx_type, long __pyx_checksum, __pyx_state)
	**/
	static public function __pyx_unpickle__PandasConvertible(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle___Pyx_EnumMeta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _break_traceback_cycle_from_frame(frame:Dynamic):Dynamic;
	/**
		_datetime_from_int(int64_t value, TimeUnit unit, tzinfo=None)
	**/
	static public function _datetime_from_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _default_context_initialized : Dynamic;
	static public var _default_serialization_context : Dynamic;
	/**
		_deprecate_serialization(name)
	**/
	static public function _deprecate_serialization(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_deserialize(obj, SerializationContext context=None)
	**/
	static public function _deserialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_detect_compression(path)
	**/
	static public function _detect_compression(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_empty_array(DataType type)
		
		Create empty array of the given type.
	**/
	static public function _empty_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_from_pydict(cls, mapping, schema, metadata)
		
		Construct a Table/RecordBatch from Arrow arrays or columns.
		
		Parameters
		----------
		cls : Class Table/RecordBatch
		mapping : dict or Mapping
		    A mapping of strings to Arrays or Python lists.
		schema : Schema, default None
		    If not passed, will be inferred from the Mapping values.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		Table/RecordBatch
	**/
	static public function _from_pydict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_from_pylist(cls, mapping, schema, metadata)
		
		Construct a Table/RecordBatch from list of rows / dictionaries.
		
		Parameters
		----------
		cls : Class Table/RecordBatch
		mapping : list of dicts of rows
		    A mapping of strings to row values.
		schema : Schema, default None
		    If not passed, will be inferred from the first row of the
		    mapping values.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		Table/RecordBatch
	**/
	static public function _from_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_gdb_test_session()
	**/
	static public function _gdb_test_session(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_get_default_context()
	**/
	static public function _get_default_context(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_handle_arrow_array_protocol(obj, type, mask, size)
	**/
	static public function _handle_arrow_array_protocol(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_path_like(path:Dynamic):Dynamic;
	/**
		_is_primitive(Type type)
	**/
	static public function _is_primitive(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_ndarray_to_arrow_type(values, DataType type)
	**/
	static public function _ndarray_to_arrow_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_normalize_slice(arrow_obj, slice key)
		
		Slices with step not equal to 1 (or None) will produce a copy
		rather than a zero-copy view
	**/
	static public function _normalize_slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _pandas_api : Dynamic;
	/**
		_pc()
	**/
	static public function _pc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _python_extension_types_registry : Dynamic;
	/**
		_read_serialized(source, base=None)
	**/
	static public function _read_serialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_reconstruct_record_batch(columns, schema)
		
		Internal: reconstruct RecordBatch from pickled components.
	**/
	static public function _reconstruct_record_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_reconstruct_table(arrays, schema)
		
		Internal: reconstruct pa.Table from pickled components.
	**/
	static public function _reconstruct_table(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_register_py_extension_type()
	**/
	static public function _register_py_extension_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _registry_nanny : Dynamic;
	/**
		_restore_array(data)
		
		Reconstruct an Array from pickled ArrayData.
	**/
	static public function _restore_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_serialize(value, SerializationContext context=None)
	**/
	static public function _serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert *path* to a string or unicode path if possible.
	**/
	static public function _stringify_path(path:Dynamic):Dynamic;
	/**
		_unregister_py_extension_types()
	**/
	static public function _unregister_py_extension_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		allocate_buffer(int64_t size, MemoryPool memory_pool=None, resizable=False)
		
		Allocate a mutable buffer.
		
		Parameters
		----------
		size : int
		    Number of bytes to allocate (plus internal padding)
		memory_pool : MemoryPool, optional
		    The pool to allocate memory from.
		    If not given, the default memory pool is used.
		resizable : bool, default False
		    If true, the returned buffer is resizable.
		
		Returns
		-------
		buffer : Buffer or ResizableBuffer
	**/
	static public function allocate_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		array(obj, type=None, mask=None, size=None, from_pandas=None, bool safe=True, MemoryPool memory_pool=None)
		
		Create pyarrow.Array instance from a Python object.
		
		Parameters
		----------
		obj : sequence, iterable, ndarray or pandas.Series
		    If both type and size are specified may be a single use iterable. If
		    not strongly-typed, Arrow type will be inferred for resulting array.
		type : pyarrow.DataType
		    Explicit type to attempt to coerce to, otherwise will be inferred from
		    the data.
		mask : array[bool], optional
		    Indicate which values are null (True) or not null (False).
		size : int64, optional
		    Size of the elements. If the input is larger than size bail at this
		    length. For iterators, if size is larger than the input iterator this
		    will be treated as a "max size", but will involve an initial allocation
		    of size followed by a resize to the actual size (so if you know the
		    exact size specifying it correctly will give you better performance).
		from_pandas : bool, default None
		    Use pandas's semantics for inferring nulls from values in
		    ndarray-like data. If passed, the mask tasks precedence, but
		    if a value is unmasked (not-null), but still null according to
		    pandas semantics, then it is null. Defaults to False if not
		    passed explicitly by user, or True if a pandas object is
		    passed in.
		safe : bool, default True
		    Check for overflows or other unsafe conversions.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the currently-set default
		    memory pool.
		
		Returns
		-------
		array : pyarrow.Array or pyarrow.ChunkedArray
		    A ChunkedArray instead of an Array is returned if:
		
		    - the object data overflowed binary storage.
		    - the object's ``__arrow_array__`` protocol method returned a chunked
		      array.
		
		Notes
		-----
		Timezone will be preserved in the returned array for timezone-aware data,
		else no timezone will be returned for naive timestamps.
		Internally, UTC values are stored for timezone-aware data with the
		timezone set in the data type.
		
		Pandas's DateOffsets and dateutil.relativedelta.relativedelta are by
		default converted as MonthDayNanoIntervalArray. relativedelta leapdays
		are ignored as are all absolute fields on both objects. datetime.timedelta
		can also be converted to MonthDayNanoIntervalArray but this requires
		passing MonthDayNanoIntervalType explicitly.
		
		Converting to dictionary array will promote to a wider integer type for
		indices if the number of distinct values cannot be represented, even if
		the index type was explicitly set. This means that if there are more than
		127 values the returned dictionary array's index type will be at least
		pa.int16() even if pa.int8() was passed to the function. Note that an
		explicit index type will not be demoted even if it is wider than required.
		
		Examples
		--------
		>>> import pandas as pd
		>>> import pyarrow as pa
		>>> pa.array(pd.Series([1, 2]))
		<pyarrow.lib.Int64Array object at 0x7f674e4c0e10>
		[
		  1,
		  2
		]
		
		>>> pa.array(["a", "b", "a"], type=pa.dictionary(pa.int8(), pa.string()))
		<pyarrow.lib.DictionaryArray object at 0x7feb288d9040>
		-- dictionary:
		[
		  "a",
		  "b"
		]
		-- indices:
		[
		  0,
		  1,
		  0
		]
		
		>>> import numpy as np
		>>> pa.array(pd.Series([1, 2]), mask=np.array([0, 1], dtype=bool))
		<pyarrow.lib.Int64Array object at 0x7f9019e11208>
		[
		  1,
		  null
		]
		
		>>> arr = pa.array(range(1024), type=pa.dictionary(pa.int8(), pa.int64()))
		>>> arr.type.index_type
		DataType(int16)
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		as_buffer(o)
	**/
	static public function as_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		asarray(values, type=None)
		
		Convert to pyarrow.Array, inferring type if not provided.
		
		Parameters
		----------
		values : array-like
		    This can be a sequence, numpy.ndarray, pyarrow.Array or
		    pyarrow.ChunkedArray. If a ChunkedArray is passed, the output will be
		    a ChunkedArray, otherwise the output will be a Array.
		type : string or DataType
		    Explicitly construct the array with this type. Attempt to cast if
		    indicated type is different.
		
		Returns
		-------
		arr : Array or ChunkedArray
	**/
	static public function asarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		benchmark_PandasObjectIsNull(list obj)
	**/
	static public function benchmark_PandasObjectIsNull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		binary(int length=-1)
		
		Create variable-length binary type.
		
		Parameters
		----------
		length : int, optional, default -1
		    If length == -1 then return a variable length binary type. If length is
		    greater than or equal to 0 then return a fixed size binary type of
		    width `length`.
	**/
	static public function binary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		bool_()
		
		Create instance of boolean type.
	**/
	static public function bool_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		chunked_array(arrays, type=None)
		
		Construct chunked array from list of array-like objects
		
		Parameters
		----------
		arrays : Array, list of Array, or array-like
		    Must all be the same data type. Can be empty only if type also passed.
		type : DataType or string coercible to DataType
		
		Returns
		-------
		ChunkedArray
	**/
	static public function chunked_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		compress(buf, codec=u'lz4', asbytes=False, memory_pool=None)
		
		Compress data from buffer-like object.
		
		Parameters
		----------
		buf : pyarrow.Buffer, bytes, or other object supporting buffer protocol
		codec : str, default 'lz4'
		    Compression codec.
		    Supported types: {'brotli, 'gzip', 'lz4', 'lz4_raw', 'snappy', 'zstd'}
		asbytes : bool, default False
		    Return result as Python bytes object, otherwise Buffer.
		memory_pool : MemoryPool, default None
		    Memory pool to use for buffer allocations, if any.
		
		Returns
		-------
		compressed : pyarrow.Buffer or bytes (if asbytes=True)
	**/
	static public function compress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		concat_arrays(arrays, MemoryPool memory_pool=None)
		
		Concatenate the given arrays.
		
		The contents of the input arrays are copied into the returned array.
		
		Raises
		------
		ArrowInvalid
		    If not all of the arrays have the same type.
		
		Parameters
		----------
		arrays : iterable of pyarrow.Array
		    Arrays to concatenate, must be identically typed.
		memory_pool : MemoryPool, default None
		    For memory allocations. If None, the default pool is used.
	**/
	static public function concat_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	static public var cpp_build_info : Dynamic;
	static public var cpp_version : Dynamic;
	static public var cpp_version_info : Dynamic;
	/**
		cpu_count()
		
		Return the number of threads to use in parallel operations.
		
		The number of threads is determined at startup by inspecting the
		``OMP_NUM_THREADS`` and ``OMP_THREAD_LIMIT`` environment variables.
		If neither is present, it will default to the number of hardware threads
		on the system. It can be modified at runtime by calling
		:func:`set_cpu_count()`.
		
		See Also
		--------
		set_cpu_count : Modify the size of this pool.
		io_thread_count : The analogous function for the I/O thread pool.
	**/
	static public function cpu_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		create_memory_map(path, size)
		
		Create a file of the given size and memory-map it.
		
		Parameters
		----------
		path : str
		    The file path to create, on the local filesystem.
		size : int
		    The file size to create.
		
		Returns
		-------
		mmap : MemoryMappedFile
	**/
	static public function create_memory_map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		date32()
		
		Create instance of 32-bit date (days since UNIX epoch 1970-01-01).
	**/
	static public function date32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		date64()
		
		Create instance of 64-bit date (milliseconds since UNIX epoch 1970-01-01).
	**/
	static public function date64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		decimal128(int precision, int scale=0) -> DataType
		
		Create decimal type with precision and scale and 128-bit width.
		
		Arrow decimals are fixed-point decimal numbers encoded as a scaled
		integer.  The precision is the number of significant digits that the
		decimal type can represent; the scale is the number of digits after
		the decimal point (note the scale can be negative).
		
		As an example, ``decimal128(7, 3)`` can exactly represent the numbers
		1234.567 and -1234.567 (encoded internally as the 128-bit integers
		1234567 and -1234567, respectively), but neither 12345.67 nor 123.4567.
		
		``decimal128(5, -3)`` can exactly represent the number 12345000
		(encoded internally as the 128-bit integer 12345), but neither
		123450000 nor 1234500.
		
		If you need a precision higher than 38 significant digits, consider
		using ``decimal256``.
		
		Parameters
		----------
		precision : int
		    Must be between 1 and 38
		scale : int
		
		Returns
		-------
		decimal_type : Decimal128Type
	**/
	static public function decimal128(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		decimal256(int precision, int scale=0) -> DataType
		
		Create decimal type with precision and scale and 256-bit width.
		
		Arrow decimals are fixed-point decimal numbers encoded as a scaled
		integer.  The precision is the number of significant digits that the
		decimal type can represent; the scale is the number of digits after
		the decimal point (note the scale can be negative).
		
		For most use cases, the maximum precision offered by ``decimal128``
		is sufficient, and it will result in a more compact and more efficient
		encoding.  ``decimal256`` is useful if you need a precision higher
		than 38 significant digits.
		
		Parameters
		----------
		precision : int
		    Must be between 1 and 76
		scale : int
		
		Returns
		-------
		decimal_type : Decimal256Type
	**/
	static public function decimal256(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		decompress(buf, decompressed_size=None, codec=u'lz4', asbytes=False, memory_pool=None)
		
		Decompress data from buffer-like object.
		
		Parameters
		----------
		buf : pyarrow.Buffer, bytes, or memoryview-compatible object
		    Input object to decompress data from.
		decompressed_size : int, default None
		    If not specified, will be computed if the codec is able to determine
		    the uncompressed buffer size.
		codec : str, default 'lz4'
		    Compression codec.
		    Supported types: {'brotli, 'gzip', 'lz4', 'lz4_raw', 'snappy', 'zstd'}
		asbytes : bool, default False
		    Return result as Python bytes object, otherwise Buffer.
		memory_pool : MemoryPool, default None
		    Memory pool to use for buffer allocations, if any.
		
		Returns
		-------
		uncompressed : pyarrow.Buffer or bytes (if asbytes=True)
	**/
	static public function decompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		default_memory_pool()
		
		Return the process-global memory pool.
	**/
	static public function default_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dense_union(child_fields, type_codes=None)
		
		Create DenseUnionType from child fields.
		
		A dense union is a nested type where each logical value is taken from
		a single child, at a specific offset.  A buffer of 8-bit type ids
		indicates which child a given logical value is to be taken from,
		and a buffer of 32-bit offsets indicates at which physical position
		in the given child array the logical value is to be taken from.
		
		Unlike a sparse union, a dense union allows encoding only the child array
		values which are actually referred to by the union array.  This is
		counterbalanced by the additional footprint of the offsets buffer, and
		the additional indirection cost when looking up values.
		
		Parameters
		----------
		child_fields : sequence of Field values
		    Each field must have a UTF8-encoded name, and these field names are
		    part of the type metadata.
		type_codes : list of integers, default None
		
		Returns
		-------
		type : DenseUnionType
	**/
	static public function dense_union(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deserialize(obj, SerializationContext context=None)
		
		DEPRECATED: Deserialize Python object from Buffer or other Python
		object supporting the buffer protocol.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		This only can interact with data produced by pyarrow.serialize or
		pyarrow.serialize_to.
		
		Parameters
		----------
		obj : pyarrow.Buffer or Python object supporting buffer protocol
		context : SerializationContext
		    Custom serialization and deserialization context.
		
		Returns
		-------
		deserialized : object
	**/
	static public function deserialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deserialize_components(components, SerializationContext context=None)
		
		DEPRECATED: Reconstruct Python object from output of
		SerializedPyObject.to_components.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		Parameters
		----------
		components : dict
		    Output of SerializedPyObject.to_components
		context : SerializationContext, default None
		
		Returns
		-------
		object : the Python object that was originally serialized
	**/
	static public function deserialize_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		deserialize_from(source, base, SerializationContext context=None)
		
		DEPRECATED: Deserialize a Python sequence from a file.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		This only can interact with data produced by pyarrow.serialize or
		pyarrow.serialize_to.
		
		Parameters
		----------
		source : NativeFile
		    File to read the sequence from.
		base : object
		    This object will be the base object of all the numpy arrays
		    contained in the sequence.
		context : SerializationContext
		    Custom serialization and deserialization context.
		
		Returns
		-------
		object
		    Python object for the deserialized sequence.
	**/
	static public function deserialize_from(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		dictionary(index_type, value_type, bool ordered=False) -> DictionaryType
		
		Dictionary (categorical, or simply encoded) type.
		
		Parameters
		----------
		index_type : DataType
		value_type : DataType
		ordered : bool
		
		Returns
		-------
		type : DictionaryType
	**/
	static public function dictionary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		duration(unit)
		
		Create instance of a duration type with unit resolution.
		
		Parameters
		----------
		unit : str
		    One of 's' [second], 'ms' [millisecond], 'us' [microsecond], or
		    'ns' [nanosecond].
		
		Returns
		-------
		type : pyarrow.DurationType
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.duration('us')
		DurationType(duration[us])
		>>> pa.duration('s')
		DurationType(duration[s])
	**/
	static public function duration(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		enable_signal_handlers(bool enable)
		
		Enable or disable interruption of long-running operations.
		
		By default, certain long running operations will detect user
		interruptions, such as by pressing Ctrl-C.  This detection relies
		on setting a signal handler for the duration of the long-running
		operation, and may therefore interfere with other frameworks or
		libraries (such as an event loop).
		
		Parameters
		----------
		enable : bool
		    Whether to enable user interruption by setting a temporary
		    signal handler.
	**/
	static public function enable_signal_handlers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		encode_file_path(path)
	**/
	static public function encode_file_path(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ensure_type(ty, bool allow_none=False) -> DataType
	**/
	static public function ensure_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		field(name, type, bool nullable=True, metadata=None)
		
		Create a pyarrow.Field instance.
		
		Parameters
		----------
		name : str or bytes
		    Name of the field.
		type : pyarrow.DataType
		    Arrow datatype of the field.
		nullable : bool, default True
		    Whether the field's values are nullable.
		metadata : dict, default None
		    Optional field metadata, the keys and values must be coercible to
		    bytes.
		
		Returns
		-------
		field : pyarrow.Field
	**/
	static public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float16()
		
		Create half-precision floating point type.
	**/
	static public function float16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float32()
		
		Create single-precision floating point type.
	**/
	static public function float32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float64()
		
		Create double-precision floating point type.
	**/
	static public function float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		foreign_buffer(address, size, base=None)
		
		Construct an Arrow buffer with the given *address* and *size*.
		
		The buffer will be optionally backed by the Python *base* object, if given.
		The *base* object will be kept alive as long as this buffer is alive,
		including across language boundaries (for example if the buffer is
		referenced by C++ code).
		
		Parameters
		----------
		address : int
		    The starting address of the buffer. The address can
		    refer to both device or host memory but it must be
		    accessible from device after mapping it with
		    `get_device_address` method.
		size : int
		    The size of device buffer in bytes.
		base : {None, object}
		    Object that owns the referenced memory.
	**/
	static public function foreign_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		from_numpy_dtype(dtype)
		
		Convert NumPy dtype to pyarrow.DataType.
		
		Parameters
		----------
		dtype : the numpy dtype to convert
	**/
	static public function from_numpy_dtype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		frombytes(o, *, safe=False)
		
		Decode the given bytestring to unicode.
		
		Parameters
		----------
		o : bytes-like
		    Input object.
		safe : bool, default False
		    If true, raise on encoding errors.
	**/
	static public function frombytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_record_batch_size(RecordBatch batch)
		
		Return total size of serialized RecordBatch including metadata and padding.
		
		Parameters
		----------
		batch : RecordBatch
		    The recordbatch for which we want to know the size.
	**/
	static public function get_record_batch_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		get_tensor_size(Tensor tensor)
		
		Return total size of serialized Tensor including metadata and padding.
		
		Parameters
		----------
		tensor : Tensor
		    The tensor for which we want to known the size.
	**/
	static public function get_tensor_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var have_signal_refcycle : Dynamic;
	/**
		infer_type(values, mask=None, from_pandas=False)
		
		Attempt to infer Arrow data type that can hold the passed Python
		sequence type in an Array object
		
		Parameters
		----------
		values : array-like
		    Sequence to infer type from.
		mask : ndarray (bool type), optional
		    Optional exclusion mask where True marks null, False non-null.
		from_pandas : bool, default False
		    Use pandas's NA/null sentinel values for type inference.
		
		Returns
		-------
		type : DataType
	**/
	static public function infer_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		input_stream(source, compression=u'detect', buffer_size=None)
		
		Create an Arrow input stream.
		
		Parameters
		----------
		source : str, Path, buffer, file-like object, ...
		    The source to open for reading.
		compression : str optional, default 'detect'
		    The compression algorithm to use for on-the-fly decompression.
		    If "detect" and source is a file path, then compression will be
		    chosen based on the file extension.
		    If None, no compression will be applied.
		    Otherwise, a well-known algorithm name must be supplied (e.g. "gzip").
		buffer_size : int, default None
		    If None or 0, no buffering will happen. Otherwise the size of the
		    temporary read buffer.
	**/
	static public function input_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int16()
		
		Create instance of signed int16 type.
	**/
	static public function int16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int32()
		
		Create instance of signed int32 type.
	**/
	static public function int32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int64()
		
		Create instance of signed int64 type.
	**/
	static public function int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		int8()
		
		Create instance of signed int8 type.
	**/
	static public function int8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		io_thread_count()
		
		Return the number of threads to use for I/O operations.
		
		Many operations, such as scanning a dataset, will implicitly make
		use of this pool. The number of threads is set to a fixed value at
		startup. It can be modified at runtime by calling
		:func:`set_io_thread_count()`.
		
		See Also
		--------
		set_io_thread_count : Modify the size of this pool.
		cpu_count : The analogous function for the CPU thread pool.
	**/
	static public function io_thread_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_boolean_value(obj)
		
		Check if the object is a boolean.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_boolean_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_float_value(obj)
		
		Check if the object is a float.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_float_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_integer_value(obj)
		
		Check if the object is an integer.
		
		Parameters
		----------
		obj : object
		    The object to check
	**/
	static public function is_integer_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		is_named_tuple(cls)
		
		Return True if cls is a namedtuple and False otherwise.
	**/
	static public function is_named_tuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jemalloc_memory_pool()
		
		Return a memory pool based on the jemalloc heap.
		
		NotImplementedError is raised if jemalloc support is not enabled.
	**/
	static public function jemalloc_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		jemalloc_set_decay_ms(decay_ms)
		
		Set arenas.dirty_decay_ms and arenas.muzzy_decay_ms to indicated number of
		milliseconds. A value of 0 (the default) results in dirty / muzzy memory
		pages being released right away to the OS, while a higher value will result
		in a time-based decay. See the jemalloc docs for more information
		
		It's best to set this at the start of your application.
		
		Parameters
		----------
		decay_ms : int
		    Number of milliseconds to set for jemalloc decay conf parameters. Note
		    that this change will only affect future memory arenas
	**/
	static public function jemalloc_set_decay_ms(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		large_binary()
		
		Create large variable-length binary type.
		
		This data type may not be supported by all Arrow implementations.  Unless
		you need to represent data larger than 2GB, you should prefer binary().
	**/
	static public function large_binary(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		large_list(value_type) -> LargeListType
		
		Create LargeListType instance from child data type or field.
		
		This data type may not be supported by all Arrow implementations.
		Unless you need to represent data larger than 2**31 elements, you should
		prefer list_().
		
		Parameters
		----------
		value_type : DataType or Field
		
		Returns
		-------
		list_type : DataType
	**/
	static public function large_list(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		large_string()
		
		Create large UTF8 variable-length string type.
		
		This data type may not be supported by all Arrow implementations.  Unless
		you need to represent data larger than 2GB, you should prefer string().
	**/
	static public function large_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		large_utf8()
		
		Alias for large_string().
	**/
	static public function large_utf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list_(value_type, int list_size=-1)
		
		Create ListType instance from child data type or field.
		
		Parameters
		----------
		value_type : DataType or Field
		list_size : int, optional, default -1
		    If length == -1 then return a variable length list type. If length is
		    greater than or equal to 0 then return a fixed size list type.
		
		Returns
		-------
		list_type : DataType
	**/
	static public function list_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		log_memory_allocations(enable=True)
		
		Enable or disable memory allocator logging for debugging purposes
		
		Parameters
		----------
		enable : bool, default True
		    Pass False to disable logging
	**/
	static public function log_memory_allocations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		logging_memory_pool(MemoryPool parent)
		
		Create and return a MemoryPool instance that redirects to the
		*parent*, but also dumps allocation logs on stderr.
		
		Parameters
		----------
		parent : MemoryPool
		    The real memory pool that should be used for allocations.
	**/
	static public function logging_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		map_(key_type, item_type, keys_sorted=False) -> MapType
		
		Create MapType instance from key and item data types or fields.
		
		Parameters
		----------
		key_type : DataType
		item_type : DataType
		keys_sorted : bool
		
		Returns
		-------
		map_type : DataType
	**/
	static public function map_(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		memory_map(path, mode=u'r')
		
		Open memory map at file path. Size of the memory map cannot change.
		
		Parameters
		----------
		path : str
		mode : {'r', 'r+', 'w'}, default 'r'
		    Whether the file is opened for reading ('r+'), writing ('w')
		    or both ('r+').
		
		Returns
		-------
		mmap : MemoryMappedFile
	**/
	static public function memory_map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		mimalloc_memory_pool()
		
		Return a memory pool based on the mimalloc heap.
		
		NotImplementedError is raised if mimalloc support is not enabled.
	**/
	static public function mimalloc_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		month_day_nano_interval()
		
		Create instance of an interval type representing months, days and
		nanoseconds between two dates.
	**/
	static public function month_day_nano_interval(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		null()
		
		Create instance of null type.
	**/
	@:native("null")
	static public function _null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		nulls(size, type=None, MemoryPool memory_pool=None)
		
		Create a strongly-typed Array instance with all elements null.
		
		Parameters
		----------
		size : int
		    Array length.
		type : pyarrow.DataType, default None
		    Explicit type for the array. By default use NullType.
		memory_pool : MemoryPool, default None
		    Arrow MemoryPool to use for allocations. Uses the default memory
		    pool is not passed.
		
		Returns
		-------
		arr : Array
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.nulls(10)
		<pyarrow.lib.NullArray object at 0x7ffaf04c2e50>
		10 nulls
		
		>>> pa.nulls(3, pa.uint32())
		<pyarrow.lib.UInt32Array object at 0x7ffaf04c2e50>
		[
		  null,
		  null,
		  null
		]
	**/
	static public function nulls(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		output_stream(source, compression=u'detect', buffer_size=None)
		
		Create an Arrow output stream.
		
		Parameters
		----------
		source : str, Path, buffer, file-like object, ...
		    The source to open for writing.
		compression : str optional, default 'detect'
		    The compression algorithm to use for on-the-fly compression.
		    If "detect" and source is a file path, then compression will be
		    chosen based on the file extension.
		    If None, no compression will be applied.
		    Otherwise, a well-known algorithm name must be supplied (e.g. "gzip").
		buffer_size : int, default None
		    If None or 0, no buffering will happen. Otherwise the size of the
		    temporary write buffer.
	**/
	static public function output_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		proxy_memory_pool(MemoryPool parent)
		
		Create and return a MemoryPool instance that redirects to the
		*parent*, but with separate allocation statistics.
		
		Parameters
		----------
		parent : MemoryPool
		    The real memory pool that should be used for allocations.
	**/
	static public function proxy_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		py_buffer(obj)
		
		Construct an Arrow buffer from a Python bytes-like or buffer-like object
		
		Parameters
		----------
		obj : object
		    the object from which the buffer should be constructed.
	**/
	static public function py_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_message(source)
		
		Read length-prefixed message from file or buffer-like object
		
		Parameters
		----------
		source : pyarrow.NativeFile, file-like object, or buffer-like object
		
		Returns
		-------
		message : Message
	**/
	static public function read_message(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_record_batch(obj, Schema schema, DictionaryMemo dictionary_memo=None)
		
		Read RecordBatch from message, given a known schema. If reading data from a
		complete IPC stream, use ipc.open_stream instead
		
		Parameters
		----------
		obj : Message or Buffer-like
		schema : Schema
		dictionary_memo : DictionaryMemo, optional
		    If message contains dictionaries, must pass a populated
		    DictionaryMemo
		
		Returns
		-------
		batch : RecordBatch
	**/
	static public function read_record_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_schema(obj, DictionaryMemo dictionary_memo=None)
		
		Read Schema from message or buffer
		
		Parameters
		----------
		obj : buffer or Message
		dictionary_memo : DictionaryMemo, optional
		    Needed to be able to reconstruct dictionary-encoded fields
		    with read_record_batch
		
		Returns
		-------
		schema : Schema
	**/
	static public function read_schema(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_serialized(source, base=None)
		
		DEPRECATED: Read serialized Python sequence from file-like object.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		Parameters
		----------
		source : NativeFile
		    File to read the sequence from.
		base : object
		    This object will be the base object of all the numpy arrays
		    contained in the sequence.
		
		Returns
		-------
		serialized : the serialized data
	**/
	static public function read_serialized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		read_tensor(source)
		Read pyarrow.Tensor from pyarrow.NativeFile object from current
		    position. If the file source supports zero copy (e.g. a memory map), then
		    this operation does not allocate any memory. This function not assume that
		    the stream is aligned
		
		    Parameters
		    ----------
		    source : pyarrow.NativeFile
		
		    Returns
		    -------
		    tensor : Tensor
		
		    
	**/
	static public function read_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		record_batch(data, names=None, schema=None, metadata=None)
		
		Create a pyarrow.RecordBatch from another Python data structure or sequence
		of arrays.
		
		Parameters
		----------
		data : pandas.DataFrame, list
		    A DataFrame or list of arrays or chunked arrays.
		names : list, default None
		    Column names if list of arrays passed as data. Mutually exclusive with
		    'schema' argument.
		schema : Schema, default None
		    The expected schema of the RecordBatch. If not passed, will be inferred
		    from the data. Mutually exclusive with 'names' argument.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if schema not passed).
		
		Returns
		-------
		RecordBatch
		
		See Also
		--------
		RecordBatch.from_arrays, RecordBatch.from_pandas, table
	**/
	static public function record_batch(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		register_extension_type(ext_type)
		
		Register a Python extension type.
		
		Registration is based on the extension name (so different registered types
		need unique extension names). Registration needs an extension type
		instance, but then works for any instance of the same subclass regardless
		of parametrization of the type.
		
		Parameters
		----------
		ext_type : BaseExtensionType instance
		    The ExtensionType subclass to register.
	**/
	static public function register_extension_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		repeat(value, size, MemoryPool memory_pool=None)
		
		Create an Array instance whose slots are the given scalar.
		
		Parameters
		----------
		value : Scalar-like object
		    Either a pyarrow.Scalar or any python object coercible to a Scalar.
		size : int
		    Number of times to repeat the scalar in the output Array.
		memory_pool : MemoryPool, default None
		    Arrow MemoryPool to use for allocations. Uses the default memory
		    pool is not passed.
		
		Returns
		-------
		arr : Array
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.repeat(10, 3)
		<pyarrow.lib.Int64Array object at 0x7ffac03a2750>
		[
		  10,
		  10,
		  10
		]
		
		>>> pa.repeat([1, 2], 2)
		<pyarrow.lib.ListArray object at 0x7ffaf04c2e50>
		[
		  [
		    1,
		    2
		  ],
		  [
		    1,
		    2
		  ]
		]
		
		>>> pa.repeat("string", 3)
		<pyarrow.lib.StringArray object at 0x7ffac03a2750>
		[
		  "string",
		  "string",
		  "string"
		]
		
		>>> pa.repeat(pa.scalar({'a': 1, 'b': [1, 2]}), 2)
		<pyarrow.lib.StructArray object at 0x7ffac03a2750>
		-- is_valid: all not null
		-- child 0 type: int64
		  [
		    1,
		    1
		  ]
		-- child 1 type: list<item: int64>
		  [
		    [
		      1,
		      2
		    ],
		    [
		      1,
		      2
		    ]
		  ]
	**/
	static public function repeat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		runtime_info()
		
		Get runtime information.
		
		Returns
		-------
		info : pyarrow.RuntimeInfo
	**/
	static public function runtime_info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		scalar(value, type=None, *, from_pandas=None, MemoryPool memory_pool=None)
		
		Create a pyarrow.Scalar instance from a Python object.
		
		Parameters
		----------
		value : Any
		    Python object coercible to arrow's type system.
		type : pyarrow.DataType
		    Explicit type to attempt to coerce to, otherwise will be inferred from
		    the value.
		from_pandas : bool, default None
		    Use pandas's semantics for inferring nulls from values in
		    ndarray-like data. Defaults to False if not passed explicitly by user,
		    or True if a pandas object is passed in.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the currently-set default
		    memory pool.
		
		Returns
		-------
		scalar : pyarrow.Scalar
		
		Examples
		--------
		>>> import pyarrow as pa
		
		>>> pa.scalar(42)
		<pyarrow.Int64Scalar: 42>
		
		>>> pa.scalar("string")
		<pyarrow.StringScalar: 'string'>
		
		>>> pa.scalar([1, 2])
		<pyarrow.ListScalar: [1, 2]>
		
		>>> pa.scalar([1, 2], type=pa.list_(pa.int16()))
		<pyarrow.ListScalar: [1, 2]>
	**/
	static public function scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		serialize(value, SerializationContext context=None)
		
		DEPRECATED: Serialize a general Python sequence for transient storage
		and transport.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		Notes
		-----
		This function produces data that is incompatible with the standard
		Arrow IPC binary protocol, i.e. it cannot be used with ipc.open_stream or
		ipc.open_file. You can use deserialize, deserialize_from, or
		deserialize_components to read it.
		
		Parameters
		----------
		value : object
		    Python object for the sequence that is to be serialized.
		context : SerializationContext
		    Custom serialization and deserialization context, uses a default
		    context with some standard type handlers if not specified.
		
		Returns
		-------
		serialized : SerializedPyObject
	**/
	static public function serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		serialize_to(value, sink, SerializationContext context=None)
		
		DEPRECATED: Serialize a Python sequence to a file.
		
		.. deprecated:: 2.0
		    The custom serialization functionality is deprecated in pyarrow 2.0,
		    and will be removed in a future version. Use the standard library
		    ``pickle`` or the IPC functionality of pyarrow (see :ref:`ipc` for
		    more).
		
		Parameters
		----------
		value : object
		    Python object for the sequence that is to be serialized.
		sink : NativeFile or file-like
		    File the sequence will be written to.
		context : SerializationContext
		    Custom serialization and deserialization context, uses a default
		    context with some standard type handlers if not specified.
	**/
	static public function serialize_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_cpu_count(int count)
		
		Set the number of threads to use in parallel operations.
		
		Parameters
		----------
		count : int
		    The number of concurrent threads that should be used.
		
		See Also
		--------
		cpu_count : Get the size of this pool.
		set_io_thread_count : The analogous function for the I/O thread pool.
	**/
	static public function set_cpu_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_io_thread_count(int count)
		
		Set the number of threads to use for I/O operations.
		
		Many operations, such as scanning a dataset, will implicitly make
		use of this pool.
		
		Parameters
		----------
		count : int
		    The max number of threads that may be used for I/O.
		    Must be positive.
		
		See Also
		--------
		io_thread_count : Get the size of this pool.
		set_cpu_count : The analogous function for the CPU thread pool.
	**/
	static public function set_io_thread_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		set_memory_pool(MemoryPool pool)
		
		Set the default memory pool.
		
		Parameters
		----------
		pool : MemoryPool
		    The memory pool that should be used by default.
	**/
	static public function set_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		sparse_union(child_fields, type_codes=None)
		
		Create SparseUnionType from child fields.
		
		A sparse union is a nested type where each logical value is taken from
		a single child.  A buffer of 8-bit type ids indicates which child
		a given logical value is to be taken from.
		
		In a sparse union, each child array should have the same length as the
		union array, regardless of the actual number of union values that
		refer to it.
		
		Parameters
		----------
		child_fields : sequence of Field values
		    Each field must have a UTF8-encoded name, and these field names are
		    part of the type metadata.
		type_codes : list of integers, default None
		
		Returns
		-------
		type : SparseUnionType
	**/
	static public function sparse_union(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		string()
		
		Create UTF8 variable-length string type.
	**/
	static public function string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		string_to_tzinfo(name)
		
		Convert a time zone name into a time zone object.
		
		Supported input strings are:
		* As used in the Olson time zone database (the "tz database" or
		  "tzdata"), such as "America/New_York"
		* An absolute time zone offset of the form +XX:XX or -XX:XX, such as +07:30
		
		Parameters
		----------
		  name: str
		    Time zone name.
		
		Returns
		-------
		  tz : datetime.tzinfo
		    Time zone object
	**/
	static public function string_to_tzinfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		struct(fields)
		
		Create StructType instance from fields.
		
		A struct is a nested type parameterized by an ordered sequence of types
		(which can all be distinct), called its fields.
		
		Parameters
		----------
		fields : iterable of Fields or tuples, or mapping of strings to DataTypes
		    Each field must have a UTF8-encoded name, and these field names are
		    part of the type metadata.
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> fields = [
		...     ('f1', pa.int32()),
		...     ('f2', pa.string()),
		... ]
		>>> struct_type = pa.struct(fields)
		>>> struct_type
		StructType(struct<f1: int32, f2: string>)
		>>> fields = [
		...     pa.field('f1', pa.int32()),
		...     pa.field('f2', pa.string(), nullable=False),
		... ]
		>>> pa.struct(fields)
		StructType(struct<f1: int32, f2: string not null>)
		
		Returns
		-------
		type : DataType
	**/
	static public function struct(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		supported_memory_backends()
		
		Return a list of available memory pool backends
	**/
	static public function supported_memory_backends(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		system_memory_pool()
		
		Return a memory pool based on the C malloc heap.
	**/
	static public function system_memory_pool(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		table(data, names=None, schema=None, metadata=None, nthreads=None)
		
		Create a pyarrow.Table from a Python data structure or sequence of arrays.
		
		Parameters
		----------
		data : pandas.DataFrame, dict, list
		    A DataFrame, mapping of strings to Arrays or Python lists, or list of
		    arrays or chunked arrays.
		names : list, default None
		    Column names if list of arrays passed as data. Mutually exclusive with
		    'schema' argument.
		schema : Schema, default None
		    The expected schema of the Arrow Table. If not passed, will be inferred
		    from the data. Mutually exclusive with 'names' argument.
		    If passed, the output will have exactly this schema (raising an error
		    when columns are not found in the data and ignoring additional data not
		    specified in the schema, when data is a dict or DataFrame).
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if schema not passed).
		nthreads : int, default None
		    For pandas.DataFrame inputs: if greater than 1, convert columns to
		    Arrow in parallel using indicated number of threads. By default,
		    this follows :func:`pyarrow.cpu_count` (may use up to system CPU count
		    threads).
		
		Returns
		-------
		Table
		
		See Also
		--------
		Table.from_arrays, Table.from_pandas, Table.from_pydict
	**/
	static public function table(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		table_to_blocks(options, Table table, categories, extension_columns)
	**/
	static public function table_to_blocks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		time32(unit)
		
		Create instance of 32-bit time (time of day) type with unit resolution.
		
		Parameters
		----------
		unit : str
		    one of 's' [second], or 'ms' [millisecond]
		
		Returns
		-------
		type : pyarrow.Time32Type
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.time32('s')
		Time32Type(time32[s])
		>>> pa.time32('ms')
		Time32Type(time32[ms])
	**/
	static public function time32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		time64(unit)
		
		Create instance of 64-bit time (time of day) type with unit resolution.
		
		Parameters
		----------
		unit : str
		    One of 'us' [microsecond], or 'ns' [nanosecond].
		
		Returns
		-------
		type : pyarrow.Time64Type
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.time64('us')
		Time64Type(time64[us])
		>>> pa.time64('ns')
		Time64Type(time64[ns])
	**/
	static public function time64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timestamp(unit, tz=None)
		
		Create instance of timestamp type with resolution and optional time zone.
		
		Parameters
		----------
		unit : str
		    one of 's' [second], 'ms' [millisecond], 'us' [microsecond], or 'ns'
		    [nanosecond]
		tz : str, default None
		    Time zone name. None indicates time zone naive
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pa.timestamp('us')
		TimestampType(timestamp[us])
		>>> pa.timestamp('s', tz='America/New_York')
		TimestampType(timestamp[s, tz=America/New_York])
		>>> pa.timestamp('s', tz='+07:30')
		TimestampType(timestamp[s, tz=+07:30])
		
		Returns
		-------
		timestamp_type : TimestampType
	**/
	static public function timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tobytes(o)
		
		Encode a unicode or bytes string to bytes.
		
		Parameters
		----------
		o : str or bytes
		    Input string.
	**/
	static public function tobytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		total_allocated_bytes()
		
		Return the currently allocated bytes from the default memory pool.
		Other memory pools may not be accounted for.
	**/
	static public function total_allocated_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		transcoding_input_stream(stream, src_encoding, dest_encoding)
		
		Add a transcoding transformation to the stream.
		Incoming data will be decoded according to ``src_encoding`` and
		then re-encoded according to ``dest_encoding``.
		
		Parameters
		----------
		stream : NativeFile
		    The stream to which the transformation should be applied.
		src_encoding : str
		    The codec to use when reading data data.
		dest_encoding : str
		    The codec to use for emitted data.
	**/
	static public function transcoding_input_stream(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		type_for_alias(name)
		
		Return DataType given a string alias if one exists.
		
		Parameters
		----------
		name : str
		    The alias of the DataType that should be retrieved.
		
		Returns
		-------
		type : DataType
	**/
	static public function type_for_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		tzinfo_to_string(tz)
		
		Converts a time zone object into a string indicating the name of a time
		zone, one of:
		* As used in the Olson time zone database (the "tz database" or
		  "tzdata"), such as "America/New_York"
		* An absolute time zone offset of the form +XX:XX or -XX:XX, such as +07:30
		
		Parameters
		----------
		  tz : datetime.tzinfo
		    Time zone object
		
		Returns
		-------
		  name : str
		    Time zone name
	**/
	static public function tzinfo_to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uint16()
		
		Create instance of unsigned uint16 type.
	**/
	static public function uint16(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uint32()
		
		Create instance of unsigned uint32 type.
	**/
	static public function uint32(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uint64()
		
		Create instance of unsigned uint64 type.
	**/
	static public function uint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		uint8()
		
		Create instance of unsigned int8 type.
	**/
	static public function uint8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unify_schemas(schemas)
		
		Unify schemas by merging fields by name.
		
		The resulting schema will contain the union of fields from all schemas.
		Fields with the same name will be merged. Note that two fields with
		different types will fail merging.
		
		- The unified field will inherit the metadata from the schema where
		    that field is first defined.
		- The first N fields in the schema will be ordered the same as the
		    N fields in the first schema.
		
		The resulting schema will inherit its metadata from the first input
		schema.
		
		Parameters
		----------
		schemas : list of Schema
		    Schemas to merge into a single one.
		
		Returns
		-------
		Schema
		
		Raises
		------
		ArrowInvalid :
		    If any input schema contains fields with duplicate names.
		    If Fields of the same name are not mergeable.
	**/
	static public function unify_schemas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		union(child_fields, mode, type_codes=None)
		
		Create UnionType from child fields.
		
		A union is a nested type where each logical value is taken from a
		single child.  A buffer of 8-bit type ids indicates which child
		a given logical value is to be taken from.
		
		Unions come in two flavors: sparse and dense
		(see also `pyarrow.sparse_union` and `pyarrow.dense_union`).
		
		Parameters
		----------
		child_fields : sequence of Field values
		    Each field must have a UTF8-encoded name, and these field names are
		    part of the type metadata.
		mode : str
		    Must be 'sparse' or 'dense'
		type_codes : list of integers, default None
		
		Returns
		-------
		type : UnionType
	**/
	static public function union(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		unregister_extension_type(type_name)
		
		Unregister a Python extension type.
		
		Parameters
		----------
		type_name : str
		    The name of the ExtensionType subclass to unregister.
	**/
	static public function unregister_extension_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		utf8()
		
		Alias for string().
	**/
	static public function utf8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		write_tensor(Tensor tensor, NativeFile dest)
		
		Write pyarrow.Tensor to pyarrow.NativeFile object its current position.
		
		Parameters
		----------
		tensor : pyarrow.Tensor
		dest : pyarrow.NativeFile
		
		Returns
		-------
		bytes_written : int
		    Total number of bytes written to the file
	**/
	static public function write_tensor(args:haxe.extern.Rest<Dynamic>):Dynamic;
}