/* This file is generated, do not edit! */
package pandas.tseries.converter;
@:pythonImport("pandas.tseries.converter", "TimeSeries_DateFormatter") extern class TimeSeries_DateFormatter {
	/**
		Return the format for tick val x at position pos; pos=None
		indicated unspecified
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
	public function ___init__(freq:Dynamic, ?minor_locator:Dynamic, ?dynamic_mode:Dynamic, ?plot_obj:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns the default ticks spacing.
	**/
	public function _set_default_format(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Some classes may want to replace a hyphen for minus with the
		proper unicode symbol (U+2212) for typographical correctness.
		The default is to not replace it.
		
		Note, if you use this method, e.g., in :meth:`format_data` or
		call, you probably don't want to use it for
		:meth:`format_data_short` since the toolbar uses this for
		interactive coord reporting and I doubt we can expect GUIs
		across platforms will handle the unicode correctly.  So for
		now the classes that override :meth:`fix_minus` should have an
		explicit :meth:`format_data_short` method
	**/
	public function fix_minus(s:Dynamic):Dynamic;
	public function format_data(value:Dynamic):Dynamic;
	/**
		return a short string version
	**/
	public function format_data_short(value:Dynamic):Dynamic;
	public function get_offset():Dynamic;
	static public var locs : Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Sets the locations of the ticks
	**/
	public function set_locs(locs:Dynamic):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
}