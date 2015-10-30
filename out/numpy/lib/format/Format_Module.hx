/* This file is generated, do not edit! */
package numpy.lib.format;
@:pythonImport("numpy.lib.format") extern class Format_Module {
	static public var BUFFER_SIZE : Dynamic;
	static public var MAGIC_LEN : Dynamic;
	static public var MAGIC_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_version(version:Dynamic):Dynamic;
	/**
		Clean up 'L' in npz header ints.
		
		Cleans up the 'L' in strings representing integers. Needed to allow npz
		headers produced in Python2 to be read in Python3.
		
		Parameters
		----------
		s : byte string
		    Npy file header.
		
		Returns
		-------
		header : str
		    Cleaned up header.
	**/
	static public function _filter_header(s:Dynamic):Dynamic;
	/**
		see read_array_header_1_0
	**/
	static public function _read_array_header(fp:Dynamic, version:Dynamic):Dynamic;
	/**
		Read from file-like object until size bytes are read.
		Raises ValueError if not EOF is encountered before size bytes are read.
		Non-blocking objects only supported if they derive from io objects.
		
		Required as e.g. ZipExtFile in python 2.6 can return less data than
		requested.
	**/
	static public function _read_bytes(fp:Dynamic, size:Dynamic, ?error_template:Dynamic):Dynamic;
	/**
		Write the header for an array and returns the version used
		
		Parameters
		----------
		fp : filelike object
		d : dict
		    This has the appropriate entries for writing its string representation
		    to the header of the file.
		version: tuple or None
		    None means use oldest that works
		    explicit version will raise a ValueError if the format does not
		    allow saving this data.  Default: None
		Returns
		-------
		version : tuple of int
		    the file version which needs to be used to store the data
	**/
	static public function _write_array_header(fp:Dynamic, d:Dynamic, ?version:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function asbytes(s:Dynamic):Dynamic;
	static public function asstr(s:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get a serializable descriptor from the dtype.
		
		The .descr attribute of a dtype object cannot be round-tripped through
		the dtype() constructor. Simple types, like dtype('float32'), have
		a descr which looks like a record array with one field with '' as
		a name. The dtype() constructor interprets this as a request to give
		a default name.  Instead, we construct descriptor that can be passed to
		dtype().
		
		Parameters
		----------
		dtype : dtype
		    The dtype of the array that will be written to disk.
		
		Returns
		-------
		descr : object
		    An object that can be passed to `numpy.dtype()` in order to
		    replicate the input dtype.
	**/
	static public function dtype_to_descr(dtype:Dynamic):Dynamic;
	/**
		Get the dictionary of header metadata from a numpy.ndarray.
		
		Parameters
		----------
		array : numpy.ndarray
		
		Returns
		-------
		d : dict
		    This has the appropriate entries for writing its string representation
		    to the header of the file.
	**/
	static public function header_data_from_array_1_0(array:Dynamic):Dynamic;
	static public function isfileobj(f:Dynamic):Dynamic;
	/**
		Return the magic string for the given file format version.
		
		Parameters
		----------
		major : int in [0, 255]
		minor : int in [0, 255]
		
		Returns
		-------
		magic : str
		
		Raises
		------
		ValueError if the version cannot be formatted.
	**/
	static public function magic(major:Dynamic, minor:Dynamic):Dynamic;
	/**
		Open a .npy file as a memory-mapped array.
		
		This may be used to read an existing file or create a new one.
		
		Parameters
		----------
		filename : str
		    The name of the file on disk.  This may *not* be a file-like
		    object.
		mode : str, optional
		    The mode in which to open the file; the default is 'r+'.  In
		    addition to the standard file modes, 'c' is also accepted to mean
		    "copy on write."  See `memmap` for the available mode strings.
		dtype : data-type, optional
		    The data type of the array if we are creating a new file in "write"
		    mode, if not, `dtype` is ignored.  The default value is None, which
		    results in a data-type of `float64`.
		shape : tuple of int
		    The shape of the array if we are creating a new file in "write"
		    mode, in which case this parameter is required.  Otherwise, this
		    parameter is ignored and is thus optional.
		fortran_order : bool, optional
		    Whether the array should be Fortran-contiguous (True) or
		    C-contiguous (False, the default) if we are creating a new file in
		    "write" mode.
		version : tuple of int (major, minor) or None
		    If the mode is a "write" mode, then this is the version of the file
		    format used to create the file.  None means use the oldest
		    supported version that is able to store the data.  Default: None
		
		Returns
		-------
		marray : memmap
		    The memory-mapped array.
		
		Raises
		------
		ValueError
		    If the data or the mode is invalid.
		IOError
		    If the file is not found or cannot be opened correctly.
		
		See Also
		--------
		memmap
	**/
	static public function open_memmap(filename:Dynamic, ?mode:Dynamic, ?dtype:Dynamic, ?shape:Dynamic, ?fortran_order:Dynamic, ?version:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Read an array from an NPY file.
		
		Parameters
		----------
		fp : file_like object
		    If this is not a real file object, then this may take extra memory
		    and time.
		allow_pickle : bool, optional
		    Whether to allow reading pickled data. Default: True
		pickle_kwargs : dict
		    Additional keyword arguments to pass to pickle.load. These are only
		    useful when loading object arrays saved on Python 2 when using
		    Python 3.
		
		Returns
		-------
		array : ndarray
		    The array from the data on disk.
		
		Raises
		------
		ValueError
		    If the data is invalid, or allow_pickle=False and the file contains
		    an object array.
	**/
	static public function read_array(fp:Dynamic, ?allow_pickle:Dynamic, ?pickle_kwargs:Dynamic):Dynamic;
	/**
		Read an array header from a filelike object using the 1.0 file format
		version.
		
		This will leave the file object located just after the header.
		
		Parameters
		----------
		fp : filelike object
		    A file object or something with a `.read()` method like a file.
		
		Returns
		-------
		shape : tuple of int
		    The shape of the array.
		fortran_order : bool
		    The array data will be written out directly if it is either
		    C-contiguous or Fortran-contiguous. Otherwise, it will be made
		    contiguous before writing it out.
		dtype : dtype
		    The dtype of the file's data.
		
		Raises
		------
		ValueError
		    If the data is invalid.
	**/
	static public function read_array_header_1_0(fp:Dynamic):Dynamic;
	/**
		Read an array header from a filelike object using the 2.0 file format
		version.
		
		This will leave the file object located just after the header.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		fp : filelike object
		    A file object or something with a `.read()` method like a file.
		
		Returns
		-------
		shape : tuple of int
		    The shape of the array.
		fortran_order : bool
		    The array data will be written out directly if it is either
		    C-contiguous or Fortran-contiguous. Otherwise, it will be made
		    contiguous before writing it out.
		dtype : dtype
		    The dtype of the file's data.
		
		Raises
		------
		ValueError
		    If the data is invalid.
	**/
	static public function read_array_header_2_0(fp:Dynamic):Dynamic;
	/**
		Read the magic string to get the version of the file format.
		
		Parameters
		----------
		fp : filelike object
		
		Returns
		-------
		major : int
		minor : int
	**/
	static public function read_magic(fp:Dynamic):Dynamic;
	/**
		Protected string evaluation.
		
		Evaluate a string containing a Python literal expression without
		allowing the execution of arbitrary non-literal code.
		
		Parameters
		----------
		source : str
		    The string to evaluate.
		
		Returns
		-------
		obj : object
		   The result of evaluating `source`.
		
		Raises
		------
		SyntaxError
		    If the code has invalid Python syntax, or if it contains
		    non-literal code.
		
		Examples
		--------
		>>> np.safe_eval('1')
		1
		>>> np.safe_eval('[1, 2, 3]')
		[1, 2, 3]
		>>> np.safe_eval('{"foo": ("bar", 10.0)}')
		{'foo': ('bar', 10.0)}
		
		>>> np.safe_eval('import os')
		Traceback (most recent call last):
		  ...
		SyntaxError: invalid syntax
		
		>>> np.safe_eval('open("/home/user/.ssh/id_dsa").read()')
		Traceback (most recent call last):
		  ...
		SyntaxError: Unsupported source construct: compiler.ast.CallFunc
	**/
	static public function safe_eval(source:Dynamic):Dynamic;
	/**
		Write an array to an NPY file, including a header.
		
		If the array is neither C-contiguous nor Fortran-contiguous AND the
		file_like object is not a real file object, this function will have to
		copy data in memory.
		
		Parameters
		----------
		fp : file_like object
		    An open, writable file object, or similar object with a
		    ``.write()`` method.
		array : ndarray
		    The array to write to disk.
		version : (int, int) or None, optional
		    The version number of the format. None means use the oldest
		    supported version that is able to store the data.  Default: None
		allow_pickle : bool, optional
		    Whether to allow writing pickled data. Default: True
		pickle_kwargs : dict, optional
		    Additional keyword arguments to pass to pickle.dump, excluding
		    'protocol'. These are only useful when pickling objects in object
		    arrays on Python 3 to Python 2 compatible format.
		
		Raises
		------
		ValueError
		    If the array cannot be persisted. This includes the case of
		    allow_pickle=False and array being an object array.
		Various other errors
		    If the array contains Python objects as part of its dtype, the
		    process of pickling them may raise various errors if the objects
		    are not picklable.
	**/
	static public function write_array(fp:Dynamic, array:Dynamic, ?version:Dynamic, ?allow_pickle:Dynamic, ?pickle_kwargs:Dynamic):Dynamic;
	/**
		Write the header for an array using the 1.0 format.
		
		Parameters
		----------
		fp : filelike object
		d : dict
		    This has the appropriate entries for writing its string
		    representation to the header of the file.
	**/
	static public function write_array_header_1_0(fp:Dynamic, d:Dynamic):Dynamic;
	/**
		Write the header for an array using the 2.0 format.
		    The 2.0 format allows storing very large structured arrays.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		fp : filelike object
		d : dict
		    This has the appropriate entries for writing its string
		    representation to the header of the file.
	**/
	static public function write_array_header_2_0(fp:Dynamic, d:Dynamic):Dynamic;
}