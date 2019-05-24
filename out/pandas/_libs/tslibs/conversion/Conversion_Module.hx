/* This file is generated, do not edit! */
package pandas._libs.tslibs.conversion;
@:pythonImport("pandas._libs.tslibs.conversion") extern class Conversion_Module {
	static public var DAY_SECONDS : Dynamic;
	static public var HOUR_SECONDS : Dynamic;
	static public var NS_DTYPE : Dynamic;
	static public var TD_DTYPE : Dynamic;
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Convert ndarray of datetime-like objects to int64 array representing
		nanosecond timestamps.
		
		Parameters
		----------
		values : ndarray[object]
		
		Returns
		-------
		result : ndarray[int64_t]
		inferred_tz : tzinfo or None
	**/
	static public function datetime_to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure a np.datetime64 array has dtype specifically 'datetime64[ns]'
		
		Parameters
		----------
		arr : ndarray
		copy : boolean, default True
		
		Returns
		-------
		result : ndarray with dtype datetime64[ns]
	**/
	static public function ensure_datetime64ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure a np.timedelta64 array has dtype specifically 'timedelta64[ns]'
		
		Parameters
		----------
		arr : ndarray
		copy : boolean, default True
		
		Returns
		-------
		result : ndarray with dtype timedelta64[ns]
	**/
	static public function ensure_timedelta64ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if all of the given (nanosecond) timestamps are normalized to
		midnight, i.e. hour == minute == second == 0.  If the optional timezone
		`tz` is not None, then this is midnight for this timezone.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		is_normalized : bool True if all stamps are normalized
	**/
	static public function is_date_array_normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Take a datetime/Timestamp in UTC and localizes to timezone tz.
		
		Parameters
		----------
		dt : datetime or Timestamp
		tz : tzinfo, "UTC", or None
		
		Returns
		-------
		localized : datetime or Timestamp
	**/
	static public function localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Parameters
		----------
		dt : date, datetime, or Timestamp
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
		
		Raises
		------
		TypeError : if input is not datetime.date, datetime.datetime, or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Normalize each of the (nanosecond) timezone aware timestamps in the given
		array by rounding down to the beginning of the day (i.e. midnight).
		This is midnight for timezone, `tz`.
		
		Parameters
		----------
		stamps : int64 ndarray
		tz : tzinfo or None
		
		Returns
		-------
		result : int64 ndarray of converted of normalized nanosecond timestamps
	**/
	static public function normalize_i8_timestamps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert to int64 representation compatible with numpy datetime64; converts
		to UTC
		
		Parameters
		----------
		pydt : object
		
		Returns
		-------
		i8value : np.int64
	**/
	static public function pydt_to_i8(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the values (in i8) from timezone1 to timezone2
		
		Parameters
		----------
		vals : int64 ndarray
		tz1 : string / timezone object
		tz2 : string / timezone object
		
		Returns
		-------
		int64 ndarray of converted
	**/
	static public function tz_convert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the val (in i8) from timezone1 to timezone2
		
		This is a single timezone version of tz_convert
		
		Parameters
		----------
		val : int64
		tz1 : string / timezone object
		tz2 : string / timezone object
		
		Returns
		-------
		converted: int64
	**/
	static public function tz_convert_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive i8 to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Parameters
		----------
		vals : ndarray[int64_t]
		tz : tzinfo or None
		ambiguous : str, bool, or arraylike
		    When clocks moved backward due to DST, ambiguous times may arise.
		    For example in Central European Time (UTC+01), when going from 03:00
		    DST to 02:00 non-DST, 02:30:00 local time occurs both at 00:30:00 UTC
		    and at 01:30:00 UTC. In such a situation, the `ambiguous` parameter
		    dictates how ambiguous times should be handled.
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for ambiguous
		      times, but the array must have the same length as vals)
		    - bool if True, treat all vals as DST. If False, treat them as non-DST
		    - 'NaT' will return NaT where there are ambiguous times
		
		nonexistent : {None, "NaT", "shift_forward", "shift_backward", "raise",
		               timedelta-like}
		    How to handle non-existent times when converting wall times to UTC
		
		    .. versionadded:: 0.24.0
		
		Returns
		-------
		localized : ndarray[int64_t]
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}