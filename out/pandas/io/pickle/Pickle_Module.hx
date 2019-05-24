/* This file is generated, do not edit! */
package pandas.io.pickle;
@:pythonImport("pandas.io.pickle") extern class Pickle_Module {
	static public var PY3 : Dynamic;
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
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default None
		    If 'infer' and `filepath_or_buffer` is path-like, then detect
		    compression from the following extensions: '.gz', '.bz2', '.zip',
		    or '.xz' (otherwise no compression).
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
		    A list of file-like object that were opened in this function.
	**/
	static public function _get_handle(path_or_buf:Dynamic, mode:Dynamic, ?encoding:Dynamic, ?compression:Dynamic, ?memory_map:Dynamic, ?is_text:Dynamic):Dynamic;
	static public function _pickle_array(arr:Dynamic):Dynamic;
	/**
		Attempt to convert a path-like object to a string.
		
		Parameters
		----------
		filepath_or_buffer : object to be converted
		
		Returns
		-------
		str_filepath_or_buffer : maybe a string version of the object
		
		Notes
		-----
		Objects supporting the fspath protocol (python 3.6+) are coerced
		according to its __fspath__ method.
		
		For backwards compatibility with older pythons, pathlib.Path and
		py.path objects are specially coerced.
		
		Any other object is passed through unchanged, which includes bytes,
		strings, buffers, or anything else that's not even path-like.
	**/
	static public function _stringify_path(filepath_or_buffer:Dynamic):Dynamic;
	static public function _unpickle_array(bytes:Dynamic):Dynamic;
	/**
		Read an array from an NPY file.
		
		Parameters
		----------
		fp : file_like object
		    If this is not a real file object, then this may take extra memory
		    and time.
		allow_pickle : bool, optional
		    Whether to allow writing pickled data. Default: False
		
		    .. versionchanged:: 1.16.3
		        Made default False in response to CVE-2019-6446.
		
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
		Load pickled pandas object (or any object) from file.
		
		.. warning::
		
		   Loading pickled data received from untrusted sources can be
		   unsafe. See `here <https://docs.python.org/3/library/pickle.html>`__.
		
		Parameters
		----------
		path : str
		    File path where the pickled object will be loaded.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    For on-the-fly decompression of on-disk data. If 'infer', then use
		    gzip, bz2, xz or zip if path ends in '.gz', '.bz2', '.xz',
		    or '.zip' respectively, and no decompression otherwise.
		    Set to None for no decompression.
		
		    .. versionadded:: 0.20.0
		
		Returns
		-------
		unpickled : same type as object stored in file
		
		See Also
		--------
		DataFrame.to_pickle : Pickle (serialize) DataFrame object to file.
		Series.to_pickle : Pickle (serialize) Series object to file.
		read_hdf : Read HDF5 file into a DataFrame.
		read_sql : Read SQL query or database table into a DataFrame.
		read_parquet : Load a parquet object, returning a DataFrame.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})
		>>> original_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")
		>>> unpickled_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		
		>>> import os
		>>> os.remove("./dummy.pkl")
	**/
	static public function read_pickle(path:Dynamic, ?compression:Dynamic):Dynamic;
	/**
		Pickle (serialize) object to file.
		
		Parameters
		----------
		obj : any object
		    Any python object.
		path : str
		    File path where the pickled object will be stored.
		compression : {'infer', 'gzip', 'bz2', 'zip', 'xz', None}, default 'infer'
		    A string representing the compression to use in the output file. By
		    default, infers from the file extension in specified path.
		
		    .. versionadded:: 0.20.0
		protocol : int
		    Int which indicates which protocol should be used by the pickler,
		    default HIGHEST_PROTOCOL (see [1], paragraph 12.1.2). The possible
		    values for this parameter depend on the version of Python. For Python
		    2.x, possible values are 0, 1, 2. For Python>=3.0, 3 is a valid value.
		    For Python >= 3.4, 4 is a valid value. A negative value for the
		    protocol parameter is equivalent to setting its value to
		    HIGHEST_PROTOCOL.
		
		    .. [1] https://docs.python.org/3/library/pickle.html
		    .. versionadded:: 0.21.0
		
		See Also
		--------
		read_pickle : Load pickled pandas object (or any object) from file.
		DataFrame.to_hdf : Write DataFrame to an HDF5 file.
		DataFrame.to_sql : Write DataFrame to a SQL database.
		DataFrame.to_parquet : Write a DataFrame to the binary parquet format.
		
		Examples
		--------
		>>> original_df = pd.DataFrame({"foo": range(5), "bar": range(5, 10)})
		>>> original_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		>>> pd.to_pickle(original_df, "./dummy.pkl")
		
		>>> unpickled_df = pd.read_pickle("./dummy.pkl")
		>>> unpickled_df
		   foo  bar
		0    0    5
		1    1    6
		2    2    7
		3    3    8
		4    4    9
		
		>>> import os
		>>> os.remove("./dummy.pkl")
	**/
	static public function to_pickle(obj:Dynamic, path:Dynamic, ?compression:Dynamic, ?protocol:Dynamic):Dynamic;
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