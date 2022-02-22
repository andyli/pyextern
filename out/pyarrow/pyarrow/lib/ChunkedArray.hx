/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "ChunkedArray") extern class ChunkedArray {
	/**
		ChunkedArray.__array__(self, dtype=None)
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
		value : Scalar (index) or ChunkedArray (slice)
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
		ChunkedArray.__reduce__(self)
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
		ChunkedArray.__sizeof__(self)
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
	public var _name : Dynamic;
	/**
		ChunkedArray._to_pandas(self, options, **kwargs)
	**/
	public function _to_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.cast(self, target_type, safe=True)
		
		Cast array values to another data type
		
		See pyarrow.compute.cast for usage
	**/
	@:native("cast")
	public function _cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.chunk(self, i)
		
		Select a chunk by its index
		
		Parameters
		----------
		i : int
		
		Returns
		-------
		pyarrow.Array
	**/
	public function chunk(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var chunks : Dynamic;
	/**
		ChunkedArray.combine_chunks(self, MemoryPool memory_pool=None)
		
		Flatten this ChunkedArray into a single non-chunked array.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool
		
		Returns
		-------
		result : Array
	**/
	public function combine_chunks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var data : Dynamic;
	/**
		ChunkedArray.dictionary_encode(self, null_encoding=u'mask')
		
		Compute dictionary-encoded representation of array
		
		Returns
		-------
		pyarrow.ChunkedArray
		    Same chunking as the input, all chunks share a common dictionary.
	**/
	public function dictionary_encode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.drop_null(self)
		
		Remove missing values from a chunked array.
		See pyarrow.compute.drop_null for full description.
	**/
	public function drop_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.equals(self, ChunkedArray other)
		
		Return whether the contents of two chunked arrays are equal.
		
		Parameters
		----------
		other : pyarrow.ChunkedArray
		    Chunked array to compare against.
		
		Returns
		-------
		are_equal : bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.fill_null(self, fill_value)
		
		See pyarrow.compute.fill_null docstring for usage.
	**/
	public function fill_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.filter(self, mask, null_selection_behavior=u'drop')
		
		Select values from a chunked array. See pyarrow.compute.filter for full
		usage.
	**/
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.flatten(self, MemoryPool memory_pool=None)
		
		Flatten this ChunkedArray.  If it has a struct type, the column is
		flattened into one array per struct field.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool
		
		Returns
		-------
		result : list of ChunkedArray
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.format(self, **kwargs)
	**/
	public function format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.get_total_buffer_size(self)
		
		The sum of bytes in each buffer referenced by the chunked array.
		
		An array may only reference a portion of a buffer.
		This method will overestimate in this case and return the
		byte size of the entire buffer.
		
		If a buffer is referenced multiple times then it will
		only be counted once.
	**/
	public function get_total_buffer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.index(self, value, start=None, end=None, *, memory_pool=None)
		
		Find the first index of a value.
		
		See pyarrow.compute.index for full usage.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.is_null(self, *, nan_is_null=False)
		
		Return boolean array indicating the null values.
		
		Parameters
		----------
		nan_is_null : bool (optional, default False)
		    Whether floating-point NaN values should also be considered null.
		
		Returns
		-------
		array : boolean Array or ChunkedArray
	**/
	public function is_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.is_valid(self)
		
		Return boolean array indicating the non-null values.
	**/
	public function is_valid(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.iterchunks(self)
	**/
	public function iterchunks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.length(self)
	**/
	public function length(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total number of bytes consumed by the elements of the chunked array.
		
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
		Number of null entries
		
		Returns
		-------
		int
	**/
	public var null_count : Dynamic;
	/**
		Number of underlying chunks
		
		Returns
		-------
		int
	**/
	public var num_chunks : Dynamic;
	/**
		ChunkedArray.slice(self, offset=0, length=None)
		
		Compute zero-copy slice of this ChunkedArray
		
		Parameters
		----------
		offset : int, default 0
		    Offset from start of array to slice
		length : int, default None
		    Length of slice (default is until end of batch starting from
		    offset)
		
		Returns
		-------
		sliced : ChunkedArray
	**/
	public function slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.take(self, indices)
		
		Select values from a chunked array. See pyarrow.compute.take for full
		usage.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.to_numpy(self)
		
		Return a NumPy copy of this array (experimental).
		
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
		ChunkedArray.to_pylist(self)
		
		Convert to a list of native Python objects.
	**/
	public function to_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.to_string(self, *, int indent=0, int window=10, bool skip_new_lines=False)
		
		Render a "pretty-printed" string representation of the ChunkedArray
		
		Parameters
		----------
		indent : int
		    How much to indent right the content of the array,
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
	public var type : Dynamic;
	/**
		ChunkedArray.unify_dictionaries(self, MemoryPool memory_pool=None)
		
		Unify dictionaries across all chunks.
		
		This method returns an equivalent chunked array, but where all
		chunks share the same dictionary values.  Dictionary indices are
		transposed accordingly.
		
		If there are no dictionaries in the chunked array, it is returned
		unchanged.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool
		
		Returns
		-------
		result : ChunkedArray
	**/
	public function unify_dictionaries(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.unique(self)
		
		Compute distinct elements in array
		
		Returns
		-------
		pyarrow.Array
	**/
	public function unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		ChunkedArray.validate(self, *, full=False)
		
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
		ChunkedArray.value_counts(self)
		
		Compute counts of unique elements in array.
		
		Returns
		-------
		An array of  <input type "Values", int64_t "Counts"> structs
	**/
	public function value_counts(args:haxe.extern.Rest<Dynamic>):Dynamic;
}