/* This file is generated, do not edit! */
package pandas.tseries.frequencies;
@:pythonImport("pandas.tseries.frequencies") extern class Frequencies_Module {
	static public var DAYS : Dynamic;
	static public var D_RESO : Dynamic;
	static public var H_RESO : Dynamic;
	static public var MONTHS : Dynamic;
	static public var MS_RESO : Dynamic;
	static public var S_RESO : Dynamic;
	static public var T_RESO : Dynamic;
	static public var US_RESO : Dynamic;
	static public var _LEGACY_FREQ_WARNING : Dynamic;
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
	static public var _i : Dynamic;
	static public function _is_annual(rule:Dynamic):Dynamic;
	static public function _is_monthly(rule:Dynamic):Dynamic;
	static public function _is_multiple(us:Dynamic, mult:Dynamic):Dynamic;
	static public function _is_quarterly(rule:Dynamic):Dynamic;
	static public function _is_weekly(rule:Dynamic):Dynamic;
	static public var _iweek : Dynamic;
	static public var _k : Dynamic;
	static public var _legacy_reverse_map : Dynamic;
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
	static public var _name : Dynamic;
	static public var _name_to_offset_map : Dynamic;
	static public var _offset_map : Dynamic;
	static public var _offset_to_period_map : Dynamic;
	static public var _period_alias_dict : Dynamic;
	/**
		Build freq alias dictionary to support freqs from original c_dates.c file
		of the scikits.timeseries library.
	**/
	static public function _period_alias_dictionary():Dynamic;
	static public var _period_code_map : Dynamic;
	static public function _period_str_to_code(freqstr:Dynamic):Dynamic;
	static public function _quarter_months_conform(source:Dynamic, target:Dynamic):Dynamic;
	static public var _reverse_period_code_map : Dynamic;
	static public var _rule_aliases : Dynamic;
	static public var _v : Dynamic;
	static public var _weekday : Dynamic;
	static public var _weekday_rule_aliases : Dynamic;
	static public function cday(other:Dynamic):Dynamic;
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
		Return the pre pandas 0.8.0 name for the date offset
	**/
	static public function get_legacy_offset_name(offset:Dynamic):Dynamic;
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
	static public var need_suffix : Dynamic;
	static public var opattern : Dynamic;
	static public var prefix_mapping : Dynamic;
	/**
		Return DateOffset object from string representation or
		Timedelta object
		
		Examples
		--------
		>>> to_offset('5Min')
		Minute(5)
	**/
	static public function to_offset(freqstr:Dynamic):Dynamic;
	/**
		Compute unique values (not necessarily sorted) efficiently from input array
		of values
		
		Parameters
		----------
		values : array-like
		
		Returns
		-------
		uniques
	**/
	static public function unique(values:Dynamic):Dynamic;
}