/* This file is generated, do not edit! */
package scipy.io.matlab.miobase;
@:pythonImport("scipy.io.matlab.miobase") extern class Miobase_Module {
	/**
		Return dtype for given number of items per element
	**/
	static public function arr_dtype_number(arr:Dynamic, num:Dynamic):Dynamic;
	/**
		Convert string array to char array 
	**/
	static public function arr_to_chars(arr:Dynamic):Dynamic;
	/**
		Convert dtypes in mapping to given order
		
		Parameters
		----------
		dtype_template : mapping
		   mapping with values returning numpy dtype from ``np.dtype(val)``
		order_code : str
		   an order code suitable for using in ``dtype.newbyteorder()``
		
		Returns
		-------
		dtypes : mapping
		   mapping where values have been replaced by
		   ``np.dtype(val).newbyteorder(order_code)``
	**/
	static public function convert_dtypes(dtype_template:Dynamic, order_code:Dynamic):Dynamic;
	static public var doc_dict : Dynamic;
	static public function docfiller(f:Dynamic):Dynamic;
	/**
		Return major, minor tuple depending on apparent mat file type
		
		Where:
		
		 #. 0,x -> version 4 format mat files
		 #. 1,x -> version 5 format mat files
		 #. 2,x -> version 7.3 format mat files (HDF format)
		
		Parameters
		----------
		file_name : str
		   Name of the mat file (do not need .mat extension if
		   appendmat==True). Can also pass open file-like object.
		appendmat : bool, optional
		   True to append the .mat extension to the end of the given
		   filename, if not already present. Default is True.
		
		Returns
		-------
		major_version : {0, 1, 2}
		    major MATLAB File format version
		minor_version : int
		    minor MATLAB file format version
		
		Raises
		------
		MatReadError
		    If the file is empty.
		ValueError
		    The matfile version is unknown.
		
		Notes
		-----
		Has the side effect of setting the file read pointer to 0
	**/
	static public function get_matfile_version(file_name:Dynamic, ?appendmat:Dynamic):Dynamic;
	/**
		Determine equivalent MATLAB dimensions for given array
		
		Parameters
		----------
		arr : ndarray
		    Input array
		oned_as : {'column', 'row'}, optional
		    Whether 1-D arrays are returned as MATLAB row or column matrices.
		    Default is 'column'.
		
		Returns
		-------
		dims : tuple
		    Shape tuple, in the form MATLAB expects it.
		
		Notes
		-----
		We had to decide what shape a 1 dimensional array would be by
		default. ``np.atleast_2d`` thinks it is a row vector. The
		default for a vector in MATLAB (e.g., ``>> 1:12``) is a row vector.
		
		Versions of scipy up to and including 0.11 resulted (accidentally)
		in 1-D arrays being read as column vectors. For the moment, we
		maintain the same tradition here.
		
		Examples
		--------
		>>> matdims(np.array(1)) # NumPy scalar
		(1, 1)
		>>> matdims(np.array([1])) # 1-D array, 1 element
		(1, 1)
		>>> matdims(np.array([1,2])) # 1-D array, 2 elements
		(2, 1)
		>>> matdims(np.array([[2],[3]])) # 2-D array, column vector
		(2, 1)
		>>> matdims(np.array([[2,3]])) # 2-D array, row vector
		(1, 2)
		>>> matdims(np.array([[[2,3]]])) # 3-D array, rowish vector
		(1, 1, 2)
		>>> matdims(np.array([])) # empty 1-D array
		(0, 0)
		>>> matdims(np.array([[]])) # empty 2-D array
		(0, 0)
		>>> matdims(np.array([[[]]])) # empty 3-D array
		(0, 0, 0)
		
		Optional argument flips 1-D shape behavior.
		
		>>> matdims(np.array([1,2]), 'row') # 1-D array, 2 elements
		(1, 2)
		
		The argument has to make sense though
		
		>>> matdims(np.array([1,2]), 'bizarre')
		Traceback (most recent call last):
		   ...
		ValueError: 1-D option "bizarre" is strange
	**/
	static public function matdims(arr:Dynamic, ?oned_as:Dynamic):python.Tuple<Dynamic>;
	/**
		Generic get of byte stream data of known type
		
		Parameters
		----------
		mat_stream : file_like object
		    MATLAB (tm) mat file stream
		a_dtype : dtype
		    dtype of array to read. `a_dtype` is assumed to be correct
		    endianness.
		
		Returns
		-------
		arr : ndarray
		    Array of dtype `a_dtype` read from stream.
	**/
	static public function read_dtype(mat_stream:Dynamic, a_dtype:Dynamic):Dynamic;
}