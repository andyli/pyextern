/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "ScalarFormatter") extern class ScalarFormatter {
	/**
		Return the format for tick val *x* at position *pos*
	**/
	public function __call__(x:Dynamic, ?pos:Dynamic):Dynamic;
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
	public function ___init__(?useOffset:Dynamic, ?useMathText:Dynamic, ?useLocale:Dynamic):Dynamic;
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
	public function _formatSciNotation(s:Dynamic):Dynamic;
	public function _set_format(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function _set_offset(range:Dynamic):Dynamic;
	public function _set_orderOfMagnitude(range:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(kwargs:Dynamic):Dynamic;
	/**
		use a unicode minus rather than hyphen
	**/
	public function fix_minus(s:Dynamic):Dynamic;
	/**
		return a formatted string representation of a number
	**/
	public function format_data(value:Dynamic):Dynamic;
	/**
		return a short formatted string representation of a number
	**/
	public function format_data_short(value:Dynamic):Dynamic;
	/**
		Return scientific notation, plus offset
	**/
	public function get_offset():Dynamic;
	public function get_useLocale():Dynamic;
	public function get_useOffset():Dynamic;
	static public var locs : Dynamic;
	public function pprint_val(x:Dynamic):Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		set the locations of the ticks
	**/
	public function set_locs(locs:Dynamic):Dynamic;
	/**
		Sets size thresholds for scientific notation.
		
		e.g., ``formatter.set_powerlimits((-3, 4))`` sets the pre-2007 default
		in which scientific notation is used for numbers less than 1e-3 or
		greater than 1e4.
		See also :meth:`set_scientific`.
	**/
	public function set_powerlimits(lims:Dynamic):Dynamic;
	/**
		True or False to turn scientific notation on or off
		see also :meth:`set_powerlimits`
	**/
	public function set_scientific(b:Dynamic):Dynamic;
	public function set_useLocale(val:Dynamic):Dynamic;
	public function set_useOffset(val:Dynamic):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public var useLocale : Dynamic;
	public var useOffset : Dynamic;
}