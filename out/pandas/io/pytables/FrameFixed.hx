/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "FrameFixed") extern class FrameFixed {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a pretty representation of myself 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _alias_to_class(alias:Dynamic):Dynamic;
	public function _class_to_alias(cls:Dynamic):Dynamic;
	public var _complevel : Dynamic;
	public var _complib : Dynamic;
	public var _filters : Dynamic;
	public var _fletcher32 : Dynamic;
	public function _get_index_factory(klass:Dynamic):Dynamic;
	public var _handle : Dynamic;
	static public var _index_type_map : Dynamic;
	/**
		Returns true if any axis is zero length.
	**/
	public function _is_empty_array(shape:Dynamic):Dynamic;
	static public var _reverse_index_map : Dynamic;
	static public var attributes : Dynamic;
	public var attrs : Dynamic;
	public function copy():Dynamic;
	/**
		support fully deleting the node in its entirety (only) - where
		specification must be None
	**/
	public function delete(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var format_type : Dynamic;
	/**
		retrieve our attributes 
	**/
	public function get_attrs():Dynamic;
	/**
		infer the axes of my storer
		return a boolean indicating if we have a valid storer or not 
	**/
	public function infer_axes():Dynamic;
	public var is_exists : Dynamic;
	public var is_old_version : Dynamic;
	static public var is_shape_reversed : Dynamic;
	static public var is_table : Dynamic;
	static public var ndim : Dynamic;
	public var nrows : Dynamic;
	/**
		Two-dimensional size-mutable, potentially heterogeneous tabular data
		structure with labeled axes (rows and columns). Arithmetic operations
		align on both row and column labels. Can be thought of as a dict-like
		container for Series objects. The primary pandas data structure.
		
		Parameters
		----------
		data : ndarray (structured or homogeneous), Iterable, dict, or DataFrame
		    Dict can contain Series, arrays, constants, or list-like objects
		
		    .. versionchanged :: 0.23.0
		       If data is a dict, argument order is maintained for Python 3.6
		       and later.
		
		index : Index or array-like
		    Index to use for resulting frame. Will default to RangeIndex if
		    no indexing information part of input data and no index provided
		columns : Index or array-like
		    Column labels to use for resulting frame. Will default to
		    RangeIndex (0, 1, 2, ..., n) if no column labels are provided
		dtype : dtype, default None
		    Data type to force. Only a single dtype is allowed. If None, infer
		copy : boolean, default False
		    Copy data from inputs. Only affects DataFrame / 2d ndarray input
		
		See Also
		--------
		DataFrame.from_records : Constructor from tuples, also record arrays.
		DataFrame.from_dict : From dicts of Series, arrays, or dicts.
		DataFrame.from_items : From sequence of (key, value) pairs
		    pandas.read_csv, pandas.read_table, pandas.read_clipboard.
		
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
		
		Constructing DataFrame from numpy ndarray:
		
		>>> df2 = pd.DataFrame(np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]]),
		...                    columns=['a', 'b', 'c'])
		>>> df2
		   a  b  c
		0  1  2  3
		1  4  5  6
		2  7  8  9
	**/
	static public function obj_type(?data:Dynamic, ?index:Dynamic, ?columns:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	static public var pandas_kind : Dynamic;
	public var pandas_type : Dynamic;
	public var pathname : Dynamic;
	public function read(?start:Dynamic, ?stop:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		read an array for the specified node (off of group 
	**/
	public function read_array(key:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public function read_block_index(key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_index(key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_index_node(node:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public function read_multi_index(key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function read_sparse_intindex(key:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		set our object attributes 
	**/
	public function set_attrs():Dynamic;
	/**
		set my pandas type & version 
	**/
	public function set_object_info():Dynamic;
	/**
		compute and set our version 
	**/
	public function set_version():Dynamic;
	public var shape : Dynamic;
	/**
		return my storable 
	**/
	public var storable : Dynamic;
	public var storage_obj_type : Dynamic;
	/**
		validate against an existing storable 
	**/
	public function validate(other:Dynamic):Dynamic;
	/**
		remove table keywords from kwargs and return
		raise if any keywords are passed which are not-None
	**/
	public function validate_read(kwargs:Dynamic):Dynamic;
	/**
		are we trying to operate on an old version? 
	**/
	public function validate_version(?where:Dynamic):Dynamic;
	public function write(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function write_array(key:Dynamic, value:Dynamic, ?items:Dynamic):Dynamic;
	/**
		write a 0-len array 
	**/
	public function write_array_empty(key:Dynamic, value:Dynamic):Dynamic;
	public function write_block_index(key:Dynamic, index:Dynamic):Dynamic;
	public function write_index(key:Dynamic, index:Dynamic):Dynamic;
	public function write_multi_index(key:Dynamic, index:Dynamic):Dynamic;
	public function write_sparse_intindex(key:Dynamic, index:Dynamic):Dynamic;
}