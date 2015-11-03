/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "LegacyFrameTable") extern class LegacyFrameTable {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a pretty representatgion of myself 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _complevel : Dynamic;
	public var _complib : Dynamic;
	public var _filters : Dynamic;
	public var _fletcher32 : Dynamic;
	/**
		return the metadata pathname for this key 
	**/
	public function _get_metadata_path(key:Dynamic):Dynamic;
	public var _handle : Dynamic;
	static public var _indexables : Dynamic;
	public var attrs : Dynamic;
	public var axes : Dynamic;
	public function copy():Dynamic;
	/**
		create and return the axes
		leagcy tables create an indexable column, indexable index,
		non-indexable fields
		
		    Parameters:
		    -----------
		    axes: a list of the axes in order to create (names or numbers of
		        the axes)
		    obj : the object to create axes on
		    validate: validate the obj against an existing object already
		        written
		    min_itemsize: a dict of the min size for a column in bytes
		    nan_rep : a values to use for string column nan_rep
		    encoding : the encoding for string values
		    data_columns : a list of columns that we want to create separate to
		        allow indexing (or True will force all columns)
	**/
	public function create_axes(axes:Dynamic, obj:Dynamic, ?validate:Dynamic, ?nan_rep:Dynamic, ?data_columns:Dynamic, ?min_itemsize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		create the description of the table from the axes & values 
	**/
	public function create_description(?complib:Dynamic, ?complevel:Dynamic, ?fletcher32:Dynamic, ?expectedrows:Dynamic):Dynamic;
	/**
		Create a pytables index on the specified columns
		  note: cannot index Time64Col() or ComplexCol currently;
		  PyTables must be >= 3.0
		
		Paramaters
		----------
		columns : False (don't create an index), True (create all columns
		    index), None or list_like (the indexers to index)
		optlevel: optimization level (defaults to 6)
		kind    : kind of index (defaults to 'medium')
		
		Exceptions
		----------
		raises if the node is not a table
	**/
	public function create_index(?columns:Dynamic, ?optlevel:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		return a tuple of my permutated axes, non_indexable at the front
	**/
	public var data_orientation : Dynamic;
	/**
		support fully deleting the node in its entirety (only) - where specification must be None 
	**/
	public function delete(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var description : Dynamic;
	public var dtype : Dynamic;
	public var format_type : Dynamic;
	/**
		retrieve our attributes 
	**/
	public function get_attrs():Dynamic;
	/**
		return the data for this obj 
	**/
	public function get_object(obj:Dynamic):Dynamic;
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
	static public var is_shape_reversed : Dynamic;
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
		Represents wide format panel data, stored as 3-dimensional array
		
		Parameters
		----------
		data : ndarray (items x major x minor), or dict of DataFrames
		items : Index or array-like
		    axis=0
		major_axis : Index or array-like
		    axis=1
		minor_axis : Index or array-like
		    axis=2
		dtype : dtype, default None
		    Data type to force, otherwise infer
		copy : boolean, default False
		    Copy data from inputs. Only affects DataFrame / 2d ndarray input
	**/
	static public function obj_type(?data:Dynamic, ?items:Dynamic, ?major_axis:Dynamic, ?minor_axis:Dynamic, ?copy:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var pandas_kind : Dynamic;
	public var pandas_type : Dynamic;
	public var pathname : Dynamic;
	/**
		process axes filters 
	**/
	public function process_axes(obj:Dynamic, ?columns:Dynamic):Dynamic;
	/**
		return a dict of the kinds allowable columns for this object 
	**/
	public function queryables():Dynamic;
	/**
		we have n indexable columns, with an arbitrary number of data
		axes
	**/
	public function read(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		create and return the axes sniffed from the table: return boolean
		for success
	**/
	public function read_axes(where:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a single column from the table, generally only indexables
		are interesting
	**/
	public function read_column(column:Dynamic, ?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		select coordinates (row numbers) from a table; return the
		coordinates object
	**/
	public function read_coordinates(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the meta data array for this key 
	**/
	public function read_metadata(key:Dynamic):Dynamic;
	/**
		set our table type & indexables 
	**/
	public function set_attrs():Dynamic;
	/**
		update our table index info 
	**/
	public function set_info():Dynamic;
	/**
		set my pandas type & version 
	**/
	public function set_object_info():Dynamic;
	/**
		compute and set our version 
	**/
	public function set_version():Dynamic;
	public var shape : Dynamic;
	public var storable : Dynamic;
	public var storage_obj_type : Dynamic;
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
	public function validate_data_columns(data_columns:Dynamic, min_itemsize:Dynamic):Dynamic;
	/**
		create / validate metadata 
	**/
	public function validate_metadata(existing:Dynamic):Dynamic;
	/**
		validate the min_itemisze doesn't contain items that are not in the
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
	public function write(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		write out a meta data array to the key as a fixed-format Series
		
		Parameters
		----------
		key : string
		values : ndarray
	**/
	public function write_metadata(key:Dynamic, values:Dynamic):Dynamic;
}