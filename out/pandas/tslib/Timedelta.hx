/* This file is generated, do not edit! */
package pandas.tslib;
@:pythonImport("pandas.tslib", "Timedelta") extern class Timedelta {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
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
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __inv__():Dynamic;
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
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	static public function __new__(cls:Dynamic, ?value:Dynamic, ?unit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __repr__():Dynamic;
	public function __rfloordiv__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _binary_op_method_timedeltalike(name:Dynamic):Dynamic;
	public var _d : Dynamic;
	/**
		compute the components
	**/
	public function _ensure_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _h : Dynamic;
	public function _has_ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _m : Dynamic;
	public var _ms : Dynamic;
	public function _not_implemented(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _ns : Dynamic;
	public function _op_unary_method(name:Dynamic):Dynamic;
	/**
		Parameters
		----------
		format : None|all|even_day|sub_day|long
		
		Returns
		-------
		converted : string of a Timedelta
	**/
	public function _repr_base(?format:Dynamic):Dynamic;
	public function _round(freq:Dynamic, rounder:Dynamic):Dynamic;
	public var _s : Dynamic;
	public var _sign : Dynamic;
	public var _us : Dynamic;
	public function _validate_ops_compat(other:Dynamic):Dynamic;
	/**
		return a numpy timedelta64 array view of myself 
	**/
	public var asm8 : Dynamic;
	/**
		return a new Timedelta ceiled to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the ceiling resolution
	**/
	public function ceil(freq:Dynamic):Dynamic;
	/**
		Return a Components NamedTuple-like 
	**/
	public var components : Dynamic;
	/**
		Number of Days
		
		.components will return the shown components
	**/
	public var days : Dynamic;
	/**
		return out delta in ns (for internal compat) 
	**/
	public var delta : Dynamic;
	/**
		return a new Timedelta floored to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the flooring resolution
	**/
	public function floor(freq:Dynamic):Dynamic;
	public var freq : Dynamic;
	public var is_populated : Dynamic;
	static public var max : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second).
		
		.components will return the shown components
	**/
	public var microseconds : Dynamic;
	static public var min : Dynamic;
	/**
		Number of nanoseconds (>= 0 and less than 1 microsecond).
		
		.components will return the shown components
	**/
	public var nanoseconds : Dynamic;
	/**
		return a string representing the lowest resolution that we have 
	**/
	public var resolution : Dynamic;
	/**
		Round the Timedelta to the specified resolution
		
		Returns
		-------
		a new Timedelta rounded to the given resolution of `freq`
		
		Parameters
		----------
		freq : a freq string indicating the rounding resolution
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function round(freq:Dynamic):Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day).
		
		.components will return the shown components
	**/
	public var seconds : Dynamic;
	/**
		return an actual datetime.timedelta object
		note: we lose nanosecond resolution if any
	**/
	public function to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a numpy.timedelta64 object with 'ns' precision 
	**/
	public function to_timedelta64():Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function total_seconds():Dynamic;
	public var value : Dynamic;
	/**
		array view compat 
	**/
	public function view(dtype:Dynamic):Dynamic;
}