/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "FixedSizeListArray") extern class FixedSizeListArray {
	/**
		Array.__array__(self, dtype=None)
	**/
	public function __array__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Slice or return value at given index
		
		Parameters
		----------
		key : integer or slice
		    Slices with step not equal to 1 (or None) will produce a copy
		    rather than a zero-copy view
		
		Returns
		-------
		value : Scalar (index) or Array (slice)
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
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
		Array.__reduce__(self)
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
		Array.__sizeof__(self)
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
		Array._debug_print(self)
	**/
	public function _debug_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array._export_to_c(self, out_ptr, out_schema_ptr=0)
		
		Export to a C ArrowArray struct, given its pointer.
		
		If a C ArrowSchema struct pointer is also given, the array type
		is exported to it at the same time.
		
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
		Array._import_from_c(in_ptr, type)
		
		Import Array from a C ArrowArray struct, given its pointer
		and the imported array type.
		
		Parameters
		----------
		in_ptr: int
		    The raw pointer to a C ArrowArray struct.
		type: DataType or int
		    Either a DataType object, or the raw pointer to a C ArrowSchema
		    struct.
		
		This is a low-level function intended for expert users.
	**/
	static public function _import_from_c(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _name : Dynamic;
	/**
		Array._to_pandas(self, options, **kwargs)
	**/
	public function _to_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.buffers(self)
		
		Return a list of Buffer objects pointing to this array's physical
		storage.
		
		To correctly interpret these buffers, you need to also apply the offset
		multiplied with the size of the stored data type.
	**/
	public function buffers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.cast(self, target_type, safe=True)
		
		Cast array values to another data type
		
		See pyarrow.compute.cast for usage
	**/
	@:native("cast")
	public function _cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.dictionary_encode(self, null_encoding=u'mask')
		
		Compute dictionary-encoded representation of array.
	**/
	public function dictionary_encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.diff(self, Array other)
		
		Compare contents of this array against another one.
		
		Return string containing the result of arrow::Diff comparing contents
		of this array against the other array.
	**/
	public function diff(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.drop_null(self)
		
		Remove missing values from an array.
	**/
	public function drop_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.equals(self, Array other)
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.fill_null(self, fill_value)
		
		See pyarrow.compute.fill_null for usage.
	**/
	public function fill_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.filter(self, Array mask, *, null_selection_behavior=u'drop')
		
		Select values from an array. See pyarrow.compute.filter for full usage.
	**/
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		FixedSizeListArray.flatten(self)
		
		Unnest this FixedSizeListArray by one level.
		
		Returns
		-------
		result : Array
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.format(self, **kwargs)
	**/
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		FixedSizeListArray.from_arrays(values, int32_t list_size)
		
		Construct FixedSizeListArray from array of values and a list length.
		
		Parameters
		----------
		values : Array (any type)
		list_size : int
		    The fixed length of the lists.
		
		Returns
		-------
		FixedSizeListArray
	**/
	static public function from_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.from_buffers(DataType type, length, buffers, null_count=-1, offset=0, children=None)
		
		Construct an Array from a sequence of buffers.
		
		The concrete type returned depends on the datatype.
		
		Parameters
		----------
		type : DataType
		    The value type of the array.
		length : int
		    The number of values in the array.
		buffers : List[Buffer]
		    The buffers backing this array.
		null_count : int, default -1
		    The number of null entries in the array. Negative value means that
		    the null count is not known.
		offset : int, default 0
		    The array's logical offset (in values, not in bytes) from the
		    start of each buffer.
		children : List[Array], default None
		    Nested type children with length matching type.num_fields.
		
		Returns
		-------
		array : Array
	**/
	static public function from_buffers(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.from_pandas(obj, mask=None, type=None, bool safe=True, MemoryPool memory_pool=None)
		
		Convert pandas.Series to an Arrow Array.
		
		This method uses Pandas semantics about what values indicate
		nulls. See pyarrow.array for more general conversion from arrays or
		sequences to Arrow arrays.
		
		Parameters
		----------
		obj : ndarray, pandas.Series, array-like
		mask : array (boolean), optional
		    Indicate which values are null (True) or not null (False).
		type : pyarrow.DataType
		    Explicit type to attempt to coerce to, otherwise will be inferred
		    from the data.
		safe : bool, default True
		    Check for overflows or other unsafe conversions.
		memory_pool : pyarrow.MemoryPool, optional
		    If not passed, will allocate memory from the currently-set default
		    memory pool.
		
		Notes
		-----
		Localized timestamps will currently be returned as UTC (pandas's native
		representation). Timezone-naive data will be implicitly interpreted as
		UTC.
		
		Returns
		-------
		array : pyarrow.Array or pyarrow.ChunkedArray
		    ChunkedArray is returned if object data overflows binary buffer.
	**/
	static public function from_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.get_total_buffer_size(self)
		
		The sum of bytes in each buffer referenced by the array.
		
		An array may only reference a portion of a buffer.
		This method will overestimate in this case and return the
		byte size of the entire buffer.
		
		If a buffer is referenced multiple times then it will
		only be counted once.
	**/
	public function get_total_buffer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.index(self, value, start=None, end=None, *, memory_pool=None)
		
		Find the first index of a value.
		
		See pyarrow.compute.index for full usage.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.is_null(self, *, nan_is_null=False)
		
		Return BooleanArray indicating the null values.
		
		Parameters
		----------
		nan_is_null : bool (optional, default False)
		    Whether floating-point NaN values should also be considered null.
		
		Returns
		-------
		array : boolean Array
	**/
	public function is_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.is_valid(self)
		
		Return BooleanArray indicating the non-null values.
	**/
	public function is_valid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total number of bytes consumed by the elements of the array.
		
		In other words, the sum of bytes from all buffer 
		ranges referenced.
		
		Unlike `get_total_buffer_size` this method will account for array
		offsets.
		
		If buffers are shared between arrays then the shared
		portion will be counted multiple times.
		
		The dictionary of dictionary arrays will always be counted in their 
		entirety even if the array only references a portion of the dictionary.
	**/
	public var nbytes : Dynamic;
	public var null_count : Dynamic;
	/**
		A relative position into another array's data.
		
		The purpose is to enable zero-copy slicing. This value defaults to zero
		but must be applied on all operations with the physical storage
		buffers.
	**/
	public var offset : Dynamic;
	/**
		Array.slice(self, offset=0, length=None)
		
		Compute zero-copy slice of this array.
		
		Parameters
		----------
		offset : int, default 0
		    Offset from start of array to slice.
		length : int, default None
		    Length of slice (default is until end of Array starting from
		    offset).
		
		Returns
		-------
		sliced : RecordBatch
	**/
	public function slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.sum(self, **kwargs)
		
		Sum the values in a numerical array.
	**/
	public function sum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.take(self, indices)
		
		Select values from an array. See pyarrow.compute.take for full usage.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.to_numpy(self, zero_copy_only=True, writable=False)
		
		Return a NumPy view or copy of this array (experimental).
		
		By default, tries to return a view of this array. This is only
		supported for primitive arrays with the same memory layout as NumPy
		(i.e. integers, floating point, ..) and without any nulls.
		
		Parameters
		----------
		zero_copy_only : bool, default True
		    If True, an exception will be raised if the conversion to a numpy
		    array would require copying the underlying data (e.g. in presence
		    of nulls, or for non-primitive types).
		writable : bool, default False
		    For numpy arrays created with zero copy (view on the Arrow data),
		    the resulting array is not writable (Arrow data is immutable).
		    By setting this to True, a copy of the array is made to ensure
		    it is writable.
		
		Returns
		-------
		array : numpy.ndarray
	**/
	public function to_numpy(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Array.to_pylist(self)
		
		Convert to a list of native Python objects.
		
		Returns
		-------
		lst : list
	**/
	public function to_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.to_string(self, *, int indent=2, int top_level_indent=0, int window=10, bool skip_new_lines=False)
		
		Render a "pretty-printed" string representation of the Array.
		
		Parameters
		----------
		indent : int, default 2
		    How much to indent the internal items in the string to
		    the right, by default ``2``.
		top_level_indent : int, default 0
		    How much to indent right the entire content of the array,
		    by default ``0``.
		window : int
		    How many items to preview at the begin and end
		    of the array when the arrays is bigger than the window.
		    The other elements will be ellipsed.
		skip_new_lines : bool
		    If the array should be rendered as a single line of text
		    or if each element should be on its own line.
	**/
	public function to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.tolist(self)
		
		Alias of to_pylist for compatibility with NumPy.
	**/
	public function tolist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var type : Dynamic;
	/**
		Array.unique(self)
		
		Compute distinct elements in array.
	**/
	public function unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array.validate(self, *, full=False)
		
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
	/**
		Array.value_counts(self)
		
		Compute counts of unique elements in array.
		
		Returns
		-------
		StructArray
		    An array of  <input type "Values", int64 "Counts"> structs
	**/
	public function value_counts(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var values : Dynamic;
	/**
		Array.view(self, target_type)
		
		Return zero-copy "view" of array as another data type.
		
		The data types must have compatible columnar buffer layouts
		
		Parameters
		----------
		target_type : DataType
		    Type to construct view as.
		
		Returns
		-------
		view : Array
	**/
	public function view(args:haxe.extern.Rest<Dynamic>):Dynamic;
}