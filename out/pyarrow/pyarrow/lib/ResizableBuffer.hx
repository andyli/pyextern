/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "ResizableBuffer") extern class ResizableBuffer {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
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
		Return len(self).
	**/
	public function __len__():Dynamic;
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
	static public var __pyx_vtable__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Buffer.__reduce_ex__(self, protocol)
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
		The buffer's address, as an integer.
		
		The returned address may point to CPU or device memory.
		Use `is_cpu()` to disambiguate.
	**/
	public var address : Dynamic;
	/**
		Buffer.equals(self, Buffer other)
		
		Determine if two buffers contain exactly the same data.
		
		Parameters
		----------
		other : Buffer
		
		Returns
		-------
		are_equal : bool
		    True if buffer contents and size are equal
	**/
	public function equals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Buffer.hex(self)
		
		Compute hexadecimal representation of the buffer.
		
		Returns
		-------
		: bytes
	**/
	public function hex(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Whether the buffer is CPU-accessible.
	**/
	public var is_cpu : Dynamic;
	/**
		Whether the buffer is mutable.
	**/
	public var is_mutable : Dynamic;
	public var parent : Dynamic;
	/**
		ResizableBuffer.resize(self, int64_t new_size, shrink_to_fit=False)
		
		Resize buffer to indicated size.
		
		Parameters
		----------
		new_size : int
		    New size of buffer (padding may be added internally).
		shrink_to_fit : bool, default False
		    If this is true, the buffer is shrunk when new_size is less
		    than the current size.
		    If this is false, the buffer is never shrunk.
	**/
	public function resize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The buffer size in bytes.
	**/
	public var size : Dynamic;
	/**
		Buffer.slice(self, offset=0, length=None)
		
		Slice this buffer.  Memory is not copied.
		
		You can also use the Python slice notation ``buffer[start:stop]``.
		
		Parameters
		----------
		offset : int, default 0
		    Offset from start of buffer to slice.
		length : int, default None
		    Length of slice (default is until end of Buffer starting from
		    offset).
		
		Returns
		-------
		sliced : Buffer
		    A logical view over this buffer.
	**/
	public function slice(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Buffer.to_pybytes(self)
		
		Return this buffer as a Python bytes object. Memory is copied.
	**/
	public function to_pybytes(args:haxe.extern.Rest<Dynamic>):Dynamic;
}