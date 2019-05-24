/* This file is generated, do not edit! */
package pandas._libs.tslib;
@:pythonImport("pandas._libs.tslib") extern class Tslib_Module {
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		TESTING ONLY: Parse string into Timestamp using iso8601 parser. Used
		only for testing, actual construction uses `convert_str_to_tsobject`
	**/
	static public function _test_parse_iso8601(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Converts a 1D array of date-like values to a numpy array of either:
		    1) datetime64[ns] data
		    2) datetime.datetime objects, if OutOfBoundsDatetime or TypeError
		       is encountered
		
		Also returns a pytz.FixedOffset if an array of strings with the same
		timezone offset is passed and utc=True is not passed. Otherwise, None
		is returned
		
		Handles datetime.date, datetime.datetime, np.datetime64 objects, numeric,
		strings
		
		Parameters
		----------
		values : ndarray of object
		     date-like objects to convert
		errors : str, default 'raise'
		     error behavior when parsing
		dayfirst : bool, default False
		     dayfirst parsing behavior when encountering datetime strings
		yearfirst : bool, default False
		     yearfirst parsing behavior when encountering datetime strings
		utc : bool, default None
		     indicator whether the dates should be UTC
		require_iso8601 : bool, default False
		     indicator whether the datetime string should be iso8601
		
		Returns
		-------
		tuple (ndarray, tzoffset)
	**/
	static public function array_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		convert the ndarray according to the unit
		if errors:
		  - raise: return converted values or raise OutOfBoundsDatetime
		      if out of range on the conversion or
		      ValueError for other conversions (e.g. a string)
		  - ignore: return non-convertible values as the same unit
		  - coerce: NaT for non-convertibles
	**/
	static public function array_with_unit_to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		return a np object array of the string formatted values
		
		Parameters
		----------
		values : a 1-d i8 array
		tz : the timezone (or None)
		format : optional, default is None
		      a strftime capable string
		na_rep : optional, default is None
		      a nat format
	**/
	static public function format_array_from_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		Convert an i8 repr to an ndarray of datetimes, date, time or Timestamp
		
		Parameters
		----------
		arr  : array of i8
		tz   : str, default None
		     convert to this timezone
		freq : str/Offset, default None
		     freq to convert
		box  : {'datetime', 'timestamp', 'date', 'time'}, default 'datetime'
		     If datetime, convert to datetime.datetime
		     If date, convert to datetime.date
		     If time, convert to datetime.time
		     If Timestamp, convert to pandas.Timestamp
		
		Returns
		-------
		result : array of dtype specified by box
	**/
	static public function ints_to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
	/**
		parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
}