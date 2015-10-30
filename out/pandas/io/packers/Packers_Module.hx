/* This file is generated, do not edit! */
package pandas.io.packers;
@:pythonImport("pandas.io.packers") extern class Packers_Module {
	static public var NaT : Dynamic;
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		filepath_or_buffer : a url, filepath, or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	static public function make_block(values:Dynamic, placement:Dynamic, ?klass:Dynamic, ?ndim:Dynamic, ?dtype:Dynamic, ?fastpath:Dynamic):Dynamic;
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	/**
		Pack an object and return the packed bytes.
	**/
	static public function pack(o:Dynamic, ?_default:Dynamic, ?encoding:Dynamic, ?unicode_errors:Dynamic, ?use_single_float:Dynamic, ?autoreset:Dynamic, ?use_bin_type:Dynamic):Dynamic;
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
	static public function parse(timestr:Dynamic, ?parserinfo:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Load msgpack pandas object from the specified
		file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, BytesIO like or string
		iterator : boolean, if True, return an iterator to the unpacker
		           (default is False)
		
		Returns
		-------
		obj : type of object stored in file
	**/
	static public function read_msgpack(path_or_buf:Dynamic, ?iterator:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		msgpack (serialize) object to input file path
		
		THIS IS AN EXPERIMENTAL LIBRARY and the storage format
		may not be stable until a future release.
		
		Parameters
		----------
		path_or_buf : string File path, buffer-like, or None
		              if None, return generated string
		args : an object or objects to serialize
		append : boolean whether to append to an existing msgpack
		         (default is False)
		compress : type of compressor (zlib or blosc), default to None (no
		           compression)
	**/
	static public function to_msgpack(path_or_buf:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function u(s:Dynamic):Dynamic;
	static public function unconvert(values:Dynamic, dtype:Dynamic, ?compress:Dynamic):Dynamic;
	/**
		Unpack a packed object, return an iterator
		Note: packed lists will be returned as tuples
	**/
	static public function unpack(packed:Dynamic, ?object_hook:Dynamic, ?list_hook:Dynamic, ?use_list:Dynamic, ?encoding:Dynamic, ?unicode_errors:Dynamic, ?object_pairs_hook:Dynamic, ?max_buffer_size:Dynamic, ?ext_hook:Dynamic):Dynamic;
}