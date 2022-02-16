/* This file is generated, do not edit! */
package scipy.io.matlab.mio5;
@:pythonImport("scipy.io.matlab.mio5") extern class Mio5_Module {
	static public var MDTYPES : Dynamic;
	static public var NDT_ARRAY_FLAGS : Dynamic;
	static public var NDT_FILE_HDR : Dynamic;
	static public var NDT_TAG_FULL : Dynamic;
	static public var NDT_TAG_SMALL : Dynamic;
	static public var NP_TO_MTYPES : Dynamic;
	static public var NP_TO_MXTYPES : Dynamic;
	/**
		Return dtype for given number of items per element
	**/
	static public function arr_dtype_number(arr:Dynamic, num:Dynamic):Dynamic;
	/**
		Convert string array to char array 
	**/
	static public function arr_to_chars(arr:Dynamic):Dynamic;
	static public function docfiller(f:Dynamic):Dynamic;
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
	static public var mclass_info : Dynamic;
	static public var miCOMPRESSED : Dynamic;
	static public var miINT8 : Dynamic;
	static public var miMATRIX : Dynamic;
	static public var miUINT32 : Dynamic;
	static public var miUTF8 : Dynamic;
	static public var mxCELL_CLASS : Dynamic;
	static public var mxCHAR_CLASS : Dynamic;
	static public var mxDOUBLE_CLASS : Dynamic;
	static public var mxOBJECT_CLASS : Dynamic;
	static public var mxSPARSE_CLASS : Dynamic;
	static public var mxSTRUCT_CLASS : Dynamic;
	static public var native_code : Dynamic;
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
	static public var swapped_code : Dynamic;
	/**
		Convert input object ``source`` to something we can write
		
		Parameters
		----------
		source : object
		
		Returns
		-------
		arr : None or ndarray or EmptyStructMarker
		    If `source` cannot be converted to something we can write to a matfile,
		    return None.  If `source` is equivalent to an empty dictionary, return
		    ``EmptyStructMarker``.  Otherwise return `source` converted to an
		    ndarray with contents for writing to matfile.
	**/
	static public function to_writeable(source:Dynamic):Dynamic;
	/**
		Pull variables out of mat 5 file as a sequence of mat file objects
		
		This can be useful with a difficult mat file, containing unreadable
		variables. This routine pulls the variables out in raw form and puts them,
		unread, back into a file stream for saving or reading. Another use is the
		pathological case where there is more than one variable of the same name in
		the file; this routine returns the duplicates, whereas the standard reader
		will overwrite duplicates in the returned dictionary.
		
		The file pointer in `file_obj` will be undefined. File pointers for the
		returned file-like objects are set at 0.
		
		Parameters
		----------
		file_obj : file-like
		    file object containing mat file
		
		Returns
		-------
		named_mats : list
		    list contains tuples of (name, BytesIO) where BytesIO is a file-like
		    object containing mat file contents as for a single variable. The
		    BytesIO contains a string with the original header and a single var. If
		    ``var_file_obj`` is an individual BytesIO instance, then save as a mat
		    file with something like ``open('test.mat',
		    'wb').write(var_file_obj.read())``
		
		Examples
		--------
		>>> import scipy.io
		
		BytesIO is from the ``io`` module in Python 3, and is ``cStringIO`` for
		Python < 3.
		
		>>> mat_fileobj = BytesIO()
		>>> scipy.io.savemat(mat_fileobj, {'b': np.arange(10), 'a': 'a string'})
		>>> varmats = varmats_from_mat(mat_fileobj)
		>>> sorted([name for name, str_obj in varmats])
		['a', 'b']
	**/
	static public function varmats_from_mat(file_obj:Dynamic):Array<Dynamic>;
}