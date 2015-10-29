/* This file is generated, do not edit! */
package pandas.tseries;
@:pythonImport("pandas.tseries.holiday") extern class Holiday {
	static public var EasterMonday : Dynamic;
	static public function FR(n:Dynamic):Dynamic;
	static public var GoodFriday : Dynamic;
	static public function HolidayCalendarFactory(name:Dynamic, base:Dynamic, other:Dynamic, ?base_class:Dynamic):Dynamic;
	static public function MO(n:Dynamic):Dynamic;
	static public function SA(n:Dynamic):Dynamic;
	static public function SU(n:Dynamic):Dynamic;
	static public function TH(n:Dynamic):Dynamic;
	static public function TU(n:Dynamic):Dynamic;
	static public var USColumbusDay : Dynamic;
	static public var USLaborDay : Dynamic;
	static public var USMartinLutherKingJr : Dynamic;
	static public var USMemorialDay : Dynamic;
	static public var USPresidentsDay : Dynamic;
	static public var USThanksgivingDay : Dynamic;
	static public function WE(n:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	/**
		returns next workday after nearest workday
		needed for Boxing day or multiple holidays in a series
	**/
	static public function after_nearest_workday(dt:Dynamic):Dynamic;
	/**
		returns previous workday after nearest workday
	**/
	static public function before_nearest_workday(dt:Dynamic):Dynamic;
	/**
		Return an instance of a calendar based on its name.
		
		Parameters
		----------
		name : str
		    Calendar name to return an instance of
	**/
	static public function get_calendar(name:Dynamic):Dynamic;
	static public var holiday_calendars : Dynamic;
	/**
		If holiday falls on Saturday, use day before (Friday) instead;
		if holiday falls on Sunday, use day thereafter (Monday) instead.
	**/
	static public function nearest_workday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Saturday, use following Monday instead;
		if holiday falls on Sunday, use Monday instead
	**/
	static public function next_monday(dt:Dynamic):Dynamic;
	/**
		For second holiday of two adjacent ones!
		If holiday falls on Saturday, use following Monday instead;
		if holiday falls on Sunday or Monday, use following Tuesday instead
		(because Monday is already taken by adjacent holiday on the day before)
	**/
	static public function next_monday_or_tuesday(dt:Dynamic):Dynamic;
	/**
		returns next weekday used for observances
	**/
	static public function next_workday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Saturday or Sunday, use previous Friday instead.
	**/
	static public function previous_friday(dt:Dynamic):Dynamic;
	/**
		returns previous weekday used for observances
	**/
	static public function previous_workday(dt:Dynamic):Dynamic;
	static public function register(cls:Dynamic):Dynamic;
	/**
		If holiday falls on Sunday, use day thereafter (Monday) instead.
	**/
	static public function sunday_to_monday(dt:Dynamic):Dynamic;
	/**
		If holiday falls on Sunday or Saturday,
		use day thereafter (Monday) instead.
		Needed for holidays such as Christmas observation in Europe
	**/
	static public function weekend_to_monday(dt:Dynamic):Dynamic;
}