/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.timeseries;
@:pythonImport("pandas.plotting._matplotlib.timeseries") extern class Timeseries_Module {
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _format_coord(freq:Dynamic, t:Dynamic, y:Dynamic):Dynamic;
	/**
		Get the freq attribute of the ax object if set.
		Also checks shared axes (eg when using secondary yaxis, sharex=True
		or twinx)
	**/
	static public function _get_ax_freq(ax:Dynamic):Dynamic;
	static public function _get_freq(ax:Dynamic, series:Dynamic):Dynamic;
	static public function _get_index_freq(index:Dynamic):Dynamic;
	static public function _get_period_alias(freq:Dynamic):Dynamic;
	static public function _is_sub(f1:Dynamic, f2:Dynamic):Dynamic;
	static public function _is_sup(f1:Dynamic, f2:Dynamic):Dynamic;
	static public function _replot_ax(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _upsample_others(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Initialize axes for time-series plotting
	**/
	static public function decorate_axes(ax:Dynamic, freq:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Pretty-formats the date axis (x-axis).
		
		Major and minor ticks are automatically set for the frequency of the
		current underlying series.  As the dynamic mode is activated by
		default, changing the limits of the x axis will intelligently change
		the positions of the ticks.
	**/
	static public function format_dateaxis(subplot:Dynamic, freq:Dynamic, index:Dynamic):Dynamic;
	/**
		Alias to closest period strings BQ->Q etc.
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : str or DateOffset
		    Frequency converting from
		target : str or DateOffset
		    Frequency converting to
		
		Returns
		-------
		bool
	**/
	static public function is_subperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : str or DateOffset
		    Frequency converting from
		target : str or DateOffset
		    Frequency converting to
		
		Returns
		-------
		bool
	**/
	static public function is_superperiod(source:Dynamic, target:Dynamic):Dynamic;
	static public function maybe_convert_index(ax:Dynamic, data:Dynamic):Dynamic;
	static public function maybe_resample(series:Dynamic, ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object.
		
		Parameters
		----------
		freq : str, datetime.timedelta, BaseOffset or None
		
		Returns
		-------
		DateOffset or None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		BaseOffset : Standard kind of date increment used for a date range.
		
		Examples
		--------
		>>> to_offset("5min")
		<5 * Minutes>
		
		>>> to_offset("1D1H")
		<25 * Hours>
		
		>>> to_offset("2W")
		<2 * Weeks: weekday=6>
		
		>>> to_offset("2B")
		<2 * BusinessDays>
		
		>>> to_offset(pd.Timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function use_dynamic_x(ax:Dynamic, data:Dynamic):Dynamic;
}