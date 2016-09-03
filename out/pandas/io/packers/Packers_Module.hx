/* This file is generated, do not edit! */
package pandas.io.packers;
@:pythonImport("pandas.io.packers") extern class Packers_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if blosc is installed.
		
		Raises
		------
		ImportError
		    Raised when blosc is not installed.
	**/
	static public function _check_blosc():Dynamic;
	/**
		Check if zlib is installed.
		
		Raises
		------
		ImportError
		    Raised when zlib is not installed.
	**/
	static public function _check_zlib():Dynamic;
	/**
		Convert strings to complex number instance with specified numpy type.
	**/
	static public function c2f(r:Dynamic, i:Dynamic, ctype_name:Dynamic):Dynamic;
	static public var c2f_dict : Dynamic;
	static public var compressor : Dynamic;
	/**
		convert the numpy values to a list 
	**/
	static public function convert(values:Dynamic):Dynamic;
	/**
		Decoder for deserializing numpy data types.
	**/
	static public function decode(obj:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public var dtype_dict : Dynamic;
	/**
		return my dtype mapping, whether number or name 
	**/
	static public function dtype_for(t:Dynamic):Dynamic;
	/**
		Data encoder
	**/
	static public function encode(obj:Dynamic):Dynamic;
	/**
		If the filepath_or_buffer is a url, translate and return the buffer
		passthru otherwise.
		
		Parameters
		----------
		filepath_or_buffer : a url, filepath (str, py.path.local or pathlib.Path),
		                     or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Pack an object and return the packed bytes.
	**/
	static public function pack(o:Dynamic, ?_default:Dynamic, ?encoding:Dynamic, ?unicode_errors:Dynamic, ?use_single_float:Dynamic, ?autoreset:Dynamic, ?use_bin_type:Dynamic):Dynamic;
	/**
		Converts input into a pandas only dtype object or a numpy dtype object.
		
		Parameters
		----------
		dtype : object to be converted
		
		Returns
		-------
		np.dtype or a pandas dtype
	**/
	static public function pandas_dtype(dtype:Dynamic):Dynamic;
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
		        (datetime.datetime(2011, 1, 1, 8, 21), (u'Today is ', u' ', u'at '))
		
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
	static public function parse(timestr:Dynamic, ?parserinfo:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Load msgpack pandas object from the specified
		file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, BytesIO like or string
		encoding: Encoding for decoding msgpack str type
		iterator : boolean, if True, return an iterator to the unpacker
		           (default is False)
		
		Returns
		-------
		obj : type of object stored in file
	**/
	static public function read_msgpack(path_or_buf:Dynamic, ?encoding:Dynamic, ?iterator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		msgpack (serialize) object to input file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, buffer-like, or None
		              if None, return generated string
		args : an object or objects to serialize
		encoding: encoding for unicode objects
		append : boolean whether to append to an existing msgpack
		         (default is False)
		compress : type of compressor (zlib or blosc), default to None (no
		           compression)
	**/
	static public function to_msgpack(path_or_buf:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	static public function u_safe(s:Dynamic):Dynamic;
	static public function unconvert(values:Dynamic, dtype:Dynamic, ?compress:Dynamic):Dynamic;
	/**
		Unpack a packed object, return an iterator
		Note: packed lists will be returned as tuples
	**/
	static public function unpack(packed:Dynamic, ?object_hook:Dynamic, ?list_hook:Dynamic, ?use_list:Dynamic, ?encoding:Dynamic, ?unicode_errors:Dynamic, ?object_pairs_hook:Dynamic, ?max_buffer_size:Dynamic, ?ext_hook:Dynamic):Dynamic;
}