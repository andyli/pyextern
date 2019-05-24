/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets", "QuarterOffset") extern class QuarterOffset {
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
		Return a pickleable state
	**/
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?n:Dynamic, ?normalize:Dynamic, ?startingMonth:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?n:Dynamic, ?normalize:Dynamic, ?startingMonth:Dynamic):Void;
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
	static public var _day_opt : Dynamic;
	static public var _default_startingMonth : Dynamic;
	static public function _from_name(?suffix:Dynamic):Dynamic;
	static public var _from_name_startingMonth : Dynamic;
	public function _get_offset_day(other:Dynamic):Dynamic;
	public function _offset_str():Dynamic;
	/**
		Returns a tuple containing all of the attributes needed to evaluate
		equality between two DateOffset objects.
	**/
	public var _params : Dynamic;
	public var _prefix : Dynamic;
	public function _repr_attrs():Dynamic;
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
	public function apply_index(other:Dynamic):Dynamic;
	/**
		Returns a copy of the calling offset object with n=1 and all other
		attributes equal.
	**/
	public var base : Dynamic;
	public function copy():Dynamic;
	public var freqstr : Dynamic;
	public function isAnchored():Dynamic;
	public var kwds : Dynamic;
	public var name : Dynamic;
	public var nanos : Dynamic;
	static public var normalize : Dynamic;
	public function onOffset(dt:Dynamic):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset.
	**/
	public function rollback(dt:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset.
	**/
	public function rollforward(dt:Dynamic):Dynamic;
	public var rule_code : Dynamic;
}