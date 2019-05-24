/* This file is generated, do not edit! */
package pandas._libs.tslibs.offsets;
@:pythonImport("pandas._libs.tslibs.offsets") extern class Offsets_Module {
	static public var DAYS : Dynamic;
	static public var MONTHS : Dynamic;
	static public var PY2 : Dynamic;
	static public var UTC : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __prefix : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _alias : Dynamic;
	static public var _d : Dynamic;
	static public function _determine_offset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Generate busdaycalendar
	**/
	static public function _get_calendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _is_normalized(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _m : Dynamic;
	static public var _offset_to_period_map : Dynamic;
	static public function _to_dt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _validate_business_time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function apply_index_wraps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function as_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the day in `other`'s month that satisfies a DateOffset's onOffset
		policy, as described by the `day_opt` argument.
		
		Parameters
		----------
		other : datetime or Timestamp
		day_opt : 'start', 'end', 'business_start', 'business_end', or int
		    'start': returns 1
		    'end': returns last day of the month
		    'business_start': returns the first business day of the month
		    'business_end': returns the last business day of the month
		    int: returns the day in the month indicated by `other`, or the last of
		        day the month if the value exceeds in that month's number of days.
		
		Returns
		-------
		day_of_month : int
		
		Examples
		-------
		>>> other = datetime(2017, 11, 14)
		>>> get_day_of_month(other, 'start')
		1
		>>> get_day_of_month(other, 'end')
		30
	**/
	static public function get_day_of_month(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the first day of the month that is a business day.
		
		Parameters
		----------
		year : int
		month : int
		
		Returns
		-------
		first_bday : int
	**/
	static public function get_firstbday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the last day of the month that is a business day.
		
		Parameters
		----------
		year : int
		month : int
		
		Returns
		-------
		last_bday : int
	**/
	static public function get_lastbday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var key : Dynamic;
	static public var need_suffix : Dynamic;
	static public var relativedelta_kwds : Dynamic;
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
		day_opt : 'start', 'end', 'business_start', 'business_end', or int
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
		Possibly increment or decrement the number of periods to shift
		based on rollforward/rollbackward conventions.
		
		Parameters
		----------
		other : datetime or Timestamp
		n : number of periods to increment, before adjusting for rolling
		month : reference month giving the first month of the year
		day_opt : 'start', 'end', 'business_start', 'business_end', or int
		    The day of the month to compare against that of `other` when
		    incrementing or decrementing the number of periods:
		
		    'start': 1
		    'end': last day of the month
		    'business_start': first business day of the month
		    'business_end': last business day of the month
		    int: day in the month indicated by `other`, or the last of day
		        the month if the value exceeds in that month's number of days.
		
		Returns
		-------
		n : int number of periods to increment
		
		Notes
		-----
		* Mirrors `roll_check` in shift_months
		
		Examples
		-------
		>>> month = 3
		>>> day_opt = 'start'              # `other` will be compared to March 1
		>>> other = datetime(2017, 2, 10)  # before March 1
		>>> roll_yearday(other, 2, month, day_opt)
		1
		>>> roll_yearday(other, -7, month, day_opt)
		-7
		>>>
		>>> other = Timestamp('2014-03-15', tz='US/Eastern')  # after March 1
		>>> roll_yearday(other, 2, month, day_opt)
		2
		>>> roll_yearday(other, -7, month, day_opt)
		-6
		
		>>> month = 6
		>>> day_opt = 'end'                # `other` will be compared to June 30
		>>> other = datetime(1999, 6, 29)  # before June 30
		>>> roll_yearday(other, 5, month, day_opt)
		4
		>>> roll_yearday(other, -7, month, day_opt)
		-7
		>>>
		>>> other = Timestamp(2072, 8, 24, 6, 17, 18)  # after June 30
		>>> roll_yearday(other, 5, month, day_opt)
		5
		>>> roll_yearday(other, -7, month, day_opt)
		-6
	**/
	static public function roll_yearday(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		day: {None, 'start', 'end'}
		   * None: day of month
		   * 'start' 1st day of month
		   * 'end' last day of month
	**/
	static public function shift_months(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64 array representing nanosecond timestamps, shift all elements
		by the specified number of quarters using DateOffset semantics.
		
		Parameters
		----------
		dtindex : int64_t[:] timestamps for input dates
		quarters : int number of quarters to shift
		q1start_month : int month in which Q1 begins by convention
		day : {'start', 'end', 'business_start', 'business_end'}
		modby : int (3 for quarters, 12 for years)
		
		Returns
		-------
		out : ndarray[int64_t]
	**/
	static public function shift_quarters(args:haxe.extern.Rest<Dynamic>):Dynamic;
}