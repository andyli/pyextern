/* This file is generated, do not edit! */
package pandas._libs.tslibs;
@:pythonImport("pandas._libs.tslibs") extern class Tslibs_Module {
	static public var NaT : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dt64arr_to_periodarr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_resolution(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		Convert an i8 repr to an ndarray of datetimes, date, time or Timestamp.
		
		Parameters
		----------
		arr : array of i8
		tz : str, optional
		     convert to this timezone
		freq : str/Offset, optional
		     freq to convert
		fold : bint, default is 0
		    Due to daylight saving time, one wall clock time can occur twice
		    when shifting from summer to winter time; fold describes whether the
		    datetime-like corresponds  to the first (0) or the second time (1)
		    the wall clock hits the ambiguous time
		
		    .. versionadded:: 1.1.0
		box : {'datetime', 'timestamp', 'date', 'time'}, default 'datetime'
		    * If datetime, convert to datetime.datetime
		    * If date, convert to datetime.date
		    * If time, convert to datetime.time
		    * If Timestamp, convert to pandas.Timestamp
		
		Returns
		-------
		ndarray[object] of type specified by box
	**/
	static public function ints_to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert an i8 repr to an ndarray of timedelta or Timedelta (if box ==
		True)
		
		Parameters
		----------
		arr : ndarray[int64_t]
		box : bool, default False
		
		Returns
		-------
		result : ndarray[object]
		    array of Timedelta or timedeltas objects
	**/
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		tz : tzinfo or None
		
		Returns
		-------
		localized : datetime or Timestamp
	**/
	static public function localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
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
		Compare string representations of timezones
		
		The same timezone can be represented as different instances of
		timezones. For example
		`<DstTzInfo 'Europe/Paris' LMT+0:09:00 STD>` and
		`<DstTzInfo 'Europe/Paris' CET+1:00:00 STD>` are essentially same
		timezones but aren't evaluated such, but the string representation
		for both of these is `'Europe/Paris'`.
		
		This exists only to add a notion of equality to pytz-style zones
		that is compatible with the notion of equality expected of tzinfo
		subclasses.
		
		Parameters
		----------
		start : tzinfo
		end : tzinfo
		
		Returns:
		-------
		bool
	**/
	static public function tz_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the val (in i8) from UTC to tz
		
		This is a single value version of tz_convert_from_utc.
		
		Parameters
		----------
		val : int64
		tz : tzinfo
		
		Returns
		-------
		converted: int64
	**/
	static public function tz_convert_from_utc_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
}