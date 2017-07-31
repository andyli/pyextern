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
		Moves a bytes object that is about to be destroyed into a mutable buffer
		without copying the data.
		
		Parameters
		----------
		bytes_rvalue : bytes with 1 refcount.
		    The bytes object that you want to move into a mutable buffer. This
		    cannot be a named object. It must only have a single reference.
		
		Returns
		-------
		buf : stolenbuf
		    An object that supports the buffer protocol which can give a mutable
		    view of the data that was previously owned by ``bytes_rvalue``.
		
		Raises
		------
		BadMove
		    Raised when a move is attempted on an object with more than one
		    reference.
		
		Notes
		-----
		If you want to use this function you are probably wrong.
		
		Warning: Do not call this function through *unpacking. This can
		potentially trick the reference checks which may allow you to get a
		mutable reference to a shared string!
	**/
	static public function _move_into_mutable_buffer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If possible, reshape `arr` to have shape `new_shape`,
		with a couple of exceptions (see gh-13012):
		
		1) If `arr` is a Categorical or Index, `arr` will be
		   returned as is.
		2) If `arr` is a Series, the `_values` attribute will
		   be reshaped and returned.
		
		Parameters
		----------
		arr : array-like, object to be reshaped
		new_shape : int or tuple of ints, the new shape
	**/
	static public function _safe_reshape(arr:Dynamic, new_shape:Dynamic):Dynamic;
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
		If the filepath_or_buffer is a url, translate and return the buffer.
		Otherwise passthrough.
		
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
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is
		          of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
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