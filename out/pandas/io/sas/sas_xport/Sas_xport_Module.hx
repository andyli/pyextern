/* This file is generated, do not edit! */
package pandas.io.sas.sas_xport;
@:pythonImport("pandas.io.sas.sas_xport") extern class Sas_xport_Module {
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
		s: string
		    Fixed-length string to split
		parts: list of (name, length) pairs
		    Used to break up string, name '_' will be filtered from output.
		
		Returns
		-------
		Dict of name:contents of string at given location.
	**/
	static public function _split_line(s:Dynamic, parts:Dynamic):Dynamic;
	static public var _xport_reader_doc : Dynamic;
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
}