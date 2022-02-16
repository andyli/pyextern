/* This file is generated, do not edit! */
package tensorflow.python.lib.io.file_io;
@:pythonImport("tensorflow.python.lib.io.file_io", "FileIO") extern class FileIO {
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
		Make usable with "with" statement.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Make usable with "with" statement.
	**/
	public function __exit__(unused_type:Dynamic, unused_value:Dynamic, unused_traceback:Dynamic):Dynamic;
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
	public function ___init__(name:Dynamic, mode:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, mode:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	public function __next__():Dynamic;
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
	public function _prepare_value(val:Dynamic):Dynamic;
	public function _preread_check():Dynamic;
	public function _prewrite_check():Dynamic;
	/**
		Closes the file.
		
		Should be called for the WritableFile to be flushed.
		
		In general, if you use the context manager pattern, you don't need to call
		this directly.
		
		>>> with tf.io.gfile.GFile("/tmp/x", "w") as f:
		...   f.write("asdf\n")
		...   f.write("qwer\n")
		>>> # implicit f.close() at the end of the block
		
		For cloud filesystems, forgetting to call `close()` might result in data
		loss as last write might not have been replicated.
	**/
	public function close():Dynamic;
	/**
		Flushes the Writable file.
		
		This only ensures that the data has made its way out of the process without
		any guarantees on whether it's written to disk. This means that the
		data would survive an application crash but not necessarily an OS crash.
	**/
	public function flush():Dynamic;
	/**
		Returns the mode in which the file was opened.
	**/
	public var mode : Dynamic;
	/**
		Returns the file name.
	**/
	public var name : Dynamic;
	public function next():Dynamic;
	/**
		Returns the contents of a file as a string.
		
		Starts reading from current position in file.
		
		Args:
		  n: Read `n` bytes if `n != -1`. If `n = -1`, reads to end of file.
		
		Returns:
		  `n` bytes of the file (or whole file) in bytes mode or `n` bytes of the
		  string if in string (regular) mode.
	**/
	public function read(?n:Dynamic):Dynamic;
	/**
		Reads the next line, keeping \n. At EOF, returns ''.
	**/
	public function readline():Dynamic;
	/**
		Returns all lines from the file in a list.
	**/
	public function readlines():Dynamic;
	/**
		Seeks to the offset in the file. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(position)`. They will be removed in a future version.
		Instructions for updating:
		position is deprecated in favor of the offset argument.
		
		Args:
		  offset: The byte count relative to the whence argument.
		  whence: Valid values for whence are:
		    0: start of the file (default)
		    1: relative to the current position of the file
		    2: relative to the end of file. `offset` is usually negative.
	**/
	public function seek(?offset:Dynamic, ?whence:Dynamic, ?position:Dynamic):Dynamic;
	/**
		Returns True as FileIO supports random access ops of seek()/tell()
	**/
	public function seekable():Dynamic;
	/**
		Returns the size of the file.
	**/
	public function size():Dynamic;
	/**
		Returns the current position in the file.
	**/
	public function tell():Dynamic;
	/**
		Writes file_content to the file. Appends to the end of the file.
	**/
	public function write(file_content:Dynamic):Dynamic;
}