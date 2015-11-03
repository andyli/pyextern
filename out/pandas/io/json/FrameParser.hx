/* This file is generated, do not edit! */
package pandas.io.json;
@:pythonImport("pandas.io.json", "FrameParser") extern class FrameParser {
	static public var _MIN_STAMPS : Dynamic;
	static public var _STAMP_UNITS : Dynamic;
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
	public function ___init__(json:Dynamic, orient:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(json:Dynamic, orient:Dynamic, ?dtype:Dynamic, ?convert_axes:Dynamic, ?convert_dates:Dynamic, ?keep_default_dates:Dynamic, ?numpy:Dynamic, ?precise_float:Dynamic, ?date_unit:Dynamic):Void;
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
		Return repr(self).
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		try to convert axes 
	**/
	public function _convert_axes():Dynamic;
	static public var _default_orient : Dynamic;
	public function _parse_no_numpy():Dynamic;
	public function _parse_numpy():Dynamic;
	/**
		take a conversion function and possibly recreate the frame 
	**/
	public function _process_converter(f:Dynamic, ?filt:Dynamic):Dynamic;
	static public var _split_keys : Dynamic;
	/**
		try to parse a ndarray like into a column by inferring dtype 
	**/
	public function _try_convert_data(name:Dynamic, data:Dynamic, ?use_dtypes:Dynamic, ?convert_dates:Dynamic):Dynamic;
	public function _try_convert_dates():Dynamic;
	/**
		try to parse a ndarray like into a date column
		try to coerce object in epoch/iso formats and
		integer/float in epcoh formats, return a boolean if parsing
		was successful 
	**/
	public function _try_convert_to_date(data:Dynamic):Dynamic;
	public function _try_convert_types():Dynamic;
	/**
		checks that dict has only the appropriate keys for orient='split'
	**/
	public function check_keys_split(decoded:Dynamic):Dynamic;
	public function parse():Dynamic;
}