/* This file is generated, do not edit! */
package pandas.tslib;
@:pythonImport("pandas.tslib", "_Timedelta") extern class _Timedelta {
	/**
		abs(self)
	**/
	public function __abs__():Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
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
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	/**
		__reduce__() -> (cls, state)
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
		Return value//self.
	**/
	public function __rfloordiv__(value:Dynamic):Dynamic;
	/**
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Return value/self.
	**/
	public function __rtruediv__(value:Dynamic):Dynamic;
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
	static public var _d : Dynamic;
	/**
		compute the components
	**/
	public function _ensure_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _h : Dynamic;
	public function _has_ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _m : Dynamic;
	static public var _ms : Dynamic;
	static public var _ns : Dynamic;
	static public var _s : Dynamic;
	static public var _sign : Dynamic;
	static public var _us : Dynamic;
	/**
		Number of days.
	**/
	static public var days : Dynamic;
	static public var freq : Dynamic;
	static public var is_populated : Dynamic;
	static public var max : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second).
	**/
	static public var microseconds : Dynamic;
	static public var min : Dynamic;
	static public var resolution : Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day).
	**/
	static public var seconds : Dynamic;
	/**
		return an actual datetime.timedelta object
		note: we lose nanosecond resolution if any
	**/
	public function to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Total seconds in the duration.
	**/
	public function total_seconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var value : Dynamic;
}