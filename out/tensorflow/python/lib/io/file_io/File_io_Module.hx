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
	/**
		Writes to `filename` atomically.
		
		This means that when `filename` appears in the filesystem, it will contain
		all of `contents`. With write_string_to_file, it is possible for the file
		to appear in the filesystem with `contents` only partially written.
		
		Accomplished by writing to a temp file and then renaming it.
		
		Args:
		  filename: string, pathname for a file
		  contents: string, contents that need to be written to the file
	**/
	static public function atomic_write_string_to_file(filename:Dynamic, contents:Dynamic):Dynamic;
	/**
		Copies data from oldpath to newpath.
		
		Args:
		  oldpath: string, name of the file who's contents need to be copied
		  newpath: string, name of the file to which to copy to
		  overwrite: boolean, if false its an error for newpath to be occupied by an
		      existing file.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function copy(oldpath:Dynamic, newpath:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Creates a directory with the name 'dirname'.
		
		Args:
		  dirname: string, name of the directory to be created
		
		Notes:
		  The parent directories need to exist. Use recursive_create_dir instead if
		  there is the possibility that the parent dirs don't exist.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function create_dir(dirname:Dynamic):Dynamic;
	/**
		Deletes the file located at 'filename'.
		
		Args:
		  filename: string, a filename
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.  E.g.,
		  NotFoundError if the file does not exist.
	**/
	static public function delete_file(filename:Dynamic):Dynamic;
	/**
		Deletes everything under dirname recursively.
		
		Args:
		  dirname: string, a path to a directory
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function delete_recursively(dirname:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Determines whether a path exists or not.
		
		Args:
		  filename: string, a path
		
		Returns:
		  True if the path exists, whether its a file or a directory.
		  False if the path does not exist and there are no filesystem errors.
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.
	**/
	static public function file_exists(filename:Dynamic):Dynamic;
	/**
		Returns a list of files that match the given pattern(s).
		
		Args:
		  filename: string or iterable of strings. The glob pattern(s).
		
		Returns:
		  A list of strings containing filenames that match the given pattern(s).
		
		Raises:
		  errors.OpError: If there are filesystem / directory listing errors.
	**/
	static public function get_matching_files(filename:Dynamic):Dynamic;
	/**
		Returns whether the path is a directory or not.
		
		Args:
		  dirname: string, path to a potential directory
		
		Returns:
		  True, if the path is a directory; False otherwise
	**/
	static public function is_directory(dirname:Dynamic):Dynamic;
	/**
		Returns a list of entries contained within a directory.
		
		The list is in arbitrary order. It does not contain the special entries "."
		and "..".
		
		Args:
		  dirname: string, path to a directory
		
		Returns:
		  [filename1, filename2, ... filenameN] as strings
		
		Raises:
		  errors.NotFoundError if directory doesn't exist
	**/
	static public function list_directory(dirname:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads the entire contents of a file to a string.
		
		Args:
		  filename: string, path to a file
		  binary_mode: whether to open the file in binary mode or not. This changes
		      the type of the object returned.
		
		Returns:
		  contents of the file as a string or bytes.
		
		Raises:
		  errors.OpError: Raises variety of errors that are subtypes e.g.
		  NotFoundError etc.
	**/
	static public function read_file_to_string(filename:Dynamic, ?binary_mode:Dynamic):Dynamic;
	/**
		Creates a directory and all parent/intermediate directories.
		
		It succeeds if dirname already exists and is writable.
		
		Args:
		  dirname: string, name of the directory to be created
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function recursive_create_dir(dirname:Dynamic):Dynamic;
	/**
		Rename or move a file / directory.
		
		Args:
		  oldname: string, pathname for a file
		  newname: string, pathname to which the file needs to be moved
		  overwrite: boolean, if false its an error for newpath to be occupied by an
		      existing file.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function rename(oldname:Dynamic, newname:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Returns file statistics for a given path.
		
		Args:
		  filename: string, path to a file
		
		Returns:
		  FileStatistics struct that contains information about the path
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function stat(filename:Dynamic):Dynamic;
	/**
		Recursive directory tree generator for directories.
		
		Args:
		  top: string, a Directory name
		  in_order: bool, Traverse in order if True, post order if False.
		
		Errors that happen while listing directories are ignored.
		
		Yields:
		  Each yield is a 3-tuple:  the pathname of a directory, followed by lists of
		  all its subdirectories and leaf files.
		  (dirname, [subdirname, subdirname, ...], [filename, filename, ...])
		  as strings
	**/
	static public function walk(top:Dynamic, ?in_order:Dynamic):Dynamic;
	/**
		Writes a string to a given file.
		
		Args:
		  filename: string, path to a file
		  file_content: string, contents that need to be written to the file
		
		Raises:
		  errors.OpError: If there are errors during the operation.
	**/
	static public function write_string_to_file(filename:Dynamic, file_content:Dynamic):Dynamic;
}