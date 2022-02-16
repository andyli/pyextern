/* This file is generated, do not edit! */
package pandas._libs.tslibs.fields;
@:pythonImport("pandas._libs.tslibs.fields") extern class Fields_Module {
	static public var DAYS_FULL : Dynamic;
	static public var LC_TIME : Dynamic;
	static public var MONTHS_FULL : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function build_field_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime array, return the ISO 8601 year, week, and day
		as a structured array.
	**/
	static public function build_isocalendar_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, extract the year, month, etc.,
		field and return an array of these values.
	**/
	static public function get_date_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a int64-based datetime index, return array of strings of date
		name based on requested field (e.g. day_name)
	**/
	static public function get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns an array of localized day or month names.
		
		Parameters
		----------
		name_type : str
		    Attribute of LocaleTime() in which to return localized names.
		locale : str
		
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
		Given a int64-based timedelta index, extract the days, hrs, sec.,
		field and return an array of these values.
	**/
	static public function get_timedelta_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		vectorized version of isleapyear; NaT evaluates as False
	**/
	static public function isleapyear_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function month_position_check(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies rounding mode at given frequency
		
		Parameters
		----------
		values : np.ndarray[int64_t]`
		mode : instance of `RoundTo` enumeration
		nanos : np.int64
		    Freq to round to, expressed in nanoseconds
		
		Returns
		-------
		np.ndarray[int64_t]
	**/
	static public function round_nsint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Context manager for temporarily setting a locale.
		
		Parameters
		----------
		new_locale : str or tuple
		    A string of the form <language_country>.<encoding>. For example to set
		    the current locale to US English with a UTF8 encoding, you would pass
		    "en_US.UTF-8".
		lc_var : int, default `locale.LC_ALL`
		    The category of the locale being set.
		
		Notes
		-----
		This is useful when you want to run a particular block of code under a
		particular locale, without globally setting the locale. This probably isn't
		thread-safe.
	**/
	static public function set_locale(new_locale:Dynamic, ?lc_var:Dynamic):Dynamic;
}