/* This file is generated, do not edit! */
package pyarrow.hdfs;
@:pythonImport("pyarrow.hdfs", "HadoopFileSystem") extern class HadoopFileSystem {
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
	public function ___init__(?host:Dynamic, ?port:Dynamic, ?user:Dynamic, ?kerb_ticket:Dynamic, ?driver:Dynamic, ?extra_conf:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?host:Dynamic, ?port:Dynamic, ?user:Dynamic, ?kerb_ticket:Dynamic, ?driver:Dynamic, ?extra_conf:Dynamic):Void;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		HadoopFileSystem.__reduce_cython__(self)
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
		HadoopFileSystem.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		HadoopFileSystem._connect(self, host, port, user, kerb_ticket, extra_conf)
	**/
	public function _connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if this is a Unix-style file store with directories.
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
		HadoopFileSystem.chmod(self, path, mode)
		
		Change file permissions
		
		Parameters
		----------
		path : string
		    absolute path to file or directory
		mode : int
		    POSIX-like bitmask
	**/
	public function chmod(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		HadoopFileSystem.chown(self, path, owner=None, group=None)
		
		Change file permissions
		
		Parameters
		----------
		path : string
		    absolute path to file or directory
		owner : string, default None
		    New owner, None for no change
		group : string, default None
		    New group, None for no change
	**/
	public function chown(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		HadoopFileSystem.close(self)
		
		Disconnect from the HDFS cluster
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		HadoopFileSystem.connect(type cls, *args, **kwargs)
	**/
	public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		HadoopFileSystem.df(self)
		
		Return free space on disk, like the UNIX df command
		
		Returns
		-------
		space : int
	**/
	public function df(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		HadoopFileSystem.download(self, path, stream, buffer_size=None)
	**/
	public function download(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return True if path exists.
		
		Parameters
		----------
		path : str
		    Path to check.
	**/
	public function exists(path:Dynamic):Dynamic;
	public var extra_conf : Dynamic;
	/**
		HadoopFileSystem.get_capacity(self)
		
		Get reported total capacity of file system
		
		Returns
		-------
		capacity : int
	**/
	public function get_capacity(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		HadoopFileSystem.get_space_used(self)
		
		Get space used on file system
		
		Returns
		-------
		space_used : int
	**/
	public function get_space_used(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var host : Dynamic;
	/**
		HadoopFileSystem.info(self, path)
		
		Return detailed HDFS information for path
		
		Parameters
		----------
		path : string
		    Path to file or directory
		
		Returns
		-------
		path_info : dict
	**/
	public function info(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var is_open : Dynamic;
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
	public var kerb_ticket : Dynamic;
	/**
		Retrieve directory contents and metadata, if requested.
		
		Parameters
		----------
		path : str
		    HDFS path to retrieve contents of.
		detail : bool, default False
		    If False, only return list of paths.
		
		Returns
		-------
		result : list of dicts (detail=True) or strings (detail=False)
	**/
	public function ls(path:Dynamic, ?detail:Dynamic):Dynamic;
	/**
		Create directory in HDFS.
		
		Parameters
		----------
		path : str
		    Directory path to create, including any parent directories.
		
		Notes
		-----
		libhdfs does not support create_parents=False, so we ignore this here
	**/
	public function mkdir(path:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alias for FileSystem.rename.
	**/
	public function mv(path:Dynamic, new_path:Dynamic):Dynamic;
	/**
		HadoopFileSystem.open(self, path, mode=u'rb', buffer_size=None, replication=None, default_block_size=None)
		
		Open HDFS file for reading or writing
		
		Parameters
		----------
		mode : string
		    Must be one of 'rb', 'wb', 'ab'
		
		Returns
		-------
		handle : HdfsFile
	**/
	public function open(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var pathsep : Dynamic;
	public var port : Dynamic;
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
		HadoopFileSystem.stat(self, path)
		
		Return basic file system statistics about path
		
		Parameters
		----------
		path : string
		    Path to file or directory
		
		Returns
		-------
		stat : dict
	**/
	public function stat(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		HadoopFileSystem.upload(self, path, stream, buffer_size=None)
		
		Upload file-like object to HDFS path
	**/
	public function upload(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var user : Dynamic;
	/**
		Directory tree generator for HDFS, like os.walk.
		
		Parameters
		----------
		top_path : str
		    Root directory for tree traversal.
		
		Returns
		-------
		Generator yielding 3-tuple (dirpath, dirnames, filename)
	**/
	public function walk(top_path:Dynamic):Dynamic;
}