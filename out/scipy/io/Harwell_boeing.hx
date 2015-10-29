/* This file is generated, do not edit! */
package scipy.io;
@:pythonImport("scipy.io.harwell_boeing") extern class Harwell_boeing {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Read HB-format file.
		
		Parameters
		----------
		file : str-like or file-like
		    If a string-like object, file is the name of the file to read. If a
		    file-like object, the data are read from it.
		
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
	static public function hb_read(file:Dynamic):Dynamic;
	/**
		Write HB-format file.
		
		Parameters
		----------
		file : str-like or file-like
		    if a string-like object, file is the name of the file to read. If a
		    file-like object, the data are read from it.
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
	static public function hb_write(file:Dynamic, m:Dynamic, ?hb_info:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}