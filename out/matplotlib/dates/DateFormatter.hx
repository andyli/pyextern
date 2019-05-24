/* This file is generated, do not edit! */
package matplotlib.dates;
@:pythonImport("matplotlib.dates", "DateFormatter") extern class DateFormatter {
	/**
		Return the format for tick value *x* at position pos.
		``pos=None`` indicates an unspecified location.
	**/
	public function __call__(x:Dynamic, ?pos:Dynamic):Dynamic;
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
		*fmt* is a :func:`strftime` format string; *tz* is the
		 :class:`tzinfo` instance.
	**/
	@:native("__init__")
	public function ___init__(fmt:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		*fmt* is a :func:`strftime` format string; *tz* is the
		 :class:`tzinfo` instance.
	**/
	public function new(fmt:Dynamic, ?tz:Dynamic):Void;
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
		[*Deprecated*] Helper function for replacing substrings sub1 and sub2
		located at the same indexes in strings s1 and s2 respectively,
		with the string replacement.  It is expected that sub1 and sub2
		have the same length.  Returns the pair s1, s2 after the
		substitutions.
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	public function _replace_common_substr(s1:Dynamic, s2:Dynamic, sub1:Dynamic, sub2:Dynamic, replacement:Dynamic):Dynamic;
	/**
		Subclasses may want to override this to set a locator.
	**/
	public function _set_locator(locator:Dynamic):Dynamic;
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
	/**
		Returns the full string representation of the value with the
		position unspecified.
	**/
	public function format_data(value:Dynamic):Dynamic;
	/**
		Return a short string version of the tick value.
		
		Defaults to the position-independent long value.
	**/
	public function format_data_short(value:Dynamic):Dynamic;
	/**
		Return the tick labels for all the ticks at once.
	**/
	public function format_ticks(values:Dynamic):Dynamic;
	public function get_offset():Dynamic;
	static public var illegal_s : Dynamic;
	static public var locs : Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public function set_locs(locs:Dynamic):Dynamic;
	public function set_tzinfo(tz:Dynamic):Dynamic;
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		[*Deprecated*] Refer to documentation for :meth:`datetime.datetime.strftime`
		
		*fmt* is a :meth:`datetime.datetime.strftime` format string.
		
		Warning: For years before 1900, depending upon the current
		locale it is possible that the year displayed with %x might
		be incorrect. For years before 100, %y and %Y will yield
		zero-padded strings.
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	public function strftime(dt:Dynamic, ?fmt:Dynamic):Dynamic;
	/**
		[*Deprecated*] Call time.strftime for years before 1900 by rolling
		forward a multiple of 28 years.
		
		*fmt* is a :func:`strftime` format string.
		
		Dalke: I hope I did this math right.  Every 28 years the
		calendar repeats, except through century leap years excepting
		the 400 year leap years.  But only if you're using the Gregorian
		calendar.
		
		Notes
		-----
		.. deprecated:: 3.0
		   
	**/
	public function strftime_pre_1900(dt:Dynamic, ?fmt:Dynamic):Dynamic;
}