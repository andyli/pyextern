/* This file is generated, do not edit! */
package pandas.io.common;
@:pythonImport("pandas.io.common") extern class Common_Module {
	static public function ZipFile(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		filepath_or_buffer : a url, filepath, or buffer
		encoding : the encoding to use to decode py3 bytes, default is 'utf-8'
		
		Returns
		-------
		a filepath_or_buffer, the encoding, the compression
	**/
	static public function get_filepath_or_buffer(filepath_or_buffer:Dynamic, ?encoding:Dynamic, ?compression:Dynamic):Dynamic;
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