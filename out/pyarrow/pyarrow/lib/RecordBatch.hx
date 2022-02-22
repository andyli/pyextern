/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "RecordBatch") extern class RecordBatch {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Slice or return column at given index or column name
		
		Parameters
		----------
		key : integer, str, or slice
		    Slices with step not equal to 1 (or None) will produce a copy
		    rather than a zero-copy view
		
		Returns
		-------
		value : Array (index/column) or RecordBatch (slice)
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		RecordBatch.__reduce__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		_PandasConvertible.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.__sizeof__(self)
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
		RecordBatch._column(self, int i)
		
		Select single column from record batch by its numeric index.
		
		Parameters
		----------
		i : int
		    The index of the column to retrieve.
		
		Returns
		-------
		column : pyarrow.Array
	**/
	public function _column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch._ensure_integer_index(self, i)
		
		Ensure integer index (convert string column name to integer if needed).
	**/
	public function _ensure_integer_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch._export_to_c(self, out_ptr, out_schema_ptr=0)
		
		Export to a C ArrowArray struct, given its pointer.
		
		If a C ArrowSchema struct pointer is also given, the record batch
		schema is exported to it at the same time.
		
		Parameters
		----------
		out_ptr: int
		    The raw pointer to a C ArrowArray struct.
		out_schema_ptr: int (optional)
		    The raw pointer to a C ArrowSchema struct.
		
		Be careful: if you don't pass the ArrowArray struct to a consumer,
		array memory will leak.  This is a low-level function intended for
		expert users.
	**/
	public function _export_to_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch._import_from_c(in_ptr, schema)
		
		Import RecordBatch from a C ArrowArray struct, given its pointer
		and the imported schema.
		
		Parameters
		----------
		in_ptr: int
		    The raw pointer to a C ArrowArray struct.
		type: Schema or int
		    Either a Schema object, or the raw pointer to a C ArrowSchema
		    struct.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch._to_pandas(self, options, **kwargs)
	**/
	public function _to_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.column(self, i)
		
		Select single column from record batch
		
		Parameters
		----------
		i : int or string
		    The index or name of the column to retrieve.
		
		Returns
		-------
		column : pyarrow.Array
	**/
	public function column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		List of all columns in numerical order
		
		Returns
		-------
		list of pyarrow.Array
	**/
	public var columns : Dynamic;
	/**
		RecordBatch.drop_null(self)
		
		Remove missing values from a RecordBatch.
		See pyarrow.compute.drop_null for full usage.
	**/
	public function drop_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.equals(self, other, bool check_metadata=False)
		
		Check if contents of two record batches are equal.
		
		Parameters
		----------
		other : pyarrow.RecordBatch
		    RecordBatch to compare against.
		check_metadata : bool, default False
		    Whether schema metadata equality should be checked as well.
		
		Returns
		-------
		are_equal : bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.field(self, i)
		
		Select a schema field by its column name or numeric index
		
		Parameters
		----------
		i : int or string
		    The index or name of the field to retrieve
		
		Returns
		-------
		pyarrow.Field
	**/
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.filter(self, mask, null_selection_behavior=u'drop')
		
		Select record from a record batch. See pyarrow.compute.filter for full
		usage.
	**/
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.from_arrays(list arrays, names=None, schema=None, metadata=None)
		
		Construct a RecordBatch from multiple pyarrow.Arrays
		
		Parameters
		----------
		arrays : list of pyarrow.Array
		    One for each field in RecordBatch
		names : list of str, optional
		    Names for the batch fields. If not passed, schema must be passed
		schema : Schema, default None
		    Schema for the created batch. If not passed, names must be passed
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		pyarrow.RecordBatch
	**/
	static public function from_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.from_pandas(type cls, df, Schema schema=None, preserve_index=None, nthreads=None, columns=None)
		
		Convert pandas.DataFrame to an Arrow RecordBatch
		
		Parameters
		----------
		df : pandas.DataFrame
		schema : pyarrow.Schema, optional
		    The expected schema of the RecordBatch. This can be used to
		    indicate the type of columns if we cannot infer it automatically.
		    If passed, the output will have exactly this schema. Columns
		    specified in the schema that are not found in the DataFrame columns
		    or its index will raise an error. Additional columns or index
		    levels in the DataFrame which are not specified in the schema will
		    be ignored.
		preserve_index : bool, optional
		    Whether to store the index as an additional column in the resulting
		    ``RecordBatch``. The default of None will store the index as a
		    column, except for RangeIndex which is stored as metadata only. Use
		    ``preserve_index=True`` to force it to be stored as a column.
		nthreads : int, default None
		    If greater than 1, convert columns to Arrow in parallel using
		    indicated number of threads. By default, this follows
		    :func:`pyarrow.cpu_count` (may use up to system CPU count threads).
		columns : list, optional
		   List of column to be converted. If None, use all columns.
		
		Returns
		-------
		pyarrow.RecordBatch
	**/
	public function from_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.from_pydict(mapping, schema=None, metadata=None)
		
		Construct a RecordBatch from Arrow arrays or columns.
		
		Parameters
		----------
		mapping : dict or Mapping
		    A mapping of strings to Arrays or Python lists.
		schema : Schema, default None
		    If not passed, will be inferred from the Mapping values.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		RecordBatch
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pydict = {'int': [1, 2], 'str': ['a', 'b']}
		>>> pa.RecordBatch.from_pydict(pydict)
		pyarrow.RecordBatch
		int: int64
		str: string
	**/
	static public function from_pydict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.from_pylist(mapping, schema=None, metadata=None)
		
		Construct a RecordBatch from list of rows / dictionaries.
		
		Parameters
		----------
		mapping : list of dicts of rows
		    A mapping of strings to row values.
		schema : Schema, default None
		    If not passed, will be inferred from the first row of the
		    mapping values.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		RecordBatch
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pylist = [{'int': 1, 'str': 'a'}, {'int': 2, 'str': 'b'}]
		>>> pa.RecordBatch.from_pylist(pylist)
		pyarrow.RecordBatch
		int: int64
		str: string
		>>> pa.RecordBatch.from_pylist(pylist)[0]
		<pyarrow.lib.Int64Array object at 0x1256b08e0>
		[
		  1,
		  2
		]
	**/
	static public function from_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.from_struct_array(StructArray struct_array)
		
		Construct a RecordBatch from a StructArray.
		
		Each field in the StructArray will become a column in the resulting
		``RecordBatch``.
		
		Parameters
		----------
		struct_array : StructArray
		    Array to construct the record batch from.
		
		Returns
		-------
		pyarrow.RecordBatch
	**/
	static public function from_struct_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.get_total_buffer_size(self)
		
		The sum of bytes in each buffer referenced by the record batch
		
		An array may only reference a portion of a buffer.
		This method will overestimate in this case and return the
		byte size of the entire buffer.
		
		If a buffer is referenced multiple times then it will
		only be counted once.
	**/
	public function get_total_buffer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total number of bytes consumed by the elements of the record batch.
		
		In other words, the sum of bytes from all buffer ranges referenced.
		
		Unlike `get_total_buffer_size` this method will account for array
		offsets.
		
		If buffers are shared between arrays then the shared
		portion will only be counted multiple times.
		
		The dictionary of dictionary arrays will always be counted in their
		entirety even if the array only references a portion of the dictionary.
	**/
	public var nbytes : Dynamic;
	/**
		Number of columns
		
		Returns
		-------
		int
	**/
	public var num_columns : Dynamic;
	/**
		Number of rows
		
		Due to the definition of a RecordBatch, all columns have the same
		number of rows.
		
		Returns
		-------
		int
	**/
	public var num_rows : Dynamic;
	/**
		RecordBatch.replace_schema_metadata(self, metadata=None)
		
		Create shallow copy of record batch by replacing schema
		key-value metadata with the indicated new metadata (which may be None,
		which deletes any existing metadata
		
		Parameters
		----------
		metadata : dict, default None
		
		Returns
		-------
		shallow_copy : RecordBatch
	**/
	public function replace_schema_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema of the RecordBatch and its columns
		
		Returns
		-------
		pyarrow.Schema
	**/
	public var schema : Dynamic;
	/**
		RecordBatch.serialize(self, memory_pool=None)
		
		Write RecordBatch to Buffer as encapsulated IPC message.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    Uses default memory pool if not specified
		
		Returns
		-------
		serialized : Buffer
	**/
	public function serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.slice(self, offset=0, length=None)
		
		Compute zero-copy slice of this RecordBatch
		
		Parameters
		----------
		offset : int, default 0
		    Offset from start of record batch to slice
		length : int, default None
		    Length of slice (default is until end of batch starting from
		    offset)
		
		Returns
		-------
		sliced : RecordBatch
	**/
	public function slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.take(self, indices)
		
		Select records from a RecordBatch. See pyarrow.compute.take for full
		usage.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_PandasConvertible.to_pandas(self, memory_pool=None, categories=None, bool strings_to_categorical=False, bool zero_copy_only=False, bool integer_object_nulls=False, bool date_as_object=True, bool timestamp_as_object=False, bool use_threads=True, bool deduplicate_objects=True, bool ignore_metadata=False, bool safe=True, bool split_blocks=False, bool self_destruct=False, types_mapper=None)
		
		Convert to a pandas-compatible NumPy array or DataFrame, as appropriate
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    Arrow MemoryPool to use for allocations. Uses the default memory
		    pool is not passed.
		strings_to_categorical : bool, default False
		    Encode string (UTF8) and binary types to pandas.Categorical.
		categories: list, default empty
		    List of fields that should be returned as pandas.Categorical. Only
		    applies to table-like data structures.
		zero_copy_only : bool, default False
		    Raise an ArrowException if this function call would require copying
		    the underlying data.
		integer_object_nulls : bool, default False
		    Cast integers with nulls to objects
		date_as_object : bool, default True
		    Cast dates to objects. If False, convert to datetime64[ns] dtype.
		timestamp_as_object : bool, default False
		    Cast non-nanosecond timestamps (np.datetime64) to objects. This is
		    useful if you have timestamps that don't fit in the normal date
		    range of nanosecond timestamps (1678 CE-2262 CE).
		    If False, all timestamps are converted to datetime64[ns] dtype.
		use_threads : bool, default True
		    Whether to parallelize the conversion using multiple threads.
		deduplicate_objects : bool, default False
		    Do not create multiple copies Python objects when created, to save
		    on memory use. Conversion will be slower.
		ignore_metadata : bool, default False
		    If True, do not use the 'pandas' metadata to reconstruct the
		    DataFrame index, if present
		safe : bool, default True
		    For certain data types, a cast is needed in order to store the
		    data in a pandas DataFrame or Series (e.g. timestamps are always
		    stored as nanoseconds in pandas). This option controls whether it
		    is a safe cast or not.
		split_blocks : bool, default False
		    If True, generate one internal "block" for each column when
		    creating a pandas.DataFrame from a RecordBatch or Table. While this
		    can temporarily reduce memory note that various pandas operations
		    can trigger "consolidation" which may balloon memory use.
		self_destruct : bool, default False
		    EXPERIMENTAL: If True, attempt to deallocate the originating Arrow
		    memory while converting the Arrow object to pandas. If you use the
		    object after calling to_pandas with this option it will crash your
		    program.
		
		    Note that you may not see always memory usage improvements. For
		    example, if multiple columns share an underlying allocation,
		    memory can't be freed until all columns are converted.
		types_mapper : function, default None
		    A function mapping a pyarrow DataType to a pandas ExtensionDtype.
		    This can be used to override the default pandas type for conversion
		    of built-in pyarrow types or in absence of pandas_metadata in the
		    Table schema. The function receives a pyarrow DataType and is
		    expected to return a pandas ExtensionDtype or ``None`` if the
		    default conversion should be used for that type. If you have
		    a dictionary mapping, you can pass ``dict.get`` as function.
		
		Returns
		-------
		pandas.Series or pandas.DataFrame depending on type of object
	**/
	public function to_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.to_pydict(self)
		
		Convert the RecordBatch to a dict or OrderedDict.
		
		Returns
		-------
		dict
	**/
	public function to_pydict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.to_pylist(self)
		
		Convert the RecordBatch to a list of rows / dictionaries.
		
		Returns
		-------
		list
	**/
	public function to_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.to_string(self, show_metadata=False)
	**/
	public function to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		RecordBatch.validate(self, *, full=False)
		
		Perform validation checks.  An exception is raised if validation fails.
		
		By default only cheap validation checks are run.  Pass `full=True`
		for thorough validation checks (potentially O(n)).
		
		Parameters
		----------
		full: bool, default False
		    If True, run expensive checks, otherwise cheap checks only.
		
		Raises
		------
		ArrowInvalid
	**/
	public function validate(args:haxe.extern.Rest<Dynamic>):Dynamic;
}