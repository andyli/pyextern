/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "EngFormatter") extern class EngFormatter {
	static public var ENG_PREFIXES : Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Parameters
		----------
		unit : str, default: ""
		    Unit symbol to use, suitable for use with single-letter
		    representations of powers of 1000. For example, 'Hz' or 'm'.
		
		places : int, default: None
		    Precision with which to display the number, specified in
		    digits after the decimal point (there will be between one
		    and three digits before the decimal point). If it is None,
		    the formatting falls back to the floating point format '%g',
		    which displays up to 6 *significant* digits, i.e. the equivalent
		    value for *places* varies between 0 and 5 (inclusive).
		
		sep : str, default: " "
		    Separator used between the value and the prefix/unit. For
		    example, one get '3.14 mV' if ``sep`` is " " (default) and
		    '3.14mV' if ``sep`` is "". Besides the default behavior, some
		    other useful options may be:
		
		    * ``sep=""`` to append directly the prefix/unit to the value;
		    * ``sep="\N{THIN SPACE}"`` (``U+2009``);
		    * ``sep="\N{NARROW NO-BREAK SPACE}"`` (``U+202F``);
		    * ``sep="\N{NO-BREAK SPACE}"`` (``U+00A0``).
		
		usetex : bool, default: :rc:`text.usetex`
		    To enable/disable the use of TeX's math mode for rendering the
		    numbers in the formatter.
		
		useMathText : bool, default: :rc:`axes.formatter.use_mathtext`
		    To enable/disable the use mathtext for rendering the numbers in
		    the formatter.
	**/
	@:native("__init__")
	public function ___init__(?unit:Dynamic, ?places:Dynamic, ?sep:Dynamic, ?usetex:Dynamic, ?useMathText:Dynamic):Dynamic;
	/**
		Parameters
		----------
		unit : str, default: ""
		    Unit symbol to use, suitable for use with single-letter
		    representations of powers of 1000. For example, 'Hz' or 'm'.
		
		places : int, default: None
		    Precision with which to display the number, specified in
		    digits after the decimal point (there will be between one
		    and three digits before the decimal point). If it is None,
		    the formatting falls back to the floating point format '%g',
		    which displays up to 6 *significant* digits, i.e. the equivalent
		    value for *places* varies between 0 and 5 (inclusive).
		
		sep : str, default: " "
		    Separator used between the value and the prefix/unit. For
		    example, one get '3.14 mV' if ``sep`` is " " (default) and
		    '3.14mV' if ``sep`` is "". Besides the default behavior, some
		    other useful options may be:
		
		    * ``sep=""`` to append directly the prefix/unit to the value;
		    * ``sep="\N{THIN SPACE}"`` (``U+2009``);
		    * ``sep="\N{NARROW NO-BREAK SPACE}"`` (``U+202F``);
		    * ``sep="\N{NO-BREAK SPACE}"`` (``U+00A0``).
		
		usetex : bool, default: :rc:`text.usetex`
		    To enable/disable the use of TeX's math mode for rendering the
		    numbers in the formatter.
		
		useMathText : bool, default: :rc:`axes.formatter.use_mathtext`
		    To enable/disable the use mathtext for rendering the numbers in
		    the formatter.
	**/
	public function new(?unit:Dynamic, ?places:Dynamic, ?sep:Dynamic, ?usetex:Dynamic, ?useMathText:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Subclasses may want to override this to set a locator.
	**/
	public function _set_locator(locator:Dynamic):Dynamic;
	static public var axis : Dynamic;
	public function create_dummy_axis(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Some classes may want to replace a hyphen for minus with the proper
		unicode symbol (U+2212) for typographical correctness.  This is a
		helper method to perform such a replacement when it is enabled via
		:rc:`axes.unicode_minus`.
	**/
	static public function fix_minus(s:Dynamic):Dynamic;
	/**
		Return the full string representation of the value with the
		position unspecified.
	**/
	public function format_data(value:Dynamic):Dynamic;
	/**
		Return a short string version of the tick value.
		
		Defaults to the position-independent long value.
	**/
	public function format_data_short(value:Dynamic):Dynamic;
	/**
		Format a number in engineering notation, appending a letter
		representing the power of 1000 of the original number.
		Some examples:
		
		>>> format_eng(0)       # for self.places = 0
		'0'
		
		>>> format_eng(1000000) # for self.places = 1
		'1.0 M'
		
		>>> format_eng("-1e-6") # for self.places = 2
		'-1.00 µ'
	**/
	public function format_eng(num:Dynamic):Dynamic;
	/**
		Return the tick labels for all the ticks at once.
	**/
	public function format_ticks(values:Dynamic):Dynamic;
	public function get_offset():Dynamic;
	public function get_useMathText():Dynamic;
	public function get_usetex():Dynamic;
	static public var locs : Dynamic;
	public function set_axis(axis:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_bounds(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Set the locations of the ticks.
		
		This method is called before computing the tick labels because some
		formatters need to know all tick locations to do so.
	**/
	public function set_locs(locs:Dynamic):Dynamic;
	public function set_useMathText(val:Dynamic):Dynamic;
	public function set_usetex(val:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	public var useMathText : Dynamic;
	public var usetex : Dynamic;
}