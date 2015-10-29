/* This file is generated, do not edit! */
package pandas.tseries.common;
@:pythonImport("pandas.tseries.common", "DatetimeProperties") extern class DatetimeProperties {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function __init__(values:Dynamic, index:Dynamic, name:Dynamic):Dynamic;
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
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		add accessors to cls from the delegate class
		
		Parameters
		----------
		cls : the class to add the methods/properties to
		delegate : the class to get methods/properties & doc-strings
		acccessors : string list of accessors to add
		typ : 'property' or 'method'
		overwrite : boolean, default False
		   overwrite the method/property in the target class if it exists
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	static public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Returns numpy array of datetime.date. The date part of the Timestamps.
	**/
	static public var date : Dynamic;
	/**
		The days of the datetime
	**/
	static public var day : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	static public var dayofweek : Dynamic;
	/**
		The ordinal day of the year
	**/
	static public var dayofyear : Dynamic;
	/**
		The number of days in the month
		
		.. versionadded:: 0.16.0
	**/
	static public var days_in_month : Dynamic;
	/**
		The number of days in the month
		
		.. versionadded:: 0.16.0
	**/
	static public var daysinmonth : Dynamic;
	/**
		get/set the frequncy of the Index
	**/
	static public var freq : Dynamic;
	/**
		The hours of the datetime
	**/
	static public var hour : Dynamic;
	/**
		Logical indicating if last day of month (defined by frequency)
	**/
	static public var is_month_end : Dynamic;
	/**
		Logical indicating if first day of month (defined by frequency)
	**/
	static public var is_month_start : Dynamic;
	/**
		Logical indicating if last day of quarter (defined by frequency)
	**/
	static public var is_quarter_end : Dynamic;
	/**
		Logical indicating if first day of quarter (defined by frequency)
	**/
	static public var is_quarter_start : Dynamic;
	/**
		Logical indicating if last day of year (defined by frequency)
	**/
	static public var is_year_end : Dynamic;
	/**
		Logical indicating if first day of year (defined by frequency)
	**/
	static public var is_year_start : Dynamic;
	/**
		The microseconds of the datetime
	**/
	static public var microsecond : Dynamic;
	/**
		The minutes of the datetime
	**/
	static public var minute : Dynamic;
	/**
		The month as January=1, December=12
	**/
	static public var month : Dynamic;
	/**
		The nanoseconds of the datetime
	**/
	static public var nanosecond : Dynamic;
	/**
		Return DatetimeIndex with times to midnight. Length is unaltered
		
		Returns
		-------
		normalized : DatetimeIndex
	**/
	public function normalize(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		The quarter of the date
	**/
	static public var quarter : Dynamic;
	/**
		The seconds of the datetime
	**/
	static public var second : Dynamic;
	/**
		Return an array of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in the `python string format doc
		<https://docs.python.org/2/library/datetime.html#strftime-and-strptime-behavior>`__
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		date_format : str
		    date format string (e.g. "%Y-%m-%d")
		
		Returns
		-------
		ndarray of formatted strings
	**/
	public function strftime(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns numpy array of datetime.time. The time part of the Timestamps.
	**/
	static public var time : Dynamic;
	/**
		Cast to PeriodIndex at a particular frequency
	**/
	public function to_period(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function to_pydatetime():Dynamic;
	static public var tz : Dynamic;
	/**
		Convert tz-aware DatetimeIndex from one time zone to another (using pytz/dateutil)
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted to
		    time zone of the TimeSeries.
		    None will remove timezone holding UTC time.
		
		Returns
		-------
		normalized : DatetimeIndex
		
		Raises
		------
		TypeError
		    If DatetimeIndex is tz-naive.
	**/
	public function tz_convert(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Localize tz-naive DatetimeIndex to given time zone (using pytz/dateutil),
		or remove timezone from tz-aware DatetimeIndex
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted to
		    time zone of the TimeSeries.
		    None will remove timezone holding local time.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    - 'infer' will attempt to infer fall dst-transition hours based on order
		    - bool-ndarray where True signifies a DST time, False signifies
		      a non-DST time (note that this flag is only applicable for ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous times
		infer_dst : boolean, default False (DEPRECATED)
		    Attempt to infer fall dst-transition hours based on order
		
		Returns
		-------
		localized : DatetimeIndex
		
		Raises
		------
		TypeError
		    If the DatetimeIndex is tz-aware and tz is not None.
	**/
	public function tz_localize(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		The week ordinal of the year
	**/
	static public var week : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	static public var weekday : Dynamic;
	/**
		The week ordinal of the year
	**/
	static public var weekofyear : Dynamic;
	/**
		The year of the datetime
	**/
	static public var year : Dynamic;
}