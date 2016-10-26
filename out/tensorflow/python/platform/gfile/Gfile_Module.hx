/* This file is generated, do not edit! */
package tensorflow.python.platform.gfile;
@:pythonImport("tensorflow.python.platform.gfile") extern class Gfile_Module {
	/**
		Copy a file.
		
		Args:
		  oldpath: string; a pathname of a file.
		  newpath: string; a pathname to which the file will be copied.
		  overwrite: boolean; if false, it is an error for newpath to be
		    occupied by an existing file.
		
		Raises:
		  OSError: If "newpath" is occupied by an existing file and overwrite=False,
		           or any error thrown by shutil.copy.
	**/
	static public function Copy(oldpath:Dynamic, newpath:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Delete the file or directory "path" recursively.
		
		Args:
		  path: The path to remove (may be a non-empty directory).
		
		Raises:
		  OSError: If the path does not exist or cannot be deleted.
	**/
	static public function DeleteRecursively(path:Dynamic):Dynamic;
	/**
		Returns True iff "path" exists (as a dir, file, non-broken symlink).
	**/
	static public function Exists(path:Dynamic):Dynamic;
	/**
		Return a list of filenames matching the glob "glob".
	**/
	static public function Glob(glob:Dynamic):Dynamic;
	/**
		Return True iff "path" exists and is a directory.
	**/
	static public function IsDirectory(path:Dynamic):Dynamic;
	/**
		Returns a list of files in dir.
		
		As with the standard os.listdir(), the filenames in the returned list will be
		the basenames of the files in dir (not absolute paths).  To get a list of
		absolute paths of files in a directory, a client could do:
		  file_list = gfile.ListDir(my_dir)
		  file_list = [os.path.join(my_dir, f) for f in file_list]
		(assuming that my_dir itself specified an absolute path to a directory).
		
		Args:
		  directory: the directory to list
		  return_dotfiles: if True, dotfiles will be returned as well.  Even if
		    this arg is True, '.' and '..' will not be returned.
		
		Returns:
		  ['list', 'of', 'files']. The entries '.' and '..' are never returned.
		  Other entries starting with a dot will only be returned if return_dotfiles
		  is True.
		Raises:
		  OSError: if there is an error retrieving the directory listing.
	**/
	static public function ListDirectory(directory:Dynamic, ?return_dotfiles:Dynamic):Dynamic;
	/**
		Recursively create the directory "path" with the given mode.
		
		Args:
		  path: The directory path.
		  mode: The file mode for the created directories
		
		Raises:
		  OSError: if the path already exists
	**/
	static public function MakeDirs(path:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Create the directory "path" with the given mode.
		
		Args:
		  path: The directory path
		  mode: The file mode for the directory
		
		Returns:
		  None
		
		Raises:
		  OSError: if the path already exists
	**/
	static public function MkDir(path:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Exact API match to the standard open.
		
		Args:
		  name:  a file name, either local or a gfile compatible.
		  mode:  for example "w" to open the file for writing.
		
		Returns:
		  A threadsafe gfile.GFile object.
	**/
	static public function Open(name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Delete the (non-directory) file "path".
		
		Args:
		  path: The file to remove.
		
		Raises:
		  OSError: If "path" does not exist, is a directory, or cannot be deleted.
	**/
	static public function Remove(path:Dynamic):Dynamic;
	/**
		Rename or move a file, or a local directory.
		
		Args:
		  oldpath: string; a pathname of a file.
		  newpath: string; a pathname to which the file will be moved.
		  overwrite: boolean; if false, it is an error for newpath to be
		    occupied by an existing file.
		
		Raises:
		  OSError: If "newpath" is occupied by an existing file and overwrite=False.
	**/
	static public function Rename(oldpath:Dynamic, newpath:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Removes the directory "directory" iff the directory is empty.
		
		Args:
		  directory: The directory to remove.
		
		Raises:
		  OSError: If the directory does not exist or is not empty.
	**/
	static public function RmDir(directory:Dynamic):Dynamic;
	/**
		Gets the status of a file.
		
		Args:
		  path: The file to call Stat() on.
		
		Does the equivalent of Stat() on the specified "path" and return file
		properties.
		
		Returns:
		  An object whose attributes give information on the file.
		
		Raises:
		  OSError: If "path" does not exist.
	**/
	static public function Stat(path:Dynamic):Dynamic;
	/**
		Recursive directory tree generator.
		
		Args:
		  top: string, a pathname.
		  topdown: bool, should traversal be pre-order (True) or post-order (False)
		  onerror: function, optional callback for errors.
		
		By default, errors that occur when listing a directory are ignored.
		(This is the same semantics as Python's os.walk() generator.)  If the
		optional argument "onerror" is specified, it should be a function.  It
		will be called with one argument, an os.error instance.  It can return
		to continue with the walk, or reraise the exception to abort the walk.
		By default, the walk follows symlinks that resolve into directories.
		
		Yields:
		  # Each yield is a 3-tuple:  the pathname of a directory, followed
		  # by lists of all its subdirectories and leaf files.
		  (dirname, [subdirname, subdirname, ...], [filename, filename, ...])
	**/
	static public function Walk(top:Dynamic, ?topdown:Dynamic, ?onerror:Dynamic):Dynamic;
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