/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.event_processing.io_wrapper;
@:pythonImport("tensorflow.tensorboard.backend.event_processing.io_wrapper") extern class Io_wrapper_Module {
	static public function IsGCSPath(path:Dynamic):Dynamic;
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