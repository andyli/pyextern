/* This file is generated, do not edit! */
package pandas.tseries.converter;
@:pythonImport("pandas.tseries.converter") extern class Converter_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _annual_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public function _daily_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	/**
		Convert :mod:`datetime` to the Gregorian date as UTC float days,
		preserving hours, minutes, seconds and microseconds.  Return value
		is a :func:`float`.
	**/
	static public function _dt_to_float_ordinal(dt:Dynamic):Dynamic;
	static public function _from_ordinal(x:Dynamic, ?tz:Dynamic):Dynamic;
	/**
		Returns a default spacing between consecutive ticks for annual data.
	**/
	static public function _get_default_annual_spacing(nyears:Dynamic):Dynamic;
	static public function _monthly_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public function _quarterly_finder(vmin:Dynamic, vmax:Dynamic, freq:Dynamic):Dynamic;
	static public function _to_ordinalf(tm:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	static public function get_datevalue(date:Dynamic, freq:Dynamic):Dynamic;
	static public function get_finder(freq:Dynamic):Dynamic;
	/**
		Returns true if the ``label_flags`` indicate there is at least one label
		for this level.
		
		if the minimum view limit is not an exact integer, then the first tick
		label won't be shown, so we must adjust for that.
	**/
	static public function has_level_label(label_flags:Dynamic, vmin:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Modify the endpoints of a range as needed to avoid singularities.
		
		*vmin*, *vmax*
		    the initial endpoints.
		
		*tiny*
		    threshold for the ratio of the interval to the maximum absolute
		    value of its endpoints.  If the interval is smaller than
		    this, it will be expanded.  This value should be around
		    1e-15 or larger; otherwise the interval will be approaching
		    the double precision resolution limit.
		
		*expander*
		    fractional amount by which *vmin* and *vmax* are expanded if
		    the original interval is too small, based on *tiny*.
		
		*increasing*: [True | False]
		    If True (default), swap *vmin*, *vmax* if *vmin* > *vmax*
		
		Returns *vmin*, *vmax*, expanded and/or swapped if necessary.
		
		If either input is inf or NaN, or if both inputs are 0 or very
		close to zero, it returns -*expander*, *expander*.
	**/
	static public function nonsingular(vmin:Dynamic, vmax:Dynamic, ?expander:Dynamic, ?tiny:Dynamic, ?increasing:Dynamic):Dynamic;
	/**
		Returns the indices where the given period changes.
		
		Parameters
		----------
		dates : PeriodIndex
		    Array of intervals to monitor.
		period : string
		    Name of the period to monitor.
	**/
	static public function period_break(dates:Dynamic, period:Dynamic):Dynamic;
	static public function register():Dynamic;
	static public function time2num(d:Dynamic):Dynamic;
}