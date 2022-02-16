/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "LogitFormatter") extern class LogitFormatter {
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
		use_overline : bool, default: False
		    If x > 1/2, with x = 1-v, indicate if x should be displayed as
		    $\overline{v}$. The default is to display $1-v$.
		
		one_half : str, default: r"\frac{1}{2}"
		    The string used to represent 1/2.
		
		minor : bool, default: False
		    Indicate if the formatter is formatting minor ticks or not.
		    Basically minor ticks are not labelled, except when only few ticks
		    are provided, ticks with most space with neighbor ticks are
		    labelled. See other parameters to change the default behavior.
		
		minor_threshold : int, default: 25
		    Maximum number of locs for labelling some minor ticks. This
		    parameter have no effect if minor is False.
		
		minor_number : int, default: 6
		    Number of ticks which are labelled when the number of ticks is
		    below the threshold.
	**/
	@:native("__init__")
	public function ___init__(?use_overline:Dynamic, ?one_half:Dynamic, ?minor:Dynamic, ?minor_threshold:Dynamic, ?minor_number:Dynamic):Dynamic;
	/**
		Parameters
		----------
		use_overline : bool, default: False
		    If x > 1/2, with x = 1-v, indicate if x should be displayed as
		    $\overline{v}$. The default is to display $1-v$.
		
		one_half : str, default: r"\frac{1}{2}"
		    The string used to represent 1/2.
		
		minor : bool, default: False
		    Indicate if the formatter is formatting minor ticks or not.
		    Basically minor ticks are not labelled, except when only few ticks
		    are provided, ticks with most space with neighbor ticks are
		    labelled. See other parameters to change the default behavior.
		
		minor_threshold : int, default: 25
		    Maximum number of locs for labelling some minor ticks. This
		    parameter have no effect if minor is False.
		
		minor_number : int, default: 6
		    Number of ticks which are labelled when the number of ticks is
		    below the threshold.
	**/
	public function new(?use_overline:Dynamic, ?one_half:Dynamic, ?minor:Dynamic, ?minor_threshold:Dynamic, ?minor_number:Dynamic):Void;
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
	public function _format_value(x:Dynamic, locs:Dynamic, ?sci_notation:Dynamic):Dynamic;
	public function _one_minus(s:Dynamic):Dynamic;
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
		Return the tick labels for all the ticks at once.
	**/
	public function format_ticks(values:Dynamic):Dynamic;
	public function get_offset():Dynamic;
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
	/**
		Set the number of minor ticks to label when some minor ticks are
		labelled.
		
		Parameters
		----------
		minor_number : int
		    Number of ticks which are labelled when the number of ticks is
		    below the threshold.
	**/
	public function set_minor_number(minor_number:Dynamic):Dynamic;
	/**
		Set the threshold for labelling minors ticks.
		
		Parameters
		----------
		minor_threshold : int
		    Maximum number of locations for labelling some minor ticks. This
		    parameter have no effect if minor is False.
	**/
	public function set_minor_threshold(minor_threshold:Dynamic):Dynamic;
	/**
		Set the way one half is displayed.
		
		one_half : str, default: r"\frac{1}{2}"
		    The string used to represent 1/2.
	**/
	public function set_one_half(one_half:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Switch display mode with overline for labelling p>1/2.
		
		Parameters
		----------
		use_overline : bool, default: False
		    If x > 1/2, with x = 1-v, indicate if x should be displayed as
		    $\overline{v}$. The default is to display $1-v$.
	**/
	public function use_overline(use_overline:Dynamic):Dynamic;
}