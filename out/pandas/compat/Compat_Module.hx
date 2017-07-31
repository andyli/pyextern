/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat") extern class Compat_Module {
	static public var PY2 : Dynamic;
	static public var PY3 : Dynamic;
	static public var PY35 : Dynamic;
	static public var PY36 : Dynamic;
	static public var _EAW_MAP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Class decorator for creating a class with a metaclass.
	**/
	static public function add_metaclass(metaclass:Dynamic):Dynamic;
	/**
		Bind a method to class, python 2 and python 3 compatible.
		
		Parameters
		----------
		
		cls : type
		    class to receive bound method
		name : basestring
		    name of method on class instance
		func : function
		    function to be bound as method
		
		
		Returns
		-------
		None
	**/
	static public function bind_method(cls:Dynamic, name:Dynamic, func:Dynamic):Dynamic;
	static public function bytes_to_str(b:Dynamic, ?encoding:Dynamic):Dynamic;
	/**
		Return whether the object is callable (i.e., some kind of function).
		
		Note that classes are callable, as are instances of classes with a
		__call__() method.
	**/
	static public function callable(obj:Dynamic):Dynamic;
	static public var class_types : Dynamic;
	/**
		Calculate display width considering unicode East Asian Width
	**/
	static public function east_asian_len(data:Dynamic, ?encoding:Dynamic, ?ambiguous_width:Dynamic):Dynamic;
	/**
		Returns the east asian width assigned to the character chr as string.
	**/
	static public function east_asian_width(chr:Dynamic):Dynamic;
	/**
		import lzma from the std library 
	**/
	static public function import_lzma():Dynamic;
	static public var integer_types : Dynamic;
	/**
		intern(string) -> string
		
		``Intern'' the given string.  This enters the string in the (global)
		table of interned strings whose purpose is to speed up dictionary lookups.
		Return the string itself or the previously interned string object with the
		same value.
	**/
	static public function intern(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_platform_32bit():Dynamic;
	static public function is_platform_linux():Dynamic;
	/**
		am I little endian 
	**/
	static public function is_platform_little_endian():Dynamic;
	static public function is_platform_mac():Dynamic;
	static public function is_platform_windows():Dynamic;
	static public function isidentifier(s:Dynamic):Dynamic;
	static public function iteritems(obj:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function iterkeys(obj:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function itervalues(obj:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public function lfilter(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lzip(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		next(iterator[, default])
		
		Return the next item from the iterator. If default is given and the iterator
		is exhausted, it is returned instead of raising StopIteration.
	**/
	static public function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parse a string in one of the supported formats, using the
		``parserinfo`` parameters.
		
		:param timestr:
		    A string containing a date/time stamp.
		
		:param parserinfo:
		    A :class:`parserinfo` object containing parameters for the parser.
		    If ``None``, the default arguments to the :class:`parserinfo`
		    constructor are used.
		
		The ``**kwargs`` parameter takes the following keyword arguments:
		
		:param default:
		    The default datetime object, if this is a datetime object and not
		    ``None``, elements specified in ``timestr`` replace elements in the
		    default object.
		
		:param ignoretz:
		    If set ``True``, time zones in parsed strings are ignored and a naive
		    :class:`datetime` object is returned.
		
		:param tzinfos:
		        Additional time zone names / aliases which may be present in the
		        string. This argument maps time zone names (and optionally offsets
		        from those time zones) to time zones. This parameter can be a
		        dictionary with timezone aliases mapping time zone names to time
		        zones or a function taking two parameters (``tzname`` and
		        ``tzoffset``) and returning a time zone.
		
		        The timezones to which the names are mapped can be an integer
		        offset from UTC in minutes or a :class:`tzinfo` object.
		
		        .. doctest::
		           :options: +NORMALIZE_WHITESPACE
		
		            >>> from dateutil.parser import parse
		            >>> from dateutil.tz import gettz
		            >>> tzinfos = {"BRST": -10800, "CST": gettz("America/Chicago")}
		            >>> parse("2012-01-19 17:21:00 BRST", tzinfos=tzinfos)
		            datetime.datetime(2012, 1, 19, 17, 21, tzinfo=tzoffset(u'BRST', -10800))
		            >>> parse("2012-01-19 17:21:00 CST", tzinfos=tzinfos)
		            datetime.datetime(2012, 1, 19, 17, 21,
		                              tzinfo=tzfile('/usr/share/zoneinfo/America/Chicago'))
		
		        This parameter is ignored if ``ignoretz`` is set.
		
		:param dayfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the day (``True``) or month (``False``). If
		    ``yearfirst`` is set to ``True``, this distinguishes between YDM and
		    YMD. If set to ``None``, this value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to ``False``).
		
		:param yearfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the year. If ``True``, the first number is taken to
		    be the year, otherwise the last number is taken to be the year. If
		    this is set to ``None``, the value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to ``False``).
		
		:param fuzzy:
		    Whether to allow fuzzy parsing, allowing for string like "Today is
		    January 1, 2047 at 8:21:00AM".
		
		:param fuzzy_with_tokens:
		    If ``True``, ``fuzzy`` is automatically set to True, and the parser
		    will return a tuple where the first element is the parsed
		    :class:`datetime.datetime` datetimestamp and the second element is
		    a tuple containing the portions of the string which were ignored:
		
		    .. doctest::
		
		        >>> from dateutil.parser import parse
		        >>> parse("Today is January 1, 2047 at 8:21:00AM", fuzzy_with_tokens=True)
		        (datetime.datetime(2047, 1, 1, 8, 21), (u'Today is ', u' ', u'at '))
		
		:return:
		    Returns a :class:`datetime.datetime` object or, if the
		    ``fuzzy_with_tokens`` option is ``True``, returns a tuple, the
		    first element being a :class:`datetime.datetime` object, the second
		    a tuple containing the fuzzy tokens.
		
		:raises ValueError:
		    Raised for invalid or unknown string format, if the provided
		    :class:`tzinfo` is not in a valid format, or if an invalid date
		    would be created.
		
		:raises OverflowError:
		    Raised if the parsed date exceeds the largest valid C integer on
		    your system.
	**/
	static public function parse_date(timestr:Dynamic, ?parserinfo:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Raise exception with existing traceback.
		If traceback is not passed, uses sys.exc_info() to get traceback.
	**/
	static public function raise_with_traceback(exc:Dynamic, ?traceback:Dynamic):Dynamic;
	/**
		reduce(function, sequence[, initial]) -> value
		
		Apply a function of two arguments cumulatively to the items of a sequence,
		from left to right, so as to reduce the sequence to a single value.
		For example, reduce(lambda x, y: x+y, [1, 2, 3, 4, 5]) calculates
		((((1+2)+3)+4)+5).  If initial is present, it is placed before the items
		of the sequence in the calculation, and serves as a default when the
		sequence is empty.
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Bind the name/qualname attributes of the function 
	**/
	static public function set_function_name(f:Dynamic, name:Dynamic, cls:Dynamic):Dynamic;
	static public function signature(f:Dynamic):Dynamic;
	static public function str_to_bytes(s:Dynamic, ?encoding:Dynamic):Dynamic;
	static public var string_and_binary_types : Dynamic;
	static public var string_types : Dynamic;
	static public function strlen(data:Dynamic, ?encoding:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	static public function u_safe(s:Dynamic):Dynamic;
	/**
		Return a Unicode string of one character with ordinal i; 0 <= i <= 0x10ffff.
	**/
	static public function unichr(i:Dynamic):Dynamic;
}