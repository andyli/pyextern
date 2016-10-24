/* This file is generated, do not edit! */
package pandas.io.common;
@:pythonImport("pandas.io.common") extern class Common_Module {
	static public function UnicodeReader(f:Dynamic, ?dialect:Dynamic, ?encoding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function UnicodeWriter(f:Dynamic, ?dialect:Dynamic, ?encoding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function ZipFile(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _NA_VALUES : Dynamic;
	static public var _PATHLIB_INSTALLED : Dynamic;
	static public var _PY_PATH_INSTALLED : Dynamic;
	static public var _VALID_URLS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the argument with an initial component of ~ or ~user
		   replaced by that user's home directory.
		
		Parameters
		----------
		filepath_or_buffer : object to be converted if possible
		
		Returns
		-------
		expanded_filepath_or_buffer : an expanded filepath or the
		                              input if not expandable
	**/
	static public function _expand_user(filepath_or_buffer:Dynamic):Dynamic;
	/**
		Gets file handle for given path and mode.
		    
	**/
	static public function _get_handle(path:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic):Dynamic;
	/**
		Check for an s3, s3n, or s3a url
	**/
	static public function _is_s3_url(url:Dynamic):Dynamic;
	/**
		Check to see if a URL has a valid protocol.
		
		Parameters
		----------
		url : str or unicode
		
		Returns
		-------
		isurl : bool
		    If `url` has a valid protocol return True otherwise False.
	**/
	static public function _is_url(url:Dynamic):Bool;
	/**
		Return the argument coerced to a string if it was a pathlib.Path
		   or a py.path.local
		
		Parameters
		----------
		filepath_or_buffer : object to be converted
		
		Returns
		-------
		str_filepath_or_buffer : a the string version of the input path
	**/
	static public function _stringify_path(filepath_or_buffer:Dynamic):Dynamic;
	static public function _urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public function _validate_header_arg(header:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		converts an absolute native path to a FILE URL.
		
		Parameters
		----------
		path : a path in native format
		
		Returns
		-------
		a valid FILE URL
	**/
	static public function file_path_to_url(path:Dynamic):Dynamic;
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
	static public function is_number(obj:Dynamic):Dynamic;
	/**
		read an encoded stream from the reader and transform the bytes to
		unicode if required based on the encoding
		
		    Parameters
		    ----------
		    reader : a streamable file-like object
		    encoding : optional, the encoding to attempt to read
		
		    Returns
		    -------
		    a tuple of (a stream of decoded bytes, the encoding which was used)
	**/
	static public function maybe_read_encoded_stream(reader:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		Parse a URL into 6 components:
		<scheme>://<netloc>/<path>;<params>?<query>#<fragment>
		Return a 6-tuple: (scheme, netloc, path, params, query, fragment).
		Note that we don't break the components up in smaller bits
		(e.g. netloc is a single string) and we don't expand % escapes.
	**/
	static public function parse_url(url:Dynamic, ?scheme:Dynamic, ?allow_fragments:Dynamic):Dynamic;
	/**
		OS-specific conversion from a file system path to a relative URL
		of the 'file' scheme; not recommended for general use.
	**/
	static public function pathname2url(pathname:Dynamic):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Encode a dict or sequence of two-element tuples into a URL query string.
		
		If any values in the query arg are sequences and doseq is true, each
		sequence element is converted to a separate parameter.
		
		If the query arg is a sequence of two-element tuples, the order of the
		parameters in the output will match the order of parameters in the
		input.
		
		The components of a query arg may each be either a string or a bytes type.
		
		The safe, encoding, and errors parameters are passed down to the function
		specified by quote_via (encoding and errors only if a component is a str).
	**/
	static public function urlencode(query:Dynamic, ?doseq:Dynamic, ?safe:Dynamic, ?encoding:Dynamic, ?errors:Dynamic, ?quote_via:Dynamic):Dynamic;
	/**
		Join a base URL and a possibly relative URL to form an absolute
		interpretation of the latter.
	**/
	static public function urljoin(base:Dynamic, url:Dynamic, ?allow_fragments:Dynamic):Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	static public var uses_netloc : Dynamic;
	static public var uses_params : Dynamic;
	static public var uses_relative : Dynamic;
}