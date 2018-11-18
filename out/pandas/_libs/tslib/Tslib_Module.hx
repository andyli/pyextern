/* This file is generated, do not edit! */
package pandas._libs.tslib;
@:pythonImport("pandas._libs.tslib") extern class Tslib_Module {
	static public var NaT : Dynamic;
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Take a datetime/Timestamp in UTC and localizes to timezone tz.
	**/
	static public function _localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		TESTING ONLY: Parse string into Timestamp using iso8601 parser. Used
		only for testing, actual construction uses `convert_str_to_tsobject`
	**/
	static public function _test_parse_iso8601(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function monthrange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
}