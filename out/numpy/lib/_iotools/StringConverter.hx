/* This file is generated, do not edit! */
package numpy.lib._iotools;
@:pythonImport("numpy.lib._iotools", "StringConverter") extern class StringConverter {
	/**
		Call self as a function.
	**/
	public function __call__(value:Dynamic):Dynamic;
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
	public function ___init__(?dtype_or_func:Dynamic, ?_default:Dynamic, ?missing_values:Dynamic, ?locked:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var _defaultfill : Dynamic;
	static public var _defaultfunc : Dynamic;
	static public var _defaulttype : Dynamic;
	/**
		Returns dtype for datetime64 and type of dtype otherwise.
	**/
	static public function _dtypeortype(dtype:Dynamic):Dynamic;
	/**
		Returns the dtype of the input variable.
	**/
	static public function _getdtype(val:Dynamic):Dynamic;
	/**
		Returns the type of the dtype of the input variable.
	**/
	static public function _getsubdtype(val:Dynamic):Dynamic;
	public function _loose_call(value:Dynamic):Dynamic;
	static public var _mapper : Dynamic;
	public function _strict_call(value:Dynamic):Dynamic;
	public function iterupgrade(value:Dynamic):Dynamic;
	/**
		Set StringConverter attributes directly.
		
		Parameters
		----------
		func : function
		    Conversion function.
		default : any, optional
		    Value to return by default, that is, when the string to be
		    converted is flagged as missing. If not given,
		    `StringConverter` tries to supply a reasonable default value.
		testing_value : str, optional
		    A string representing a standard input value of the converter.
		    This string is used to help defining a reasonable default
		    value.
		missing_values : sequence of str, optional
		    Sequence of strings indicating a missing value.
		locked : bool, optional
		    Whether the StringConverter should be locked to prevent
		    automatic upgrade or not. Default is False.
		
		Notes
		-----
		`update` takes the same parameters as the constructor of
		`StringConverter`, except that `func` does not accept a `dtype`
		whereas `dtype_or_func` in the constructor does.
	**/
	public function update(func:Dynamic, ?_default:Dynamic, ?testing_value:Dynamic, ?missing_values:Dynamic, ?locked:Dynamic):Dynamic;
	/**
		Find the best converter for a given string, and return the result.
		
		The supplied string `value` is converted by testing different
		converters in order. First the `func` method of the
		`StringConverter` instance is tried, if this fails other available
		converters are tried.  The order in which these other converters
		are tried is determined by the `_status` attribute of the instance.
		
		Parameters
		----------
		value : str
		    The string to convert.
		
		Returns
		-------
		out : any
		    The result of converting `value` with the appropriate converter.
	**/
	public function upgrade(value:Dynamic):Dynamic;
	/**
		Upgrade the mapper of a StringConverter by adding a new function and
		its corresponding default.
		
		The input function (or sequence of functions) and its associated
		default value (if any) is inserted in penultimate position of the
		mapper.  The corresponding type is estimated from the dtype of the
		default value.
		
		Parameters
		----------
		func : var
		    Function, or sequence of functions
		
		Examples
		--------
		>>> import dateutil.parser
		>>> import datetime
		>>> dateparser = datetustil.parser.parse
		>>> defaultdate = datetime.date(2000, 1, 1)
		>>> StringConverter.upgrade_mapper(dateparser, default=defaultdate)
		    
	**/
	static public function upgrade_mapper(func:Dynamic, ?_default:Dynamic):Dynamic;
}