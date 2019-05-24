/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.io.gfile;
@:pythonImport("tensorflow._api.v1.compat.v1.io.gfile") extern class Gfile_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Copies data from src to dst.
		
		Args:
		  src: string, name of the file whose contents need to be copied
		  dst: string, name of the file to which to copy to
		  overwrite: boolean, if false its an error for newpath to be occupied by an
		      existing file.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function copy(src:Dynamic, dst:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Determines whether a path exists or not.
		
		Args:
		  path: string, a path
		
		Returns:
		  True if the path exists, whether its a file or a directory.
		  False if the path does not exist and there are no filesystem errors.
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.
	**/
	static public function exists(path:Dynamic):Dynamic;
	/**
		Returns a list of files that match the given pattern(s).
		
		Args:
		  pattern: string or iterable of strings. The glob pattern(s).
		
		Returns:
		  A list of strings containing filenames that match the given pattern(s).
		
		Raises:
		  errors.OpError: If there are filesystem / directory listing errors.
	**/
	static public function glob(pattern:Dynamic):Dynamic;
	/**
		Returns whether the path is a directory or not.
		
		Args:
		  path: string, path to a potential directory
		
		Returns:
		  True, if the path is a directory; False otherwise
	**/
	static public function isdir(path:Dynamic):Dynamic;
	/**
		Returns a list of entries contained within a directory.
		
		The list is in arbitrary order. It does not contain the special entries "."
		and "..".
		
		Args:
		  path: string, path to a directory
		
		Returns:
		  [filename1, filename2, ... filenameN] as strings
		
		Raises:
		  errors.NotFoundError if directory doesn't exist
	**/
	static public function listdir(path:Dynamic):Dynamic;
	/**
		Creates a directory and all parent/intermediate directories.
		
		It succeeds if path already exists and is writable.
		
		Args:
		  path: string, name of the directory to be created
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function makedirs(path:Dynamic):Dynamic;
	/**
		Creates a directory with the name given by 'path'.
		
		Args:
		  path: string, name of the directory to be created
		
		Notes:
		  The parent directories need to exist. Use recursive_create_dir instead if
		  there is the possibility that the parent dirs don't exist.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function mkdir(path:Dynamic):Dynamic;
	/**
		Deletes the path located at 'path'.
		
		Args:
		  path: string, a path
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.  E.g.,
		  NotFoundError if the path does not exist.
	**/
	static public function remove(path:Dynamic):Dynamic;
	/**
		Rename or move a file / directory.
		
		Args:
		  src: string, pathname for a file
		  dst: string, pathname to which the file needs to be moved
		  overwrite: boolean, if false it's an error for `dst` to be occupied by
		      an existing file.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function rename(src:Dynamic, dst:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Deletes everything under path recursively.
		
		Args:
		  path: string, a path
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function rmtree(path:Dynamic):Dynamic;
	/**
		Returns file statistics for a given path.
		
		Args:
		  path: string, path to a file
		
		Returns:
		  FileStatistics struct that contains information about the path
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function stat(path:Dynamic):Dynamic;
	/**
		Recursive directory tree generator for directories.
		
		Args:
		  top: string, a Directory name
		  topdown: bool, Traverse pre order if True, post order if False.
		  onerror: optional handler for errors. Should be a function, it will be
		    called with the error as argument. Rethrowing the error aborts the walk.
		
		Errors that happen while listing directories are ignored.
		
		Yields:
		  Each yield is a 3-tuple:  the pathname of a directory, followed by lists of
		  all its subdirectories and leaf files.
		  (dirname, [subdirname, subdirname, ...], [filename, filename, ...])
		  as strings
	**/
	static public function walk(top:Dynamic, ?topdown:Dynamic, ?onerror:Dynamic):Dynamic;
}