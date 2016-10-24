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
	static public function _pickle_array(arr:Dynamic):Dynamic;
	static public function _unpickle_array(bytes:Dynamic):Dynamic;
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
		
		Returns
		-------
		unpickled : type of object stored in file
	**/
	static public function read_pickle(path:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to input file path
		
		Parameters
		----------
		obj : any object
		path : string
		    File path
	**/
	static public function to_pickle(obj:Dynamic, path:Dynamic):Dynamic;
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