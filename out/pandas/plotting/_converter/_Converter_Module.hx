/* This file is generated, do not edit! */
package pandas.plotting._converter;
@:pythonImport("pandas.plotting._converter") extern class _Converter_Module {
	static public var HOURS_PER_DAY : Dynamic;
	static public var MIN_PER_HOUR : Dynamic;
	static public var MUSEC_PER_DAY : Dynamic;
	static public var SEC_PER_DAY : Dynamic;
	static public var SEC_PER_HOUR : Dynamic;
	static public var SEC_PER_MIN : Dynamic;
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
	static public function _mpl_le_2_0_0():Dynamic;
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
		
		To learn more about the frequency strings, please see `this link
		<http://pandas.pydata.org/pandas-docs/stable/timeseries.html#offset-aliases>`__.
		
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
	/**
		Check whether the provided array or dtype is of the datetime64[ns] dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of the datetime64[ns] dtype.
		
		Examples
		--------
		>>> is_datetime64_ns_dtype(str)
		False
		>>> is_datetime64_ns_dtype(int)
		False
		>>> is_datetime64_ns_dtype(np.datetime64)  # no unit
		False
		>>> is_datetime64_ns_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_ns_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_ns_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype=np.datetime64))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([],
		                           dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3],
		                           dtype=np.datetime64))  # has 'ns' unit
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_float(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `in_any_int_dtype`, timedelta64 instances will return False.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype is of an integer dtype
		          and not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like, and that all of its elements
		are also list-like.
		
		.. versionadded:: 0.20.0
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_nested_list_like([[1, 2, 3]])
		True
		>>> is_nested_list_like([{1, 2, 3}, {1, 2, 3}])
		True
		>>> is_nested_list_like(["foo"])
		False
		>>> is_nested_list_like([])
		False
		>>> is_nested_list_like([[1, 2, 3], 1])
		False
		
		Notes
		-----
		This won't reliably detect whether a consumable iterator (e. g.
		a generator) is a nested-list-like without consuming the iterator.
		To avoid consuming it, we always return False if the outer container
		doesn't define `__len__`.
		
		See Also
		--------
		is_list_like
	**/
	static public function is_nested_list_like(obj:Dynamic):Bool;
	/**
		Check whether an array-like is a periodical array-like or PeriodIndex.
		
		Parameters
		----------
		arr : array-like
		    The array-like to check.
		
		Returns
		-------
		boolean : Whether or not the array-like is a periodical
		          array-like or PeriodIndex instance.
		
		Examples
		--------
		>>> is_period_arraylike([1, 2, 3])
		False
		>>> is_period_arraylike(pd.Index([1, 2, 3]))
		False
		>>> is_period_arraylike(pd.PeriodIndex(["2017-01-01"], freq="D"))
		True
	**/
	static public function is_period_arraylike(arr:Dynamic):Dynamic;
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