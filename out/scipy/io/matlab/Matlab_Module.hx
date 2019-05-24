/* This file is generated, do not edit! */
package scipy.io.matlab;
@:pythonImport("scipy.io.matlab") extern class Matlab_Module {
	static public var __all__ : Dynamic;
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
		Load MATLAB file.
		
		Parameters
		----------
		file_name : str
		   Name of the mat file (do not need .mat extension if
		   appendmat==True). Can also pass open file-like object.
		mdict : dict, optional
		    Dictionary in which to insert matfile variables.
		appendmat : bool, optional
		   True to append the .mat extension to the end of the given
		   filename, if not already present.
		byte_order : str or None, optional
		   None by default, implying byte order guessed from mat
		   file. Otherwise can be one of ('native', '=', 'little', '<',
		   'BIG', '>').
		mat_dtype : bool, optional
		   If True, return arrays in same dtype as would be loaded into
		   MATLAB (instead of the dtype with which they are saved).
		squeeze_me : bool, optional
		   Whether to squeeze unit matrix dimensions or not.
		chars_as_strings : bool, optional
		   Whether to convert char arrays to string arrays.
		matlab_compatible : bool, optional
		   Returns matrices as would be loaded by MATLAB (implies
		   squeeze_me=False, chars_as_strings=False, mat_dtype=True,
		   struct_as_record=True).
		struct_as_record : bool, optional
		   Whether to load MATLAB structs as numpy record arrays, or as
		   old-style numpy arrays with dtype=object.  Setting this flag to
		   False replicates the behavior of scipy version 0.7.x (returning
		   numpy object arrays).  The default setting is True, because it
		   allows easier round-trip load and save of MATLAB files.
		verify_compressed_data_integrity : bool, optional
		    Whether the length of compressed sequences in the MATLAB file
		    should be checked, to ensure that they are not longer than we expect.
		    It is advisable to enable this (the default) because overlong
		    compressed sequences in MATLAB files generally indicate that the
		    files have experienced some sort of corruption.
		variable_names : None or sequence
		    If None (the default) - read all variables in file. Otherwise
		    `variable_names` should be a sequence of strings, giving names of the
		    MATLAB variables to read from the file.  The reader will skip any
		    variable with a name not in this sequence, possibly saving some read
		    processing.
		
		Returns
		-------
		mat_dict : dict
		   dictionary with variable names as keys, and loaded matrices as
		   values.
		
		Notes
		-----
		v4 (Level 1.0), v6 and v7 to 7.2 matfiles are supported.
		
		You will need an HDF5 python library to read MATLAB 7.3 format mat
		files.  Because scipy does not supply one, we do not implement the
		HDF5 / 7.3 interface here.
		
		Examples
		--------
		>>> from os.path import dirname, join as pjoin
		>>> import scipy.io as sio
		
		Get the filename for an example .mat file from the tests/data directory.
		
		>>> data_dir = pjoin(dirname(sio.__file__), 'matlab', 'tests', 'data')
		>>> mat_fname = pjoin(data_dir, 'testdouble_7.4_GLNX86.mat')
		
		Load the .mat file contents.
		
		>>> mat_contents = sio.loadmat(mat_fname)
		
		The result is a dictionary, one key/value pair for each variable:
		
		>>> sorted(mat_contents.keys())
		['__globals__', '__header__', '__version__', 'testdouble']
		>>> mat_contents['testdouble']
		array([[0.        , 0.78539816, 1.57079633, 2.35619449, 3.14159265,
		        3.92699082, 4.71238898, 5.49778714, 6.28318531]])
		
		By default SciPy reads MATLAB structs as structured NumPy arrays where the
		dtype fields are of type `object` and the names correspond to the MATLAB
		struct field names. This can be disabled by setting the optional argument
		`struct_as_record=False`.
		
		Get the filename for an example .mat file that contains a MATLAB struct
		called `teststruct` and load the contents.
		
		>>> matstruct_fname = pjoin(data_dir, 'teststruct_7.4_GLNX86.mat')
		>>> matstruct_contents = sio.loadmat(matstruct_fname)
		>>> teststruct = matstruct_contents['teststruct']
		>>> teststruct.dtype
		dtype([('stringfield', 'O'), ('doublefield', 'O'), ('complexfield', 'O')])
		
		The size of the structured array is the size of the MATLAB struct, not the
		number of elements in any particular field. The shape defaults to 2-D
		unless the optional argument `squeeze_me=True`, in which case all length 1
		dimensions are removed.
		
		>>> teststruct.size
		1
		>>> teststruct.shape
		(1, 1)
		
		Get the 'stringfield' of the first element in the MATLAB struct.
		
		>>> teststruct[0, 0]['stringfield']
		array(['Rats live on no evil star.'],
		  dtype='<U26')
		
		Get the first element of the 'doublefield'.
		
		>>> teststruct['doublefield'][0, 0]
		array([[ 1.41421356,  2.71828183,  3.14159265]])
		
		Load the MATLAB struct, squeezing out length 1 dimensions, and get the item
		from the 'complexfield'.
		
		>>> matstruct_squeezed = sio.loadmat(matstruct_fname, squeeze_me=True)
		>>> matstruct_squeezed['teststruct'].shape
		()
		>>> matstruct_squeezed['teststruct']['complexfield'].shape
		()
		>>> matstruct_squeezed['teststruct']['complexfield'].item()
		array([ 1.41421356+1.41421356j,  2.71828183+2.71828183j,
		    3.14159265+3.14159265j])
	**/
	static public function loadmat(file_name:Dynamic, ?mdict:Dynamic, ?appendmat:Dynamic, ?kwargs:python.KwArgs<Dynamic>):python.Dict<Dynamic, Dynamic>;
	static public var print_function : Dynamic;
	/**
		Save a dictionary of names and arrays into a MATLAB-style .mat file.
		
		This saves the array objects in the given dictionary to a MATLAB-
		style .mat file.
		
		Parameters
		----------
		file_name : str or file-like object
		    Name of the .mat file (.mat extension not needed if ``appendmat ==
		    True``).
		    Can also pass open file_like object.
		mdict : dict
		    Dictionary from which to save matfile variables.
		appendmat : bool, optional
		    True (the default) to append the .mat extension to the end of the
		    given filename, if not already present.
		format : {'5', '4'}, string, optional
		    '5' (the default) for MATLAB 5 and up (to 7.2),
		    '4' for MATLAB 4 .mat files.
		long_field_names : bool, optional
		    False (the default) - maximum field name length in a structure is
		    31 characters which is the documented maximum length.
		    True - maximum field name length in a structure is 63 characters
		    which works for MATLAB 7.6+.
		do_compression : bool, optional
		    Whether or not to compress matrices on write.  Default is False.
		oned_as : {'row', 'column'}, optional
		    If 'column', write 1-D numpy arrays as column vectors.
		    If 'row', write 1-D numpy arrays as row vectors.
	**/
	static public function savemat(file_name:Dynamic, mdict:Dynamic, ?appendmat:Dynamic, ?format:Dynamic, ?long_field_names:Dynamic, ?do_compression:Dynamic, ?oned_as:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?tests:Dynamic):Dynamic;
	/**
		List variables inside a MATLAB file.
		
		Parameters
		----------
		file_name : str
		   Name of the mat file (do not need .mat extension if
		   appendmat==True) Can also pass open file-like object.
		appendmat : bool, optional
		   True to append the .mat extension to the end of the given
		   filename, if not already present.
		byte_order : str or None, optional
		   None by default, implying byte order guessed from mat
		   file. Otherwise can be one of ('native', '=', 'little', '<',
		   'BIG', '>').
		mat_dtype : bool, optional
		   If True, return arrays in same dtype as would be loaded into
		   MATLAB (instead of the dtype with which they are saved).
		squeeze_me : bool, optional
		   Whether to squeeze unit matrix dimensions or not.
		chars_as_strings : bool, optional
		   Whether to convert char arrays to string arrays.
		matlab_compatible : bool, optional
		   Returns matrices as would be loaded by MATLAB (implies
		   squeeze_me=False, chars_as_strings=False, mat_dtype=True,
		   struct_as_record=True).
		struct_as_record : bool, optional
		   Whether to load MATLAB structs as numpy record arrays, or as
		   old-style numpy arrays with dtype=object.  Setting this flag to
		   False replicates the behavior of scipy version 0.7.x (returning
		   numpy object arrays).  The default setting is True, because it
		   allows easier round-trip load and save of MATLAB files.
		
		Returns
		-------
		variables : list of tuples
		    A list of tuples, where each tuple holds the matrix name (a string),
		    its shape (tuple of ints), and its data class (a string).
		    Possible data classes are: int8, uint8, int16, uint16, int32, uint32,
		    int64, uint64, single, double, cell, struct, object, char, sparse,
		    function, opaque, logical, unknown.
		
		Notes
		-----
		v4 (Level 1.0), v6 and v7 to 7.2 matfiles are supported.
		
		You will need an HDF5 python library to read matlab 7.3 format mat
		files.  Because scipy does not supply one, we do not implement the
		HDF5 / 7.3 interface here.
		
		.. versionadded:: 0.12.0
	**/
	static public function whosmat(file_name:Dynamic, ?appendmat:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}