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
	static public function _try_import():Dynamic;
	/**
		Load a feather-format object from the file path
		
		.. versionadded 0.20.0
		
		Parameters
		----------
		path : string
		    File path
		
		Returns
		-------
		type of object stored in file
	**/
	static public function read_feather(path:Dynamic):Dynamic;
	/**
		Write a DataFrame to the feather-format
		
		Parameters
		----------
		df : DataFrame
		path : string
		    File path
	**/
	static public function to_feather(df:Dynamic, path:Dynamic):Dynamic;
}