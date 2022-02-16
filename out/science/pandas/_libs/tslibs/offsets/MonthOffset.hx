/* This file is generated, do not edit! */
package pandas._libs.tslibs.offsets;
@:pythonImport("pandas._libs.tslibs.offsets", "MonthOffset") extern class MonthOffset {
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
	public function _apply(other:Dynamic):Dynamic;
	public function _apply_array(other:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public var _cache : Dynamic;
	static public var _day_opt : Dynamic;
	static public var _deprecations : Dynamic;
	public function _from_name(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_offset_day(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _offset_str(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a tuple containing all of the attributes needed to evaluate
		equality between two DateOffset objects.
	**/
	public var _params : Dynamic;
	public var _prefix : Dynamic;
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
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var freqstr : Dynamic;
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
	public var normalize : Dynamic;
	public function onOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset.
		
		Returns
		-------
		TimeStamp
		    Rolled timestamp if not on offset, otherwise unchanged timestamp.
	**/
	public function rollback(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset.
		
		Returns
		-------
		TimeStamp
		    Rolled timestamp if not on offset, otherwise unchanged timestamp.
	**/
	public function rollforward(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var rule_code : Dynamic;
}