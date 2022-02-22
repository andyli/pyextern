/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "_PandasConvertible") extern class _PandasConvertible {
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
	/**
		_PandasConvertible.__reduce_cython__(self)
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
}