/* This file is generated, do not edit! */
package pandas._libs.tslibs.offsets;
@:pythonImport("pandas._libs.tslibs.offsets") extern class Offsets_Module {
	static public var INVALID_FREQ_ERR_MSG : Dynamic;
	static public var MONTH_ALIASES : Dynamic;
	static public var MONTH_TO_CAL_NUM : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_BaseOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_RelativeDeltaOffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _dont_uppercase : Dynamic;
	/**
		Return DateOffset object associated with rule name.
		
		Examples
		--------
		_get_offset('EOM') --> BMonthEnd(1)
	**/
	static public function _get_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _lite_rule_alias : Dynamic;
	static public var _offset_map : Dynamic;
	static public var _relativedelta_kwds : Dynamic;
	static public function apply_array_wraps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_index_wraps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_wrapper_core(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_wraps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function delta_to_tick(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This method was ported from the work done by GM Arts,
		on top of the algorithm by Claus Tondering, which was
		based in part on the algorithm of Ouding (1940), as
		quoted in "Explanatory Supplement to the Astronomical
		Almanac", P.  Kenneth Seidelmann, editor.
		
		This algorithm implements three different Easter
		calculation methods:
		
		1. Original calculation in Julian calendar, valid in
		   dates after 326 AD
		2. Original method, with date converted to Gregorian
		   calendar, valid in years 1583 to 4099
		3. Revised method, in Gregorian calendar, valid in
		   years 1583 to 4099 as well
		
		These methods are represented by the constants:
		
		* ``EASTER_JULIAN   = 1``
		* ``EASTER_ORTHODOX = 2``
		* ``EASTER_WESTERN  = 3``
		
		The default method is method 3.
		
		More about the algorithm may be found at:
		
		`GM Arts: Easter Algorithms <http://www.gmarts.org/index.php?go=415>`_
		
		and
		
		`The Calendar FAQ: Easter <https://www.tondering.dk/claus/cal/easter.php>`_
	**/
	static public function easter(year:Dynamic, ?method:Dynamic):Dynamic;
	static public var int_to_weekday : Dynamic;
	static public var opattern : Dynamic;
	static public var prefix_mapping : Dynamic;
	/**
		Possibly increment or decrement the number of periods to shift
		based on rollforward/rollbackward conventions.
		
		Parameters
		----------
		other : int, generally the day component of a datetime
		n : number of periods to increment, before adjusting for rolling
		compare : int, generally the day component of a datetime, in the same
		          month as the datetime form which `other` was taken.
		
		Returns
		-------
		n : int number of periods to increment
	**/
	static public function roll_convention(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Possibly increment or decrement the number of periods to shift
		based on rollforward/rollbackward conventions.
		
		Parameters
		----------
		other : datetime or Timestamp
		n : number of periods to increment, before adjusting for rolling
		month : int reference month giving the first month of the year
		day_opt : {'start', 'end', 'business_start', 'business_end'}
		    The convention to use in finding the day in a given month against
		    which to compare for rollforward/rollbackward decisions.
		modby : int 3 for quarters, 12 for years
		
		Returns
		-------
		n : int number of periods to increment
		
		See Also
		--------
		get_day_of_month : Find the day in a month provided an offset.
	**/
	static public function roll_qtrday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Increment the datetime `other` by the given number of days, retaining
		the time-portion of the datetime.  For tz-naive datetimes this is
		equivalent to adding a timedelta.  For tz-aware datetimes it is similar to
		dateutil's relativedelta.__add__, but handles pytz tzinfo objects.
		
		Parameters
		----------
		other : datetime or Timestamp
		days : int
		
		Returns
		-------
		shifted: datetime or Timestamp
	**/
	static public function shift_day(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given a datetime (or Timestamp) `stamp`, an integer `months` and an
		option `day_opt`, return a new datetimelike that many months later,
		with day determined by `day_opt` using relativedelta semantics.
		
		Scalar analogue of shift_months
		
		Parameters
		----------
		stamp : datetime or Timestamp
		months : int
		day_opt : None, 'start', 'end', 'business_start', 'business_end', or int
		    None: returned datetimelike has the same day as the input, or the
		          last day of the month if the new month is too short
		    'start': returned datetimelike has day=1
		    'end': returned datetimelike has day on the last day of the month
		    'business_start': returned datetimelike has day on the first
		        business day of the month
		    'business_end': returned datetimelike has day on the last
		        business day of the month
		    int: returned datetimelike has day equal to day_opt
		
		Returns
		-------
		shifted : datetime or Timestamp (same as input `stamp`)
	**/
	static public function shift_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index, shift all elements
		specified number of months using DateOffset semantics
		
		day_opt: {None, 'start', 'end', 'business_start', 'business_end'}
		   * None: day of month
		   * 'start' 1st day of month
		   * 'end' last day of month
	**/
	static public function shift_months(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var weekday_to_int : Dynamic;
}