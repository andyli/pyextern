/* This file is generated, do not edit! */
package pandas._libs.tslibs.conversion;
@:pythonImport("pandas._libs.tslibs.conversion") extern class Conversion_Module {
	static public var NS_DTYPE : Dynamic;
	static public var NaT : Dynamic;
	static public var TD_DTYPE : Dynamic;
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
		Convert ndarray of datetime-like objects to int64 array representing
		nanosecond timestamps.
		
		Parameters
		----------
		values : ndarray
		
		Returns
		-------
		result : ndarray with dtype int64
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
	static public var nat_strings : Dynamic;
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
		int64 converted
	**/
	static public function tz_convert_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive i8 to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Returns
		-------
		localized : DatetimeIndex
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}