/* This file is generated, do not edit! */
package tensorflow.python.platform.gfile;
@:pythonImport("tensorflow.python.platform.gfile", "_GFileBase") extern class _GFileBase {
	/**
		Get byte size of the file from the underlying file handle.
	**/
	public function Size():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Make GFileBase usable with "with" statement.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Make GFileBase usable with "with" statement.
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
		Create the GFileBase object with the given filename, mode, and locker.
		
		Args:
		  name: string, the filename.
		  mode: string, the mode to open the file with (e.g. "r", "w", "a+").
		  locker: the thread locking object (e.g. _PythonLocker) for controlling
		    thread access to the I/O methods of this class.
	**/
	@:native("__init__")
	public function ___init__(name:Dynamic, mode:Dynamic, locker:Dynamic):Dynamic;
	/**
		Create the GFileBase object with the given filename, mode, and locker.
		
		Args:
		  name: string, the filename.
		  mode: string, the mode to open the file with (e.g. "r", "w", "a+").
		  locker: the thread locking object (e.g. _PythonLocker) for controlling
		    thread access to the I/O methods of this class.
	**/
	public function new(name:Dynamic, mode:Dynamic, locker:Dynamic):Void;
	/**
		Enable line iteration on the underlying handle (not synchronized).
	**/
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
	/**
		Enable line iteration on the underlying handle (not synchronized).
		
		Returns:
		  An line iterator from the underlying handle.
		
		Example:
		  # read a file's lines by consuming the iterator with a list
		  with open("filename", "r") as fp: lines = list(fp)
	**/
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Synchronizes file I/O for methods in GFileBase.
	**/
	static public function _synchronized(fn:Dynamic):Dynamic;
	/**
		Close the underlying file handle.
	**/
	public function close():Dynamic;
	/**
		Returns "True" if the file handle is closed.  Otherwise False.
	**/
	public var closed : Dynamic;
	/**
		Flush the underlying file handle.
	**/
	public function flush():Dynamic;
	/**
		Read n bytes from the underlying file handle.
		
		Args:
		  n: Number of bytes to read (if negative, read to end of file handle.)
		
		Returns:
		  A string of the bytes read, up to the end of file.
	**/
	public function read(?n:Dynamic):Dynamic;
	/**
		Read a single line (up to max_length) from the underlying file handle.
		
		Args:
		  max_length: The maximum number of chsaracters to read.
		
		Returns:
		  A string, including any newline at the end, or empty string if at EOF.
	**/
	public function readline(?max_length:Dynamic):Dynamic;
	/**
		Read lines from the underlying file handle.
		
		Args:
		  sizehint: See the python file.readlines() documentation.
		
		Returns:
		  A list of strings from the underlying file handle.
	**/
	public function readlines(?sizehint:Dynamic):Dynamic;
	/**
		Seek to offset (conditioned on whence) in the underlying file handle.
		
		Args:
		  offset: int, the offset within the file to seek to.
		  whence: 0, 1, or 2.  See python's seek() documentation for details.
	**/
	public function seek(offset:Dynamic, ?whence:Dynamic):Dynamic;
	/**
		Return the location from the underlying file handle.
		
		Returns:
		  An integer location (which can be used in e.g., seek).
	**/
	public function tell():Dynamic;
	/**
		Truncate the underlying file handle to new_size.
		
		Args:
		  new_size: Size after truncation.  If None, the file handle is truncated
		  to 0 bytes.
	**/
	public function truncate(?new_size:Dynamic):Dynamic;
	/**
		Write data to the underlying file handle.
		
		Args:
		  data: The string to write to the file handle.
	**/
	public function write(data:Dynamic):Dynamic;
	/**
		Write a sequence of strings to the underlying file handle.
	**/
	public function writelines(seq:Dynamic):Dynamic;
}