/* This file is generated, do not edit! */
package pandas.tseries.frequencies;
@:pythonImport("pandas.tseries.frequencies") extern class Frequencies_Module {
	static public var DAYS : Dynamic;
	static public var MONTHS : Dynamic;
	static public var MONTH_ALIASES : Dynamic;
	static public var MONTH_NUMBERS : Dynamic;
	static public var _ONE_DAY : Dynamic;
	static public var _ONE_HOUR : Dynamic;
	static public var _ONE_MICRO : Dynamic;
	static public var _ONE_MILLI : Dynamic;
	static public var _ONE_MINUTE : Dynamic;
	static public var _ONE_SECOND : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _alias : Dynamic;
	static public var _d : Dynamic;
	/**
		Return DateOffset object associated with rule name.
		
		Examples
		--------
		_get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function _get_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_annual(rule:Dynamic):Dynamic;
	static public function _is_monthly(rule:Dynamic):Dynamic;
	static public function _is_multiple(us:Dynamic, mult:Dynamic):Dynamic;
	static public function _is_quarterly(rule:Dynamic):Dynamic;
	static public function _is_weekly(rule:Dynamic):Dynamic;
	static public var _m : Dynamic;
	static public function _maybe_add_count(base:Dynamic, count:Dynamic):Dynamic;
	/**
		we might need to coerce a code to a rule_code
		and uppercase it
		
		Parameters
		----------
		source : str or DateOffset
		    Frequency converting from
		
		Returns
		-------
		str
	**/
	static public function _maybe_coerce_freq(code:Dynamic):Dynamic;
	static public var _need_suffix : Dynamic;
	static public var _offset_to_period_map : Dynamic;
	static public var _prefix : Dynamic;
	static public function _quarter_months_conform(source:Dynamic, target:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function build_field_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Return DateOffset object associated with rule name.
		
		.. deprecated:: 1.0.0
		
		Examples
		--------
		get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function get_offset(name:Dynamic):Dynamic;
	/**
		Alias to closest period strings BQ->Q etc.
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	/**
		Return starting month of given freq, default is December.
		
		Parameters
		----------
		source : str
		    Derived from `freq.rule_code` or `freq.freqstr`.
		
		Returns
		-------
		rule_month: str
		
		Examples
		--------
		>>> get_rule_month('D')
		'DEC'
		
		>>> get_rule_month('A-JAN')
		'JAN'
	**/
	static public function get_rule_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		  If passed a Series will use the values of the series (NOT THE INDEX).
		warn : bool, default True
		
		Returns
		-------
		str or None
		    None if no discernible frequency.
		
		Raises
		------
		TypeError
		    If the index is not datetime-like.
		ValueError
		    If there are fewer than three values.
		
		Examples
		--------
		>>> idx = pd.date_range(start='2020/12/01', end='2020/12/30', periods=30)
		>>> pd.infer_freq(idx)
		'D'
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
	static public var int_to_weekday : Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Period dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Period dtype.
		
		Examples
		--------
		>>> is_period_dtype(object)
		False
		>>> is_period_dtype(PeriodDtype(freq="D"))
		True
		>>> is_period_dtype([1, 2, 3])
		False
		>>> is_period_dtype(pd.Period("2017-01-01"))
		False
		>>> is_period_dtype(pd.PeriodIndex([], freq="A"))
		True
	**/
	static public function is_period_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public var key : Dynamic;
	static public function month_position_check(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var npt : Dynamic;
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
	/**
		Return unique values based on a hash table.
		
		Uniques are returned in order of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique for long enough sequences.
		Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		numpy.ndarray or ExtensionArray
		
		    The return can be:
		
		    * Index : when the input is an Index
		    * Categorical : when the input is a Categorical dtype
		    * ndarray : when the input is a Series/ndarray
		
		    Return numpy.ndarray or ExtensionArray.
		
		See Also
		--------
		Index.unique : Return unique values from an Index.
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(
		...     pd.Series(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		<DatetimeArray>
		['2016-01-01 00:00:00-05:00']
		Length: 1, dtype: datetime64[ns, US/Eastern]
		
		>>> pd.unique(
		...     pd.Index(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		        dtype='datetime64[ns, US/Eastern]',
		        freq=None)
		
		>>> pd.unique(list("baabc"))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(
		...     pd.Series(
		...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
		...     )
		... )
		['b', 'a', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		
		An array of tuples
		
		>>> pd.unique([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Efficiently find the unique first-differences of the given array.
		
		Parameters
		----------
		arr : ndarray[int64_t]
		
		Returns
		-------
		ndarray[int64_t]
		    An ordered ndarray[int64_t]
	**/
	static public function unique_deltas(args:haxe.extern.Rest<Dynamic>):Dynamic;
}