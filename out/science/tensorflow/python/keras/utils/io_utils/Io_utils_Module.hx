/* This file is generated, do not edit! */
package tensorflow.python.keras.utils.io_utils;
@:pythonImport("tensorflow.python.keras.utils.io_utils") extern class Io_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Produces a prompt asking about overwriting a file.
		
		Args:
		    filepath: the path to the file to be overwritten.
		
		Returns:
		    True if we can proceed with overwrite, False otherwise.
	**/
	static public function ask_to_proceed_with_overwrite(filepath:Dynamic):Dynamic;
	/**
		Convert `PathLike` objects to their string representation.
		
		If given a non-string typed path object, converts it to its string
		representation.
		
		If the object passed to `path` is not among the above, then it is
		returned unchanged. This allows e.g. passthrough of file objects
		through this function.
		
		Args:
		  path: `PathLike` object that represents a path
		
		Returns:
		  A string representation of the path argument, if Python support exists.
	**/
	static public function path_to_string(path:Dynamic):Dynamic;
}