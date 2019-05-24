/* This file is generated, do not edit! */
package pandas.tseries.offsets;
@:pythonImport("pandas.tseries.offsets", "BusinessHourMixin") extern class BusinessHourMixin {
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
	public function ___init__(?start:Dynamic, ?end:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?start:Dynamic, ?end:Dynamic, ?offset:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Return business hours in a day by seconds.
	**/
	public var _get_business_hours_by_sec : Dynamic;
	public var _get_daytime_flag : Dynamic;
	/**
		If n is positive, return tomorrow's business day opening time.
		Otherwise yesterday's business day's opening time.
		
		Opening time always locates on BusinessDay.
		Otherwise, closing time may not if business hour extends over midnight.
	**/
	public function _next_opening_time(other:Dynamic):Dynamic;
	/**
		Slight speedups using calculated values.
	**/
	public function _onOffset(dt:Dynamic, businesshours:Dynamic):Dynamic;
	/**
		If n is positive, return yesterday's business day opening time.
		Otherwise yesterday business day's opening time.
	**/
	public function _prev_opening_time(other:Dynamic):Dynamic;
	public function _repr_attrs():Dynamic;
	public function apply(other:Dynamic):Dynamic;
	/**
		Used for moving to next business day.
	**/
	public var next_bday : Dynamic;
	/**
		Alias for self._offset.
	**/
	public var offset : Dynamic;
	public function onOffset(dt:Dynamic):Dynamic;
	/**
		Roll provided date backward to next offset only if not on offset.
	**/
	public function rollback(dt:Dynamic):Dynamic;
	/**
		Roll provided date forward to next offset only if not on offset.
	**/
	public function rollforward(dt:Dynamic):Dynamic;
}