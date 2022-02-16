/* This file is generated, do not edit! */
package pandas.core.dtypes.dtypes;
@:pythonImport("pandas.core.dtypes.dtypes", "PeriodDtype") extern class PeriodDtype {
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
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Construct PeriodArray from pyarrow Array/ChunkedArray.
	**/
	public function __from_arrow__(array:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
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
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Parameters
		----------
		freq : frequency
	**/
	static public function __new__(cls:Dynamic, ?freq:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
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
	static public var _cache_dtypes : Dynamic;
	/**
		Can arrays of this dtype hold NA values?
	**/
	public var _can_hold_na : Dynamic;
	public var _dtype_code : Dynamic;
	/**
		Return the common dtype, if one exists.
		
		Used in `find_common_type` implementation. This is for example used
		to determine the resulting dtype in a concat operation.
		
		If no common dtype exists, return None (which gives the other dtypes
		the chance to determine a common dtype). If all dtypes in the list
		return None, then the common dtype will be "object" dtype (this means
		it is never needed to return "object" dtype from this method itself).
		
		Parameters
		----------
		dtypes : list of dtypes
		    The dtypes for which to determine a common dtype. This is a list
		    of np.dtype or ExtensionDtype instances.
		
		Returns
		-------
		Common dtype (np.dtype or ExtensionDtype) or None
	**/
	public function _get_common_dtype(dtypes:Dynamic):Dynamic;
	/**
		Whether this dtype should be considered boolean.
		
		By default, ExtensionDtypes are assumed to be non-numeric.
		Setting this to True will affect the behavior of several places,
		e.g.
		
		* is_bool
		* boolean indexing
		
		Returns
		-------
		bool
	**/
	public var _is_boolean : Dynamic;
	/**
		Whether columns with this dtype should be considered numeric.
		
		By default ExtensionDtypes are assumed to be non-numeric.
		They'll be excluded from operations that exclude non-numeric
		columns, like (groupby) reductions, plotting, etc.
	**/
	public var _is_numeric : Dynamic;
	static public var _match : Dynamic;
	static public var _metadata : Dynamic;
	static public function _parse_dtype_strict(freq:Dynamic):Dynamic;
	static public var base : Dynamic;
	/**
		Return the array type associated with this dtype.
		
		Returns
		-------
		type
	**/
	static public function construct_array_type():Dynamic;
	/**
		Strict construction from a string, raise a TypeError if not
		possible
	**/
	static public function construct_from_string(string:Dynamic):Dynamic;
	/**
		Corresponding DateOffset object.
		
		This mapping is mainly for backward-compatibility.
	**/
	public var date_offset : Dynamic;
	/**
		Construct an ExtensionArray of this dtype with the given shape.
		
		Analogous to numpy.empty.
		
		Parameters
		----------
		shape : int or tuple[int]
		
		Returns
		-------
		ExtensionArray
	**/
	public function empty(shape:Dynamic):Dynamic;
	/**
		The frequency object of this PeriodDtype.
	**/
	public var freq : Dynamic;
	public var freq_group_code : Dynamic;
	public function from_date_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a boolean if we if the passed type is an actual dtype that we
		can match (via string or type)
	**/
	static public function is_dtype(dtype:Dynamic):Dynamic;
	static public var isbuiltin : Dynamic;
	static public var isnative : Dynamic;
	static public var itemsize : Dynamic;
	static public var kind : Dynamic;
	/**
		Default NA value to use for this type.
		
		This is used in e.g. ExtensionArray.take. This should be the
		user-facing "boxed" version of the NA value, not the physical NA value
		for storage.  e.g. for JSONArray, this is an empty dictionary.
	**/
	public var na_value : Dynamic;
	/**
		A string identifying the data type.
		
		Will be used for display in, e.g. ``Series.dtype``
	**/
	public var name : Dynamic;
	/**
		Ordered list of field names, or None if there are no fields.
		
		This is for compatibility with NumPy arrays, and may be removed in the
		future.
	**/
	public var names : Dynamic;
	static public var num : Dynamic;
	/**
		clear the cache
	**/
	static public function reset_cache():Dynamic;
	public var resolution : Dynamic;
	static public var shape : Dynamic;
	static public var str : Dynamic;
	static public var subdtype : Dynamic;
	/**
		Represents a period of time.
		
		Parameters
		----------
		value : Period or str, default None
		    The time period represented (e.g., '4Q2005').
		freq : str, default None
		    One of pandas period strings or corresponding objects.
		ordinal : int, default None
		    The period offset from the proleptic Gregorian epoch.
		year : int, default None
		    Year value of the period.
		month : int, default 1
		    Month value of the period.
		quarter : int, default None
		    Quarter value of the period.
		day : int, default 1
		    Day value of the period.
		hour : int, default 0
		    Hour value of the period.
		minute : int, default 0
		    Minute value of the period.
		second : int, default 0
		    Second value of the period.
	**/
	static public function type(?value:Dynamic, ?freq:Dynamic, ?ordinal:Dynamic, ?year:Dynamic, ?month:Dynamic, ?quarter:Dynamic, ?day:Dynamic, ?hour:Dynamic, ?minute:Dynamic, ?second:Dynamic):Dynamic;
}