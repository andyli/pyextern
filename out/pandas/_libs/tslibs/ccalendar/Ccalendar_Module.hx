/* This file is generated, do not edit! */
package pandas._libs.tslibs.ccalendar;
@:pythonImport("pandas._libs.tslibs.ccalendar") extern class Ccalendar_Module {
	static public var DAYS : Dynamic;
	static public var DAYS_FULL : Dynamic;
	static public var LC_TIME : Dynamic;
	static public var MONTHS : Dynamic;
	static public var MONTHS_FULL : Dynamic;
	static public var MONTH_ALIASES : Dynamic;
	static public var MONTH_NUMBERS : Dynamic;
	static public var MONTH_TO_CAL_NUM : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Return the ordinal day-of-year for the given day.
		
		Parameters
		----------
		year : int
		month : int
		day : int
		
		Returns
		-------
		day_of_year : int32_t
		
		Notes
		-----
		Assumes the inputs describe a valid date.
	**/
	static public function get_day_of_year(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the number of days in the given month of the given year.
		
		Parameters
		----------
		year : int
		month : int
		
		Returns
		-------
		days_in_month : int
		
		Notes
		-----
		Assumes that the arguments are valid.  Passing a month not between 1 and 12
		risks a segfault.
	**/
	static public function get_days_in_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return the ordinal week-of-year for the given day.
		
		Parameters
		----------
		year : int
		month : int
		day : int
		
		Returns
		-------
		week_of_year : int32_t
		
		Notes
		-----
		Assumes the inputs describe a valid date.
	**/
	static public function get_week_of_year(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var int_to_weekday : Dynamic;
	static public var weekday_to_int : Dynamic;
}