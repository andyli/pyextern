/* This file is generated, do not edit! */
package matplotlib.backends.backend_pdf;
@:pythonImport("matplotlib.backends.backend_pdf", "Stream") extern class Stream {
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
		Parameters
		----------
		id : int
		    Object id of the stream.
		len : Reference or None
		    An unused Reference object for the length of the stream;
		    None means to use a memory buffer so the length can be inlined.
		file : PdfFile
		    The underlying object to write the stream to.
		extra : dict from Name to anything, or None
		    Extra key-value pairs to include in the stream header.
		png : dict or None
		    If the data is already png encoded, the decode parameters.
	**/
	@:native("__init__")
	public function ___init__(id:Dynamic, len:Dynamic, file:Dynamic, ?extra:Dynamic, ?png:Dynamic):Dynamic;
	/**
		Parameters
		----------
		id : int
		    Object id of the stream.
		len : Reference or None
		    An unused Reference object for the length of the stream;
		    None means to use a memory buffer so the length can be inlined.
		file : PdfFile
		    The underlying object to write the stream to.
		extra : dict from Name to anything, or None
		    Extra key-value pairs to include in the stream header.
		png : dict or None
		    If the data is already png encoded, the decode parameters.
	**/
	public function new(id:Dynamic, len:Dynamic, file:Dynamic, ?extra:Dynamic, ?png:Dynamic):Void;
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
	static public var __slots__ : Dynamic;
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
		Flush the compression object.
	**/
	public function _flush():Dynamic;
	public function _writeHeader():Dynamic;
	public var compressobj : Dynamic;
	/**
		Finalize stream.
	**/
	public function end():Dynamic;
	public var extra : Dynamic;
	public var file : Dynamic;
	public var id : Dynamic;
	public var len : Dynamic;
	public var pdfFile : Dynamic;
	public var pos : Dynamic;
	/**
		Write some data on the stream.
	**/
	public function write(data:Dynamic):Dynamic;
}