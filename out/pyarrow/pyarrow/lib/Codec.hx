/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "Codec") extern class Codec {
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
		Codec.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Codec.__setstate_cython__(self, __pyx_state)
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
		Codec.compress(self, buf, asbytes=False, memory_pool=None)
		
		Compress data from buffer-like object.
		
		Parameters
		----------
		buf : pyarrow.Buffer, bytes, or other object supporting buffer protocol
		asbytes : bool, default False
		    Return result as Python bytes object, otherwise Buffer
		memory_pool : MemoryPool, default None
		    Memory pool to use for buffer allocations, if any
		
		Returns
		-------
		compressed : pyarrow.Buffer or bytes (if asbytes=True)
	**/
	public function compress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the compression level parameter of the codec
	**/
	public var compression_level : Dynamic;
	/**
		Codec.decompress(self, buf, decompressed_size=None, asbytes=False, memory_pool=None)
		
		Decompress data from buffer-like object.
		
		Parameters
		----------
		buf : pyarrow.Buffer, bytes, or memoryview-compatible object
		decompressed_size : int, default None
		    If not specified, will be computed if the codec is able to
		    determine the uncompressed buffer size.
		asbytes : boolean, default False
		    Return result as Python bytes object, otherwise Buffer
		memory_pool : MemoryPool, default None
		    Memory pool to use for buffer allocations, if any.
		
		Returns
		-------
		uncompressed : pyarrow.Buffer or bytes (if asbytes=True)
	**/
	public function decompress(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Codec.default_compression_level(unicode compression)
		
		Returns the compression level that Arrow will use for the codec if
		None is specified.
		
		Parameters
		----------
		compression : str
		    Type of compression codec,
		    refer to Codec docstring for a list of supported ones.
	**/
	static public function default_compression_level(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Codec.detect(path)
		
		Detect and instantiate compression codec based on file extension.
		
		Parameters
		----------
		path : str, path-like
		    File-path to detect compression from.
		
		Raises
		------
		TypeError
		    If the passed value is not path-like.
		ValueError
		    If the compression can't be detected from the path.
		
		Returns
		-------
		Codec
	**/
	static public function detect(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Codec.is_available(unicode compression)
		
		Returns whether the compression support has been built and enabled.
		
		Parameters
		----------
		compression : str
		     Type of compression codec,
		     refer to Codec docstring for a list of supported ones.
		
		Returns
		-------
		bool
	**/
	static public function is_available(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Codec.maximum_compression_level(unicode compression)
		
		Returns the largest valid value for the compression level
		
		Parameters
		----------
		compression : str
		    Type of compression codec,
		    refer to Codec docstring for a list of supported ones.
	**/
	static public function maximum_compression_level(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Codec.minimum_compression_level(unicode compression)
		
		Returns the smallest valid value for the compression level
		
		Parameters
		----------
		compression : str
		    Type of compression codec,
		    refer to Codec docstring for a list of supported ones.
	**/
	static public function minimum_compression_level(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns the name of the codec
	**/
	public var name : Dynamic;
	/**
		Codec.supports_compression_level(unicode compression)
		
		Returns true if the compression level parameter is supported
		for the given codec.
		
		Parameters
		----------
		compression : str
		    Type of compression codec,
		    refer to Codec docstring for a list of supported ones.
	**/
	static public function supports_compression_level(args:haxe.extern.Rest<Dynamic>):Dynamic;
}