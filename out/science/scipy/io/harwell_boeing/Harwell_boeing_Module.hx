/* This file is generated, do not edit! */
package scipy.io.harwell_boeing;
@:pythonImport("scipy.io.harwell_boeing") extern class Harwell_boeing_Module {
	/**
		Read HB-format file.
		
		Parameters
		----------
		path_or_open_file : path-like or file-like
		    If a file-like object, it is used as-is. Otherwise, it is opened
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
		
		Examples
		--------
		We can read and write a harwell-boeing format file:
		
		>>> from scipy.io.harwell_boeing import hb_read, hb_write
		>>> from scipy.sparse import csr_matrix, eye
		>>> data = csr_matrix(eye(3))  # create a sparse matrix
		>>> hb_write("data.hb", data)  # write a hb file
		>>> print(hb_read("data.hb"))  # read a hb file
		  (0, 0)    1.0
		  (1, 1)    1.0
		  (2, 2)    1.0
	**/
	static public function hb_read(path_or_open_file:Dynamic):Dynamic;
	/**
		Write HB-format file.
		
		Parameters
		----------
		path_or_open_file : path-like or file-like
		    If a file-like object, it is used as-is. Otherwise, it is opened
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
		
		Examples
		--------
		We can read and write a harwell-boeing format file:
		
		>>> from scipy.io.harwell_boeing import hb_read, hb_write
		>>> from scipy.sparse import csr_matrix, eye
		>>> data = csr_matrix(eye(3))  # create a sparse matrix
		>>> hb_write("data.hb", data)  # write a hb file
		>>> print(hb_read("data.hb"))  # read a hb file
		  (0, 0)    1.0
		  (1, 1)    1.0
		  (2, 2)    1.0
	**/
	static public function hb_write(path_or_open_file:Dynamic, m:Dynamic, ?hb_info:Dynamic):Dynamic;
}