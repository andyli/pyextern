/* This file is generated, do not edit! */
package pyarrow.filesystem;
@:pythonImport("pyarrow.filesystem", "FileSystem") extern class FileSystem {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns True if this FileSystem is a unix-style file store with
		directories.
	**/
	public function _isfilestore():Dynamic;
	public function _path_join(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return contents of file as a bytes object.
		
		Parameters
		----------
		path : str
		    File path to read content from.
		
		Returns
		-------
		contents : bytes
	**/
	public function cat(path:Dynamic):Dynamic;
	/**
		Delete the indicated file or directory.
		
		Parameters
		----------
		path : str
		    Path to delete.
		recursive : bool, default False
		    If True, also delete child paths for directories.
	**/
	public function delete(path:Dynamic, ?recursive:Dynamic):Dynamic;
	/**
		Compute bytes used by all contents under indicated path in file tree.
		
		Parameters
		----------
		path : str
		    Can be a file path or directory.
		
		Returns
		-------
		usage : int
	**/
	public function disk_usage(path:Dynamic):Int;
	/**
		Return True if path exists.
		
		Parameters
		----------
		path : str
		    Path to check.
	**/
	public function exists(path:Dynamic):Dynamic;
	/**
		Return True if path is a directory.
		
		Parameters
		----------
		path : str
		    Path to check.
	**/
	public function isdir(path:Dynamic):Dynamic;
	/**
		Return True if path is a file.
		
		Parameters
		----------
		path : str
		    Path to check.
	**/
	public function isfile(path:Dynamic):Dynamic;
	/**
		Return list of file paths.
		
		Parameters
		----------
		path : str
		    Directory to list contents from.
	**/
	public function ls(path:Dynamic):Dynamic;
	/**
		Create a directory.
		
		Parameters
		----------
		path : str
		    Path to the directory.
		create_parents : bool, default True
		    If the parent directories don't exists create them as well.
	**/
	public function mkdir(path:Dynamic, ?create_parents:Dynamic):Dynamic;
	/**
		Alias for FileSystem.rename.
	**/
	public function mv(path:Dynamic, new_path:Dynamic):Dynamic;
	/**
		Open file for reading or writing.
	**/
	public function open(path:Dynamic, ?mode:Dynamic):Dynamic;
	public var pathsep : Dynamic;
	/**
		Read Parquet data from path in file system. Can read from a single file
		or a directory of files.
		
		Parameters
		----------
		path : str
		    Single file path or directory
		columns : List[str], optional
		    Subset of columns to read.
		metadata : pyarrow.parquet.FileMetaData
		    Known metadata to validate files against.
		schema : pyarrow.parquet.Schema
		    Known schema to validate files against. Alternative to metadata
		    argument.
		use_threads : bool, default True
		    Perform multi-threaded column reads.
		use_pandas_metadata : bool, default False
		    If True and file has custom pandas schema metadata, ensure that
		    index columns are also loaded.
		
		Returns
		-------
		table : pyarrow.Table
	**/
	public function read_parquet(path:Dynamic, ?columns:Dynamic, ?metadata:Dynamic, ?schema:Dynamic, ?use_threads:Dynamic, ?use_pandas_metadata:Dynamic):Dynamic;
	/**
		Rename file, like UNIX mv command.
		
		Parameters
		----------
		path : str
		    Path to alter.
		new_path : str
		    Path to move to.
	**/
	public function rename(path:Dynamic, new_path:Dynamic):Dynamic;
	/**
		Alias for FileSystem.delete.
	**/
	public function rm(path:Dynamic, ?recursive:Dynamic):Dynamic;
	/**
		Information about a filesystem entry.
		
		Returns
		-------
		stat : dict
	**/
	public function stat(path:Dynamic):python.Dict<Dynamic, Dynamic>;
}