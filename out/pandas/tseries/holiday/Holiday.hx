/* This file is generated, do not edit! */
package pandas.tseries.holiday;
@:pythonImport("pandas.tseries.holiday", "Holiday") extern class Holiday {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    computes offset from  date
		observance: function
		    computes when holiday is given a pandas Timestamp
		days_of_week:
		    provide a tuple of days e.g  (0,1,2,3,) for Monday Through Thursday
		    Monday=0,..,Sunday=6
		
		Examples
		--------
		>>> from pandas.tseries.holiday import Holiday, nearest_workday
		>>> from pandas import DateOffset
		>>> from dateutil.relativedelta import MO
		>>> USMemorialDay = Holiday('MemorialDay', month=5, day=24,
		                            offset=DateOffset(weekday=MO(1)))
		>>> USLaborDay = Holiday('Labor Day', month=9, day=1,
		                    offset=DateOffset(weekday=MO(1)))
		>>> July3rd = Holiday('July 3rd', month=7, day=3,)
		>>> NewYears = Holiday('New Years Day', month=1,  day=1,
		                       observance=nearest_workday),
		>>> July3rd = Holiday('July 3rd', month=7, day=3,
		                      days_of_week=(0, 1, 2, 3))
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, ?year:Dynamic, ?month:Dynamic, ?day:Dynamic, ?offset:Dynamic, ?observance:Dynamic, ?start_date:Dynamic, ?end_date:Dynamic, ?days_of_week:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Apply the given offset/observance to an
		iterable of dates.
		
		Parameters
		----------
		dates : array-like
		    Dates to apply the given offset/observance rule
		
		Returns
		-------
		Dates with rules applied
	**/
	public function _apply_rule(dates:Dynamic):Dynamic;
	/**
		Calculate holidays between start date and end date
		
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