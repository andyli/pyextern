/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets", "FY5253Quarter") extern class FY5253Quarter {
	public function __add__(other:Dynamic):Dynamic;
	public function __call__(other:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function ___init__(?n:Dynamic, ?normalize:Dynamic, ?weekday:Dynamic, ?startingMonth:Dynamic, ?qtr_with_extra_week:Dynamic, ?variation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?n:Dynamic, ?normalize:Dynamic, ?weekday:Dynamic, ?startingMonth:Dynamic, ?qtr_with_extra_week:Dynamic, ?variation:Dynamic):Void;
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
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __repr__():Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Reconstruct an instance from a pickled state
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
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
	static public var _adjust_dst : Dynamic;
	static public var _attributes : Dynamic;
	static public var _cacheable : Dynamic;
	static public var _day_opt : Dynamic;
	static public function _from_name(?args:python.VarArgs<Dynamic>):Dynamic;
	public function _get_offset_day(other:Dynamic):Dynamic;
	static public var _normalize_cache : Dynamic;
	public var _offset : Dynamic;
	public function _offset_str():Dynamic;
	public function _params():Dynamic;
	static public var _prefix : Dynamic;
	public function _repr_attrs():Dynamic;
	/**
		roll `other` back to the most recent date that was on a fiscal year
		end.  Return the date of that year-end, the number of full quarters
		elapsed between that year-end and other, and the remaining Timedelta
		since the most recent quarter-end.
		
		Parameters
		----------
		other : datetime or Timestamp
		
		Returns
		-------
		tuple of
		prev_year_end : Timestamp giving most recent fiscal year end
		num_qtrs : int
		tdelta : Timedelta
	**/
	public function _rollback_to_year(other:Dynamic):Dynamic;
	public function _should_cache():Dynamic;
	static public var _typ : Dynamic;
	static public var _use_relativedelta : Dynamic;
	/**
		Require that `n` be a nonzero integer.
		
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
	public function _validate_n(n:Dynamic):Int;
	public function apply(other:Dynamic):Dynamic;
	/**
		Vectorized apply of DateOffset to DatetimeIndex,
		raises NotImplentedError for offsets without a
		vectorized implementation
		
		Parameters
		----------
		i : DatetimeIndex
		
		Returns
		-------
		y : DatetimeIndex
	**/
	public function apply_index(other:Dynamic):pandas.DatetimeIndex;
	public function copy():Dynamic;
	public var freqstr : Dynamic;
	public function get_weeks(dt:Dynamic):Dynamic;
	public function isAnchored():Dynamic;
	public var kwds : Dynamic;
	public var name : Dynamic;
	public var nanos : Dynamic;
	static public var normalize : Dynamic;
	public function onOffset(dt:Dynamic):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset
	**/
	public function rollback(dt:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset
	**/
	public function rollforward(dt:Dynamic):Dynamic;
	public var rule_code : Dynamic;
	public function year_has_extra_week(dt:Dynamic):Dynamic;
}