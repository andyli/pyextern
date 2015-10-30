/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat") extern class Compat_Module {
	static public var PY2 : Dynamic;
	static public var PY3 : Dynamic;
	static public var PY35 : Dynamic;
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
	static public var integer_types : Dynamic;
	static public function is_platform_32bit():Dynamic;
	static public function is_platform_linux():Dynamic;
	static public function is_platform_mac():Dynamic;
	static public function is_platform_windows():Dynamic;
	static public function isidentifier(s:Dynamic):Dynamic;
	/**
		replacement for six's iteritems for Python2/3 compat
		uses 'iteritems' if available and otherwise uses 'items'.
		
		Passes kwargs to method.
	**/
	static public function iteritems(obj:Dynamic, kwargs:Dynamic):Dynamic;
	static public function iterkeys(obj:Dynamic, kwargs:Dynamic):Dynamic;
	static public function itervalues(obj:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lfilter(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Find the n largest elements in a dataset.
		
		Equivalent to:  sorted(iterable, key=key, reverse=True)[:n]
	**/
	static public function nlargest(n:Dynamic, iterable:Dynamic, ?key:Dynamic):Dynamic;
	/**
		Parse a string in one of the supported formats, using the `parserinfo`
		parameters.
		
		:param timestr:
		    A string containing a date/time stamp.
		
		:param parserinfo:
		    A :class:`parserinfo` object containing parameters for the parser.
		    If `None`, the default arguments to the `parserinfo` constructor are
		    used.
		
		The `**kwargs` parameter takes the following keyword arguments:
		
		:param default:
		    The default datetime object, if this is a datetime object and not
		    `None`, elements specified in `timestr` replace elements in the
		    default object.
		
		:param ignoretz:
		    Whether or not to ignore the time zone (boolean).
		
		:param tzinfos:
		    A time zone, to be applied to the date, if `ignoretz` is `True`.
		    This can be either a subclass of `tzinfo`, a time zone string or an
		    integer offset.
		
		:param dayfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the day (`True`) or month (`False`). If
		    `yearfirst` is set to `True`, this distinguishes between YDM and
		    YMD. If set to `None`, this value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to `False`).
		
		:param yearfirst:
		    Whether to interpret the first value in an ambiguous 3-integer date
		    (e.g. 01/05/09) as the year. If `True`, the first number is taken to
		    be the year, otherwise the last number is taken to be the year. If
		    this is set to `None`, the value is retrieved from the current
		    :class:`parserinfo` object (which itself defaults to `False`).
		
		:param fuzzy:
		    Whether to allow fuzzy parsing, allowing for string like "Today is
		    January 1, 2047 at 8:21:00AM".
		
		:param fuzzy_with_tokens:
		    If `True`, `fuzzy` is automatically set to True, and the parser will
		    return a tuple where the first element is the parsed
		    `datetime.datetime` datetimestamp and the second element is a tuple
		    containing the portions of the string which were ignored, e.g.
		    "Today is January 1, 2047 at 8:21:00AM" should return
		    `(datetime.datetime(2011, 1, 1, 8, 21), (u'Today is ', u' ', u'at '))`
	**/
	static public function parse_date(timestr:Dynamic, ?parserinfo:Dynamic, kwargs:Dynamic):Dynamic;
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