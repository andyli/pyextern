/* This file is generated, do not edit! */
package pandas.io.sas.sas_xport;
@:pythonImport("pandas.io.sas.sas_xport") extern class Sas_xport_Module {
	static public function FilePath(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _base_params_doc : Dynamic;
	static public var _correct_header1 : Dynamic;
	static public var _correct_header2 : Dynamic;
	static public var _correct_line1 : Dynamic;
	static public var _correct_obs_header : Dynamic;
	static public var _fieldkeys : Dynamic;
	static public var _format_params_doc : Dynamic;
	static public function _handle_truncated_float_vec(vec:Dynamic, nbytes:Dynamic):Dynamic;
	static public var _iterator_doc : Dynamic;
	static public var _params2_doc : Dynamic;
	/**
		Given a date in xport format, return Python date.
	**/
	static public function _parse_date(datestr:Dynamic):Dynamic;
	/**
		Parse a vector of float values representing IBM 8 byte floats into
		native 8 byte floats.
	**/
	static public function _parse_float_vec(vec:Dynamic):Dynamic;
	static public var _read_method_doc : Dynamic;
	static public var _read_sas_doc : Dynamic;
	/**
		Parameters
		----------
		s: str
		    Fixed-length string to split
		parts: list of (name, length) pairs
		    Used to break up string, name '_' will be filtered from output.
		
		Returns
		-------
		Dict of name:contents of string at given location.
	**/
	static public function _split_line(s:Dynamic, parts:Dynamic):Dynamic;
	static public var _xport_reader_doc : Dynamic;
	static public var annotations : Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf : str or file handle
		    File path or object.
		mode : str
		    Mode to open path_or_buf with.
		encoding : str or None
		    Encoding to use.
		compression : str or dict, default 'infer'
		    For on-the-fly compression of the output data. If 'infer' and 'path_or_buf'
		    path-like, then detect compression from the following extensions: '.gz',
		    '.bz2', '.zip', '.xz', or '.zst' (otherwise no compression). Set to
		    ``None`` for no compression. Can also be a dict with key ``'method'`` set
		    to one of {``'zip'``, ``'gzip'``, ``'bz2'``, ``'zstd'``} and other
		    key-value pairs are forwarded to ``zipfile.ZipFile``, ``gzip.GzipFile``,
		    ``bz2.BZ2File``, or ``zstandard.ZstdDecompressor``, respectively. As an
		    example, the following could be passed for faster compression and to create
		    a reproducible gzip archive:
		    ``compression={'method': 'gzip', 'compresslevel': 1, 'mtime': 1}``.
		
		    .. versionchanged:: 1.0.0
		       May now be a dict with key 'method' as compression mode
		       and other keys as compression options if compression
		       mode is 'zip'.
		
		    .. versionchanged:: 1.1.0
		       Passing compression options as keys in dict is now
		       supported for compression modes 'gzip', 'bz2', 'zstd' and 'zip'.
		
		    .. versionchanged:: 1.4.0 Zstandard support.
		
		memory_map : bool, default False
		    See parsers._parser_params for more information.
		is_text : bool, default True
		    Whether the type of the content passed to the file/buffer is string or
		    bytes. This is not the same as `"b" not in mode`. If a string content is
		    passed to a binary file/buffer, a wrapper is inserted.
		errors : str, default 'strict'
		    Specifies how encoding and decoding errors are to be handled.
		    See the errors argument for :func:`open` for a full list
		    of options.
		storage_options: StorageOptions = None
		    Passed to _get_filepath_or_buffer
		
		.. versionchanged:: 1.2.0
		
		Returns the dataclass IOHandles
	**/
	static public function get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic, ?errors:Dynamic, ?storage_options:Dynamic):Dynamic;
}