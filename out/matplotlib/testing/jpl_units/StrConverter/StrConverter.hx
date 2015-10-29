/* This file is generated, do not edit! */
package matplotlib.testing.jpl_units.strConverter;
@:pythonImport("matplotlib.testing.jpl_units.StrConverter", "StrConverter") extern class StrConverter {
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		: Returns information on how to handle an axis that has string data.
		
		= INPUT VARIABLES
		- axis    The axis using this converter.
		- unit    The units to use for a axis with string data.
		
		= RETURN VALUE
		- Returns a matplotlib AxisInfo data structure that contains
		  minor/major formatters, major/minor locators, and default
		  label information.
	**/
	static public function axisinfo(unit:Dynamic, axis:Dynamic):Dynamic;
	/**
		: Convert value using unit to a float.  If value is a sequence, return
		the converted sequence.
		
		= INPUT VARIABLES
		- axis    The axis using this converter.
		- value   The value or list of values that need to be converted.
		- unit    The units to use for a axis with Epoch data.
		
		= RETURN VALUE
		- Returns the value parameter converted to floats.
	**/
	static public function convert(value:Dynamic, unit:Dynamic, axis:Dynamic):Dynamic;
	/**
		: Return the default unit for value, or None.
		
		= INPUT VARIABLES
		- axis    The axis using this converter.
		- value   The value or list of values that need units.
		
		= RETURN VALUE
		- Returns the default units to use for value.
		Return the default unit for value, or None.
	**/
	static public function default_units(value:Dynamic, axis:Dynamic):Dynamic;
	/**
		The matplotlib datalim, autoscaling, locators etc work with
		scalars which are the units converted to floats given the
		current unit.  The converter may be passed these floats, or
		arrays of them, even when units are set.  Derived conversion
		interfaces may opt to pass plain-ol unitless numbers through
		the conversion interface and this is a helper function for
		them.
	**/
	static public function is_numlike(x:Dynamic):Dynamic;
}