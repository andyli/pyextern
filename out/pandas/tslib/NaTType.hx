/* This file is generated, do not edit! */
package pandas.tslib;
@:pythonImport("pandas.tslib", "NaTType") extern class NaTType {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
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
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		Formats self with strftime.
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
	public function __int__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __long__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	static public function __new__(cls:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __str__():Dynamic;
	/**
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _date_repr : Dynamic;
	public function _get_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _repr_base : Dynamic;
	public var _time_repr : Dynamic;
	public var asm8 : Dynamic;
	public function astimezone(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function combine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function ctime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function date(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var day : Dynamic;
	public var dayofweek : Dynamic;
	public var dayofyear : Dynamic;
	public var days_in_month : Dynamic;
	public var daysinmonth : Dynamic;
	public function dst(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function fromordinal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function fromtimestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var hour : Dynamic;
	public function isocalendar(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function isoformat(?sep:Dynamic):Dynamic;
	public function isoweekday(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var max : Dynamic;
	public var microsecond : Dynamic;
	public var millisecond : Dynamic;
	static public var min : Dynamic;
	public var minute : Dynamic;
	public var month : Dynamic;
	public var nanosecond : Dynamic;
	public function now(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var offset : Dynamic;
	public var quarter : Dynamic;
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var resolution : Dynamic;
	public var second : Dynamic;
	public function strftime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function strptime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function time(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function timestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function timetuple(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function timetz(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_datetime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a numpy.datetime64 object with 'ns' precision 
	**/
	public function to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function today(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function toordinal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function total_seconds(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var tzinfo : Dynamic;
	public function tzname(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function utcfromtimestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function utcnow(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function utcoffset(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function utctimetuple(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var value : Dynamic;
	public var week : Dynamic;
	public function weekday(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var weekday_name : Dynamic;
	public var year : Dynamic;
}