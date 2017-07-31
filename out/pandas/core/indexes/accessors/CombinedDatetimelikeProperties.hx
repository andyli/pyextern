/* This file is generated, do not edit! */
package pandas.core.indexes.accessors;
@:pythonImport("pandas.core.indexes.accessors", "CombinedDatetimelikeProperties") extern class CombinedDatetimelikeProperties {
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
	@:native("__init__")
	public function ___init__(values:Dynamic, index:Dynamic, name:Dynamic, ?orig:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(values:Dynamic, index:Dynamic, name:Dynamic, ?orig:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __setattr__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for a object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
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
	public var __weakref__ : Dynamic;
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
	public var _constructor : Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Prevents setting additional attributes
	**/
	public function _freeze():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		ceil the index to the specified freq
		
		Parameters
		----------
		freq : freq string/object
		
		Returns
		-------
		index of same type
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function ceil(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a dataframe of the components (days, hours, minutes,
		seconds, milliseconds, microseconds, nanoseconds) of the Timedeltas.
		
		Returns
		-------
		a DataFrame
	**/
	public var components : Dynamic;
	/**
		Returns numpy array of python datetime.date objects (namely, the date
		part of Timestamps without timezone information).
	**/
	public var date : Dynamic;
	/**
		The days of the datetime
	**/
	public var day : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	public var dayofweek : Dynamic;
	/**
		The ordinal day of the year
	**/
	public var dayofyear : Dynamic;
	/**
		Number of days for each element. 
	**/
	public var days : Dynamic;
	/**
		The number of days in the month
		
		.. versionadded:: 0.16.0
	**/
	public var days_in_month : Dynamic;
	/**
		The number of days in the month
		
		.. versionadded:: 0.16.0
	**/
	public var daysinmonth : Dynamic;
	/**
		floor the index to the specified freq
		
		Parameters
		----------
		freq : freq string/object
		
		Returns
		-------
		index of same type
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function floor(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		get/set the frequency of the Index
	**/
	public var freq : Dynamic;
	/**
		The hours of the datetime
	**/
	public var hour : Dynamic;
	/**
		Logical indicating if the date belongs to a leap year
	**/
	public var is_leap_year : Dynamic;
	/**
		Logical indicating if last day of month (defined by frequency)
	**/
	public var is_month_end : Dynamic;
	/**
		Logical indicating if first day of month (defined by frequency)
	**/
	public var is_month_start : Dynamic;
	/**
		Logical indicating if last day of quarter (defined by frequency)
	**/
	public var is_quarter_end : Dynamic;
	/**
		Logical indicating if first day of quarter (defined by frequency)
	**/
	public var is_quarter_start : Dynamic;
	/**
		Logical indicating if last day of year (defined by frequency)
	**/
	public var is_year_end : Dynamic;
	/**
		Logical indicating if first day of year (defined by frequency)
	**/
	public var is_year_start : Dynamic;
	/**
		The microseconds of the datetime
	**/
	public var microsecond : Dynamic;
	/**
		Number of microseconds (>= 0 and less than 1 second) for each
		element. 
	**/
	public var microseconds : Dynamic;
	/**
		The minutes of the datetime
	**/
	public var minute : Dynamic;
	/**
		The month as January=1, December=12
	**/
	public var month : Dynamic;
	/**
		The nanoseconds of the datetime
	**/
	public var nanosecond : Dynamic;
	/**
		Number of nanoseconds (>= 0 and less than 1 microsecond) for each
		element.
	**/
	public var nanoseconds : Dynamic;
	/**
		Return DatetimeIndex with times to midnight. Length is unaltered
		
		Returns
		-------
		normalized : DatetimeIndex
	**/
	public function normalize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		The quarter of the date
	**/
	public var quarter : Dynamic;
	/**
		round the index to the specified freq
		
		Parameters
		----------
		freq : freq string/object
		
		Returns
		-------
		index of same type
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function round(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The seconds of the datetime
	**/
	public var second : Dynamic;
	/**
		Number of seconds (>= 0 and less than 1 day) for each element. 
	**/
	public var seconds : Dynamic;
	/**
		Return an array of formatted strings specified by date_format, which
		supports the same string format as the python standard library. Details
		of the string format can be found in `python string format doc <https://docs.python.org/2/library/datetime.html#strftime-and-strptime-behavior>`__
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		date_format : str
		    date format string (e.g. "%Y-%m-%d")
		
		Returns
		-------
		ndarray of formatted strings
	**/
	public function strftime(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns numpy array of datetime.time. The time part of the Timestamps.
	**/
	public var time : Dynamic;
	/**
		Cast to PeriodIndex at a particular frequency
	**/
	public function to_period(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function to_pydatetime():Dynamic;
	public function to_pytimedelta():Dynamic;
	/**
		Total duration of each element expressed in seconds.
		
		.. versionadded:: 0.17.0
	**/
	public function total_seconds(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var tz : Dynamic;
	/**
		Convert tz-aware DatetimeIndex from one time zone to another (using
		pytz/dateutil)
		
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
	public function tz_convert(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		Localize tz-naive DatetimeIndex to given time zone (using
		pytz/dateutil), or remove timezone from tz-aware DatetimeIndex
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time. Corresponding timestamps would be converted to
		    time zone of the TimeSeries.
		    None will remove timezone holding local time.
		ambiguous : 'infer', bool-ndarray, 'NaT', default 'raise'
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for
		      ambiguous times)
		    - 'NaT' will return NaT where there are ambiguous times
		    - 'raise' will raise an AmbiguousTimeError if there are ambiguous
		      times
		errors : 'raise', 'coerce', default 'raise'
		    - 'raise' will raise a NonExistentTimeError if a timestamp is not
		       valid in the specified timezone (e.g. due to a transition from
		       or to DST time)
		    - 'coerce' will return NaT if the timestamp can not be converted
		      into the specified timezone
		
		    .. versionadded:: 0.19.0
		
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
	public function tz_localize(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DatetimeIndex;
	/**
		The week ordinal of the year
	**/
	public var week : Dynamic;
	/**
		The day of the week with Monday=0, Sunday=6
	**/
	public var weekday : Dynamic;
	/**
		The name of day in a week (ex: Friday)
		
		.. versionadded:: 0.18.1
	**/
	public var weekday_name : Dynamic;
	/**
		The week ordinal of the year
	**/
	public var weekofyear : Dynamic;
	/**
		The year of the datetime
	**/
	public var year : Dynamic;
}