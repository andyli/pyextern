/* This file is generated, do not edit! */
package pandas._libs.tslibs.vectorized;
@:pythonImport("pandas._libs.tslibs.vectorized") extern class Vectorized_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function dt64arr_to_periodarr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_resolution(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}