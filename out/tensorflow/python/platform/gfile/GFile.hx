/* This file is generated, do not edit! */
package tensorflow.python.platform.gfile;
@:pythonImport("tensorflow.python.platform.gfile", "GFile") extern class GFile {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(name:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, ?mode:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Closes FileIO. Should be called for the WritableFile to be flushed.
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
		  n: Read 'n' bytes if n != -1. If n = -1, reads to end of file.
		
		Returns:
		  'n' bytes of the file (or whole file) in bytes mode or 'n' bytes of the
		  string if in string (regular) mode.
	**/
	public function read(?n:Dynamic):Dynamic;
	/**
		Reads the next line from the file. Leaves the '\n' at the end.
	**/
	public function readline():Dynamic;
	/**
		Returns all lines from the file in a list.
	**/
	public function readlines():Dynamic;
	/**
		Seeks to the offset in the file. (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		position is deprecated in favor of the offset argument.
		
		Args:
		  offset: The byte count relative to the whence argument.
		  whence: Valid values for whence are:
		    0: start of the file (default)
		    1: relative to the current position of the file
		    2: relative to the end of file. offset is usually negative.
	**/
	public function seek(?offset:Dynamic, ?whence:Dynamic, ?position:Dynamic):Dynamic;
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