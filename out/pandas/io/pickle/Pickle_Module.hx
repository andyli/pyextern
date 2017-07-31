/* This file is generated, do not edit! */
package pandas.io.pickle;
@:pythonImport("pandas.io.pickle") extern class Pickle_Module {
	static public var PY3 : Dynamic;
	static public var _NS_DTYPE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get file handle for given path/buffer and mode.
		
		Parameters
		----------
		path_or_buf :
		    a path (str) or buffer
		mode : str
		    mode to open path_or_buf with
		encoding : str or None
		compression : str or None
		    Supported compression protocols are gzip, bz2, zip, and xz
		memory_map : boolean, default False
		    See parsers._parser_params for more information.
		is_text : boolean, default True
		    whether file/buffer is in text format (csv, json, etc.), or in binary
		    mode (pickle, etc.)
		Returns
		-------
		f : file-like
		    A file-like object
		handles : list of file-like objects
		    A list of file-like object that were openned in this function.
	**/
	static public function _get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic):Dynamic;
	/**
		Get the compression method for filepath_or_buffer. If compression='infer',
		the inferred compression method is returned. Otherwise, the input
		compression method is returned unchanged, unless it's invalid, in which
		case an error is raised.
		
		Parameters
		----------
		filepath_or_buf :
		    a path (str) or buffer
		compression : str or None
		    the compression method including None for no compression and 'infer'
		
		Returns
		-------
		string or None :
		    compression method
		
		Raises
		------
		ValueError on invalid compression specified
	**/
	static public function _infer_compression(filepath_or_buffer:Dynamic, compression:Dynamic):Dynamic;
	static public function _pickle_array(arr:Dynamic):Dynamic;
	static public function _unpickle_array(bytes:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean : Whether or not the array-like or dtype is of
		          the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public function read_array(fp:Dynamic, ?allow_pickle:Dynamic, ?pickle_kwargs:Dynamic):numpy.Ndarray;
	/**
		Load pickled pandas object (or any other pickled object) from the specified
		file path
		
		Warning: Loading pickled data received from untrusted sources can be
		unsafe. See: http://docs.python.org/2.7/library/pickle.html
		
		Parameters
		----------
		path : string
		    File path
		compression : {'infer', 'gzip', 'bz2', 'xz', 'zip', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use
		    gzip, bz2, xz or zip if path is a string ending in '.gz', '.bz2', 'xz',
		    or 'zip' respectively, and no decompression otherwise.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		unpickled : type of object stored in file
	**/
	static public function read_pickle(path:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to input file path
		
		Parameters
		----------
		obj : any object
		path : string
		    File path
		compression : {'infer', 'gzip', 'bz2', 'xz', None}, default 'infer'
		    a string representing the compression to use in the output file
		
		    .. versionadded:: 0.20.0
	**/
	static public function to_pickle(obj:Dynamic, path:Dynamic, ?compression:Dynamic):Dynamic;
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
}