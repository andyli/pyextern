/* This file is generated, do not edit! */
package tensorflow.python.summary.impl.io_wrapper;
@:pythonImport("tensorflow.python.summary.impl.io_wrapper") extern class Io_wrapper_Module {
	/**
		Creates a file loader for the given path.
		
		Args:
		  path: A string representing either a normal path or a GCS
		Returns:
		  An object with a Load() method that yields event_pb2.Event protos.
	**/
	static public function CreateFileLoader(path:Dynamic):Dynamic;
	static public function Exists(path:Dynamic):Dynamic;
	/**
		Returns true if path exists and is a directory.
	**/
	static public function IsDirectory(path:Dynamic):Dynamic;
	/**
		Yields all files in the given directory. The paths are absolute.
	**/
	static public function ListDirectoryAbsolute(directory:Dynamic):Dynamic;
	/**
		Walks a directory tree, yielding (dir_path, file_paths) tuples.
		
		For each of `top` and its subdirectories, yields a tuple containing the path
		to the directory and the path to each of the contained files.  Note that
		unlike os.Walk()/gfile.Walk(), this does not list subdirectories and the file
		paths are all absolute.
		
		If the directory does not exist, this yields nothing.
		
		Args:
		  top: A path to a directory..
		Yields:
		  A list of (dir_path, file_paths) tuples.
	**/
	static public function ListRecursively(top:Dynamic):Dynamic;
	/**
		Returns the number of bytes in the given file. Doesn't work on GCS.
	**/
	static public function Size(path:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}