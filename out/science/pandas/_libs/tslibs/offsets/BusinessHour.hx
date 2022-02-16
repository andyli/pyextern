/* This file is generated, do not edit! */
package pandas._libs.tslibs.offsets;
@:pythonImport("pandas._libs.tslibs.offsets", "BusinessHour") extern class BusinessHour {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return a pickleable state
	**/
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __reduce_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Reconstruct an instance from a pickled state
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __setstate_cython__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _adjust_dst : Dynamic;
	static public var _anchor : Dynamic;
	public function _apply(other:Dynamic):Dynamic;
	public function _apply_array(other:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public var _cache : Dynamic;
	static public var _day_opt : Dynamic;
	static public var _deprecations : Dynamic;
	public function _from_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return business hours in a day by seconds.
	**/
	public function _get_business_hours_by_sec(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Get the closing time of a business hour interval by its opening time.
		
		Parameters
		----------
		dt : datetime
		    Opening time of a business hour interval.
		
		Returns
		-------
		result : datetime
		    Corresponding closing time.
	**/
	public function _get_closing_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_offset_day(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Additional __init__ for Custom subclasses.
	**/
	public function _init_custom(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Slight speedups using calculated values.
	**/
	public function _is_on_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If self.n and sign have the same sign, return the earliest opening time
		later than or equal to current time.
		Otherwise the latest opening time earlier than or equal to current
		time.
		
		Opening time always locates on BusinessDay.
		However, closing time may not if business hour extends over midnight.
		
		Parameters
		----------
		other : datetime
		    Current time.
		sign : int, default 1.
		    Either 1 or -1. Going forward in time if it has the same sign as
		    self.n. Going backward in time otherwise.
		
		Returns
		-------
		result : datetime
		    Next opening time.
	**/
	public function _next_opening_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _offset : Dynamic;
	public function _offset_str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a tuple containing all of the attributes needed to evaluate
		equality between two DateOffset objects.
	**/
	public var _params : Dynamic;
	static public var _prefix : Dynamic;
	/**
		If n is positive, return the latest opening time earlier than or equal
		to current time.
		Otherwise the earliest opening time later than or equal to current
		time.
		
		Parameters
		----------
		other : datetime
		    Current time.
		
		Returns
		-------
		result : datetime
		    Previous opening time.
	**/
	public function _prev_opening_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _repr_attrs(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _use_relativedelta : Dynamic;
	/**
		Require that `n` be an integer.
		
		Parameters
		----------
		n : int
		
		Returns
		-------
		nint : int
		
		Raises
		------
		TypeError if `int(n)` raises
		ValueError if n != int(n)
	**/
	static public function _validate_n(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function apply_index(other:Dynamic):Dynamic;
	/**
		Returns a copy of the calling offset object with n=1 and all other
		attributes equal.
	**/
	public var base : Dynamic;
	public var calendar : Dynamic;
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var end : Dynamic;
	public var freqstr : Dynamic;
	public var holidays : Dynamic;
	public function isAnchored(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_anchored(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_month_end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_month_start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_on_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_quarter_end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_quarter_start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_year_end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function is_year_start(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var kwds : Dynamic;
	public var n : Dynamic;
	public var name : Dynamic;
	public var nanos : Dynamic;
	/**
		Used for moving to next business day.
	**/
	public var next_bday : Dynamic;
	public var normalize : Dynamic;
	/**
		Alias for self._offset.
	**/
	public var offset : Dynamic;
	public function onOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset.
	**/
	public function rollback(other:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset.
	**/
	public function rollforward(other:Dynamic):Dynamic;
	public var rule_code : Dynamic;
	public var start : Dynamic;
	public var weekmask : Dynamic;
}