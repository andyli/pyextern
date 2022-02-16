/* This file is generated, do not edit! */
package pandas.tseries.holiday;
@:pythonImport("pandas.tseries.holiday", "Holiday") extern class Holiday {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Parameters
		----------
		name : str
		    Name of the holiday , defaults to class name
		offset : array of pandas.tseries.offsets or
		        class from pandas.tseries.offsets
		    computes offset from date
		observance: function
		    computes when holiday is given a pandas Timestamp
		days_of_week:
		    provide a tuple of days e.g  (0,1,2,3,) for Monday Through Thursday
		    Monday=0,..,Sunday=6
		
		Examples
		--------
		>>> from pandas.tseries.holiday import Holiday, nearest_workday
		>>> from dateutil.relativedelta import MO
		
		>>> USMemorialDay = Holiday(
		...     "Memorial Day", month=5, day=31, offset=pd.DateOffset(weekday=MO(-1))
		... )
		>>> USMemorialDay
		Holiday: Memorial Day (month=5, day=31, offset=<DateOffset: weekday=MO(-1)>)
		
		>>> USLaborDay = Holiday(
		...     "Labor Day", month=9, day=1, offset=pd.DateOffset(weekday=MO(1))
		... )
		>>> USLaborDay
		Holiday: Labor Day (month=9, day=1, offset=<DateOffset: weekday=MO(+1)>)
		
		>>> July3rd = Holiday("July 3rd", month=7, day=3)
		>>> July3rd
		Holiday: July 3rd (month=7, day=3, )
		
		>>> NewYears = Holiday(
		...     "New Years Day", month=1,  day=1,
		...      observance=nearest_workday
		... )
		>>> NewYears  # doctest: +SKIP
		Holiday: New Years Day (
		    month=1, day=1, observance=<function nearest_workday at 0x66545e9bc440>
		)
		
		>>> July3rd = Holiday("July 3rd", month=7, day=3, days_of_week=(0, 1, 2, 3))
		>>> July3rd
		Holiday: July 3rd (month=7, day=3, )
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?offset:Dynamic, ?observance:Dynamic, ?start_date:Dynamic, ?end_date:Dynamic, ?days_of_week:Dynamic):Dynamic;
	/**
		Parameters
		----------
		name : str
		    Name of the holiday , defaults to class name
		offset : array of pandas.tseries.offsets or
		        class from pandas.tseries.offsets
		    computes offset from date
		observance: function
		    computes when holiday is given a pandas Timestamp
		days_of_week:
		    provide a tuple of days e.g  (0,1,2,3,) for Monday Through Thursday
		    Monday=0,..,Sunday=6
		
		Examples
		--------
		>>> from pandas.tseries.holiday import Holiday, nearest_workday
		>>> from dateutil.relativedelta import MO
		
		>>> USMemorialDay = Holiday(
		...     "Memorial Day", month=5, day=31, offset=pd.DateOffset(weekday=MO(-1))
		... )
		>>> USMemorialDay
		Holiday: Memorial Day (month=5, day=31, offset=<DateOffset: weekday=MO(-1)>)
		
		>>> USLaborDay = Holiday(
		...     "Labor Day", month=9, day=1, offset=pd.DateOffset(weekday=MO(1))
		... )
		>>> USLaborDay
		Holiday: Labor Day (month=9, day=1, offset=<DateOffset: weekday=MO(+1)>)
		
		>>> July3rd = Holiday("July 3rd", month=7, day=3)
		>>> July3rd
		Holiday: July 3rd (month=7, day=3, )
		
		>>> NewYears = Holiday(
		...     "New Years Day", month=1,  day=1,
		...      observance=nearest_workday
		... )
		>>> NewYears  # doctest: +SKIP
		Holiday: New Years Day (
		    month=1, day=1, observance=<function nearest_workday at 0x66545e9bc440>
		)
		
		>>> July3rd = Holiday("July 3rd", month=7, day=3, days_of_week=(0, 1, 2, 3))
		>>> July3rd
		Holiday: July 3rd (month=7, day=3, )
	**/
	public function new(name:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?offset:Dynamic, ?observance:Dynamic, ?start_date:Dynamic, ?end_date:Dynamic, ?days_of_week:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Apply the given offset/observance to a DatetimeIndex of dates.
		
		Parameters
		----------
		dates : DatetimeIndex
		    Dates to apply the given offset/observance rule
		
		Returns
		-------
		Dates with rules applied
	**/
	public function _apply_rule(dates:Dynamic):Dynamic;
	/**
		Get reference dates for the holiday.
		
		Return reference dates for the holiday also returning the year
		prior to the start_date and year following the end_date.  This ensures
		that any offsets to be applied will yield the holidays within
		the passed in dates.
	**/
	public function _reference_dates(start_date:Dynamic, end_date:Dynamic):Dynamic;
	/**
		Calculate holidays observed between start date and end date
		
		Parameters
		----------
		start_date : starting date, datetime-like, optional
		end_date : ending date, datetime-like, optional
		return_name : bool, optional, default=False
		    If True, return a series that has dates and holiday names.
		    False will only return dates.
	**/
	public function dates(start_date:Dynamic, end_date:Dynamic, ?return_name:Dynamic):Dynamic;
}