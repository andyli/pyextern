/* This file is generated, do not edit! */
package pandas._libs.hashtable;
@:pythonImport("pandas._libs.hashtable", "Float64HashTable") extern class Float64HashTable {
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
		Calculate unique values and labels (no sorting!)
		
		Parameters
		----------
		values : ndarray[float64]
		    Array of values of which unique will be calculated
		uniques : Float64Vector
		    Vector into which uniques will be written
		count_prior : Py_ssize_t, default 0
		    Number of existing entries in uniques
		na_sentinel : Py_ssize_t, default -1
		    Sentinel value used for all NA-values in inverse
		na_value : object, default None
		    Value to identify as missing. If na_value is None, then
		    any value "val" satisfying val != val is considered missing.
		    If na_value is not None, then _additionally_, any value "val"
		    satisfying val == na_value is considered missing.
		ignore_na : boolean, default False
		    Whether NA-values should be ignored for calculating the uniques. If
		    True, the labels corresponding to missing values will be set to
		    na_sentinel.
		return_inverse : boolean, default False
		    Whether the mapping of the original array values to their location
		    in the vector of uniques should be returned.
		
		Returns
		-------
		uniques : ndarray[float64]
		    Unique values of input, not sorted
		labels : ndarray[int64] (if return_inverse=True)
		    The labels from values to uniques
	**/
	public function _unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate unique values and labels (no sorting!)
		
		Missing values are not included in the "uniques" for this method.
		The labels for any missing values will be set to "na_sentinel"
		
		Parameters
		----------
		values : ndarray[float64]
		    Array of values of which unique will be calculated
		na_sentinel : Py_ssize_t, default -1
		    Sentinel value used for all NA-values in inverse
		na_value : object, default None
		    Value to identify as missing. If na_value is None, then
		    any value "val" satisfying val != val is considered missing.
		    If na_value is not None, then _additionally_, any value "val"
		    satisfying val == na_value is considered missing.
		
		Returns
		-------
		uniques : ndarray[float64]
		    Unique values of input, not sorted
		labels : ndarray[int64]
		    The labels from values to uniques
	**/
	public function factorize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_labels(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_labels_groupby(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function lookup(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function map_locations(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return the size of my table in bytes 
	**/
	public function sizeof(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculate unique values and labels (no sorting!)
		
		Parameters
		----------
		values : ndarray[float64]
		    Array of values of which unique will be calculated
		return_inverse : boolean, default False
		    Whether the mapping of the original array values to their location
		    in the vector of uniques should be returned.
		
		Returns
		-------
		uniques : ndarray[float64]
		    Unique values of input, not sorted
		labels : ndarray[int64] (if return_inverse)
		    The labels from values to uniques
	**/
	public function unique(args:haxe.extern.Rest<Dynamic>):Dynamic;
}