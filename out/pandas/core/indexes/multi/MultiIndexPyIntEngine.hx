/* This file is generated, do not edit! */
package pandas.core.indexes.multi;
@:pythonImport("pandas.core.indexes.multi", "MultiIndexPyIntEngine") extern class MultiIndexPyIntEngine {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Parameters
		----------
		levels : list-like of numpy arrays
		    Levels of the MultiIndex
		labels : list-like of numpy arrays of integer dtype
		    Labels of the MultiIndex
		offsets : numpy array of uint64 dtype
		    Pre-calculated offsets, one for each level of the index
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		levels : list-like of numpy arrays
		    Levels of the MultiIndex
		labels : list-like of numpy arrays of integer dtype
		    Labels of the MultiIndex
		offsets : numpy array of uint64 dtype
		    Pre-calculated offsets, one for each level of the index
	**/
	public function new(args:haxe.extern.Rest<Dynamic>):Void;
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
	static public var __pyx_vtable__ : Dynamic;
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _base(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _call_map_locations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _call_monotonic(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Transform combination(s) of uint64 in one Python integer (each), in a
		strictly monotonic way (i.e. respecting the lexicographic order of
		integer combinations): see BaseMultiIndexCodesEngine documentation.
		
		Parameters
		----------
		codes : 1- or 2-dimensional array of dtype uint64
		    Combinations of integers (one per row)
		
		Returns
		------
		int_keys : int, or 1-dimensional array of dtype object
		    Integer(s) representing one combination (each)
	**/
	public function _codes_to_ints(codes:Dynamic):Dynamic;
	/**
		Map the requested list of (tuple) keys to their integer representations
		for searching in the underlying integer index.
		
		Parameters
		----------
		target : list-like of keys
		    Each key is a tuple, with a label for each level of the index.
		
		Returns
		------
		int_keys : 1-dimensional array of dtype uint64 or object
		    Integers representing one combination each
	**/
	public function _extract_level_codes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_backfill_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_pad_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		arr : 1-dimensional ndarray
	**/
	public function get_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_mapping_populated : Dynamic;
	public var is_monotonic_decreasing : Dynamic;
	public var is_monotonic_increasing : Dynamic;
	public var is_unique : Dynamic;
	public var mapping : Dynamic;
	public var over_size_threshold : Dynamic;
	/**
		arr : 1-dimensional ndarray
	**/
	public function set_value(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the sizeof our mapping 
	**/
	public function sizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var vgetter : Dynamic;
}