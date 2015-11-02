/* This file is generated, do not edit! */
package pandas.msgpack._unpacker;
@:pythonImport("pandas.msgpack._unpacker", "Unpacker") extern class Unpacker {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement iter(self).
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __next__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __pyx_vtable__ : Dynamic;
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
		Unpacker.feed(self, next_bytes)
		Append `next_bytes` to internal buffer.
	**/
	public function feed(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unpacker.read_array_header(self, write_bytes=None)
		assuming the next object is an array, return its size n, such that
		        the next n unpack() calls will iterate over its contents.
		
		        Raises `OutOfData` when there are no more bytes to unpack.
		        
	**/
	public function read_array_header(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unpacker.read_bytes(self, Py_ssize_t nbytes)
		Read a specified number of raw bytes from the stream
	**/
	public function read_bytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unpacker.read_map_header(self, write_bytes=None)
		assuming the next object is a map, return its size n, such that the
		        next n * 2 unpack() calls will iterate over its key-value pairs.
		
		        Raises `OutOfData` when there are no more bytes to unpack.
		        
	**/
	public function read_map_header(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unpacker.skip(self, write_bytes=None)
		Read and ignore one object, returning None
		
		        If write_bytes is not None, it will be called with parts of the raw
		        message as it is unpacked.
		
		        Raises `OutOfData` when there are no more bytes to unpack.
		        
	**/
	public function skip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Unpacker.unpack(self, write_bytes=None)
		Unpack one object
		
		        If write_bytes is not None, it will be called with parts of the raw
		        message as it is unpacked.
		
		        Raises `OutOfData` when there are no more bytes to unpack.
		        
	**/
	public function unpack(args:haxe.extern.Rest<Dynamic>):Dynamic;
}