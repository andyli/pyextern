/* This file is generated, do not edit! */
package pandas.tseries.frequencies;
@:pythonImport("pandas.tseries.frequencies") extern class Frequencies_Module {
	static public var DAYS : Dynamic;
	static public var MONTHS : Dynamic;
	static public var RESO_DAY : Dynamic;
	static public var RESO_HR : Dynamic;
	static public var RESO_MIN : Dynamic;
	static public var RESO_MS : Dynamic;
	static public var RESO_NS : Dynamic;
	static public var RESO_SEC : Dynamic;
	static public var RESO_US : Dynamic;
	static public var _INVALID_FREQ_ERROR : Dynamic;
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
	static public var __prefix : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _alias : Dynamic;
	/**
		Return base freq and stride info from string representation
		
		Examples
		--------
		_freq_and_stride('5Min') -> 'Min', 5
	**/
	static public function _base_and_stride(freqstr:Dynamic):Dynamic;
	static public var _d : Dynamic;
	static public var _days : Dynamic;
	static public var _dont_uppercase : Dynamic;
	static public function _get_freq_str(base:Dynamic, ?mult:Dynamic):Dynamic;
	/**
		Return starting month of given freq, default is December.
		
		Example
		-------
		>>> _get_rule_month('D')
		'DEC'
		
		>>> _get_rule_month('A-JAN')
		'JAN'
	**/
	static public function _get_rule_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_annual(rule:Dynamic):Dynamic;
	static public function _is_monthly(rule:Dynamic):Dynamic;
	static public function _is_multiple(us:Dynamic, mult:Dynamic):Dynamic;
	static public function _is_quarterly(rule:Dynamic):Dynamic;
	static public function _is_weekly(rule:Dynamic):Dynamic;
	static public var _k : Dynamic;
	static public var _lite_rule_alias : Dynamic;
	static public var _m : Dynamic;
	static public function _maybe_add_count(base:Dynamic, count:Dynamic):Dynamic;
	/**
		we might need to coerce a code to a rule_code
		and uppercase it
		
		Parameters
		----------
		source : string
		    Frequency converting from
		
		Returns
		-------
		string code
	**/
	static public function _maybe_coerce_freq(code:Dynamic):Dynamic;
	static public var _month_aliases : Dynamic;
	static public var _month_numbers : Dynamic;
	static public var _name_to_offset_map : Dynamic;
	static public var _offset_map : Dynamic;
	static public var _offset_to_period_map : Dynamic;
	static public var _period_code_map : Dynamic;
	static public function _period_str_to_code(freqstr:Dynamic):Dynamic;
	static public function _quarter_months_conform(source:Dynamic, target:Dynamic):Dynamic;
	static public var _reverse_period_code_map : Dynamic;
	static public var _v : Dynamic;
	static public var _weekday_rule_aliases : Dynamic;
	static public function cday(other:Dynamic):Dynamic;
	/**
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of preferred argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	/**
		Return DateOffset object associated with rule name
		
		Examples
		--------
		get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function getOffset(name:Dynamic):Dynamic;
	/**
		Returns the base frequency alias, e.g., '5D' -> 'D'
	**/
	static public function get_base_alias(freqstr:Dynamic):Dynamic;
	/**
		Return frequency code of given frequency str.
		If input is not string, return input as it is.
		
		Example
		-------
		>>> get_freq('A')
		1000
		
		>>> get_freq('3A')
		1000
	**/
	static public function get_freq(freq:Dynamic):Dynamic;
	/**
		Return freq str or tuple to freq code and stride (mult)
		
		Parameters
		----------
		freqstr : str or tuple
		
		Returns
		-------
		return : tuple of base frequency code and stride (mult)
		
		Example
		-------
		>>> get_freq_code('3D')
		(6000, 3)
		
		>>> get_freq_code('D')
		(6000, 1)
		
		>>> get_freq_code(('D', 3))
		(6000, 3)
	**/
	static public function get_freq_code(freqstr:Dynamic):Dynamic;
	/**
		Return frequency code group of given frequency str or offset.
		
		Example
		-------
		>>> get_freq_group('W-MON')
		4000
		
		>>> get_freq_group('W-FRI')
		4000
	**/
	static public function get_freq_group(freq:Dynamic):Dynamic;
	/**
		Return DateOffset object associated with rule name
		
		Examples
		--------
		get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function get_offset(name:Dynamic):Dynamic;
	/**
		Return rule name associated with a DateOffset object
		
		Examples
		--------
		get_offset_name(BMonthEnd(1)) --> 'EOM'
	**/
	static public function get_offset_name(offset:Dynamic):Dynamic;
	/**
		alias to closest period strings BQ->Q etc
	**/
	static public function get_period_alias(offset_str:Dynamic):Dynamic;
	/**
		Return the standardized frequency string
	**/
	static public function get_standard_freq(freq:Dynamic):Dynamic;
	/**
		Return frequency code group used for base of to_timestamp against
		frequency code.
		
		Example
		-------
		# Return day freq code against longer freq than day
		>>> get_to_timestamp_base(get_freq_code('D')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('W')[0])
		6000
		>>> get_to_timestamp_base(get_freq_code('M')[0])
		6000
		
		# Return second freq code against hour between second
		>>> get_to_timestamp_base(get_freq_code('H')[0])
		9000
		>>> get_to_timestamp_base(get_freq_code('S')[0])
		9000
	**/
	static public function get_to_timestamp_base(base:Dynamic):Dynamic;
	/**
		Infer the most likely frequency given the input index. If the frequency is
		uncertain, a warning will be printed.
		
		Parameters
		----------
		index : DatetimeIndex or TimedeltaIndex
		  if passed a Series will use the values of the series (NOT THE INDEX)
		warn : boolean, default True
		
		Returns
		-------
		freq : string or None
		    None if no discernible frequency
		    TypeError if the index is not datetime-like
		    ValueError if there are less than three values.
	**/
	static public function infer_freq(index:Dynamic, ?warn:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
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
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Returns True if downsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_subperiod : boolean
	**/
	static public function is_subperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Returns True if upsampling is possible between source and target
		frequencies
		
		Parameters
		----------
		source : string
		    Frequency converting from
		target : string
		    Frequency converting to
		
		Returns
		-------
		is_superperiod : boolean
	**/
	static public function is_superperiod(source:Dynamic, target:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the timedelta64 dtype.
		
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
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public var need_suffix : Dynamic;
	static public var opattern : Dynamic;
	static public var prefix_mapping : Dynamic;
	/**
		Return DateOffset object from string or tuple representation
		or datetime.timedelta object
		
		Parameters
		----------
		freq : str, tuple, datetime.timedelta, DateOffset or None
		
		Returns
		-------
		delta : DateOffset
		    None if freq is None
		
		Raises
		------
		ValueError
		    If freq is an invalid frequency
		
		See Also
		--------
		pandas.DateOffset
		
		Examples
		--------
		>>> to_offset('5min')
		<5 * Minutes>
		
		>>> to_offset('1D1H')
		<25 * Hours>
		
		>>> to_offset(('W', 2))
		<2 * Weeks: weekday=6>
		
		>>> to_offset((2, 'B'))
		<2 * BusinessDays>
		
		>>> to_offset(datetime.timedelta(days=1))
		<Day>
		
		>>> to_offset(Hour())
		<Hour>
	**/
	static public function to_offset(freq:Dynamic):pandas.DateOffset;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(Series([pd.Timestamp('20160101'),
		...                   pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'),
		...                                 ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
	**/
	static public function unique(values:Dynamic):Dynamic;
}