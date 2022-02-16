/* This file is generated, do not edit! */
package matplotlib.ticker;
@:pythonImport("matplotlib.ticker", "ScalarFormatter") extern class ScalarFormatter {
	/**
		Return the format for tick value *x* at position *pos*.
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?useOffset:Dynamic, ?useMathText:Dynamic, ?useLocale:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?useOffset:Dynamic, ?useMathText:Dynamic, ?useLocale:Dynamic):Void;
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
	public function _compute_offset():Dynamic;
	/**
		Format *arg* with *fmt*, applying unicode minus and locale if desired.
	**/
	public function _format_maybe_minus_and_locale(fmt:Dynamic, arg:Dynamic):Dynamic;
	public function _set_format():Dynamic;
	/**
		Subclasses may want to override this to set a locator.
	**/
	public function _set_locator(locator:Dynamic):Dynamic;
	public function _set_order_of_magnitude():Dynamic;
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
	/**
		Return scientific notation, plus offset.
	**/
	public function get_offset():Dynamic;
	/**
		Return whether locale settings are used for formatting.
		
		See Also
		--------
		ScalarFormatter.set_useLocale
	**/
	public function get_useLocale():Dynamic;
	/**
		Return whether to use fancy math formatting.
		
		See Also
		--------
		ScalarFormatter.set_useMathText
	**/
	public function get_useMathText():Dynamic;
	/**
		Return whether automatic mode for offset notation is active.
		
		This returns True if ``set_useOffset(True)``; it returns False if an
		explicit offset was set, e.g. ``set_useOffset(1000)``.
		
		See Also
		--------
		ScalarFormatter.set_useOffset
	**/
	public function get_useOffset():Dynamic;
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
		Set size thresholds for scientific notation.
		
		Parameters
		----------
		lims : (int, int)
		    A tuple *(min_exp, max_exp)* containing the powers of 10 that
		    determine the switchover threshold. For a number representable as
		    :math:`a \times 10^\mathrm{exp}`` with :math:`1 <= |a| < 10`,
		    scientific notation will be used if ``exp <= min_exp`` or
		    ``exp >= max_exp``.
		
		    The default limits are controlled by :rc:`axes.formatter.limits`.
		
		    In particular numbers with *exp* equal to the thresholds are
		    written in scientific notation.
		
		    Typically, *min_exp* will be negative and *max_exp* will be
		    positive.
		
		    For example, ``formatter.set_powerlimits((-3, 4))`` will provide
		    the following formatting:
		    :math:`1 \times 10^{-3}, 9.9 \times 10^{-3}, 0.01,`
		    :math:`9999, 1 \times 10^4`.
		
		See Also
		--------
		ScalarFormatter.set_scientific
	**/
	public function set_powerlimits(lims:Dynamic):Dynamic;
	/**
		Turn scientific notation on or off.
		
		See Also
		--------
		ScalarFormatter.set_powerlimits
	**/
	public function set_scientific(b:Dynamic):Dynamic;
	/**
		Set whether to use locale settings for decimal sign and positive sign.
		
		Parameters
		----------
		val : bool or None
		    *None* resets to :rc:`axes.formatter.use_locale`.
	**/
	public function set_useLocale(val:Dynamic):Dynamic;
	/**
		Set whether to use fancy math formatting.
		
		If active, scientific notation is formatted as :math:`1.2 \times 10^3`.
		
		Parameters
		----------
		val : bool or None
		    *None* resets to :rc:`axes.formatter.use_mathtext`.
	**/
	public function set_useMathText(val:Dynamic):Dynamic;
	/**
		Set whether to use offset notation.
		
		When formatting a set numbers whose value is large compared to their
		range, the formatter can separate an additive constant. This can
		shorten the formatted numbers so that they are less likely to overlap
		when drawn on an axis.
		
		Parameters
		----------
		val : bool or float
		    - If False, do not use offset notation.
		    - If True (=automatic mode), use offset notation if it can make
		      the residual numbers significantly shorter. The exact behavior
		      is controlled by :rc:`axes.formatter.offset_threshold`.
		    - If a number, force an offset of the given value.
		
		Examples
		--------
		With active offset notation, the values
		
		``100_000, 100_002, 100_004, 100_006, 100_008``
		
		will be formatted as ``0, 2, 4, 6, 8`` plus an offset ``+1e5``, which
		is written to the edge of the axis.
	**/
	public function set_useOffset(val:Dynamic):Dynamic;
	/**
		[*Deprecated*] 
		
		Notes
		-----
		.. deprecated:: 3.5
		   \ 
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic):Dynamic;
	/**
		Return whether locale settings are used for formatting.
		
		See Also
		--------
		ScalarFormatter.set_useLocale
	**/
	public var useLocale : Dynamic;
	/**
		Return whether to use fancy math formatting.
		
		See Also
		--------
		ScalarFormatter.set_useMathText
	**/
	public var useMathText : Dynamic;
	/**
		Return whether automatic mode for offset notation is active.
		
		This returns True if ``set_useOffset(True)``; it returns False if an
		explicit offset was set, e.g. ``set_useOffset(1000)``.
		
		See Also
		--------
		ScalarFormatter.set_useOffset
	**/
	public var useOffset : Dynamic;
}