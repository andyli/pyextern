/* This file is generated, do not edit! */
package pandas.core.indexes.multi;
@:pythonImport("pandas.core.indexes.multi", "MultiIndexUIntEngine") extern class MultiIndexUIntEngine {
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
		Parameters
		----------
		levels : list-like of numpy arrays
		    Levels of the MultiIndex.
		labels : list-like of numpy arrays of integer dtype
		    Labels of the MultiIndex.
		offsets : numpy array of uint64 dtype
		    Pre-calculated offsets, one for each level of the index.
	**/
	@:native("__init__")
	public function ___init__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		levels : list-like of numpy arrays
		    Levels of the MultiIndex.
		labels : list-like of numpy arrays of integer dtype
		    Labels of the MultiIndex.
		offsets : numpy array of uint64 dtype
		    Pre-calculated offsets, one for each level of the index.
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
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
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
	/**
		Transform combination(s) of uint64 in one uint64 (each), in a strictly
		monotonic way (i.e. respecting the lexicographic order of integer
		combinations): see BaseMultiIndexCodesEngine documentation.
		
		Parameters
		----------
		codes : 1- or 2-dimensional array of dtype uint64
		    Combinations of integers (one per row)
		
		Returns
		-------
		scalar or 1-dimensional array, of dtype uint64
		    Integer(s) representing one combination (each).
	**/
	public function _codes_to_ints(codes:Dynamic):Dynamic;
	/**
		Map the requested list of (tuple) keys to their integer representations
		for searching in the underlying integer index.
		
		Parameters
		----------
		target : MultiIndex
		
		Returns
		------
		int_keys : 1-dimensional array of dtype uint64 or object
		    Integers representing one combination each
	**/
	public function _extract_level_codes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function clear_mapping(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an array giving the positions of each value of `target` in
		`self.values`, where -1 represents a value in `target` which does not
		appear in `self.values`
		
		Parameters
		----------
		target : np.ndarray
		
		Returns
		-------
		np.ndarray[intp_t, ndim=1] of the indexer of `target` into
		`self.values`
	**/
	public function get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an array giving the positions of each value of `target` in
		`values`, where -1 represents a value in `target` which does not
		appear in `values`
		
		If `method` is "backfill" then the position for a value in `target`
		which does not appear in `values` is that of the next greater value
		in `values` (if one exists), and -1 if there is no such value.
		
		Similarly, if the method is "pad" then the position for a value in
		`target` which does not appear in `values` is that of the next smaller
		value in `values` (if one exists), and -1 if there is no such value.
		
		Parameters
		----------
		target: ndarray[object] of tuples
		    need not be sorted, but all must have the same length, which must be
		    the same as the length of all tuples in `values`
		values : ndarray[object] of tuples
		    must be sorted and all have the same length.  Should be the set of
		    the MultiIndex's values.
		method: string
		    "backfill" or "pad"
		limit: int or None
		    if provided, limit the number of fills to this value
		
		Returns
		-------
		np.ndarray[intp_t, ndim=1] of the indexer of `target` into `values`,
		filled with the `method` (and optionally `limit`) specified
	**/
	public function get_indexer_with_fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_mapping_populated : Dynamic;
	public var is_monotonic_decreasing : Dynamic;
	public var is_monotonic_increasing : Dynamic;
	public var is_unique : Dynamic;
	public var mapping : Dynamic;
	public var over_size_threshold : Dynamic;
	/**
		return the sizeof our mapping 
	**/
	public function sizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var values : Dynamic;
}