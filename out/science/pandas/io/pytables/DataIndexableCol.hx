/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "DataIndexableCol") extern class DataIndexableCol {
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
		compare 2 col items
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?values:Dynamic, ?kind:Dynamic, ?typ:Dynamic, ?cname:Dynamic, ?pos:Dynamic, ?tz:Dynamic, ?ordered:Dynamic, ?table:Dynamic, ?meta:Dynamic, ?metadata:Dynamic, ?dtype:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, ?values:Dynamic, ?kind:Dynamic, ?typ:Dynamic, ?cname:Dynamic, ?pos:Dynamic, ?tz:Dynamic, ?ordered:Dynamic, ?table:Dynamic, ?meta:Dynamic, ?metadata:Dynamic, ?dtype:Dynamic, ?data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function __ne__(other:Dynamic):Dynamic;
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
		Return repr(self).
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
	/**
		Get an appropriately typed and shaped pytables.Col object for values.
	**/
	static public function _get_atom(values:Dynamic):Dynamic;
	static public var _info_fields : Dynamic;
	public var attrs : Dynamic;
	/**
		return my current col description
	**/
	public var col : Dynamic;
	/**
		Convert the data from this selection to the appropriate pandas type.
		
		Parameters
		----------
		values : np.ndarray
		nan_rep :
		encoding : str
		errors : str
		
		Returns
		-------
		index : listlike to become an Index
		data : ndarraylike to become a column
	**/
	public function convert(values:Dynamic, nan_rep:Dynamic, encoding:Dynamic, errors:Dynamic):Dynamic;
	/**
		return my cython values
	**/
	public var cvalues : Dynamic;
	public var description : Dynamic;
	public var dtype_attr : Dynamic;
	/**
		return the PyTables column class for this column
	**/
	static public function get_atom_coltype(kind:Dynamic):Dynamic;
	static public function get_atom_data(shape:Dynamic, kind:Dynamic):Dynamic;
	static public function get_atom_datetime64(shape:Dynamic):Dynamic;
	static public function get_atom_string(shape:Dynamic, itemsize:Dynamic):Dynamic;
	static public function get_atom_timedelta64(shape:Dynamic):Dynamic;
	static public var is_an_indexable : Dynamic;
	static public var is_data_indexable : Dynamic;
	/**
		return whether I am an indexed column
	**/
	public var is_indexed : Dynamic;
	public var itemsize : Dynamic;
	public var kind_attr : Dynamic;
	/**
		maybe set a string col itemsize:
		    min_itemsize can be an integer or a dict with this columns name
		    with an integer size
	**/
	public function maybe_set_size(?min_itemsize:Dynamic):Dynamic;
	public var meta_attr : Dynamic;
	/**
		set the data for this column
	**/
	public function set_attr():Dynamic;
	public function set_data(data:Dynamic):Dynamic;
	/**
		set my state from the passed info
	**/
	public function set_info(info:Dynamic):Dynamic;
	/**
		set the position of this column in the Table
	**/
	public function set_pos(pos:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		return the data
	**/
	public function take_data():Dynamic;
	/**
		set/update the info for this indexable with the key/value
		if there is a conflict raise/warn as needed
	**/
	public function update_info(info:Dynamic):Dynamic;
	public function validate_and_set(handler:Dynamic, append:Dynamic):Dynamic;
	/**
		validate that we have the same order as the existing & same dtype
	**/
	public function validate_attr(append:Dynamic):Dynamic;
	/**
		validate this column: return the compared against itemsize
	**/
	public function validate_col(?itemsize:Dynamic):Dynamic;
	/**
		validate that kind=category does not change the categories
	**/
	public function validate_metadata(handler:Dynamic):Dynamic;
	public function validate_names():Dynamic;
	/**
		set the meta data
	**/
	public function write_metadata(handler:Dynamic):Dynamic;
}