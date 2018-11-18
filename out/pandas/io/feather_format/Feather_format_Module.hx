/* This file is generated, do not edit! */
package pandas.io.feather_format;
@:pythonImport("pandas.io.feather_format") extern class Feather_format_Module {
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
	static public function _try_import():Dynamic;
	/**
		Load a feather-format object from the file path
		
		.. versionadded 0.20.0
		
		Parameters
		----------
		path : string file path, or file-like object
		nthreads : int, default 1
		    Number of CPU threads to use when reading to pandas.DataFrame
		
		   .. versionadded 0.21.0
		
		Returns
		-------
		type of object stored in file
	**/
	static public function read_feather(path:Dynamic, ?nthreads:Dynamic):Dynamic;
	/**
		Write a DataFrame to the feather-format
		
		Parameters
		----------
		df : DataFrame
		path : string file path, or file-like object
	**/
	static public function to_feather(df:Dynamic, path:Dynamic):Dynamic;
}