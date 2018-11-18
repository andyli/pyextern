/* This file is generated, do not edit! */
package scipy.io.harwell_boeing.hb;
@:pythonImport("scipy.io.harwell_boeing.hb") extern class Hb_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _expect_int(value:Dynamic, ?msg:Dynamic):Dynamic;
	/**
		Return the number of bytes to read to get every full lines for the
		given parsed fortran format.
	**/
	static public function _nbytes_full(fmt:Dynamic, nlines:Dynamic):Dynamic;
	static public function _read_hb_data(content:Dynamic, header:Dynamic):Dynamic;
	static public function _write_data(m:Dynamic, fid:Dynamic, header:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Read HB-format file.
		
		Parameters
		----------
		path_or_open_file : path-like or file-like
		    If a file-like object, it is used as-is. Otherwise it is opened
		    before reading.
		
		Returns
		-------
		data : scipy.sparse.csc_matrix instance
		    The data read from the HB file as a sparse matrix.
		
		Notes
		-----
		At the moment not the full Harwell-Boeing format is supported. Supported
		features are:
		
		    - assembled, non-symmetric, real matrices
		    - integer for pointer/indices
		    - exponential format for float values, and int format
	**/
	static public function hb_read(path_or_open_file:Dynamic):Dynamic;
	/**
		Write HB-format file.
		
		Parameters
		----------
		path_or_open_file : path-like or file-like
		    If a file-like object, it is used as-is. Otherwise it is opened
		    before writing.
		m : sparse-matrix
		    the sparse matrix to write
		hb_info : HBInfo
		    contains the meta-data for write
		
		Returns
		-------
		None
		
		Notes
		-----
		At the moment not the full Harwell-Boeing format is supported. Supported
		features are:
		
		    - assembled, non-symmetric, real matrices
		    - integer for pointer/indices
		    - exponential format for float values, and int format
	**/
	static public function hb_write(path_or_open_file:Dynamic, m:Dynamic, ?hb_info:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}