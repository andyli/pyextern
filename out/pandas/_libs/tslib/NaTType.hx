/* This file is generated, do not edit! */
package pandas._libs.tslib;
@:pythonImport("pandas._libs.tslib", "NaTType") extern class NaTType {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
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
		Return self//value.
	**/
	public function __floordiv__(value:Dynamic):Dynamic;
	/**
		Formats self with strftime.
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
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __int__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	public function __long__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	static public function __new__(cls:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __reduce__():Dynamic;
	/**
		__reduce_ex__(proto) -> (cls, state)
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __repr__():Dynamic;
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	/**
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __str__():Dynamic;
	/**
		Return self-value.
	**/
	public function __sub__(value:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self/value.
	**/
	public function __truediv__(value:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _date_repr : Dynamic;
	public function _get_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _repr_base : Dynamic;
	public var _short_repr : Dynamic;
	public var _time_repr : Dynamic;
	public var asm8 : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function astimezone(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a new Timestamp ceiled to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the ceiling resolution
	**/
	public function ceil(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function combine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function ctime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return date object with same year, month and day.
	**/
	public function date(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var day : Dynamic;
	public var dayofweek : Dynamic;
	public var dayofyear : Dynamic;
	public var days : Dynamic;
	public var days_in_month : Dynamic;
	public var daysinmonth : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function dst(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a new Timestamp floored to this resolution
		
		Parameters
		----------
		freq : a freq string indicating the flooring resolution
	**/
	public function floor(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var fold : Dynamic;
	public var freq : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function fromordinal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function fromtimestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var hour : Dynamic;
	public var is_leap_year : Dynamic;
	public var is_month_end : Dynamic;
	public var is_month_start : Dynamic;
	public var is_quarter_end : Dynamic;
	public var is_quarter_start : Dynamic;
	public var is_year_end : Dynamic;
	public var is_year_start : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function isocalendar(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function isoformat(?sep:Dynamic):Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 1 ... Sunday == 7
	**/
	public function isoweekday(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var max : Dynamic;
	public var microsecond : Dynamic;
	public var microseconds : Dynamic;
	public var millisecond : Dynamic;
	static public var min : Dynamic;
	public var minute : Dynamic;
	public var month : Dynamic;
	public var nanosecond : Dynamic;
	public var nanoseconds : Dynamic;
	/**
		Return the current time in the local timezone.  Equivalent
		to datetime.now([tz])
		
		Parameters
		----------
		tz : string / timezone object, default None
		    Timezone to localize to
	**/
	public function now(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var quarter : Dynamic;
	public var qyear : Dynamic;
	/**
		implements datetime.replace, handles nanoseconds
		
		Parameters
		----------
		year : int, optional
		month : int, optional
		day : int, optional
		hour : int, optional
		minute : int, optional
		second : int, optional
		microsecond : int, optional
		nanosecond: int, optional
		tzinfo : tz-convertible, optional
		fold : int, optional, default is 0
		    added in 3.6, NotImplemented
		
		Returns
		-------
		Timestamp with fields replaced
	**/
	public function replace(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var resolution : Dynamic;
	/**
		Round the Timestamp to the specified resolution
		
		Returns
		-------
		a new Timestamp rounded to the given resolution of `freq`
		
		Parameters
		----------
		freq : a freq string indicating the rounding resolution
		
		Raises
		------
		ValueError if the freq cannot be converted
	**/
	public function round(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var second : Dynamic;
	public var seconds : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function strftime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function strptime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function time(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function timestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function timetuple(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function timetz(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		DEPRECATED: use :meth:`to_pydatetime` instead.
		
		Convert a Timestamp object to a native Python datetime object.
	**/
	public function to_datetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns a numpy.datetime64 object with 'ns' precision 
	**/
	public function to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert a Timestamp object to a native Python datetime object.
		
		If warn=True, issue a warning if nanoseconds is nonzero.
	**/
	public function to_pydatetime(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the current time in the local timezone.  This differs
		from datetime.today() in that it can be localized to a
		passed timezone.
		
		Parameters
		----------
		tz : string / timezone object, default None
		    Timezone to localize to
	**/
	public function today(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function toordinal(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function total_seconds(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert tz-aware Timestamp to another time zone.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will be converted to.
		    None will remove timezone holding UTC time.
		
		Returns
		-------
		converted : Timestamp
		
		Raises
		------
		TypeError
		    If Timestamp is tz-naive.
	**/
	public function tz_convert(?kwargs:python.KwArgs<Dynamic>):pandas.Timestamp;
	/**
		Convert naive Timestamp to local time zone, or remove
		timezone from tz-aware Timestamp.
		
		Parameters
		----------
		tz : string, pytz.timezone, dateutil.tz.tzfile or None
		    Time zone for time which Timestamp will be converted to.
		    None will remove timezone holding local time.
		ambiguous : bool, 'NaT', default 'raise'
		    - bool contains flags to determine if time is dst or not (note
		    that this flag is only applicable for ambiguous fall dst dates)
		    - 'NaT' will return NaT for an ambiguous time
		    - 'raise' will raise an AmbiguousTimeError for an ambiguous time
		errors : 'raise', 'coerce', default 'raise'
		    - 'raise' will raise a NonExistentTimeError if a timestamp is not
		       valid in the specified timezone (e.g. due to a transition from
		       or to DST time)
		    - 'coerce' will return NaT if the timestamp can not be converted
		      into the specified timezone
		
		      .. versionadded:: 0.19.0
		
		Returns
		-------
		localized : Timestamp
		
		Raises
		------
		TypeError
		    If the Timestamp is tz-aware and tz is not None.
	**/
	public function tz_localize(?kwargs:python.KwArgs<Dynamic>):pandas.Timestamp;
	public var tzinfo : Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function tzname(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function utcfromtimestamp(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function utcnow(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function utcoffset(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Total duration of timedelta in seconds (to ns precision)
	**/
	public function utctimetuple(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var value : Dynamic;
	public var week : Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 0 ... Sunday == 6
	**/
	public function weekday(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var weekday_name : Dynamic;
	public var weekofyear : Dynamic;
	public var year : Dynamic;
}