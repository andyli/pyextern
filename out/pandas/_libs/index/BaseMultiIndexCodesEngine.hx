/* This file is generated, do not edit! */
package pandas._libs.index;
@:pythonImport("pandas._libs.index", "BaseMultiIndexCodesEngine") extern class BaseMultiIndexCodesEngine {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function get_indexer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_indexer_non_unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_loc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}