/* This file is generated, do not edit! */
package pandas.tslib;
@:pythonImport("pandas.tslib", "_Timestamp") extern class _Timestamp {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	/**
		Return hash(self).
	**/
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
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
	/**
		Return value+self.
	**/
	public function __radd__(value:Dynamic):Dynamic;
	/**
		__reduce__() -> (cls, state)
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
		Return value-self.
	**/
	public function __rsub__(value:Dynamic):Dynamic;
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
	public var _date_repr : Dynamic;
	public function _get_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function _get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var _repr_base : Dynamic;
	public var _time_repr : Dynamic;
	public var asm8 : Dynamic;
	/**
		tz -> convert to local time in new timezone tz
	**/
	public function astimezone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		date, time -> datetime with same date and time fields
	**/
	static public function combine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return ctime() style string.
	**/
	public function ctime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return date object with same year, month and day.
	**/
	public function date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var day : Dynamic;
	/**
		Return self.tzinfo.dst(self).
	**/
	public function dst(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var freq : Dynamic;
	/**
		int -> date corresponding to a proleptic Gregorian ordinal.
	**/
	static public function fromordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		timestamp[, tz] -> tz's local time from POSIX timestamp.
	**/
	static public function fromtimestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var hour : Dynamic;
	/**
		Return a 3-tuple containing ISO year, week number, and weekday.
	**/
	public function isocalendar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		[sep] -> string in ISO 8601 format, YYYY-MM-DDTHH:MM:SS[.mmmmmm][+HH:MM].
		
		sep is used to separate the year from the time, and defaults to 'T'.
	**/
	public function isoformat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 1 ... Sunday == 7
	**/
	public function isoweekday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var max : Dynamic;
	public var microsecond : Dynamic;
	static public var min : Dynamic;
	public var minute : Dynamic;
	public var month : Dynamic;
	public var nanosecond : Dynamic;
	/**
		Returns new datetime object representing current time local to tz.
		
		  tz
		    Timezone object.
		
		If no tz is specified, uses local timezone.
	**/
	static public function now(?tz:Dynamic):Dynamic;
	/**
		Return datetime with new specified fields.
	**/
	public function replace(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var resolution : Dynamic;
	public var second : Dynamic;
	/**
		format -> strftime() style string.
	**/
	public function strftime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		string, format -> new datetime parsed from a string (like time.strptime()).
	**/
	static public function strptime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time object with same time but with tzinfo=None.
	**/
	public function time(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return POSIX timestamp as float.
	**/
	public function timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time tuple, compatible with time.localtime().
	**/
	public function timetuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return time object with same time and tzinfo.
	**/
	public function timetz(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function to_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Current date or datetime:  same as self.__class__.fromtimestamp(time.time()).
	**/
	static public function today(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return proleptic Gregorian ordinal.  January 1 of year 1 is day 1.
	**/
	public function toordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var tzinfo : Dynamic;
	/**
		Return self.tzinfo.tzname(self).
	**/
	public function tzname(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Construct a naive UTC datetime from a POSIX timestamp.
	**/
	static public function utcfromtimestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new datetime representing UTC day and time.
	**/
	static public function utcnow(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self.tzinfo.utcoffset(self).
	**/
	public function utcoffset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return UTC time tuple, compatible with time.localtime().
	**/
	public function utctimetuple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var value : Dynamic;
	/**
		Return the day of the week represented by the date.
		Monday == 0 ... Sunday == 6
	**/
	public function weekday(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var year : Dynamic;
}