/* This file is generated, do not edit! */
package tensorflow.python.lib.io.file_io;
@:pythonImport("tensorflow.python.lib.io.file_io") extern class File_io_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public function copy(oldpath:Dynamic, newpath:Dynamic, ?overwrite:Dynamic):Dynamic;
	static public function create_dir(dirname:Dynamic):Dynamic;
	static public function delete_file(filename:Dynamic):Dynamic;
	static public function delete_recursively(dirname:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function file_exists(filename:Dynamic):Dynamic;
	static public function get_matching_files(filename:Dynamic):Dynamic;
	static public function is_directory(dirname:Dynamic):Dynamic;
	/**
		Returns a list of entries contained within a directory.
		
		The list is in arbitrary order. It does not contain the special entries "."
		and "..".
		
		Args:
		  dirname: string, path to a directory
		
		Raises:
		  NotFoundError if directory doesn't exist
		
		Returns:
		  [filename1, filename2, ... filenameN]
	**/
	static public function list_directory(dirname:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function read_file_to_string(filename:Dynamic):Dynamic;
	static public function recursive_create_dir(dirname:Dynamic):Dynamic;
	static public function rename(oldname:Dynamic, newname:Dynamic, ?overwrite:Dynamic):Dynamic;
	static public function stat(filename:Dynamic):Dynamic;
	/**
		Recursive directory tree generator for directories.
		
		Args:
		  top: string, a Directory name
		  in_order: bool, Traverse in order if True, post order if False.
		
		Errors that happen while listing directories are ignored.
		
		Yields:
		  # Each yield is a 3-tuple:  the pathname of a directory, followed
		  # by lists of all its subdirectories and leaf files.
		  (dirname, [subdirname, subdirname, ...], [filename, filename, ...])
	**/
	static public function walk(top:Dynamic, ?in_order:Dynamic):Dynamic;
	static public function write_string_to_file(filename:Dynamic, file_content:Dynamic):Dynamic;
}