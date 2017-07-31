/* This file is generated, do not edit! */
package tensorflow.python.platform.gfile;
@:pythonImport("tensorflow.python.platform.gfile") extern class Gfile_Module {
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
	static public function Copy(oldpath:Dynamic, newpath:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Deletes everything under dirname recursively.
		
		Args:
		  dirname: string, a path to a directory
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function DeleteRecursively(dirname:Dynamic):Dynamic;
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
	static public function Exists(filename:Dynamic):Dynamic;
	/**
		Returns a list of files that match the given pattern(s).
		
		Args:
		  filename: string or iterable of strings. The glob pattern(s).
		
		Returns:
		  A list of strings containing filenames that match the given pattern(s).
		
		Raises:
		  errors.OpError: If there are filesystem / directory listing errors.
	**/
	static public function Glob(filename:Dynamic):Dynamic;
	/**
		Returns whether the path is a directory or not.
		
		Args:
		  dirname: string, path to a potential directory
		
		Returns:
		  True, if the path is a directory; False otherwise
	**/
	static public function IsDirectory(dirname:Dynamic):Dynamic;
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
	static public function ListDirectory(dirname:Dynamic):Dynamic;
	/**
		Creates a directory and all parent/intermediate directories.
		
		It succeeds if dirname already exists and is writable.
		
		Args:
		  dirname: string, name of the directory to be created
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function MakeDirs(dirname:Dynamic):Dynamic;
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
	static public function MkDir(dirname:Dynamic):Dynamic;
	/**
		Deletes the file located at 'filename'.
		
		Args:
		  filename: string, a filename
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.  E.g.,
		  NotFoundError if the file does not exist.
	**/
	static public function Remove(filename:Dynamic):Dynamic;
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
	static public function Rename(oldname:Dynamic, newname:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Returns file statistics for a given path.
		
		Args:
		  filename: string, path to a file
		
		Returns:
		  FileStatistics struct that contains information about the path
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function Stat(filename:Dynamic):Dynamic;
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
	static public function Walk(top:Dynamic, ?in_order:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
}