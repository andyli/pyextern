/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "AppendableMultiFrameTable") extern class AppendableMultiFrameTable {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
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
		return the axis for c
	**/
	public function __getitem__(c:Dynamic):Dynamic;
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
	public function ___init__(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?index_axes:Dynamic, ?non_index_axes:Dynamic, ?values_axes:Dynamic, ?data_columns:Dynamic, ?info:Dynamic, ?nan_rep:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?index_axes:Dynamic, ?non_index_axes:Dynamic, ?values_axes:Dynamic, ?data_columns:Dynamic, ?info:Dynamic, ?nan_rep:Dynamic):Void;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		return a pretty representation of myself
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _complevel : Dynamic;
	/**
		Create and return the axes.
		
		Parameters
		----------
		axes: list or None
		    The names or numbers of the axes to create.
		obj : DataFrame
		    The object to create axes on.
		validate: bool, default True
		    Whether to validate the obj against an existing object already written.
		nan_rep :
		    A value to use for string column nan_rep.
		data_columns : List[str], True, or None, default None
		    Specify the columns that we want to create to allow indexing on.
		
		    * True : Use all available columns.
		    * None : Use no columns.
		    * List[str] : Use the specified columns.
		
		min_itemsize: Dict[str, int] or None, default None
		    The min itemsize for a column in bytes.
	**/
	public function _create_axes(axes:Dynamic, obj:Dynamic, ?validate:Dynamic, ?nan_rep:Dynamic, ?data_columns:Dynamic, ?min_itemsize:Dynamic):Dynamic;
	public var _filters : Dynamic;
	public var _fletcher32 : Dynamic;
	static public function _get_blocks_and_items(frame:Dynamic, table_exists:Dynamic, new_non_index_axes:Dynamic, values_axes:Dynamic, data_columns:Dynamic):Dynamic;
	/**
		return the metadata pathname for this key
	**/
	public function _get_metadata_path(key:Dynamic):Dynamic;
	public var _handle : Dynamic;
	static public var _re_levels : Dynamic;
	/**
		Create the axes sniffed from the table.
		
		Parameters
		----------
		where : ???
		start : int or None, default None
		stop : int or None, default None
		
		Returns
		-------
		List[Tuple[index_values, column_values]]
	**/
	public function _read_axes(where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public var attrs : Dynamic;
	public var axes : Dynamic;
	public function copy():Dynamic;
	/**
		create the description of the table from the axes & values
	**/
	public function create_description(complib:Dynamic, complevel:Dynamic, fletcher32:Dynamic, expectedrows:Dynamic):Dynamic;
	/**
		Create a pytables index on the specified columns.
		
		Parameters
		----------
		columns : None, bool, or listlike[str]
		    Indicate which columns to create an index on.
		
		    * False : Do not create any indexes.
		    * True : Create indexes on all columns.
		    * None : Create indexes on all columns.
		    * listlike : Create indexes on the given columns.
		
		optlevel : int or None, default None
		    Optimization level, if None, pytables defaults to 6.
		kind : str or None, default None
		    Kind of index, if None, pytables defaults to "medium".
		
		Raises
		------
		TypeError if trying to create an index on a complex-type column.
		
		Notes
		-----
		Cannot index Time64Col or ComplexCol.
		Pytables must be >= 3.0.
	**/
	public function create_index(?columns:Dynamic, ?optlevel:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		return a tuple of my permutated axes, non_indexable at the front
	**/
	public var data_orientation : Dynamic;
	/**
		support fully deleting the node in its entirety (only) - where
		specification must be None
	**/
	public function delete(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public var description : Dynamic;
	public var dtype : Dynamic;
	static public var format_type : Dynamic;
	/**
		retrieve our attributes
	**/
	public function get_attrs():Dynamic;
	/**
		these are written transposed
	**/
	static public function get_object(obj:Dynamic, transposed:Dynamic):Dynamic;
	/**
		return a list of my index cols
	**/
	public function index_cols():Dynamic;
	/**
		create/cache the indexables if they don't exist
	**/
	public var indexables : Dynamic;
	/**
		infer the axes of my storer
		return a boolean indicating if we have a valid storer or not
	**/
	public function infer_axes():Dynamic;
	/**
		has this table been created
	**/
	public var is_exists : Dynamic;
	/**
		the levels attribute is 1 or a list in the case of a multi-index
	**/
	public var is_multi_index : Dynamic;
	public var is_old_version : Dynamic;
	static public var is_table : Dynamic;
	public var is_transposed : Dynamic;
	static public var levels : Dynamic;
	/**
		the number of total columns in the values axes
	**/
	public var ncols : Dynamic;
	static public var ndim : Dynamic;
	public var nrows : Dynamic;
	/**
		based on our axes, compute the expected nrows
	**/
	public var nrows_expected : Dynamic;
	/**
		Two-dimensional, size-mutable, potentially heterogeneous tabular data.
		
		Data structure also contains labeled axes (rows and columns).
		Arithmetic operations align on both row and column labels. Can be
		thought of as a dict-like container for Series objects. The primary
		pandas data structure.
		
		Parameters
		----------
		data : ndarray (structured or homogeneous), Iterable, dict, or DataFrame
		    Dict can contain Series, arrays, constants, dataclass or list-like objects. If
		    data is a dict, column order follows insertion-order. If a dict contains Series
		    which have an index defined, it is aligned by its index.
		
		    .. versionchanged:: 0.25.0
		       If data is a list of dicts, column order follows insertion-order.
		
		index : Index or array-like
		    Index to use for resulting frame. Will default to RangeIndex if
		    no indexing information part of input data and no index provided.
		columns : Index or array-like
		    Column labels to use for resulting frame when data does not have them,
		    defaulting to RangeIndex(0, 1, 2, ..., n). If data contains column labels,
		    will perform column selection instead.
		dtype : dtype, default None
		    Data type to force. Only a single dtype is allowed. If None, infer.
		copy : bool or None, default None
		    Copy data from inputs.
		    For dict data, the default of None behaves like ``copy=True``.  For DataFrame
		    or 2d ndarray input, the default of None behaves like ``copy=False``.
		
		    .. versionchanged:: 1.3.0
		
		See Also
		--------
		DataFrame.from_records : Constructor from tuples, also record arrays.
		DataFrame.from_dict : From dicts of Series, arrays, or dicts.
		read_csv : Read a comma-separated values (csv) file into DataFrame.
		read_table : Read general delimited file into DataFrame.
		read_clipboard : Read text from clipboard into DataFrame.
		
		Examples
		--------
		Constructing DataFrame from a dictionary.
		
		>>> d = {'col1': [1, 2], 'col2': [3, 4]}
		>>> df = pd.DataFrame(data=d)
		>>> df
		   col1  col2
		0     1     3
		1     2     4
		
		Notice that the inferred dtype is int64.
		
		>>> df.dtypes
		col1    int64
		col2    int64
		dtype: object
		
		To enforce a single dtype:
		
		>>> df = pd.DataFrame(data=d, dtype=np.int8)
		>>> df.dtypes
		col1    int8
		col2    int8
		dtype: object
		
		Constructing DataFrame from a dictionary including Series:
		
		>>> d = {'col1': [0, 1, 2, 3], 'col2': pd.Series([2, 3], index=[2, 3])}
		>>> pd.DataFrame(data=d, index=[0, 1, 2, 3])
		   col1  col2
		0     0   NaN
		1     1   NaN
		2     2   2.0
		3     3   3.0
		
		Constructing DataFrame from numpy ndarray:
		
		>>> df2 = pd.DataFrame(np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]]),
		...                    columns=['a', 'b', 'c'])
		>>> df2
		   a  b  c
		0  1  2  3
		1  4  5  6
		2  7  8  9
		
		Constructing DataFrame from a numpy ndarray that has labeled columns:
		
		>>> data = np.array([(1, 2, 3), (4, 5, 6), (7, 8, 9)],
		...                 dtype=[("a", "i4"), ("b", "i4"), ("c", "i4")])
		>>> df3 = pd.DataFrame(data, columns=['c', 'a'])
		...
		>>> df3
		   c  a
		0  3  1
		1  6  4
		2  9  7
		
		Constructing DataFrame from dataclass:
		
		>>> from dataclasses import make_dataclass
		>>> Point = make_dataclass("Point", [("x", int), ("y", int)])
		>>> pd.DataFrame([Point(0, 0), Point(0, 3), Point(2, 3)])
		   x  y
		0  0  0
		1  0  3
		2  2  3
	**/
	static public function obj_type(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var pandas_kind : Dynamic;
	public var pandas_type : Dynamic;
	public var pathname : Dynamic;
	/**
		process axes filters
	**/
	public function process_axes(obj:Dynamic, selection:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		return a dict of the kinds allowable columns for this object
	**/
	public function queryables():Dynamic;
	public function read(?where:Dynamic, ?columns:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		return a single column from the table, generally only indexables
		are interesting
	**/
	public function read_column(column:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		select coordinates (row numbers) from a table; return the
		coordinates object
	**/
	public function read_coordinates(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		return the meta data array for this key
	**/
	public function read_metadata(key:Dynamic):Dynamic;
	/**
		set our table type & indexables
	**/
	public function set_attrs():Dynamic;
	/**
		set my pandas type & version
	**/
	public function set_object_info():Dynamic;
	public var shape : Dynamic;
	/**
		return my storable
	**/
	public var storable : Dynamic;
	/**
		return the table group (this is my storable)
	**/
	public var table : Dynamic;
	static public var table_type : Dynamic;
	public var table_type_short : Dynamic;
	/**
		validate against an existing table
	**/
	public function validate(other:Dynamic):Dynamic;
	/**
		take the input data_columns and min_itemize and create a data
		columns spec
	**/
	public function validate_data_columns(data_columns:Dynamic, min_itemsize:Dynamic, non_index_axes:Dynamic):Dynamic;
	/**
		validate the min_itemsize doesn't contain items that are not in the
		axes this needs data_columns to be defined
	**/
	public function validate_min_itemsize(min_itemsize:Dynamic):Dynamic;
	/**
		validate that we can store the multi-index; reset and return the
		new object
	**/
	public function validate_multiindex(obj:Dynamic):Dynamic;
	/**
		are we trying to operate on an old version?
	**/
	public function validate_version(?where:Dynamic):Dynamic;
	/**
		return a list of my values cols
	**/
	public function values_cols():Dynamic;
	/**
		compute and set our version
	**/
	public var version : Dynamic;
	public function write(obj:Dynamic, ?data_columns:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		we form the data into a 2-d including indexes,values,mask write chunk-by-chunk
	**/
	public function write_data(chunksize:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Parameters
		----------
		rows : an empty memory space where we are putting the chunk
		indexes : an array of the indexes
		mask : an array of the masks
		values : an array of the values
	**/
	public function write_data_chunk(rows:Dynamic, indexes:Dynamic, mask:Dynamic, values:Dynamic):Dynamic;
	/**
		Write out a metadata array to the key as a fixed-format Series.
		
		Parameters
		----------
		key : str
		values : ndarray
	**/
	public function write_metadata(key:Dynamic, values:Dynamic):Dynamic;
}