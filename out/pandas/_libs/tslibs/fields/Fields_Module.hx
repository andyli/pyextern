/* This file is generated, do not edit! */
package pandas._libs.tslibs.fields;
@:pythonImport("pandas._libs.tslibs.fields") extern class Fields_Module {
	static public var DAYS_FULL : Dynamic;
	static public var MONTHS_FULL : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function build_field_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, extract the year, month, etc.,
		field and return an array of these values.
	**/
	static public function get_date_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, return array of strings of date
		name based on requested field (e.g. weekday_name)
	**/
	static public function get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an array of localized day or month names
		
		Parameters
		----------
		name_type : string, attribute of LocaleTime() in which to return localized
		    names
		locale : string
		
		Returns
		-------
		list of locale names
	**/
	static public function get_locale_names(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index return array of indicators
		of whether timestamps are at the start/end of the month/quarter/year
		(defined by frequency).
	**/
	static public function get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the number of microseconds in the time component of a
		nanosecond timestamp.
		
		Parameters
		----------
		dtindex : ndarray[int64_t]
		
		Returns
		-------
		micros : ndarray[int64_t]
	**/
	static public function get_time_micros(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based timedelta index, extract the days, hrs, sec.,
		field and return an array of these values.
	**/
	static public function get_timedelta_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vectorized version of isleapyear; NaT evaluates as False
	**/
	static public function isleapyear_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
}