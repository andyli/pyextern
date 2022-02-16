/* This file is generated, do not edit! */
package tensorflow.compat.v2.io.gfile;
@:pythonImport("tensorflow.compat.v2.io.gfile") extern class Gfile_Module {
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
		Copies data from `src` to `dst`.
		
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.exists("/tmp/x")
		True
		>>> tf.io.gfile.copy("/tmp/x", "/tmp/y")
		>>> tf.io.gfile.exists("/tmp/y")
		True
		>>> tf.io.gfile.remove("/tmp/y")
		
		You can also specify the URI scheme for selecting a different filesystem:
		
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.copy("/tmp/x", "file:///tmp/y")
		>>> tf.io.gfile.exists("/tmp/y")
		True
		>>> tf.io.gfile.remove("/tmp/y")
		
		Note that you need to always specify a file name, even if moving into a new
		directory. This is because some cloud filesystems don't have the concept of a
		directory.
		
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.mkdir("/tmp/new_dir")
		>>> tf.io.gfile.copy("/tmp/x", "/tmp/new_dir/y")
		>>> tf.io.gfile.exists("/tmp/new_dir/y")
		True
		>>> tf.io.gfile.rmtree("/tmp/new_dir")
		
		If you want to prevent errors if the path already exists, you can use
		`overwrite` argument:
		
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.copy("/tmp/x", "file:///tmp/y")
		>>> tf.io.gfile.copy("/tmp/x", "file:///tmp/y", overwrite=True)
		>>> tf.io.gfile.remove("/tmp/y")
		
		Note that the above will still result in an error if you try to overwrite a
		directory with a file.
		
		Note that you cannot copy a directory, only file arguments are supported.
		
		Args:
		  src: string, name of the file whose contents need to be copied
		  dst: string, name of the file to which to copy to
		  overwrite: boolean, if false it's an error for `dst` to be occupied by an
		    existing file.
		
		Raises:
		  errors.OpError: If the operation fails.
	**/
	static public function copy(src:Dynamic, dst:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Determines whether a path exists or not.
		
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.exists("/tmp/x")
		True
		
		You can also specify the URI scheme for selecting a different filesystem:
		
		>>> # for a GCS filesystem path:
		>>> # tf.io.gfile.exists("gs://bucket/file")
		>>> # for a local filesystem:
		>>> with open("/tmp/x", "w") as f:
		...   f.write("asdf")
		...
		4
		>>> tf.io.gfile.exists("file:///tmp/x")
		True
		
		This currently returns `True` for existing directories but don't rely on this
		behavior, especially if you are using cloud filesystems (e.g., GCS, S3,
		Hadoop):
		
		>>> tf.io.gfile.exists("/tmp")
		True
		
		Args:
		  path: string, a path
		
		Returns:
		  True if the path exists, whether it's a file or a directory.
		  False if the path does not exist and there are no filesystem errors.
		
		Raises:
		  errors.OpError: Propagates any errors reported by the FileSystem API.
	**/
	static public function exists(path:Dynamic):Dynamic;
	/**
		Returns a list of files that match the given pattern(s).
		
		The patterns are defined as strings. Supported patterns are defined
		here. Note that the pattern can be a Python iteratable of string patterns.
		
		The format definition of the pattern is:
		
		**pattern**: `{ term }`
		
		**term**:
		  * `'*'`: matches any sequence of non-'/' characters
		  * `'?'`: matches a single non-'/' character
		  * `'[' [ '^' ] { match-list } ']'`: matches any single
		    character (not) on the list
		  * `c`: matches character `c`  where `c != '*', '?', '\\', '['`
		  * `'\\' c`: matches character `c`
		
		**character range**:
		  * `c`: matches character `c` while `c != '\\', '-', ']'`
		  * `'\\' c`: matches character `c`
		  * `lo '-' hi`: matches character `c` for `lo <= c <= hi`
		
		Examples:
		
		>>> tf.io.gfile.glob("*.py")
		... # For example, ['__init__.py']
		
		>>> tf.io.gfile.glob("__init__.??")
		... # As above
		
		>>> files = {"*.py"}
		>>> the_iterator = iter(files)
		>>> tf.io.gfile.glob(the_iterator)
		... # As above
		
		See the C++ function `GetMatchingPaths` in
		[`core/platform/file_system.h`]
		(../../../core/platform/file_system.h)
		for implementation details.
		
		Args:
		  pattern: string or iterable of strings. The glob pattern(s).
		
		Returns:
		  A list of strings containing filenames that match the given pattern(s).
		
		Raises:
		  errors.OpError: If there are filesystem / directory listing errors.
		  errors.NotFoundError: If pattern to be matched is an invalid directory.
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
		Join one or more path components intelligently.
		
		TensorFlow specific filesystems will be joined
		like a url (using "/" as the path seperator) on all platforms:
		
		On Windows or Linux/Unix-like:
		>>> tf.io.gfile.join("gcs://folder", "file.py")
		'gcs://folder/file.py'
		
		>>> tf.io.gfile.join("ram://folder", "file.py")
		'ram://folder/file.py'
		
		But the native filesystem is handled just like os.path.join:
		
		>>> path = tf.io.gfile.join("folder", "file.py")
		>>> if os.name == "nt":
		...   expected = "folder\\file.py"  # Windows
		... else:
		...   expected = "folder/file.py"  # Linux/Unix-like
		>>> path == expected
		True
		
		Args:
		  path: string, path to a directory
		  paths: string, additional paths to concatenate
		
		Returns:
		  path: the joined path.
	**/
	static public function join(path:Dynamic, ?paths:python.VarArgs<Dynamic>):Dynamic;
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
		Creates a directory with the name given by `path`.
		
		Args:
		  path: string, name of the directory to be created
		
		Notes: The parent directories need to exist. Use `tf.io.gfile.makedirs`
		  instead if there is the possibility that the parent dirs don't exist.
		
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
		  `NotFoundError` if the path does not exist.
	**/
	static public function remove(path:Dynamic):Dynamic;
	/**
		Rename or move a file / directory.
		
		Args:
		  src: string, pathname for a file
		  dst: string, pathname to which the file needs to be moved
		  overwrite: boolean, if false it's an error for `dst` to be occupied by an
		    existing file.
		
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
		  all its subdirectories and leaf files. That is, each yield looks like:
		  `(dirname, [subdirname, subdirname, ...], [filename, filename, ...])`.
		  Each item is a string.
	**/
	static public function walk(top:Dynamic, ?topdown:Dynamic, ?onerror:Dynamic):Dynamic;
}