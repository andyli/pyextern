/* This file is generated, do not edit! */
package pandas.io.sas.sasreader;
@:pythonImport("pandas.io.sas.sasreader") extern class Sasreader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Read SAS files stored as either XPORT or SAS7BDAT format files.
		
		Parameters
		----------
		filepath_or_buffer : string or file-like object
		    Path to the SAS file.
		format : string {'xport', 'sas7bdat'} or None
		    If None, file format is inferred from file extension. If 'xport' or
		    'sas7bdat', uses the corresponding format.
		index : identifier of index column, defaults to None
		    Identifier of column that should be used as index of the DataFrame.
		encoding : string, default is None
		    Encoding for text data.  If None, text data are stored as raw bytes.
		chunksize : int
		    Read file `chunksize` lines at a time, returns iterator.
		iterator : bool, defaults to False
		    If True, returns an iterator for reading the file incrementally.
		
		Returns
		-------
		DataFrame if iterator=False and chunksize=None, else SAS7BDATReader
		or XportReader
	**/
	static public function read_sas(filepath_or_buffer:Dynamic, ?format:Dynamic, ?index:Dynamic, ?encoding:Dynamic, ?chunksize:Dynamic, ?iterator:Dynamic):Dynamic;
}