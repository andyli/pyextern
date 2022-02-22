/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "Table") extern class Table {
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
		Slice or return column at given index or column name.
		
		Parameters
		----------
		key : integer, str, or slice
		    Slices with step not equal to 1 (or None) will produce a copy
		    rather than a zero-copy view.
		
		Returns
		-------
		ChunkedArray (index/column) or Table (slice)
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
		Table.__reduce__(self)
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
		Table.__sizeof__(self)
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
		Table._column(self, int i)
		
		Select a column by its numeric index.
		
		Parameters
		----------
		i : int
		    The index of the column to retrieve.
		
		Returns
		-------
		ChunkedArray
	**/
	public function _column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table._ensure_integer_index(self, i)
		
		Ensure integer index (convert string column name to integer if needed).
	**/
	public function _ensure_integer_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table._to_pandas(self, options, categories=None, ignore_metadata=False, types_mapper=None)
	**/
	public function _to_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.add_column(self, int i, field_, column)
		
		Add column to Table at position.
		
		A new table is returned with the column added, the original table
		object is left unchanged.
		
		Parameters
		----------
		i : int
		    Index to place the column at.
		field_ : str or Field
		    If a string is passed then the type is deduced from the column
		    data.
		column : Array, list of Array, or values coercible to arrays
		    Column data.
		
		Returns
		-------
		Table
		    New table with the passed column added.
	**/
	public function add_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.append_column(self, field_, column)
		
		Append column at end of columns.
		
		Parameters
		----------
		field_ : str or Field
		    If a string is passed then the type is deduced from the column
		    data.
		column : Array, list of Array, or values coercible to arrays
		    Column data.
		
		Returns
		-------
		Table
		    New table with the passed column added.
	**/
	public function append_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.cast(self, Schema target_schema, bool safe=True)
		
		Cast table values to another schema.
		
		Parameters
		----------
		target_schema : Schema
		    Schema to cast to, the names and order of fields must match.
		safe : bool, default True
		    Check for overflows or other unsafe conversions.
		
		Returns
		-------
		Table
	**/
	@:native("cast")
	public function _cast(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.column(self, i)
		
		Select a column by its column name, or numeric index.
		
		Parameters
		----------
		i : int or string
		    The index or name of the column to retrieve.
		
		Returns
		-------
		ChunkedArray
	**/
	public function column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Names of the table's columns.
		
		Returns
		-------
		list of str
	**/
	public var column_names : Dynamic;
	/**
		List of all columns in numerical order.
		
		Returns
		-------
		list of ChunkedArray
	**/
	public var columns : Dynamic;
	/**
		Table.combine_chunks(self, MemoryPool memory_pool=None)
		
		Make a new table by combining the chunks this table has.
		
		All the underlying chunks in the ChunkedArray of each column are
		concatenated into zero or one chunk.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool.
		
		Returns
		-------
		Table
	**/
	public function combine_chunks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.drop(self, columns)
		
		Drop one or more columns and return a new table.
		
		Parameters
		----------
		columns : list of str
		    List of field names referencing existing columns.
		
		Raises
		------
		KeyError
		    If any of the passed columns name are not existing.
		
		Returns
		-------
		Table
		    New table without the columns.
	**/
	public function drop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.drop_null(self)
		
		Remove missing values from a Table.
		See :func:`pyarrow.compute.drop_null` for full usage.
	**/
	public function drop_null(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.equals(self, Table other, bool check_metadata=False)
		
		Check if contents of two tables are equal.
		
		Parameters
		----------
		other : pyarrow.Table
		    Table to compare against.
		check_metadata : bool, default False
		    Whether schema metadata equality should be checked as well.
		
		Returns
		-------
		bool
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.field(self, i)
		
		Select a schema field by its column name or numeric index.
		
		Parameters
		----------
		i : int or string
		    The index or name of the field to retrieve.
		
		Returns
		-------
		Field
	**/
	public function field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.filter(self, mask, null_selection_behavior=u'drop')
		
		Select records from a Table. See :func:`pyarrow.compute.filter` for
		full usage.
	**/
	public function filter(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.flatten(self, MemoryPool memory_pool=None)
		
		Flatten this Table.
		
		Each column with a struct type is flattened
		into one column per struct field.  Other columns are left unchanged.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool
		
		Returns
		-------
		Table
	**/
	public function flatten(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.from_arrays(arrays, names=None, schema=None, metadata=None)
		
		Construct a Table from Arrow arrays.
		
		Parameters
		----------
		arrays : list of pyarrow.Array or pyarrow.ChunkedArray
		    Equal-length arrays that should form the table.
		names : list of str, optional
		    Names for the table columns. If not passed, schema must be passed.
		schema : Schema, default None
		    Schema for the created table. If not passed, names must be passed.
		metadata : dict or Mapping, default None
		    Optional metadata for the schema (if inferred).
		
		Returns
		-------
		Table
	**/
	static public function from_arrays(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.from_batches(batches, Schema schema=None)
		
		Construct a Table from a sequence or iterator of Arrow RecordBatches.
		
		Parameters
		----------
		batches : sequence or iterator of RecordBatch
		    Sequence of RecordBatch to be converted, all schemas must be equal.
		schema : Schema, default None
		    If not passed, will be inferred from the first RecordBatch.
		
		Returns
		-------
		Table
	**/
	static public function from_batches(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.from_pandas(type cls, df, Schema schema=None, preserve_index=None, nthreads=None, columns=None, bool safe=True)
		
		Convert pandas.DataFrame to an Arrow Table.
		
		The column types in the resulting Arrow Table are inferred from the
		dtypes of the pandas.Series in the DataFrame. In the case of non-object
		Series, the NumPy dtype is translated to its Arrow equivalent. In the
		case of `object`, we need to guess the datatype by looking at the
		Python objects in this Series.
		
		Be aware that Series of the `object` dtype don't carry enough
		information to always lead to a meaningful Arrow type. In the case that
		we cannot infer a type, e.g. because the DataFrame is of length 0 or
		the Series only contains None/nan objects, the type is set to
		null. This behavior can be avoided by constructing an explicit schema
		and passing it to this function.
		
		Parameters
		----------
		df : pandas.DataFrame
		schema : pyarrow.Schema, optional
		    The expected schema of the Arrow Table. This can be used to
		    indicate the type of columns if we cannot infer it automatically.
		    If passed, the output will have exactly this schema. Columns
		    specified in the schema that are not found in the DataFrame columns
		    or its index will raise an error. Additional columns or index
		    levels in the DataFrame which are not specified in the schema will
		    be ignored.
		preserve_index : bool, optional
		    Whether to store the index as an additional column in the resulting
		    ``Table``. The default of None will store the index as a column,
		    except for RangeIndex which is stored as metadata only. Use
		    ``preserve_index=True`` to force it to be stored as a column.
		nthreads : int, default None
		    If greater than 1, convert columns to Arrow in parallel using
		    indicated number of threads. By default, this follows
		    :func:`pyarrow.cpu_count` (may use up to system CPU count threads).
		columns : list, optional
		   List of column to be converted. If None, use all columns.
		safe : bool, default True
		   Check for overflows or other unsafe conversions.
		
		Returns
		-------
		Table
		
		Examples
		--------
		
		>>> import pandas as pd
		>>> import pyarrow as pa
		>>> df = pd.DataFrame({
		    ...     'int': [1, 2],
		    ...     'str': ['a', 'b']
		    ... })
		>>> pa.Table.from_pandas(df)
		<pyarrow.lib.Table object at 0x7f05d1fb1b40>
	**/
	public function from_pandas(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.from_pydict(mapping, schema=None, metadata=None)
		
		Construct a Table from Arrow arrays or columns.
		
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
		Table
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pydict = {'int': [1, 2], 'str': ['a', 'b']}
		>>> pa.Table.from_pydict(pydict)
		pyarrow.Table
		int: int64
		str: string
		----
		int: [[1,2]]
		str: [["a","b"]]
	**/
	static public function from_pydict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.from_pylist(mapping, schema=None, metadata=None)
		
		Construct a Table from list of rows / dictionaries.
		
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
		Table
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> pylist = [{'int': 1, 'str': 'a'}, {'int': 2, 'str': 'b'}]
		>>> pa.Table.from_pylist(pylist)
		pyarrow.Table
		int: int64
		str: string
		----
		int: [[1,2]]
		str: [["a","b"]]
	**/
	static public function from_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.get_total_buffer_size(self)
		
		The sum of bytes in each buffer referenced by the table.
		
		An array may only reference a portion of a buffer.
		This method will overestimate in this case and return the
		byte size of the entire buffer.
		
		If a buffer is referenced multiple times then it will
		only be counted once.
	**/
	public function get_total_buffer_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.group_by(self, keys)
		Declare a grouping over the columns of the table.
		
		        Resulting grouping can then be used to perform aggregations
		        with a subsequent ``aggregate()`` method.
		
		        Parameters
		        ----------
		        keys : str or list[str]
		            Name of the columns that should be used as the grouping key.
		
		        Returns
		        -------
		        TableGroupBy
		
		        See Also
		        --------
		        TableGroupBy.aggregate
		        
	**/
	public function group_by(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.itercolumns(self)
		
		Iterator over all columns in their numerical order.
		
		Yields
		------
		ChunkedArray
	**/
	public function itercolumns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total number of bytes consumed by the elements of the table.
		
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
		Number of columns in this table.
		
		Returns
		-------
		int
	**/
	public var num_columns : Dynamic;
	/**
		Number of rows in this table.
		
		Due to the definition of a table, all columns have the same number of
		rows.
		
		Returns
		-------
		int
	**/
	public var num_rows : Dynamic;
	/**
		Table.remove_column(self, int i)
		
		Create new Table with the indicated column removed.
		
		Parameters
		----------
		i : int
		    Index of column to remove.
		
		Returns
		-------
		Table
		    New table without the column.
	**/
	public function remove_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.rename_columns(self, names)
		
		Create new table with columns renamed to provided names.
		
		Parameters
		----------
		names : list of str
		    List of new column names.
		
		Returns
		-------
		Table
	**/
	public function rename_columns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.replace_schema_metadata(self, metadata=None)
		
		Create shallow copy of table by replacing schema
		key-value metadata with the indicated new metadata (which may be None),
		which deletes any existing metadata.
		
		Parameters
		----------
		metadata : dict, default None
		
		Returns
		-------
		Table
	**/
	public function replace_schema_metadata(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Schema of the table and its columns.
		
		Returns
		-------
		Schema
	**/
	public var schema : Dynamic;
	/**
		Table.select(self, columns)
		
		Select columns of the Table.
		
		Returns a new Table with the specified columns, and metadata
		preserved.
		
		Parameters
		----------
		columns : list-like
		    The column names or integer indices to select.
		
		Returns
		-------
		Table
	**/
	public function select(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.set_column(self, int i, field_, column)
		
		Replace column in Table at position.
		
		Parameters
		----------
		i : int
		    Index to place the column at.
		field_ : str or Field
		    If a string is passed then the type is deduced from the column
		    data.
		column : Array, list of Array, or values coercible to arrays
		    Column data.
		
		Returns
		-------
		Table
		    New table with the passed column set.
	**/
	public function set_column(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Dimensions of the table: (#rows, #columns).
		
		Returns
		-------
		(int, int)
		    Number of rows and number of columns.
	**/
	public var shape : Dynamic;
	/**
		Table.slice(self, offset=0, length=None)
		
		Compute zero-copy slice of this Table.
		
		Parameters
		----------
		offset : int, default 0
		    Offset from start of table to slice.
		length : int, default None
		    Length of slice (default is until end of table starting from
		    offset).
		
		Returns
		-------
		Table
	**/
	public function slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.sort_by(self, sorting)
		
		Sort the table by one or multiple columns.
		
		Parameters
		----------
		sorting : str or list[tuple(name, order)]
		    Name of the column to use to sort (ascending), or
		    a list of multiple sorting conditions where
		    each entry is a tuple with column name
		    and sorting order ("ascending" or "descending")
		
		Returns
		-------
		Table
		    A new table sorted according to the sort keys.
	**/
	public function sort_by(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.take(self, indices)
		
		Select records from a Table. See :func:`pyarrow.compute.take` for full
		usage.
	**/
	public function take(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.to_batches(self, max_chunksize=None, **kwargs)
		
		Convert Table to list of (contiguous) RecordBatch objects.
		
		Parameters
		----------
		max_chunksize : int, default None
		    Maximum size for RecordBatch chunks. Individual chunks may be
		    smaller depending on the chunk layout of individual columns.
		
		Returns
		-------
		list[RecordBatch]
	**/
	public function to_batches(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Table.to_pydict(self)
		
		Convert the Table to a dict or OrderedDict.
		
		Returns
		-------
		dict
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> table = pa.table([
		...     pa.array([1, 2]),
		...     pa.array(["a", "b"])
		... ], names=["int", "str"])
		>>> table.to_pydict()
		{'int': [1, 2], 'str': ['a', 'b']}
	**/
	public function to_pydict(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.to_pylist(self)
		
		Convert the Table to a list of rows / dictionaries.
		
		Returns
		-------
		list
		
		Examples
		--------
		>>> import pyarrow as pa
		>>> table = pa.table([
		...     pa.array([1, 2]),
		...     pa.array(["a", "b"])
		... ], names=["int", "str"])
		>>> table.to_pylist()
		[{'int': 1, 'str': 'a'}, {'int': 2, 'str': 'b'}]
	**/
	public function to_pylist(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.to_string(self, *, show_metadata=False, preview_cols=0)
		
		Return human-readable string representation of Table.
		
		Parameters
		----------
		show_metadata : bool, default False
		    Display Field-level and Schema-level KeyValueMetadata.
		preview_cols : int, default 0
		    Display values of the columns for the first N columns.
		
		Returns
		-------
		str
	**/
	public function to_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.unify_dictionaries(self, MemoryPool memory_pool=None)
		
		Unify dictionaries across all chunks.
		
		This method returns an equivalent table, but where all chunks of
		each column share the same dictionary values.  Dictionary indices
		are transposed accordingly.
		
		Columns without dictionaries are returned unchanged.
		
		Parameters
		----------
		memory_pool : MemoryPool, default None
		    For memory allocations, if required, otherwise use default pool
		
		Returns
		-------
		Table
	**/
	public function unify_dictionaries(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Table.validate(self, *, full=False)
		
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