/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps") extern class Timestamps_Module {
	static public var NaT : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _no_input : Dynamic;
	static public var _zero_time : Dynamic;
	/**
		Normalize each of the (nanosecond) timestamps in the given array by
		rounding down to the beginning of the day (i.e. midnight).  If `tz`
		is not None, then this is midnight for this timezone.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		result : int64 ndarray of converted of normalized nanosecond timestamps
	**/
	static public function date_normalize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, return array of strings of date
		name based on requested field (e.g. weekday_name)
	**/
	static public function get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index return array of indicators
		of whether timestamps are at the start/end of the month/quarter/year
		(defined by frequency).
	**/
	static public function get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies rounding function at given frequency
		
		Parameters
		----------
		values : :obj:`ndarray`
		rounder : function, eg. 'ceil', 'floor', 'round'
		freq : str, obj
		
		Returns
		-------
		:obj:`ndarray`
	**/
	static public function round_ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive i8 to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Returns
		-------
		localized : DatetimeIndex
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}